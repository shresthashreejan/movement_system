local player_controller = {}

function player_controller.update(player)
    local x, y = 0, 0

    if love.keyboard.isDown(player.controls.up) then y = y - 1 end
    if love.keyboard.isDown(player.controls.down) then y = y + 1 end
    if love.keyboard.isDown(player.controls.left) then x = x - 1 end
    if love.keyboard.isDown(player.controls.right) then x = x + 1 end

    local len = math.sqrt(x * x + y * y)
    if len > 0 then
        x = x / len
        y = y / len
    end

    player.move_input.x = x
    player.move_input.y = y

    player.is_sprinting = love.keyboard.isDown(player.controls.sprint)
end

return player_controller