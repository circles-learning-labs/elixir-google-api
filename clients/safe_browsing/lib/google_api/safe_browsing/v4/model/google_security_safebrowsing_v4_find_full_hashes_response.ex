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

defmodule GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4FindFullHashesResponse do
  @moduledoc """


  ## Attributes

  *   `matches` (*type:* `list(GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatMatch.t)`, *default:* `nil`) - The full hashes that matched the requested prefixes.
  *   `minimumWaitDuration` (*type:* `String.t`, *default:* `nil`) - The minimum duration the client must wait before issuing any find hashes request. If this field is not set, clients can issue a request as soon as they want.
  *   `negativeCacheDuration` (*type:* `String.t`, *default:* `nil`) - For requested entities that did not match the threat list, how long to cache the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :matches =>
            list(GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatMatch.t())
            | nil,
          :minimumWaitDuration => String.t() | nil,
          :negativeCacheDuration => String.t() | nil
        }

  field(:matches,
    as: GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4ThreatMatch,
    type: :list
  )

  field(:minimumWaitDuration)
  field(:negativeCacheDuration)
end

defimpl Poison.Decoder,
  for: GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4FindFullHashesResponse do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4FindFullHashesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SafeBrowsing.V4.Model.GoogleSecuritySafebrowsingV4FindFullHashesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
