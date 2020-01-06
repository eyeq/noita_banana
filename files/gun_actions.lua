table.insert(actions,
        {
            id = "BANANA",
            name = "Banana",
            description = "Explosive banana that sends out three more bouncing explosive bananas.",
            sprite = "mods/banana/gfx/banana.png",
            type = ACTION_TYPE_PROJECTILE,
            spawn_level = "0,1,2,3,4,5,6",
            spawn_probability = "1,1,1,1,1,1,1",
            price = 420,
            mana = 25,
            max_uses = 7,
            action = function()
                add_projectile("mods/banana/items/banana.xml")
                c.fire_rate_wait = c.fire_rate_wait + 150
            end,
        }
)