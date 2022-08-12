while 1 do
    isBlock, data = turtle.inspectDown()
    if (data['state']['age'] == 7) then
        turtle.digDown()
        turtle.placeDown()
    end
    turtle.forward()
    if (turtle.detect() == true) then
        turtle.turnLeft()
        turtle.turnLeft()
        while turtle.detect() == false do
            turtle.forward()
        end

        if (turtle.getItemCount(1) > 2 and turtle.getItemCount(2) > 2) then
            turtle.select(1)
            turtle.drop(turtle.getItemCount(1) - 2)
            turtle.select(2)
            turtle.drop(turtle.getItemCount(2) - 2)
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