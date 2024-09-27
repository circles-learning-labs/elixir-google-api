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

defmodule GoogleApi.NetworkConnectivity.V1.Model.LinkedProducerVpcNetwork do
  @moduledoc """
  Next ID: 7

  ## Attributes

  *   `excludeExportRanges` (*type:* `list(String.t)`, *default:* `nil`) - Optional. IP ranges encompassing the subnets to be excluded from peering.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Immutable. The URI of the Service Consumer VPC that the Producer VPC is peered with.
  *   `peering` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the VPC peering between the Service Consumer VPC and the Producer VPC (defined in the Tenant project) which is added to the NCC hub. This peering must be in ACTIVE state.
  *   `producerNetwork` (*type:* `String.t`, *default:* `nil`) - Output only. The URI of the Producer VPC.
  *   `serviceConsumerVpcSpoke` (*type:* `String.t`, *default:* `nil`) - Output only. The Service Consumer Network spoke.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludeExportRanges => list(String.t()) | nil,
          :network => String.t() | nil,
          :peering => String.t() | nil,
          :producerNetwork => String.t() | nil,
          :serviceConsumerVpcSpoke => String.t() | nil
        }

  field(:excludeExportRanges, type: :list)
  field(:network)
  field(:peering)
  field(:producerNetwork)
  field(:serviceConsumerVpcSpoke)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.LinkedProducerVpcNetwork do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.LinkedProducerVpcNetwork.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.LinkedProducerVpcNetwork do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
