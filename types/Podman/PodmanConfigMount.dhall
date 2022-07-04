{- https://www.nomadproject.io/docs/drivers/podman#mounts -}
let VolumeOptions = ./PodmanVolumeOptions.dhall

let BindOptions = ./PodmanBindOptions.dhall

let TmpfsOptions = ./PodmanTmpfsOptions.dhall

let VolumeConfig =
      { type : ./PodmanVolumeType.dhall
      , target : Text
      , source : Text
      , readonly : Bool
      , volume_options : Optional VolumeOptions
      }

let BindConfig =
      { type : ./PodmanBindType.dhall
      , target : Text
      , source : Text
      , readonly : Bool
      , bind_options : Optional BindOptions
      }

let TmpfsConfig =
      { type : ./PodmanTmpfsType.dhall
      , target : Text
      , readonly : Bool
      , tmpfs_options : Optional TmpfsOptions
      }

let Variants =
      < Volume : VolumeConfig | Bind : BindConfig | Tmpfs : TmpfsConfig >

in  { Type = Variants
    , VolumeConfig
    , BindConfig
    , TmpfsConfig
    , VolumeOptions
    , BindOptions
    , TmpfsOptions
    }
