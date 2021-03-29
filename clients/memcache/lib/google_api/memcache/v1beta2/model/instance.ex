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

defmodule GoogleApi.Memcache.V1beta2.Model.Instance do
  @moduledoc """
  A Memorystore for Memcached instance

  ## Attributes

  *   `authorizedNetwork` (*type:* `String.t`, *default:* `nil`) - The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the instance was created.
  *   `discoveryEndpoint` (*type:* `String.t`, *default:* `nil`) - Output only. Endpoint for the Discovery API.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.
  *   `instanceMessages` (*type:* `list(GoogleApi.Memcache.V1beta2.Model.InstanceMessage.t)`, *default:* `nil`) - List of messages that describe the current state of the Memcached instance.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  *   `memcacheFullVersion` (*type:* `String.t`, *default:* `nil`) - Output only. The full version of memcached server running on this instance. System automatically determines the full memcached version for an instance based on the input MemcacheVersion. The full version format will be "memcached-1.5.16".
  *   `memcacheNodes` (*type:* `list(GoogleApi.Memcache.V1beta2.Model.Node.t)`, *default:* `nil`) - Output only. List of Memcached nodes. Refer to Node message for more details.
  *   `memcacheVersion` (*type:* `String.t`, *default:* `nil`) - The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.
  *   `nodeConfig` (*type:* `GoogleApi.Memcache.V1beta2.Model.NodeConfig.t`, *default:* `nil`) - Required. Configuration for Memcached nodes.
  *   `nodeCount` (*type:* `integer()`, *default:* `nil`) - Required. Number of nodes in the Memcached instance.
  *   `parameters` (*type:* `GoogleApi.Memcache.V1beta2.Model.MemcacheParameters.t`, *default:* `nil`) - Optional: User defined parameters to apply to the memcached process on each node.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of this Memcached instance.
  *   `updateAvailable` (*type:* `boolean()`, *default:* `nil`) - Output only. Returns true if there is an update waiting to be applied
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the instance was updated.
  *   `zones` (*type:* `list(String.t)`, *default:* `nil`) - Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizedNetwork => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :discoveryEndpoint => String.t() | nil,
          :displayName => String.t() | nil,
          :instanceMessages => list(GoogleApi.Memcache.V1beta2.Model.InstanceMessage.t()) | nil,
          :labels => map() | nil,
          :memcacheFullVersion => String.t() | nil,
          :memcacheNodes => list(GoogleApi.Memcache.V1beta2.Model.Node.t()) | nil,
          :memcacheVersion => String.t() | nil,
          :name => String.t() | nil,
          :nodeConfig => GoogleApi.Memcache.V1beta2.Model.NodeConfig.t() | nil,
          :nodeCount => integer() | nil,
          :parameters => GoogleApi.Memcache.V1beta2.Model.MemcacheParameters.t() | nil,
          :state => String.t() | nil,
          :updateAvailable => boolean() | nil,
          :updateTime => DateTime.t() | nil,
          :zones => list(String.t()) | nil
        }

  field(:authorizedNetwork)
  field(:createTime, as: DateTime)
  field(:discoveryEndpoint)
  field(:displayName)
  field(:instanceMessages, as: GoogleApi.Memcache.V1beta2.Model.InstanceMessage, type: :list)
  field(:labels, type: :map)
  field(:memcacheFullVersion)
  field(:memcacheNodes, as: GoogleApi.Memcache.V1beta2.Model.Node, type: :list)
  field(:memcacheVersion)
  field(:name)
  field(:nodeConfig, as: GoogleApi.Memcache.V1beta2.Model.NodeConfig)
  field(:nodeCount)
  field(:parameters, as: GoogleApi.Memcache.V1beta2.Model.MemcacheParameters)
  field(:state)
  field(:updateAvailable)
  field(:updateTime, as: DateTime)
  field(:zones, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Memcache.V1beta2.Model.Instance do
  def decode(value, options) do
    GoogleApi.Memcache.V1beta2.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Memcache.V1beta2.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
