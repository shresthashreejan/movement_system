local sprint = {}

function sprint.process(entity, context)
    if entity.is_sprinting then
        context.speed = context.speed * entity.sprint_multiplier
    end
end

return sprint