local typedefs = require "kong.db.schema.typedefs"

-- If you add more configuration parameters, be sure to check if it needs to be added to cache key
-- Fields currently used for cache_key: ldap_host, ldap_port, base_dn, attribute, cache_ttl

return {
  name = "ldap-auth",
  fields = {
    { consumer = typedefs.no_consumer },
    { config = {
        type = "record",
        nullable = false,
        fields = {
          { ldap_host = { type = "string", required = true }, },
          { ldap_port = { type = "integer", required = true }, },
          { start_tls = { type = "boolean", required = true, default = false }, },
          { verify_ldap_host = { type = "boolean", required = true, default = false }, },
          { base_dn = { type = "string", required = true }, },
          { attribute = { type = "string", required = true }, },
          { cache_ttl = { type = "number", required = true, default = 60 }, },
          { hide_credentials = { type = "boolean", default = false }, },
          { timeout = { type = "number", default = 10000 }, },
          { keepalive = { type = "number", default = 60000 }, },
          { anonymous = { type = "string", uuid = true, legacy = true }, },
          { header_type = { type = "string", default = "ldap" }, },
        },
    }, },
  },
}
