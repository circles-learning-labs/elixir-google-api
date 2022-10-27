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

defmodule GoogleApi.NetworkConnectivity.V1.Model.InternalRange do
  @moduledoc """
  The InternalRange resource for IPAM operations within a VPC network. Used to represent a private address range along with behavioral characterstics of that range (it's usage and peering behavior). Networking resources can link to this range if they are created as belonging to it. Next id: 14

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the InternalRange was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of this resource.
  *   `ipCidrRange` (*type:* `String.t`, *default:* `nil`) - IP range that this InternalRange defines.
  *   `labels` (*type:* `map()`, *default:* `nil`) - User-defined labels.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of a InternalRange. Format: projects/{project}/locations/{location}/internalRanges/{internal_range} See: https://google.aip.dev/122#fields-representing-resource-names
  *   `network` (*type:* `String.t`, *default:* `nil`) - The URL or resource ID of the network in which to reserve the Internal Range. The network cannot be deleted if there are any reserved Internal Ranges referring to it. Legacy network is not supported. This can only be specified for a global internal address. Example: - URL: /compute/v1/projects/{project}/global/networks/{resourceId} - ID: network123
  *   `overlaps` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Types of resources that are allowed to overlap with the current InternalRange.
  *   `peering` (*type:* `String.t`, *default:* `nil`) - The type of peering set for this InternalRange.
  *   `prefixLength` (*type:* `integer()`, *default:* `nil`) - An alternate to ip_cidr_range. Can be set when trying to create a reservation that automatically finds a free range of the given size. If both ip_cidr_range and prefix_length are set, it's an error if the range sizes don't match. Can also be used during updates to change the range size.
  *   `targetCidrRange` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Can be set to narrow down or pick a different address space while searching for a free range. If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the InternalRange was updated.
  *   `usage` (*type:* `String.t`, *default:* `nil`) - The type of usage set for this InternalRange.
  *   `users` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The list of resources that refer to this internal range. Resources that use the InternalRange for their range allocation are referred to as users of the range. Other resources mark themselves as users while doing so by creating a reference to this InternalRange. Having a user, based on this reference, prevents deletion of the InternalRange referred to. Can be empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :ipCidrRange => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :overlaps => list(String.t()) | nil,
          :peering => String.t() | nil,
          :prefixLength => integer() | nil,
          :targetCidrRange => list(String.t()) | nil,
          :updateTime => DateTime.t() | nil,
          :usage => String.t() | nil,
          :users => list(String.t()) | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:ipCidrRange)
  field(:labels, type: :map)
  field(:name)
  field(:network)
  field(:overlaps, type: :list)
  field(:peering)
  field(:prefixLength)
  field(:targetCidrRange, type: :list)
  field(:updateTime, as: DateTime)
  field(:usage)
  field(:users, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.InternalRange do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.InternalRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.InternalRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end