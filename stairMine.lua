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


function filldown(slot)
  if not turtle.detectDown() then
  turtle.select(slot)
  turtle.placeDown()
  end
end

print("how Deep?")
nDeeep=tonumber(io.read())
print("What number slot is the fill material in?")
nSlot=tonumber(io.read())

for i=1,nDeeep do
clearUp()
turtle.up()
clearUp()
turtle.down()
turtle.digDown()
turtle.down()
filldown(nSlot)
clear()
turtle.forward()
end
