let Map = (../Prelude.dhall).Map.Type
-- let Port = (../types/Port.dhall)
in { Type = ../types/Agent.dhall
   , default =
     { -- acl = None ACL
     --, addresses : Optional Addresses -- Specifies the bind address for individual network services. Any values configured in this stanza take precedence over the default bind_addr. These values should be specified in IP format without a port (ex. "0.0.0.0"). To set the port, see the ports field. The values support go-sockaddr/template format.
     --, advertise : Optional Advertise -- Specifies the advertise address for individual network services. This can be used to advertise a different address to the peers of a server or a client node to support more complex network configurations such as NAT. This configuration is optional, and defaults to the bind address of the specific network service if it is not provided. Any values configured in this stanza take precedence over the default bind_addr.
     -- , audit : Optional Audit -- Enterprise-only. Specifies audit logging configuration.
      bind_addr = None Text
     --, client : Optional Client -- Specifies configuration which is specific to the Nomad client.
     --, consul : Optional Consul -- Specifies configuration for connecting to Consul.
     , datacenter = None Text
     , data_dir = None Text
     , disable_anonymous_signature = None Bool
     , disable_update_check = None Bool
     , enable_debug = None Bool
     , enable_syslog = None Bool
     , http_api_response_headers = None (Map Text Text)
     , leave_on_interrupt = None Bool
     , leave_on_terminate = None Bool
     , https_handshake_timeout = None Text
     , http_max_conns_per_client = None Natural
     , rpc_handshake_timeout = None Text
     , rpc_max_conns_per_client = None Natural
     , log_level = None Text
     , log_json = None Bool
     , log_file = None Text
     , log_rotate_bytes = None Natural
     , log_rotate_duration = None Text
     , log_rotate_max_files = None Natural
     , name = None Text
     , plugin_dir = None Text
     --, plugin : Optional Plugin -- Specifies configuration for a specific plugin. The plugin stanza may be repeated, once for each plugin being configured. The key of the stanza is the plugin's executable name relative to the plugin_dir.
     --, ports = None Port
     , region = None Text
     --, sentinel : Optional Sentinel -- Specifies configuration for Sentinel policies.
     --, server : Optional Server -- Specifies configuration which is specific to the Nomad server.
     , syslog_facility = None Text
     --, tls : Optional TLS -- Specifies configuration for TLS.
     --, vault : Optional Vault -- Specifies configuration for connecting to Vault.
     }
  }
