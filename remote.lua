local keyboard = libs.keyboard;

------------------------------------------------
-- File operations
------------------------------------------------
--@help run irfan view - define your installation path
actions.run_irfan = function()
	os.start("C:/Program Files/IrfanView/i_view32.exe");
end
	--@help open image in the favourite folder
actions.fave_a = function()
	keyboard.press("o");
	keyboard.text("E:\\photos\\subfolder\\image.jpg");
	keyboard.press("enter");
end
--@help open browser
actions.open_dir= function()
	keyboard.stroke("ctrl","b");
end
--@help open previous folder
actions.folder_up= function()
	keyboard.stroke("ctrl","b");
	keyboard.press("left");
	keyboard.press("up");
	keyboard.press("enter");
end
--@help open next folder
actions.folder_down= function()
	keyboard.stroke("ctrl","b");
	keyboard.press("left");
	keyboard.press("down");
	keyboard.press("enter");
end
--@help full screen
actions.fullscreen = function()
	keyboard.press("enter");
end
--@help save modified file in original location filename-rem
--be sure to set the quality of saved images in the program
actions.save= function()
	keyboard.stroke("ctrl","s");
	keyboard.press("right","oem_minus","r","e","m","enter");
end

------------------------------------------------
-- Playback
------------------------------------------------


--@help previous image
actions.play_prev = function()
	keyboard.stroke("backspace");
end

--@help next image
actions.play_next = function()
	keyboard.stroke("space");
end
--@help 5 images back
actions.back_five = function()
	keyboard.stroke("ctrl","backspace");
end

--@help 5 images forward
actions.fwd_five = function()
	keyboard.stroke("ctrl","space");
end
--@help fullscreen
actions.fullscreen = function()
	keyboard.stroke("enter");
end
--@help random image
actions.random_img = function()
	keyboard.stroke("ctrl","m");
end
--@help slideshow
actions.slideshow = function()
	keyboard.stroke("shift", "a");
end
--@help exit program
actions.exit = function()
	keyboard.stroke("alt", "f4");
end


------------------------------------------------
-- Cursors
------------------------------------------------


--@help left
actions.cur_left = function()
	keyboard.stroke("left");
end

--@help right
actions.cur_right = function()
	keyboard.stroke("right");
end

--@help up
actions.cur_up = function()
	keyboard.stroke("up");
end

--@help down
actions.cur_down = function()
	keyboard.stroke("down");
end


------------------------------------------------
-- Zooming
------------------------------------------------


--@help zoom out
actions.zoom_out = function()
	keyboard.press("oem_minus");
end
--@help zoom in
actions.zoom_in = function()
	keyboard.press("oem_plus");
end
--@help full size view
actions.size_full = function()
	keyboard.press("6");
end
--@help fit to screen
actions.size_real = function()
	keyboard.press("1");
end
--@help toggle view size
actions.toggle_size = function()
	keyboard.press("f");
end


------------------------------------------------
-- Rotation
------------------------------------------------


--@help rotate Left
actions.rotate_left = function()
	keyboard.text("l");
end
--@help rotate left 45
actions.rl45= function()
	keyboard.stroke("ctrl","u");
	keyboard.press("oem_minus","4","5","enter");
end
--@help rotate right
actions.rotate_right= function()
	keyboard.text("r");
end	
--@help rotate right 45
actions.rr45= function()
	keyboard.stroke("ctrl","u");
	keyboard.press("4","5","enter");
end

--@help flip horizontal
actions.mirror_h = function()
	keyboard.press("h");
end
--@help flip vertical
actions.mirror_v = function()
	keyboard.press("v");
end

------------------------------------------------
-- Image adjust
------------------------------------------------
--@help greyscale
actions.greyscale = function()
	keyboard.stroke("ctrl","g");
end
--@help darken
actions.darken = function()
	keyboard.stroke("shift","g");
	keyboard.press("tab","tab","tab","tab","pgup","pgup","enter");
end
--@help brighten
actions.brighten = function()
	keyboard.stroke("shift","g");
	keyboard.press("tab","tab","tab","tab","pgdown","pgdown","enter");
end
--@help less colour
actions.desat = function()
	keyboard.stroke("shift","g");
	keyboard.press("tab","tab","tab","tab","tab","tab","pgup","pgup","pgup","pgup","pgup","pgup","enter");
end
--@help more colour
actions.sat = function()
	keyboard.stroke("shift","g");
	keyboard.press("tab","tab","tab","tab","tab","tab","pgdown","pgdown","pgdown","pgdown","pgdown","pgdown","enter");
end
--@help reload original image
actions.reload = function()
	keyboard.stroke("shift","r");
end

-------------------------------------------------------
--- unused functions ---
--- you may replace any of functions you do not use ---
-------------------------------------------------------
--@help yes = press Y
actions.yes= function()
	keyboard.press("y","enter");
end
--@help no = press N
actions.yes= function()
	keyboard.press("n","enter");
end
--@help undo last operation
actions.undo = function()
	keyboard.stroke("ctrl","z");
end
	--@help redo last operation
actions.undo = function()
	keyboard.stroke("ctrl","j");
end
--@help apply pre-selected effect
actions.effect = function()
	keyboard.stroke("ctrl","e");
	keyboard.press("enter");
end
	--@help maximal colour
actions.max_sat = function()
	keyboard.stroke("shift","g");
	keyboard.press("tab","tab","tab","tab","tab","tab","tab","2","5","5","enter");
end
	--@help red reduction
actions.red_red = function()
	keyboard.stroke("ctrl","a");
	keyboard.stroke("shift","y");
	keyboard.stroke("ctrl","a");
end  
