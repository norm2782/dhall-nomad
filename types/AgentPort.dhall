{- https://www.nomadproject.io/docs/configuration -}
{ http : Optional Natural -- The port used to run the HTTP server.
, rpc : Optional Natural -- The port used for internal RPC communication between agents and servers, and for inter-server traffic for the consensus algorithm (raft).
, serf : Optional Natural -- The port used for the gossip protocol for cluster membership. Both TCP and UDP should be routable between the server nodes on this port.
}
