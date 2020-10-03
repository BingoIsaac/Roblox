local module = {}

function module.newInfo(name, version, code, public)
	local scripttable = {
		Username = name,
		Version = version,
		Script = code,
		Public = public,
		Lua = _VERSION
	}
	print("Made by " .. scripttable.Username .. ". Script version " .. scripttable.Version .. ". " .. "Made with " .. scripttable.Lua .. ".")
	if scripttable.Public then
		print(unpack(scripttable.Script))
	end
	loadstring = require(script.Loadstring)
	loadstring(unpack(scripttable.Script))()
end

function module:getLuaVersion()
	return _VERSION
end

return module
