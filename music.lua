music = {}

function music.load()
    music.ON = true
    music.src = love.audio.newSource("music.mp3", "stream")
    music.src:setVolume(500)
    music.src:setLooping(true)
end

function music.play()
    music.src:play()
end

function music.pause()
    music.src:pause()
end