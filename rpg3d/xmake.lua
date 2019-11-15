

target("Lua")
	set_kind("static")
	add_files("../onelua.c")
	--del_files("../lua.c")
	set_languages("c11", "cxx14")
	
	if (is_os("windows")) then
		set_kind("shared")
		add_defines("LUA_BUILD_AS_DLL=1")
	end
	
	
	if (is_os("android")) then
		set_kind("shared")
		add_defines("lua_getlocaledecpoint()=46")		
		add_defines("ANDROID_STL=gnustl_shared")
	end



target("LuaMain")
	set_kind("binary")
	
	add_includedirs("../")
	add_files("../onelua.c")
	
	--add_linkdirs("build/windows/x64/release")
	--add_links("Lua")
	
	set_languages("c11", "cxx14")
	
	add_defines("LUA_BUILD_AS_DLL=1")

	if (is_os("windows")) == false then
		set_enabled(false)
	end


-- target("LuaC")
	-- set_kind("binary")

	-- add_includedirs("../")

	-- add_files("../*.c")
	-- del_files("src/lua.c")

	-- set_languages("c11", "cxx14")

	-- add_defines("LUA_BUILD_AS_DLL=1")

	-- if (is_os("windows")) == false then
		-- set_enabled(false)
	-- end