local old_register_node = minetest.register_node

minetest.register_node = function(name, def)
    if def.tile_images and not def.tiles then
        def.tiles = def.tile_images
        def.tile_images = nil
    end
    return old_register_node(name, def)
end