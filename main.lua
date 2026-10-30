-- FireRed Languages: translation-only diagnostic for Gen1Recomp API 3.
-- Keep engine strings and extracted FireRed script text in separate catalogs.
return function(mod)
  local compile = loadstring or load

  local function applyCatalog(filename, registry)
    local source, readError = mod:read("lang/" .. filename .. ".lua")
    if not source then
      mod.log:warn("Missing catalog %s: %s", filename, tostring(readError))
      return 0
    end
    local chunk, compileError = compile(source, "@lang/" .. filename .. ".lua")
    if not chunk then
      mod.log:error("Cannot compile %s: %s", filename, tostring(compileError))
      return 0
    end
    local ok, values = pcall(chunk)
    if not ok or type(values) ~= "table" then
      mod.log:error("Invalid catalog %s: %s", filename, tostring(values))
      return 0
    end
    local count = 0
    for key, value in pairs(values) do
      if type(key) == "string" and type(value) == "string" and value ~= "" then
        registry:override(key, value)
        count = count + 1
      end
    end
    return count
  end

  local engineCount = applyCatalog("strings", mod.content.strings)
  local scriptCount = applyCatalog("dialogue", mod.content.text)
  mod.log:info("FireRed Languages 0.4.0 registered %d engine strings and %d script texts", engineCount, scriptCount)
end
