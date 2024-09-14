function length(num)
    if num < 10 then a = 1
    elseif num < 100 then a = 2
    elseif num < 1000 then a = 3
    elseif num < 10000 then a = 4
    elseif num < 100000 then a = 5
    elseif num < 1000000 then a = 6 end
    return a
end

score = {}

function score.draw()
    love.graphics.setColor(255/255,0/255,0/255)
    love.graphics.print(player1.score, 5, 1, 0, 2, 2)
    love.graphics.setColor(0/255,0/255,255/255)
    space = length(player2.score) * 20
    love.graphics.print(player2.score, WindowWidth - space, 1, 0, 2, 2)
end