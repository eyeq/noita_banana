dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform(entity_id)

SetRandomSeed(pos_x, pos_y)

for _ = 1, 3 do
    local length = 600
    local theta = math.rad(Random(1, 360))

    local vel_x = math.cos(theta) * length
    local vel_y = math.sin(theta) * length
    shoot_projectile_from_projectile(entity_id, "mods/banana/items/banana_split.xml", pos_x, pos_y, vel_x, vel_y)
end
EntityKill(entity_id)
