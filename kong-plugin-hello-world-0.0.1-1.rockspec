local plugin_name = "hello-world"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.0.1"
local rockspec_revision = "1"

local github_account_name = "vm-001"
local github_repo_name = "kong-plugin-hello-world"
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
  license = "",
}


dependencies = {
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}