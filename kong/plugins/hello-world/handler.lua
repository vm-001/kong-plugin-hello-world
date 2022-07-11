local kong_meta = require "kong.meta"

local kong = kong

local HelloWorldHandler = {}

HelloWorldHandler.PRIORITY = 0
HelloWorldHandler.VERSION = kong_meta.version

function HelloWorldHandler:init_worker(conf)
  kong.log.debug("in init_woker phase")
end

function HelloWorldHandler:certificate(conf)
  kong.log.debug("in certificate phase")
end

function HelloWorldHandler:rewrite(conf)
  kong.log.debug("in rewrite phase")
end

function HelloWorldHandler:access(conf)
  kong.log.debug("in access phase, message: ", conf.message)
end

function HelloWorldHandler:header_filter(conf)
  kong.log.debug("in header_filter phase")
end

function HelloWorldHandler:body_filter(conf)
  kong.log.debug("in body_filter phase")
end

function HelloWorldHandler:log(conf)
  kong.log.debug("in log phase")
end

return HelloWorldHandler
