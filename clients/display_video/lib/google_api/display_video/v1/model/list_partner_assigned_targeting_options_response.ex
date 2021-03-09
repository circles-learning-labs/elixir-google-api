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

defmodule GoogleApi.DisplayVideo.V1.Model.ListPartnerAssignedTargetingOptionsResponse do
  @moduledoc """


  ## Attributes

  *   `assignedTargetingOptions` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.AssignedTargetingOption.t)`, *default:* `nil`) - The list of assigned targeting options. This list will be absent if empty.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token identifying the next page of results. This value should be specified as the pageToken in a subsequent ListPartnerAssignedTargetingOptionsRequest to fetch the next page of results. This token will be absent if there are no more assigned_targeting_options to return.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assignedTargetingOptions =>
            list(GoogleApi.DisplayVideo.V1.Model.AssignedTargetingOption.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:assignedTargetingOptions,
    as: GoogleApi.DisplayVideo.V1.Model.AssignedTargetingOption,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V1.Model.ListPartnerAssignedTargetingOptionsResponse do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.ListPartnerAssignedTargetingOptionsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V1.Model.ListPartnerAssignedTargetingOptionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
