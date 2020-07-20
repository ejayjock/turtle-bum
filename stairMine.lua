--[[ Code to be repeated to create a staircase mine
Series of turtle commands:
  - Dig Up
  - Move Up
  - Dig Up
  - Move down
  - dig down
  - move down
  - dig Forward
  - move forward  ]]




function clearUp()
  cont=true
  while cont do
    if turtle.detectUp() then
      turtle.digUp()
    else
      cont=false
    end
  end
end
function clear()
  cont=true
  while cont do
    if turtle.detect() then
      turtle.dig()
    else
      cont=false
    end
  end
end


function filldown()
  if not turtle.detectDown() then
  turtle.select(1)
  turtle.placeDown()
  end
end


for i=1,50 do
clearUp()
turtle.up()
clearUp()
turtle.down()
turtle.digDown()
turtle.down()
filldown()
clear()
turtle.forward()
end
