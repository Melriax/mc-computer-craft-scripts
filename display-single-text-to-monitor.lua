-- Connect to monitor as peripheral (change the text inside the wrap string to right, top, left, bottom to change the connection direction)
local monitor = peripheral.wrap("left")
monitor.setTextScale(2)  -- change text size

-- clear monitor
monitor.clear()

-- get monitor size
local width, height = monitor.getSize()

-- define text
local text = "Hallo Welt!"

-- Calculate x-pos (horizontal allignment)
local x = math.floor((width - #text) / 2) + 1
-- Calculate y-pos (vertical allignment)
local y = math.floor(height / 2) + 1

-- Set cursor and display text
monitor.setCursorPos(x, y)
monitor.write(text)
