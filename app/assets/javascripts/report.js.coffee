$ ->
  ferrariEngineSound = $('#ferrari_engine_sound').get(0)
  ferrariEngineSound.loop = false

  movingCar = ->
    $('.current-car').css("left" : "10%")
    ferrariEngineSound.play()
    $('.current-car').animate
      left: "+=43.5%"
    , 5000, ->
      ferrariEngineSound.pause()
      ferrariEngineSound.currentTime = 1

  movingCar()
  setInterval (->
    movingCar()
  ), 15000