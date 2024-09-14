player1 = {}

function player1.load()
    player1.x = 10
    player1.y = WindowHeight / 2 - 50
    player1.width = 5
    player1.height = 100
    player1.score = 0
end

function player1.update(dt)
    if love.keyboard.isDown("z") then
        player1.y = player1.y - paddelsSpeed
    end
    
    if love.keyboard.isDown("s") then
        player1.y = player1.y + paddelsSpeed
    end
    
    if ball.x - ball.radius == player1.x + player1.width+1 and ball.y + ball.radius/2 > player1.y and ball.y < player1.y + player1.height then
        ball.dx = ball.dx * (-1)
    end
end

function player1.draw()
    love.graphics.setColor(100,0,0)
    love.graphics.rectangle("fill", player1.x, player1.y, player1.width, player1.height)
end

player2 = {}

function player2.load()
    player2.x = WindowWidth - 15
    player2.y = WindowHeight / 2 - 50
    player2.width = 5
    player2.height = 100
    player2.score = 0
end

function player2.update(dt)
    if love.keyboard.isDown("p") then
        player2.y = player2.y - paddelsSpeed
    end
    
    if love.keyboard.isDown("m") then
        player2.y = player2.y + paddelsSpeed
    end

    if ball.x + ball.radius == player2.x+1 and ball.y + ball.radius > player2.y and ball.y < player2.y + player2.height then
        ball.dx = ball.dx * (-1)
    end

end

function player2.draw()
    love.graphics.setColor(0,0,100)
    love.graphics.rectangle("fill", player2.x, player2.y, player2.width, player2.height)
end