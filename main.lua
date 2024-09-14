require("menu")
require("endoINplaying")
require("players")
require("ball")
require("score")
require("music")

ballSpeed = 2
paddelsSpeed = 3
gameMode = 0
WindowHeight = love.graphics.getHeight()
WindowWidth = love.graphics.getWidth()
topBorder = 30
bottomBorder =  WindowHeight - 20
leftBorder = 5
rightBorder =  WindowWidth - 15

function love.load()
    love.graphics.setBackgroundColor(0,0,0)
    menu.load()
    player1.load()
    player2.load()
    ball.load()

    music.load()

    endoINplaying.load()
end

function love.update(dt)

    x, y = love.mouse.getPosition()

    if gameMode == 0 then
        player1.x = 10
        player1.y = WindowHeight / 2 - 50
        player2.x = WindowWidth - 15
        player2.y = WindowHeight / 2 - 50
        ball.x = WindowWidth / 2
        ball.y = WindowHeight / 2
        player1.score = 0
        player2.score = 0
    elseif gameMode == 1 then
        player1.update()
        player2.update()
        if player1.score >= 10 then
            player1.height = 80
        elseif player1.score >= 50 then
            player1.height = 60
        elseif player1.score >= 100 then
            player1.height = 40
        end
        if player2.score >= 10 then
            player2.height = 80
        elseif player2.score >= 50 then
            player2.height = 60
        elseif player2.score >= 100 then
            player2.height = 40
        end
        ball.update()
    end
end

function love.draw()
    love.graphics.setColor(255/255,255/255,255/255)
    love.graphics.rectangle("line", 5, 30, WindowWidth-10, WindowHeight-35)
    if gameMode == 0 then
        menu.draw()
    elseif gameMode == 1 then
        player1.draw()
        player2.draw()
        ball.draw()
        score.draw()
        endoINplaying.draw()
    elseif gameMode == 2 then
        love.graphics.print("Hello, my name is Yones", 60, 50)
        love.graphics.print("i am a free rogue programmer", 60, 65)
        love.graphics.print("& i am not an expert, but", 60, 80)
        love.graphics.print("if you like my work", 60, 95)
        love.graphics.print("& you want a service", 60, 110)
        love.graphics.print("i can work with you remotly,", 60, 125)
        love.graphics.print("i can make anything for you with good price.", 60, 140)
        endoINplaying.draw()
    end
end