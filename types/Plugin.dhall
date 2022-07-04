{- https://www.nomadproject.io/docs/configuration/plugin -}
let JSON = (../Prelude.dhall).JSON.Type
in { args : List Text -- Specifies a set of arguments to pass to the plugin binary when it is executed.
   , config : Optional JSON -- Specifies configuration values for the plugin as JSON. The accepted values are plugin specific. Please refer to the individual plugin's documentation.
   }
