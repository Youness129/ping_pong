ball = {}

function ball.load()
    ball.x = WindowWidth / 2
    ball.y = WindowHeight / 2

    ball.radius = 10

    ball.dx = -1 ^ love.math.random(0,1)  *  ballSpeed
    ball.dy = -1 ^ love.math.random(0,1)  *  ballSpeed
end

function ball.update(dt)

    if ball.y - ball.radius < topBorder or ball.y > bottomBorder then
        ball.dy = ball.dy * (-1)
    end

    if ball.x >= rightBorder then
        ball.x = WindowWidth / 2
        ball.y = WindowHeight / 2
        ball.dx = ball.dx * (-1)
        player1.score = player1.score + 1
        love.system.vibrate(1)
    end

    if ball.x + ball.radius <= leftBorder then
        ball.x = WindowWidth / 2
        ball.y = WindowHeight / 2
        ball.dx = ball.dx * (-1)
        player2.score = player2.score + 1
        love.system.vibrate(1)
    end

    ball.x = ball.x + ball.dx
    ball.y = ball.y + ball.dy
end

function ball.draw()
    love.graphics.setColor(0/255,255/255,200/255)
    love.graphics.circle("fill", ball.x, ball.y, ball.radius)
end
