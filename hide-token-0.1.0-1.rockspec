package = "hide-token"
version = "0.1.0-1"


supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/niteshcse14/custom-auth.git",
  tag = "0.1.0"
}

description = {
  summary = "hide-token is a plugin for removing potentially sensitive security token headers from responses.",
  homepage = "https://github.com/niteshcse14/custom-auth.git",
  license = "MIT"
}

dependencies = {
}

local pluginName = "hide-token"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".header_filter"] = "kong/plugins/"..pluginName.."/header_filter.lua",
  }
}