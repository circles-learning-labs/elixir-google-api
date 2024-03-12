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

defmodule GoogleApi.GKEHub.V1.Model.ClusterUpgradeMembershipState do
  @moduledoc """
  Per-membership state for this feature.

  ## Attributes

  *   `ignored` (*type:* `GoogleApi.GKEHub.V1.Model.ClusterUpgradeIgnoredMembership.t`, *default:* `nil`) - Whether this membership is ignored by the feature. For example, manually upgraded clusters can be ignored if they are newer than the default versions of its release channel.
  *   `upgrades` (*type:* `list(GoogleApi.GKEHub.V1.Model.ClusterUpgradeMembershipGKEUpgradeState.t)`, *default:* `nil`) - Actual upgrade state against desired.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ignored => GoogleApi.GKEHub.V1.Model.ClusterUpgradeIgnoredMembership.t() | nil,
          :upgrades =>
            list(GoogleApi.GKEHub.V1.Model.ClusterUpgradeMembershipGKEUpgradeState.t()) | nil
        }

  field(:ignored, as: GoogleApi.GKEHub.V1.Model.ClusterUpgradeIgnoredMembership)

  field(:upgrades,
    as: GoogleApi.GKEHub.V1.Model.ClusterUpgradeMembershipGKEUpgradeState,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ClusterUpgradeMembershipState do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ClusterUpgradeMembershipState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ClusterUpgradeMembershipState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
