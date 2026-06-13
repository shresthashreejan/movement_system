local movement = require("src.movement_system")
local sprint = require("src.movement_system.sprint")
local player_controller = require("src.player_controller")

local player = {}

player.movement_processors = {
    sprint
}

player.controls = {
    up = "w",
    down = "s",
    left = "a",
    right = "d",
    sprint = "lshift"
}

function player.load()
    local w, h = love.graphics.getDimensions()
    player.x = w / 2
    player.y = h / 2

    player.move_speed = 400
    player.sprint_multiplier = 2

    player.move_input = {
        x = 0,
        y = 0
    }
end

function player.update(dt)
    player_controller.update(player)
    movement.update(player, dt)
end

function player.draw()
    love.graphics.rectangle("fill", player.x, player.y, 20, 20)
end

return player