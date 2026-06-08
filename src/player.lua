local movement = require("src.movement")

local player = {}

function player.load()
    local w, h = love.graphics.getDimensions()
    player.x = w / 2
    player.y = h / 2
    player.speed = 400
end

function player.update(dt)
    movement.move(player, dt)
end

function player.draw()
    love.graphics.rectangle("fill", player.x, player.y, 20, 20)
end

return player