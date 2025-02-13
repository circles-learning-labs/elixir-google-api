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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidate do
  @moduledoc """
  A response candidate generated from the model.

  ## Attributes

  *   `content` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundedGenerationContent.t`, *default:* `nil`) - Content of the candidate.
  *   `groundingMetadata` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadata.t`, *default:* `nil`) - Grounding metadata for the generated content.
  *   `groundingScore` (*type:* `number()`, *default:* `nil`) - The overall grounding score for the candidate, in the range of [0, 1].
  *   `index` (*type:* `integer()`, *default:* `nil`) - Index of the candidate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundedGenerationContent.t()
            | nil,
          :groundingMetadata =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadata.t()
            | nil,
          :groundingScore => number() | nil,
          :index => integer() | nil
        }

  field(:content,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundedGenerationContent
  )

  field(:groundingMetadata,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidateGroundingMetadata
  )

  field(:groundingScore)
  field(:index)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidate do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidate.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGenerateGroundedContentResponseCandidate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
