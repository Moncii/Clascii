--!/usr/bin/lua

function charPut(char, color, x, y)
  buffer[y][x].char = char
  buffer[y][x].charColor = color
end

function colorPut(color, x, y)
  buffer[y][x].bgColor = color
end

function bufferClear()
  for y=1, #buffer do
    for x=1, #buffer do
      buffer[y][x] = {
        bgColor = 1,
        charColor = 8,
        char = nil,
      }
    end
  end
end
