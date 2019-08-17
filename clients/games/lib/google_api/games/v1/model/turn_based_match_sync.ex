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

defmodule GoogleApi.Games.V1.Model.TurnBasedMatchSync do
  @moduledoc """
  This is a JSON template for a list of turn-based matches returned from a sync.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.Games.V1.Model.TurnBasedMatch.t)`, *default:* `nil`) - The matches.
  *   `kind` (*type:* `String.t`, *default:* `games#turnBasedMatchSync`) - Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchSync.
  *   `moreAvailable` (*type:* `boolean()`, *default:* `nil`) - True if there were more matches available to fetch at the time the response was generated (which were not returned due to page size limits.)
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The pagination token for the next page of results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Games.V1.Model.TurnBasedMatch.t()),
          :kind => String.t(),
          :moreAvailable => boolean(),
          :nextPageToken => String.t()
        }

  field(:items, as: GoogleApi.Games.V1.Model.TurnBasedMatch, type: :list)
  field(:kind)
  field(:moreAvailable)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.TurnBasedMatchSync do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.TurnBasedMatchSync.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.TurnBasedMatchSync do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
