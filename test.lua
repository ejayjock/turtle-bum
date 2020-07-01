print("how Deep")
nDeeep=io.read()
nDeeep=tonumber(nDeeep)

for j=1,20 do

for i=1,nDeeep do
 turtle.digDown()
 turtle.down()
end
for i=1,nDeeep do
 turtle.up()
end

turtle.forward()
end
