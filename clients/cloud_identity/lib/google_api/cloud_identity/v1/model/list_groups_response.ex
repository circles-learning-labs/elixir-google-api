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

defmodule GoogleApi.CloudIdentity.V1.Model.ListGroupsResponse do
  @moduledoc """
  Response message for ListGroups operation.

  ## Attributes

  *   `groups` (*type:* `list(GoogleApi.CloudIdentity.V1.Model.Group.t)`, *default:* `nil`) - Groups returned in response to list request. The results are not sorted.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results, or empty if there are no more results available for listing.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :groups => list(GoogleApi.CloudIdentity.V1.Model.Group.t()),
          :nextPageToken => String.t()
        }

  field(:groups, as: GoogleApi.CloudIdentity.V1.Model.Group, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIdentity.V1.Model.ListGroupsResponse do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.ListGroupsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIdentity.V1.Model.ListGroupsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
