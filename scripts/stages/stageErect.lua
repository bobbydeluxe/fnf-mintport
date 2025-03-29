function onCreate()
	makeLuaSprite('darkBG', 'mainStage/erect/backDark', 729, -170)
	addLuaSprite('darkBG')

	makeAnimatedLuaSprite('crowd', 'mainStage/erect/crowd', 560, 290)
	addAnimationByPrefix('crowd', 'idle', 'Symbol 2 instance 1', 12)
	setScrollFactor('crowd', 0.8, 0.8)
	addLuaSprite('crowd')

	if lowQuality == false then
		makeLuaSprite('smallLight', 'mainStage/erect/brightLightSmall', 967, -103)
		setScrollFactor('smallLight', 1.2, 1.2)
		setBlendMode('smallLight', 'ADD')
		addLuaSprite('smallLight')
	end

	makeLuaSprite('backStage', 'mainStage/erect/bg', -603, -187)
	addLuaSprite('backStage')

	if lowQuality == false then
		makeLuaSprite('server', 'mainStage/erect/server', -361, 205)
		addLuaSprite('server')

		makeLuaSprite('greenServerLight', 'mainStage/erect/lightgreen', -171, 242)
		setBlendMode('greenServerLight', 'ADD')
		addLuaSprite('greenServerLight')

		makeLuaSprite('redServerLight', 'mainStage/erect/lightred', -101, 560)
		setObjectOrder('redServerLight', getObjectOrder('greenServerLight'))
		setBlendMode('redServerLight', 'ADD')
		addLuaSprite('redServerLight')
	end

	makeLuaSprite('orangeHue', 'mainStage/erect/orangeLight', 189, -195)
	setBlendMode('orangeHue', 'ADD')
	addLuaSprite('orangeHue')

	if lowQuality == false then
		makeLuaSprite('stageLights', 'mainStage/erect/lights', -601, -147)
		setScrollFactor('stageLights', 1.2, 1.2)
		addLuaSprite('stageLights', true)

		makeLuaSprite('light', 'mainStage/erect/lightAbove', 804, -117)
		setBlendMode('light', 'ADD')
		addLuaSprite('light', true)
	end
end

function onCreatePost()
	if shadersEnabled == true then
		initLuaShader('adjustColor')
		setSpriteShader('boyfriend', 'adjustColor')
		setSpriteShader('dad', 'adjustColor')
		setSpriteShader('gf', 'adjustColor')

		setShaderFloat('boyfriend', 'hue', 12)
		setShaderFloat('boyfriend', 'saturation', 0)
		setShaderFloat('boyfriend', 'contrast', 7)
		setShaderFloat('boyfriend', 'brightness', -23)
		
		setShaderFloat('dad', 'hue', -32)
		setShaderFloat('dad', 'saturation', 0)
		setShaderFloat('dad', 'contrast', -23)
		setShaderFloat('dad', 'brightness', -33)

		setShaderFloat('gf', 'hue', -9)
		setShaderFloat('gf', 'saturation', 0)
		setShaderFloat('gf', 'contrast', -4)
		setShaderFloat('gf', 'brightness', -30)
	end
end