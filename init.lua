dofile(minetest.get_modpath("badplayer").."/api.lua")

bp:register_mob("badplayer:badplayer1", {
	type = "npc",		
	hp_max = 5,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer1.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 65,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
bp:register_spawn("badplayer:badplayer2", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)

bp:register_mob("badplayer:badplayer2", {
	type = "badp",
	hp_max = 5,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer2.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "default:jungletree",
		chance = 1,
		min = 5,
		max = 23,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer3", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer3", {
	type = "badp",
	hp_max = 43,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer3.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:stone_with_mese",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 50,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer4", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer4", {
	type = "badp",
	hp_max = 12,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer4.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "default:sword_steel",
		chance = 1,
		min =1,
		max = 2,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer5", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer5", {
	type = "npc",
	hp_max = 4,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer5.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 2,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 15,
		max = 50,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
bp:register_spawn("badplayer:badplayer6", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer6", {
	type = "badp",
	hp_max = 80,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer6.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 3,
	walk_velocity = 3,
	run_velocity = 4,
	damage = 3,
	drops = {
		{name = "default:sword_mese",
		chance = 1,
		min = 1,
		max = 1,},
	},
	armor = 50,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer7", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer7", {
	type = "badp",
	hp_max = 20,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer7.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_bronze"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1.2,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "default:sword_bronze",
		chance = 1,
		min = 1,
		max = 1,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer8", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer8", {
	type = "badp",
	hp_max = 5,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer8.png",
				"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 1.5,
	damage = 2,
	drops = {
		{name = "default:snow",
		chance = 1,
		min = 3,
		max = 33,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer9", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer9", {
	type = "badp",
	hp_max = 30,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer9.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_bronze"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "default:sword_bronze",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer10", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer10", {
	type = "badp",
	hp_max = 200,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer10.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 2,
	run_velocity = 30,
	damage = 4,
	drops = {
		{name = "default:nyancat",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 70,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer11", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer11", {
	type = "badp",
	hp_max = 5,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer11.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 2,
	drops = {
		{name = "default:sapling",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer12", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer12", {
	type = "badp",
	hp_max = 5,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer12.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 0.3,
	run_velocity = 1.5,
	damage = 2,
	drops = {
		{name = "default:grass_1",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer13", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer13", {
	type = "badp",
	hp_max = 5,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer13.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1.6,
	run_velocity = 2.5,
	damage = 2,
	drops = {
		{name = "default:leaves",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 10,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer14", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer14", {
	type = "npc",
	hp_max = 5,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer14.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 2,
	drops = {
		{name = "default:papyrus",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})
bp:register_spawn("badplayer:badplayer15", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer15", {
	type = "badp",
	hp_max = 55,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer15.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 7,
	walk_velocity = 1.3,
	run_velocity = 3.9,
	damage = 3,
	drops = {
		{name = "default:sword_mese",
		chance = 1,
		min = 1,
		max = 1,},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer16", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer16", {
	type = "badp",
	hp_max = 5,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer16.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_wood"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 1.4,
	damage = 2,
	drops = {
		{name = "default:pick_wood",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer17", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer17", {
	type = "npc",
	hp_max = 5,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer17.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2.3,
	damage = 2,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})
bp:register_spawn("badplayer:badplayer18", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer18", {
	type = "badp",
	hp_max = 10,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer18.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_stone"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 2,
	drops = {
		{name = "default:pick_stone",
		chance = 1,
		min = 1,
		max = 3,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer19", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer19", {
	type = "npc",
	hp_max = 5,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer19.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 0.6,
	run_velocity = 1.8,
	damage = 2,
	drops = {
		{name = "default:torch",
		chance = 1,
		min = 30,
		max = 50,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})
bp:register_spawn("badplayer:badplayer20", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer20", {
	type = "npc",
	hp_max = 15,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer20.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1.7,
	run_velocity = 2.5,
	damage = 2,
	drops = {
		{name = "default:pick_steel",
		chance = 1,
		min = 1,
		max = 2,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})
bp:register_spawn("badplayer:badplayer21", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer21", {
	type = "badp",
	hp_max = 50,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer21.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 4,
	walk_velocity = 2.5,
	run_velocity = 7,
	damage = 4,
	drops = {
		{name = "default:pick_mese",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer22", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer22", {
	type = "npc",
	hp_max = 50,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer22.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "default:chest_locked",
		chance = 1,
		min = 0,
		max = 1,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,

})
bp:register_spawn("badplayer:badplayer23", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer23", {
	type = "badp",
	hp_max = 12,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer23.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 7,
	walk_velocity = 1.3,
	run_velocity = 3.5,
	damage = 2,
	drops = {
		{name = "default:steelblock",
		chance = 1,
		min = 0,
		max = 1,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer24", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer24", {
	type = "badp",
	hp_max = 59,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer24.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1.5,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "default:goldblock",
		chance = 1,
		min = 1,
		max = 1,},
	},
	armor = 60,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer25", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer25", {
	type = "badp",
	hp_max = 70,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer25.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:pick_diamond"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 12,
	walk_velocity = 2,
	run_velocity = 3,
	damage = 5,
	drops = {
		{name = "default:pick_diamond",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 65,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer26", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer26", {
	type = "badp",
	hp_max = 20,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer26.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:axe_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 2,
	drops = {
		{name = "default:axe_steel",
		chance = 1,
		min = 1,
		max = 2,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer27", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer27", {
	type = "badp",
	hp_max = 80,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer27.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_diamond"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 10,
	walk_velocity = 2,
	run_velocity = 4,
	damage = 6,
	drops = {
		{name = "default:sword_diamond",
		chance = 1,
		min = 1,
		max = 1,},
	},
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer28", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer28", {
	type = "badp",
	hp_max = 20,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer28.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 0.5,
	run_velocity = 1.5,
	damage = 2,
	drops = {
		{name = "default:obsidian",
		chance = 1,
		min = 3,
		max = 5,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer29", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer29", {
	type = "badp",
	hp_max = 9,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer29.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_stone"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 2,
	damage = 2,
	drops = {
		{name = "default:sword_stone",
		chance = 1,
		min = 1,
		max = 2,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
bp:register_spawn("badplayer:badplayer30", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 18, -1, 7000, 1, 31000)
bp:register_mob("badplayer:badplayer30", {
	type = "badp",
	hp_max = 90,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"badplayer30.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_mese"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 5,
	walk_velocity = 1,
	run_velocity = 5,
	damage = 4,
	drops = {
		{name = "default:diamondblock",
		chance = 1,
		min = 1,
		max = 3,},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})

if minetest.setting_get("log_mods") then
	minetest.log("action", "BadPlayer mobs loaded")
end
