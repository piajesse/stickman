-- Load some default values for our rectangle.
function love.load()
	x, y, w, h = 20, 20, 30, 60
end

-- Increase the size of the rectangle every frame.
function love.update(dt)
	if love.keyboard.isDown('w', 'up' ) then
	y = y - 2
	end
	if love.keyboard.isDown('a', 'left') then
	x = x - 2
	end
	if love.keyboard.isDown('s', 'down') then
	y = y + 2
	end
	if love.keyboard.isDown('d', 'right') then
	x = x + 2
	end
end

-- Draw a coloured rectangle.
function love.draw()
	-- In versions prior to 11.0, color component values are (0, 102, 102)
	love.graphics.setColor(1, 1, 1)
	love.graphics.rectangle("line", x, y,  w,  h)
end
