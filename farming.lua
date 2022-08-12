for i=1, 999999999999 do
    turtle.turnRight()
    isBlock, data = turtle.inspect()
    if (data['state']['age'] == 7) then
        turtle.dig()
        turtle.place()
    end
    turtle.turnLeft()
    turtle.forward()
    if (turtle.detect() == true) then
        turtle.turnLeft()
        turtle.turnLeft()
        while turtle.detect() == false do
            turtle.forward()
        end

        if (turtle.getItemCount(1) > 1 and turtle.getItemCount(2) > 1) then
            turtle.drop(turtle.getItemCount(1) - 1)
            turtle.drop(turtle.getItemCount(2) - 1)
        end

        turtle.turnLeft()
        turtle.turnLeft()
        if (turtle.getFuelLimit() < 2) then
            turtle.select(16)
            turtle.refuel()
            turtle.suckUp(1)
            turtle.select(1)
        end
    end
end