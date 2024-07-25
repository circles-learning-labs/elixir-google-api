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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SearchEntriesResponse do
  @moduledoc """


  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results, or empty if there are no more results in the list.
  *   `results` (*type:* `list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SearchEntriesResult.t)`, *default:* `nil`) - The results matching the search query.
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - The estimated total number of matching entries. This number isn't guaranteed to be accurate.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that the service couldn't reach. Search results don't include data from these locations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :results =>
            list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SearchEntriesResult.t()) | nil,
          :totalSize => integer() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:nextPageToken)

  field(:results,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SearchEntriesResult,
    type: :list
  )

  field(:totalSize)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SearchEntriesResponse do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SearchEntriesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1SearchEntriesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
