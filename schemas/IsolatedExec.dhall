let TaskConfig = ../types/TaskConfig.dhall

in  { Type = ../types/IsolatedExec.dhall
    , default.args = None (List Text)
    , new = TaskConfig.IsolatedExec
    }
