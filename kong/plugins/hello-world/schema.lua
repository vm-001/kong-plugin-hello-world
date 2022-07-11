local typedefs = require "kong.db.schema.typedefs"

return {
  name = "hello-world",
  fields = {
    { protocols = typedefs.protocols_http }, -- this plugin will only run within Nginx HTTP module
    { config = {
      type = "record",
      fields = {
        { message = { type = "string", required = true, default = "Hello World!" }, },
      },
    },
    },
  },
}
