# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Games.V1.Model.PeerSessionDiagnostics do
  @moduledoc """
  This is a JSON template for peer session diagnostics.

  ## Attributes

  *   `connectedTimestampMillis` (*type:* `String.t`, *default:* `nil`) - Connected time in milliseconds.
  *   `kind` (*type:* `String.t`, *default:* `games#peerSessionDiagnostics`) - Uniquely identifies the type of this resource. Value is always the fixed string games#peerSessionDiagnostics.
  *   `participantId` (*type:* `String.t`, *default:* `nil`) - The participant ID of the peer.
  *   `reliableChannel` (*type:* `GoogleApi.Games.V1.Model.PeerChannelDiagnostics.t`, *default:* `nil`) - Reliable channel diagnostics.
  *   `unreliableChannel` (*type:* `GoogleApi.Games.V1.Model.PeerChannelDiagnostics.t`, *default:* `nil`) - Unreliable channel diagnostics.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectedTimestampMillis => String.t(),
          :kind => String.t(),
          :participantId => String.t(),
          :reliableChannel => GoogleApi.Games.V1.Model.PeerChannelDiagnostics.t(),
          :unreliableChannel => GoogleApi.Games.V1.Model.PeerChannelDiagnostics.t()
        }

  field(:connectedTimestampMillis)
  field(:kind)
  field(:participantId)
  field(:reliableChannel, as: GoogleApi.Games.V1.Model.PeerChannelDiagnostics)
  field(:unreliableChannel, as: GoogleApi.Games.V1.Model.PeerChannelDiagnostics)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.PeerSessionDiagnostics do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.PeerSessionDiagnostics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.PeerSessionDiagnostics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
