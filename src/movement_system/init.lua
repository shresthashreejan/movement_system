local movement = {}

function movement.update(entity, dt)
    local context = {
        speed = entity.move_speed or 200,
        dx = entity.move_input.x,
        dy = entity.move_input.y
    }

    for _, processor in ipairs(entity.movement_processors) do
        processor.process(entity, context)
    end

    entity.x = entity.x + context.dx * context.speed * dt
    entity.y = entity.y + context.dy * context.speed * dt
end

return movement