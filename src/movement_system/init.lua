local input = require("src.movement_system.input")

local movement = {}
movement.processors = {}

function movement.add_processor(processor)
    table.insert(movement.processors, processor)
end

function movement.update(entity, dt)
    local dx, dy = input.get_direction(entity)
    local speed = entity.move_speed or 200

    for _, processor in ipairs(movement.processors) do
        speed = processor.process(entity, speed)
    end

    entity.x = entity.x + dx * speed * dt
    entity.y = entity.y + dy * speed * dt
end

return movement