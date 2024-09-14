menu = {}

function menu.load()
    menu.btn1 = {}
    menu.btn1.width = 150
    menu.btn1.Height = 50
    menu.btn1.y = WindowHeight / 3
    menu.btn1.x = WindowWidth / 2 - menu.btn1.width / 2
    
    menu.btn2 = {}
    menu.btn2.width = 150
    menu.btn2.Height = 50
    menu.btn2.x = WindowWidth / 2 - menu.btn1.width / 2
    menu.btn2.y = WindowHeight / 2

    menu.btn3 = {}
    menu.btn3.width = 150
    menu.btn3.Height = 50
    menu.btn3.x = WindowWidth / 2 - menu.btn1.width / 2
    menu.btn3.y = WindowHeight / 1.5
end

function menu.update(dt)
    x, y = love.mouse.getPosition()
end

function menu.draw()

    if x >= menu.btn1.x and x <= menu.btn1.x + menu.btn1.width and y >= menu.btn1.y and y <= menu.btn1.y + menu.btn1.Height and love.mouse.isDown(1) then    
        gameMode = 1
    elseif x >= menu.btn1.x and x <= menu.btn1.x + menu.btn1.width and y >= menu.btn1.y and y <= menu.btn1.y + menu.btn1.Height then
        love.graphics.rectangle("fill", menu.btn1.x, menu.btn1.y, menu.btn1.width, menu.btn1.Height)
        love.graphics.setColor(0/255,0/255,0/255)
        love.graphics.print("Start", menu.btn1.x + menu.btn1.width/3, menu.btn1.y + menu.btn1.Height/3.8, 0, 1.5, 1.5)
    else
        love.graphics.rectangle("line", menu.btn1.x, menu.btn1.y, menu.btn1.width, menu.btn1.Height)
        love.graphics.setColor(255/255,255/255,255/255)
        love.graphics.print("Start", menu.btn1.x + menu.btn1.width/3, menu.btn1.y + menu.btn1.Height/3.4, 0, 1.5, 1.5)
    end

    if x >= menu.btn2.x and x <= menu.btn2.x + menu.btn2.width and y >= menu.btn2.y and y <= menu.btn2.y + menu.btn2.Height then
        if love.mouse.isDown(1) then
            love.timer.sleep(1/5)
            music.ON = not music.ON
        end
        if music.ON then
            love.graphics.rectangle("fill", menu.btn2.x, menu.btn2.y, menu.btn2.width, menu.btn2.Height)
            love.graphics.setColor(0/255,0/255,0/255)
            love.graphics.print("Music: ON", menu.btn2.x + menu.btn2.width/5, menu.btn2.y + menu.btn2.Height/3.8, 0, 1.5, 1.5)
        else
            love.graphics.rectangle("fill", menu.btn2.x, menu.btn2.y, menu.btn2.width, menu.btn2.Height)
            love.graphics.setColor(0/255,0/255,0/255)
            love.graphics.print("Music: OFF", menu.btn2.x + menu.btn2.width/5, menu.btn2.y + menu.btn2.Height/3.8, 0, 1.5, 1.5)
        end
    else
        if music.ON then
            love.graphics.setColor(255/255,255/255,255/255)
            love.graphics.rectangle("line", menu.btn2.x, menu.btn2.y, menu.btn2.width, menu.btn2.Height)
            love.graphics.print("Music: ON", menu.btn2.x + menu.btn2.width/5, menu.btn2.y + menu.btn2.Height/3.4, 0, 1.5, 1.5)
        else
            love.graphics.setColor(255/255,255/255,255/255)
            love.graphics.rectangle("line", menu.btn2.x, menu.btn2.y, menu.btn2.width, menu.btn2.Height)
            love.graphics.print("Music: OFF", menu.btn2.x + menu.btn2.width/5, menu.btn2.y + menu.btn2.Height/3.8, 0, 1.5, 1.5)
        end
        if music.ON then
            music.play()
        else
            music.pause()
        end
    end
    
    if x >= menu.btn3.x and x <= menu.btn3.x + menu.btn3.width and y >= menu.btn3.y and y <= menu.btn3.y + menu.btn3.Height and love.mouse.isDown(1) then
        gameMode = 2
    elseif x >= menu.btn3.x and x <= menu.btn3.x + menu.btn3.width and y >= menu.btn3.y and y <= menu.btn3.y + menu.btn3.Height then
        love.graphics.rectangle("fill", menu.btn3.x, menu.btn3.y, menu.btn3.width, menu.btn3.Height)
        love.graphics.setColor(0/255,0/255,0/255)
        love.graphics.print("About Me",  menu.btn3.x + menu.btn3.width/5, menu.btn3.y + menu.btn3.Height/3.8, 0, 1.5, 1.5)
    else
        love.graphics.setColor(255/255,255/255,255/255)
        love.graphics.rectangle("line", menu.btn3.x, menu.btn3.y, menu.btn3.width, menu.btn3.Height)
        love.graphics.print("About Me",  menu.btn3.x + menu.btn3.width/5, menu.btn3.y + menu.btn3.Height/3.4, 0, 1.5, 1.5)
    end
    
end
