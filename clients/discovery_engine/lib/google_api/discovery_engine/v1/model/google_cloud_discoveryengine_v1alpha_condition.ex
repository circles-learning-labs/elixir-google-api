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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaCondition do
  @moduledoc """
  Defines circumstances to be checked before allowing a behavior

  ## Attributes

  *   `activeTimeRange` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaConditionTimeRange.t)`, *default:* `nil`) - Range of time(s) specifying when condition is active. Maximum of 10 time ranges.
  *   `queryRegex` (*type:* `String.t`, *default:* `nil`) - Optional. Query regex to match the whole search query. Cannot be set when Condition.query_terms is set. This is currently supporting promotion use case.
  *   `queryTerms` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaConditionQueryTerm.t)`, *default:* `nil`) - Search only A list of terms to match the query on. Cannot be set when Condition.query_regex is set. Maximum of 10 query terms.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeTimeRange =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaConditionTimeRange.t()
            )
            | nil,
          :queryRegex => String.t() | nil,
          :queryTerms =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaConditionQueryTerm.t()
            )
            | nil
        }

  field(:activeTimeRange,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaConditionTimeRange,
    type: :list
  )

  field(:queryRegex)

  field(:queryTerms,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaConditionQueryTerm,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaCondition do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaCondition.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaCondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
