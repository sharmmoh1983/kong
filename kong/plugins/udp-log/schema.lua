return {
  name = "udp-log",
  fields = {
    { config = {
        type = "record",
        fields = {
          { host = { type = "string", required = true }, },
          { port = { type = "integer", required = true }, },
          { timeout = { type = "number", default = 10000 }, },
    }, }, },
  },
}
