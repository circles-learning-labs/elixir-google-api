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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCheckGroundingRequest do
  @moduledoc """
  Request message for GroundedGenerationService.CheckGrounding method.

  ## Attributes

  *   `answerCandidate` (*type:* `String.t`, *default:* `nil`) - Answer candidate to check. It can have a maximum length of 4096 tokens.
  *   `facts` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundingFact.t)`, *default:* `nil`) - List of facts for the grounding check. We support up to 200 facts.
  *   `groundingSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCheckGroundingSpec.t`, *default:* `nil`) - Configuration of the grounding check.
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - The user labels applied to a resource must meet the following requirements: * Each resource can have multiple labels, up to a maximum of 64. * Each label must be a key-value pair. * Keys have a minimum length of 1 character and a maximum length of 63 characters and cannot be empty. Values can be empty and have a maximum length of 63 characters. * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. All characters must use UTF-8 encoding, and international characters are allowed. * The key portion of a label must be unique. However, you can use the same key with multiple resources. * Keys must start with a lowercase letter or international character. See [Google Cloud Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements) for more details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answerCandidate => String.t() | nil,
          :facts =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundingFact.t()
            )
            | nil,
          :groundingSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCheckGroundingSpec.t()
            | nil,
          :userLabels => map() | nil
        }

  field(:answerCandidate)

  field(:facts,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundingFact,
    type: :list
  )

  field(:groundingSpec,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCheckGroundingSpec
  )

  field(:userLabels, type: :map)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCheckGroundingRequest do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCheckGroundingRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCheckGroundingRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
