-- Connect to monitor as peripheral (change the text inside the wrap string to right, top, left, bottom to change the connection direction)
local monitor = peripheral.wrap("left")

-- Check for advanced monitor to display color (It's not possible to display color in on a normal monitor)
if not term.isColor() or not monitor.isColor() then
    print("Fehler: Der Monitor unterstützt keine Farben!")
    return
end

monitor.setTextScale(2)  -- change text size

-- clear monitor
monitor.setBackgroundColor(colors.black)
monitor.clear()

-- get monitor size
local width, height = monitor.getSize()

-- define text
local text1 = "Welcome to the"
local text2 = " VOID "
local text3 = "factory"

-- Calculate x-pos (horizontal allignment for fullText)
local fullText = text1 .. text2 .. text3
local x = math.floor((width - #fullText) / 2) + 1
local y = math.floor(height / 2)  -- vertical middle

-- Set cursor and display text
monitor.setCursorPos(x, y)
monitor.setTextColor(colors.white)
monitor.write(text1)

monitor.setTextColor(colors.purple)
monitor.write(text2)

monitor.setTextColor(colors.white)
monitor.write(text3)
