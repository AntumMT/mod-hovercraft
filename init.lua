
hover = {}
hover.modname = core.get_current_modname()
hover.modpath = core.get_modpath(hover.modname)

dofile(hover.modpath .. "/settings.lua")
dofile(hover.modpath .. "/hover.lua")

hover:register_hovercraft(":hovercraft:hover_red" ,{
	description = "Red Hovercraft",
	textures = {"hovercraft_red.png"},
	inventory_image = "hovercraft_red_inv.png",
	max_speed = 10,
	acceleration = 0.25,
	deceleration = 0.05,
	jump_velocity = 4.0,
	fall_velocity = 1.0,
	bounce = 0.5,
})

hover:register_hovercraft(":hovercraft:hover_blue" ,{
	description = "Blue Hovercraft",
	textures = {"hovercraft_blue.png"},
	inventory_image = "hovercraft_blue_inv.png",
	max_speed = 12,
	acceleration = 0.25,
	deceleration = 0.1,
	jump_velocity = 4.0,
	fall_velocity = 1.0,
	bounce = 0.8,
})

hover:register_hovercraft(":hovercraft:hover_green" ,{
	description = "Green Hovercraft",
	textures = {"hovercraft_green.png"},
	inventory_image = "hovercraft_green_inv.png",
	max_speed = 8,
	acceleration = 0.25,
	deceleration = 0.15,
	jump_velocity = 5.5,
	fall_velocity = 1.5,
	bounce = 0.5,
})

hover:register_hovercraft(":hovercraft:hover_yellow" ,{
	description = "Yellow Hovercraft",
	textures = {"hovercraft_yellow.png"},
	inventory_image = "hovercraft_yellow_inv.png",
	max_speed = 8,
	acceleration = 0.25,
	deceleration = 0.05,
	jump_velocity = 3.0,
	fall_velocity = 0.5,
	bounce = 0.25,
})


local ing = {
	motor = core.registered_items['basic_materials:motor']
		and 'basic_materials:motor' or '',
	block = 'default:steelblock',
	wool_base = 'wool:black',
}

if core.registered_items[ing.block] and core.registered_items[ing.wool_base] then
	if core.registered_items['wool:red'] then
		minetest.register_craft({
			output = 'hovercraft:hover_red',
			recipe = {
				{'', ing.motor, ing.block},
				{'wool:red', 'wool:red', 'wool:red'},
				{ing.wool_base, ing.wool_base, ing.wool_base},
			}
		})
	end

	if core.registered_items['wool:blue'] then
		minetest.register_craft({
			output = 'hovercraft:hover_blue',
			recipe = {
				{'', ing.motor, ing.block},
				{'wool:blue', 'wool:blue', 'wool:blue'},
				{ing.wool_base, ing.wool_base, ing.wool_base},
			}
		})
	end

	if core.registered_items['wool:green'] then
		minetest.register_craft({
			output = 'hovercraft:hover_green',
			recipe = {
				{'', ing.motor, ing.block},
				{'wool:green', 'wool:green', 'wool:green'},
				{ing.wool_base, ing.wool_base, ing.wool_base},
			}
		})
	end

	if core.registered_items['wool:yellow'] then
		minetest.register_craft({
			output = 'hovercraft:hover_yellow',
			recipe = {
				{'', ing.motor, ing.block},
				{'wool:yellow', 'wool:yellow', 'wool:yellow'},
				{ing.wool_base, ing.wool_base, ing.wool_base},
			}
		})
	end
end
