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

defmodule GoogleApi.GKEOnPrem.V1.Model.ResourceStatus do
  @moduledoc """
  ResourceStatus describes why a cluster or node pool has a certain status. (e.g., ERROR or DEGRADED).

  ## Attributes

  *   `conditions` (*type:* `list(GoogleApi.GKEOnPrem.V1.Model.ResourceCondition.t)`, *default:* `nil`) - ResourceCondition provide a standard mechanism for higher-level status reporting from controller.
  *   `errorMessage` (*type:* `String.t`, *default:* `nil`) - Human-friendly representation of the error message from controller. The error message can be temporary as the controller controller creates a cluster or node pool. If the error message persists for a longer period of time, it can be used to surface error message to indicate real problems requiring user intervention.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Reflect current version of the resource.
  *   `versions` (*type:* `GoogleApi.GKEOnPrem.V1.Model.Versions.t`, *default:* `nil`) - Shows the mapping of a given version to the number of machines under this version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditions => list(GoogleApi.GKEOnPrem.V1.Model.ResourceCondition.t()) | nil,
          :errorMessage => String.t() | nil,
          :version => String.t() | nil,
          :versions => GoogleApi.GKEOnPrem.V1.Model.Versions.t() | nil
        }

  field(:conditions, as: GoogleApi.GKEOnPrem.V1.Model.ResourceCondition, type: :list)
  field(:errorMessage)
  field(:version)
  field(:versions, as: GoogleApi.GKEOnPrem.V1.Model.Versions)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.ResourceStatus do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.ResourceStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.ResourceStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
