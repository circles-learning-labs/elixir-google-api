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

defmodule GoogleApi.DisplayVideo.V1.Model.RegionalLocationListAssignedTargetingOptionDetails do
  @moduledoc """
  Targeting details for regional location list. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_REGIONAL_LOCATION_LIST`.

  ## Attributes

  *   `negative` (*type:* `boolean()`, *default:* `nil`) - Indicates if this option is being negatively targeted.
  *   `regionalLocationListId` (*type:* `String.t`, *default:* `nil`) - Required. ID of the regional location list. Should refer to the location_list_id field of a LocationList resource whose type is `TARGETING_LOCATION_TYPE_REGIONAL`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :negative => boolean() | nil,
          :regionalLocationListId => String.t() | nil
        }

  field(:negative)
  field(:regionalLocationListId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V1.Model.RegionalLocationListAssignedTargetingOptionDetails do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.RegionalLocationListAssignedTargetingOptionDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V1.Model.RegionalLocationListAssignedTargetingOptionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
