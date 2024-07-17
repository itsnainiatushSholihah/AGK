
// Project: game 1 
// Created: 2024-04-27

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Space Air Craft")
SetWindowSize( 768, 1024,0)
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 768, 1024) //doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

LoadImage(1, "space-ship.png") //space ship image
LoadImage(10,"alien-ship.png") //alien ship image
LoadImage(100, "asteroid-1.png") //asteroid 1 image
LoadImage(101, "asteroid-2.png") //asteroid 1 image
LoadImage(200, "particels.png") //asteroid particels image
LoadImage(1000, "background.png") //background image

LoadSound(1, "backsound.wav")
PlaySound (1, 60, 1)

CreateSprite(1,1)
SetSpriteSize(1,100, 100)
SetSpritePosition(1, 0, GetVirtualHeight() - GetSpriteHeight(1))

SetJoystickScreenPosition(200, 800, 20)//membuat joystick

do
    x = GetJoystickX() * 25 //mengambil nilai joystick
    
    SetSpritePosition(1, GetSpriteX(1) + x, GetSpriteY(1)) //merubah posisi ID sprite 1 ke posisi yang lain
    
    if(GetSpriteX(1) < 0)
		SetSpriteX(1, 0)
	endif
	
	if(GetSpriteX(1) > GetVirtualWidth() - GetSpriteWidth(1))
		SetSpriteX(1, GetVirtualWidth() - GetSpriteWidth(1))
	endif

    Print( ScreenFPS() )
    Sync()
loop
