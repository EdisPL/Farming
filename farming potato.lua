lenght = 7
while 1 do
for i=1, lenght do
    turtle.forward()
    turtle.turnRight()
    isBlock, data = turtle.inspect()
    if (isBlock) then
        if (data['state']['age'] == 7) then
           turtle.dig()
           turtle.place()
        end
    end
    turtle.turnLeft()
end

turtle.turnLeft()
turtle.turnLeft()

for i=1, lenght do
    turtle.forward()
end

if (turtle.getItemCount() > 1) then
    turtle.drop(turtle.getItemCount() - 1)
end

turtle.turnLeft()
isBlock, data = turtle.inspect()
if (isBlock) then
    if (data['state']['age'] == 7) then
       turtle.dig()
       turtle.place()
    end
end
turtle.turnLeft()

if (turtle.getFuelLevel() < 16 ) then
    turtle.select(16)
    turtle.suckUp(1)
    turtle.refuel()
    turtle.select(1)
end
sleep(60)
end