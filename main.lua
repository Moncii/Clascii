--!/usr/bin/lua

require 'helper'

love.graphics.setDefaultFilter('nearest', 'nearest')

function love.load()

  font = love.graphics.newFont('PICO-8.ttf', 10)
  love.graphics.setFont(font)

  windowScale = 2
  windowWidth = 256
  windowHeight = windowWidth
  love.window.setMode(windowWidth*windowScale, windowHeight*windowScale)

  colors = {
    {0,0,0},
    {29/255, 43/255, 83/255},
    {126/255, 37/255, 83/255},
    {0, 135/255, 81/255},
    {171/255, 82/255, 54/255},
    {95/255, 87/255, 79/255},
    {194/255, 195/255, 199/255},
    {1, 241/255, 232/255},
    {1, 0, 77/255},
    {1, 163/255, 0},
    {1, 236/255, 38/255},
    {0, 288/255, 54/255},
    {41/255, 173/255, 1},
    {131, 118/255, 156/255},
    {1, 119/255, 168/255},
    {1, 204/255, 170/255},
  }

  buffer = {}
  for y=1, windowHeight/8 do
    table.insert(buffer, y, {})
    for x=1, windowWidth/8 do
      buffer[y][x] = {
        bgColor = 1,
        charColor = 8,
        char = nil,
      }
    end
  end

  print(#buffer)

  canvas = love.graphics.newCanvas(windowWidth, windowHeight)

end

function love.update(dt)

  bufferClear()

  --for y=1, 32 do
    --for x=1, 32 do
      --colorPut(math.random(1, 16), x, y)
      charPut('4', 8, 1, 1)
    --end
  --end

end

function love.draw()

  love.graphics.setCanvas(canvas)
  love.graphics.clear()

  for y=1, #buffer do
    for x=1, #buffer[y] do

      local char = buffer[y][x].char
      local charColor = buffer[y][x].charColor
      local bgColor = buffer[y][x].bgColor
      local x = (x-1)*8
      local y = (y-1)*8
     
      love.graphics.setColor(colors[bgColor])
      love.graphics.rectangle('fill', x, y, 8, 8)

      love.graphics.setColor(colors[charColor])
      if(char ~= nil) then
        love.graphics.print(char, x, y)
      end

    end
  end

  --love.graphics.setColor(1,1,1)
  --love.graphics.print('hey there!')

  love.graphics.setCanvas()

  love.graphics.draw(canvas, 0, 0, 0, windowScale, windowScale)

end
