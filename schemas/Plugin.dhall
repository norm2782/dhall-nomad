let JSON = (../Prelude.dhall).JSON.Type
in { Type = ../types/Plugin.dhall
   , default =
       { args = ([] : List Text)
       , config = None JSON
       }
  }
