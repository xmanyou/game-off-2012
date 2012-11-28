class Zoko

  constructor: (container) ->
    canvas = container.find('canvas')[0]
    canvasOverlay = container.find('#overlay')
    console.log(canvas)
    e3d.init(canvas)
    levelView = new LevelView()
    new PlayerController(levelView)
    new CameraController(levelView, canvasOverlay)
    game = new Game(levelView)
    ui = new UI(container)
    game.observers = [ui]
    e3d.run()