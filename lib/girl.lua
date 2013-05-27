girl = {}

girl.assets = {
    walking_animation = {
        image = love.graphics.newImage('animations/girl1_1.png'),
    }
}

girl.assets.walking_animation.height = girl.assets.walking_animation.image:getHeight()
girl.assets.walking_animation.width  = girl.assets.walking_animation.image:getWidth()

girl.frames = {
    right = {
        step_one = love.graphics.newQuad(0, 0, 15, 16, girl.assets.walking_animation.width, girl.assets.walking_animation.height),
        step_two = love.graphics.newQuad(15, 0, 15, 16, girl.assets.walking_animation.width, girl.assets.walking_animation.height),
    },
    left = {
        step_one = love.graphics.newQuad(0, 0, 15, 16, girl.assets.walking_animation.width, girl.assets.walking_animation.height),
        step_two = love.graphics.newQuad(15, 0, 15, 16, girl.assets.walking_animation.width, girl.assets.walking_animation.height),
    },
    down = {
        step_one = love.graphics.newQuad(30, 0, 15, 16, girl.assets.walking_animation.width, girl.assets.walking_animation.height),
        step_two = love.graphics.newQuad(45, 0, 15, 16, girl.assets.walking_animation.width, girl.assets.walking_animation.height),
    },
    up = {
        step_one = love.graphics.newQuad(60, 0, 15, 16, girl.assets.walking_animation.width, girl.assets.walking_animation.height),
        step_two = love.graphics.newQuad(75, 0, 15, 16, girl.assets.walking_animation.width, girl.assets.walking_animation.height),
    }
}

girl.frames.left.step_one:flip(true, false)
girl.frames.left.step_two:flip(true, false)

girl.frames.current = girl.frames.down.step_one
