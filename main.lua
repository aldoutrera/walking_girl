require('lib/girl')
require('lib/background')

function love.load()
    y = love.graphics.getHeight() / 2
    x = love.graphics.getWidth() / 2
    move_speed = 5
end

function love.draw()
    background:draw()
    love.graphics.drawq(girl.assets.walking_animation.image, girl.frames.current, x, y)
end


function love.keypressed(key)
    if key == "right" and x < 800 then
        girl.frames.current = toogle_animation_step(girl.frames.current, girl.frames.right)
        x = x + move_speed
    end
    if key == "left" and x > 0 then
        girl.frames.current = toogle_animation_step(girl.frames.current, girl.frames.left)
        x = x - move_speed
    end
    if key == "up" and y > 0 then
        girl.frames.current = toogle_animation_step(girl.frames.current, girl.frames.up)
        y = y - move_speed
    end
    if key == "down" and y < 600 then
        girl.frames.current = toogle_animation_step(girl.frames.current, girl.frames.down)
        y = y + move_speed
    end
end

function toogle_animation_step(current_frame, new_frame)
    if current_frame == new_frame.step_one then
        return new_frame.step_two
    else
        return new_frame.step_one
    end
end
