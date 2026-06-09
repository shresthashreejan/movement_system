local sprint = {}

function sprint.process(entity, speed)
    if entity.controls.sprint and love.keyboard.isDown(entity.controls.sprint) then
        return speed * (entity.sprint_multiplier or 2)
    end
    return speed
end

return sprint