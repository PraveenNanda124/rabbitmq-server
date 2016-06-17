## The contents of this file are subject to the Mozilla Public License
## Version 1.1 (the "License"); you may not use this file except in
## compliance with the License. You may obtain a copy of the License
## at http://www.mozilla.org/MPL/
##
## Software distributed under the License is distributed on an "AS IS"
## basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
## the License for the specific language governing rights and
## limitations under the License.
##
## The Original Code is RabbitMQ.
##
## The Initial Developer of the Original Code is GoPivotal, Inc.
## Copyright (c) 2007-2016 Pivotal Software, Inc.  All rights reserved.


defmodule RabbitMQ.CLI.CommandBehaviour do
  @callback usage() :: String.t | [String.t]
  @callback flags() :: [Atom.t]
  @callback validate(List.t, Map.t) :: :ok|{:validation_failure, Atom.t|{Atom.t, String.t}} 
  @callback merge_defaults(List.t, Map.t) :: {List.t, Map.t}
  @callback banner(List.t, Map.t) :: String.t
  @callback run(List.t, Map.t) :: any 
  @callback switches() :: Keyword.t
end
