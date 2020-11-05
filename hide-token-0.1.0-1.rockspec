package = "hide-token"
version = "0.1.0-1"


supported_platforms = {"linux", "macosx"}
source = {
  url = "http://github.com/beatsbears/kong-plugin-blog",
  tag = "0.1.0"
}

description = {
  summary = "hide-token is a plugin for removing potentially sensitive security token headers from responses.",
  homepage = "http://github.com/beatsbears/kong-plugin-blog",
  license = "MIT"
}

dependencies = {
}

local pluginName = "hide-token"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "schema.lua",
    ["kong.plugins."..pluginName..".header_filter"] = "header_filter.lua",
  }
}