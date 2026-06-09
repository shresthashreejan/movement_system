local input = {}

function input.get_direction(entity)
    local dx, dy = 0, 0

    if love.keyboard.isDown(entity.controls.up) then dy = dy - 1 end
    if love.keyboard.isDown(entity.controls.down) then dy = dy + 1 end
    if love.keyboard.isDown(entity.controls.left) then dx = dx - 1 end
    if love.keyboard.isDown(entity.controls.right) then dx = dx + 1 end

    local len = math.sqrt(dx * dx + dy * dy)
    if len > 0 then
        dx = dx / len
        dy = dy / len
    end
    return dx, dy
end

return input