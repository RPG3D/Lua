

target("Lua")
	set_kind("shared")
	

	set_languages("c11", "cxx14")
	
	add_files("../*.c")
	del_files("../lua.c")
	del_files("../onelua.c")


	add_headerfiles("../*.h")

	add_rules("mode.debug", "mode.release")

	if is_mode("debug") then
		set_symbols("debug")
		set_optimize("none")
	else
		set_optimize("fastest")
	end

	if (is_os("windows")) then
		add_cxflags("/TC", {force = true})
		add_defines("LUA_BUILD_AS_DLL=1")
	end
	
	
	if (is_os("android")) then
		add_defines("lua_getlocaledecpoint()=46")		
		add_defines("ANDROID_STL=gnustl_shared")
	end

	if (is_os("ios")) then
		set_kind("static")
	end

target("LuaMain")
	set_kind("binary")
	
	add_files("../lua.c")

	add_headerfiles("../*.h")
	
	add_linkdirs("build/$(os)/$(arch)/$(mode)")
	add_links("Lua")
	
	set_languages("c11", "cxx14")

	add_rules("mode.debug", "mode.release")

	if (is_os("windows")) then
		add_cxflags("/TC", {force = true})
		add_defines("LUA_BUILD_AS_DLL=1")
	end


	if is_mode("debug") then
		set_symbols("debug")
		set_optimize("none")
	else
		set_optimize("fastest")
	end
	
	if (is_os("windows")) == false then
		set_enabled(false)
	end

