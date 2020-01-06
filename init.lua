dofile("mods/banana/config.lua")
dofile_once("data/scripts/lib/utilities.lua")

function OnPlayerSpawned(player_entity)
    local init_check_flag = "banana_done"
    if GameHasFlagRun(init_check_flag) then
        return
    end
    GameAddFlagRun(init_check_flag)

    local x, y = EntityGetTransform(player_entity)

    if (banana_generate_on_player_spawned) then
        EntityLoad("mods/banana/items/banana_wand.xml", x, y - 100)
    end
end

ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/banana/files/gun_actions.lua")
