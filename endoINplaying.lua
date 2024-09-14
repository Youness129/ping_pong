endoINplaying = {}

function endoINplaying.load()
    endoINplaying.width = 25
    endoINplaying.height = 20
    endoINplaying.x = WindowWidth/2 - endoINplaying.width/2
    endoINplaying.y = 5
end


function endoINplaying.draw()
    if x >= endoINplaying.x and y >= endoINplaying.y and x <= endoINplaying.x + endoINplaying.width and y <= endoINplaying.y + endoINplaying.height then
        love.graphics.setColor(150/255,200/255,250/255)
        love.graphics.rectangle("fill", endoINplaying.x, endoINplaying.y, endoINplaying.width, endoINplaying.height)
        love.graphics.setColor(255/255,255/255,255/255)
        love.graphics.print("<-", endoINplaying.x + 5, endoINplaying.y + 2)
        if love.mouse.isDown(1) then
            gameMode = 0
        end
    else
        love.graphics.setColor(150/255,200/255,250/255)
        love.graphics.rectangle("line", endoINplaying.x, endoINplaying.y, endoINplaying.width, endoINplaying.height)
        love.graphics.print("<-", endoINplaying.x + 5, endoINplaying.y + 2)
    end
end
