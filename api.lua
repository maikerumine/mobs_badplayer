 mbp = {}
bp.mod = "redo"
function bp:register_mob(name, def)
	minetest.register_entity(name, {
		name = name,
		hp_min = def.hp_min or 5,
		hp_max = def.hp_max,
		physical = true,
		collisionbox = def.collisionbox,
		visual = def.visual,
		visual_size = def.visual_size,
		mesh = def.mesh,
		textures = def.textures,
		makes_footstep_sound = def.makes_footstep_sound,
		view_range = def.view_range,
		walk_velocity = def.walk_velocity,
		run_velocity = def.run_velocity,
		damage = def.damage,
		light_damage = def.light_damage,
		water_damage = def.water_damage,
		lava_damage = def.lava_damage,
		fall_damage = def.fall_damage or true,
		drops = def.drops,
		armor = def.armor,
		drawtype = def.drawtype,
		on_rightclick = def.on_rightclick,
		type = def.type,
		attack_type = def.attack_type,
		arrow = def.arrow,
		shoot_interval = def.shoot_interval,
		sounds = def.sounds,
		animation = def.animation,
		follow = def.follow,
		jump = def.jump or true,
		exp_min = def.exp_min or 0,
		exp_max = def.exp_max or 0,
		walk_chance = def.walk_chance or 50,
		attacks_monsters = def.attacks_monsters or false,
		group_attack = def.group_attack or false,
		step = def.step or 0,
		fov = def.fov or 120,
		passive = def.passive or false,
		recovery_time = def.recovery_time or 0.5,
		knock_back = def.knock_back or 3,
		blood_offset = def.blood_offset or 0,
		blood_amount = def.blood_amount or 5, -- 15
		blood_texture = def.blood_texture or "mobs_blood.png",
		rewards = def.rewards or nil,
		animaltype = def.animaltype,
		shoot_offset = def.shoot_offset or 0,
		
		stimer = 0,
		timer = 0,
		env_damage_timer = 0, -- only if state = "attack"
		attack = {player=nil, dist=nil},
		state = "stand",
		v_start = false,
		old_y = nil,
		lifetimer = 600,
		tamed = false,
		last_state = nil,
		pause_timer = 0,
		
		do_attack = function(self, player, dist)
			if self.state ~= "attack" then
--				if self.sounds.war_cry then
--					if math.random(0,100) < 90 then
--						minetest.sound_play(self.sounds.war_cry,{ object = self.object })
--					end
--				end
				self.state = "attack"
				self.attack.player = player
				self.attack.dist = dist
			end
		end,
		
		set_velocity = function(self, v)
			local yaw = self.object:getyaw()
			if self.drawtype == "side" then
				yaw = yaw+(math.pi/2)
			end
			local x = math.sin(yaw) * -v
			local z = math.cos(yaw) * v
			self.object:setvelocity({x=x, y=self.object:getvelocity().y, z=z})
		end,
		
		get_velocity = function(self)
			local v = self.object:getvelocity()
			return (v.x^2 + v.z^2)^(0.5)
		end,
--[[
		in_fov = function(self,pos)
			-- checks if POS is in self's FOV
			local yaw = self.object:getyaw()
			if self.drawtype == "side" then
				yaw = yaw+(math.pi/2)
			end
			local vx = math.sin(yaw)
			local vz = math.cos(yaw)
			local ds = math.sqrt(vx^2 + vz^2)
			local ps = math.sqrt(pos.x^2 + pos.z^2)
			local d = { x = vx / ds, z = vz / ds }
			local p = { x = pos.x / ps, z = pos.z / ps }
			
			local an = ( d.x * p.x ) + ( d.z * p.z )
			
			a = math.deg( math.acos( an ) )
			
			if a > ( self.fov / 2 ) then
				return false
			else
				return true
			end
		end,
]]
		set_animation = function(self, type)
			if not self.animation then
				return
			end
			if not self.animation.current then
				self.animation.current = ""
			end
			if type == "stand" and self.animation.current ~= "stand" then
				if
					self.animation.stand_start
					and self.animation.stand_end
					and self.animation.speed_normal
				then
					self.object:set_animation(
						{x=self.animation.stand_start,y=self.animation.stand_end},
						self.animation.speed_normal, 0
					)
					self.animation.current = "stand"
				end
			elseif type == "walk" and self.animation.current ~= "walk"  then
				if
					self.animation.walk_start
					and self.animation.walk_end
					and self.animation.speed_normal
				then
					self.object:set_animation(
						{x=self.animation.walk_start,y=self.animation.walk_end},
						self.animation.speed_normal, 0
					)
					self.animation.current = "walk"
				end
			elseif type == "run" and self.animation.current ~= "run"  then
				if
					self.animation.run_start
					and self.animation.run_end
					and self.animation.speed_run
				then
					self.object:set_animation(
						{x=self.animation.run_start,y=self.animation.run_end},
						self.animation.speed_run, 0
					)
					self.animation.current = "run"
				end
			elseif type == "punch" and self.animation.current ~= "punch"  then
				if
					self.animation.punch_start
					and self.animation.punch_end
					and self.animation.speed_normal
				then
					self.object:set_animation(
						{x=self.animation.punch_start,y=self.animation.punch_end},
						self.animation.speed_normal, 0
					)
					self.animation.current = "punch"
				end
			end
		end,
		
		on_step = function(self, dtime)
			
			if self.type == "monster" and minetest.setting_getbool("only_peaceful_mobs") then
				self.object:remove()
			end
			
			self.lifetimer = self.lifetimer - dtime
			if self.lifetimer <= 0 and not self.tamed and self.type ~= "npc" then
				local player_count = 0
				for _,obj in ipairs(minetest.get_objects_inside_radius(self.object:getpos(), 10)) do
					if obj:is_player() then
						player_count = player_count+1
					end
				end
				if player_count == 0 and self.state ~= "attack" then
					minetest.log("action","lifetimer expired, removed mob "..self.name)
					self.object:remove()
					return
				end
			end

			-- drop egg
			if self.animaltype == "clucky" then
				if math.random(1, 1500) < 2
				and minetest.get_node(self.object:getpos()).name == "air"
				and self.state == "stand" then
					minetest.set_node(self.object:getpos(), {name="mobs:egg"})
				end
			end
			
			if self.object:getvelocity().y > 0.1 then
				local yaw = self.object:getyaw()
				if self.drawtype == "side" then
					yaw = yaw+(math.pi/2)
				end
				local x = math.sin(yaw) * -2
				local z = math.cos(yaw) * 2
				self.object:setacceleration({x=x, y=-10, z=z})
			else
				self.object:setacceleration({x=0, y=-10, z=0})
			end
-- Mobs float in water now, to revert uncomment previous 4 lines and remove following block of 12
--				if minetest.get_item_group(minetest.get_node(self.object:getpos()).name, "water") ~= 0 then
--					self.object:setacceleration({x = x, y = 1.5, z = z})
--				else
--					self.object:setacceleration({x = x, y = -10, z = z}) -- 14.5
--				end
--			else
--				if minetest.get_item_group(minetest.get_node(self.object:getpos()).name, "water") ~= 0 then
--					self.object:setacceleration({x = 0, y = 1.5, z = 0})
--				else
--					self.object:setacceleration({x = 0, y = -10, z = 0}) -- 14.5
--				end
--			end

			-- fall damage
			if self.fall_damage and self.object:getvelocity().y == 0 then
				if not self.old_y then
					self.old_y = self.object:getpos().y
				else
					local d = self.old_y - self.object:getpos().y
					if d > 5 then
						local damage = d-5
						self.object:set_hp(self.object:get_hp()-damage)
						if self.object:get_hp() == 0 then
							self.object:remove()
						end
					end
					self.old_y = self.object:getpos().y
				end
			end
			
			-- if pause state then this is where the loop ends
			-- pause is only set after a monster is hit
			if self.pause_timer > 0 then
				self.pause_timer = self.pause_timer - dtime
				if self.pause_timer <= 0 then
					self.pause_timer = 0
				end
				return
			end
			
			self.timer = self.timer+dtime
			if self.state ~= "attack" then
				if self.timer < 1 then
					return
				end
				self.timer = 0
			end

			if self.sounds and self.sounds.random and math.random(1, 100) <= 1 then
				minetest.sound_play(self.sounds.random, {object = self.object})
			end
			
			local do_env_damage = function(self)
				local pos = self.object:getpos()
				local n = minetest.get_node(pos)

				if self.light_damage and self.light_damage ~= 0
					and pos.y>0
					and minetest.get_node_light(pos)
					and minetest.get_node_light(pos) > 4
					and minetest.get_timeofday() > 0.2
					and minetest.get_timeofday() < 0.8
				then
					self.object:set_hp(self.object:get_hp()-self.light_damage)
					if self.object:get_hp() < 1 then
						self.object:remove()
					end
				end

				if self.water_damage and self.water_damage ~= 0 and
					minetest.get_item_group(n.name, "water") ~= 0
				then
					self.object:set_hp(self.object:get_hp()-self.water_damage)
					if self.object:get_hp() < 1 then
						self.object:remove()
					end
				end
				
				if self.lava_damage and self.lava_damage ~= 0 and
					minetest.get_item_group(n.name, "lava") ~= 0
				then
					self.object:set_hp(self.object:get_hp()-self.lava_damage)
					if self.object:get_hp() < 1 then
						self.object:remove()
					end
				end
			end
			
			self.env_damage_timer = self.env_damage_timer + dtime
			if self.state == "attack" and self.env_damage_timer > 1 then
				self.env_damage_timer = 0
				do_env_damage(self)
			elseif self.state ~= "attack" then
				do_env_damage(self)
			end
			
			-- FIND SOMEONE TO ATTACK
			if ( self.type == "monster" or self.type == "npc" ) and minetest.setting_getbool("enable_damage") and self.state ~= "attack" then
				local s = self.object:getpos()
				local inradius = minetest.get_objects_inside_radius(s,self.view_range)
				local player = nil
				local type = nil
				for _,oir in ipairs(inradius) do
					if oir:is_player() then
						player = oir
						type = "player"
					else
						local obj = oir:get_luaentity()
						if obj then
							player = obj.object
							type = obj.type
						end
					end
					
					if type == "player" or type == "monster" then
						local s = self.object:getpos()
						local p = player:getpos()
						local sp = s
						p.y = p.y + 1
						sp.y = sp.y + 1		-- aim higher to make looking up hills more realistic
						local dist = ((p.x-s.x)^2 + (p.y-s.y)^2 + (p.z-s.z)^2)^0.5
						if dist < self.view_range then -- and self.in_fov(self,p) then
							if minetest.line_of_sight(sp,p,2) == true then
								self.do_attack(self,player,dist)
								break
							end
						end
					end
				end
			end
			
			-- NPC FIND A MONSTER TO ATTACK
--			if self.type == "npc" and self.attacks_monsters and self.state ~= "attack" then
--				local s = self.object:getpos()
--				local inradius = minetest.get_objects_inside_radius(s,self.view_range)
--				for _, oir in pairs(inradius) do
--					local obj = oir:get_luaentity()
--					if obj then
--						if obj.type == "monster" or obj.type == "barbarian" then
--							-- attack monster
--							local p = obj.object:getpos()
--							local dist = ((p.x-s.x)^2 + (p.y-s.y)^2 + (p.z-s.z)^2)^0.5
--							self.do_attack(self,obj.object,dist)
--							break
--						end
--					end
--				end
--			end

			if self.follow ~= "" and not self.following then
				for _,player in pairs(minetest.get_connected_players()) do
					local s = self.object:getpos()
					local p = player:getpos()
					local dist = ((p.x-s.x)^2 + (p.y-s.y)^2 + (p.z-s.z)^2)^0.5
					if self.view_range and dist < self.view_range then
						self.following = player
						break
					end
				end
			end
			
			if self.following and self.following:is_player() then
				if self.following:get_wielded_item():get_name() ~= self.follow then
					self.following = nil
				else
					local s = self.object:getpos()
					local p = self.following:getpos()
					local dist = ((p.x-s.x)^2 + (p.y-s.y)^2 + (p.z-s.z)^2)^0.5
					if dist > self.view_range then
						self.following = nil
						self.v_start = false
					else
						local vec = {x=p.x-s.x, y=p.y-s.y, z=p.z-s.z}
						local yaw = math.atan(vec.z/vec.x)+math.pi/2
						if self.drawtype == "side" then
							yaw = yaw+(math.pi/2)
						end
						if p.x > s.x then
							yaw = yaw+math.pi
						end
						self.object:setyaw(yaw)
						if dist > 2 then
							if not self.v_start then
								self.v_start = true
								self.set_velocity(self, self.walk_velocity)
							else
								if self.jump and self.get_velocity(self) <= 1.5 and self.object:getvelocity().y == 0 then
									local v = self.object:getvelocity()
									v.y = 6
									self.object:setvelocity(v)
								end
								self.set_velocity(self, self.walk_velocity)
							end
							self:set_animation("walk")
						else
							self.v
