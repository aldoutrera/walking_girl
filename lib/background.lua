background = {}

background.default = love.graphics.newImage('assets/black_lozenge.png')

background.draw = function ()
    for i = 0, love.graphics.getWidth() / background.current:getWidth() do
        for j = 0, love.graphics.getHeight() / background.current:getHeight() do
            love.graphics.draw(background.current, i * background.current:getWidth(), j * background.current:getHeight())
        end
    end
end

background.current = background.default
