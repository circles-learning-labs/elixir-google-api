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

defmodule GoogleApi.DisplayVideo.V1.Model.BulkEditAssignedLocationsRequest do
  @moduledoc """
  Request message for AssignedLocationService.BulkEditAssignedLocations.

  ## Attributes

  *   `createdAssignedLocations` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.AssignedLocation.t)`, *default:* `nil`) - The assigned locations to create in bulk, specified as a list of AssignedLocations.
  *   `deletedAssignedLocations` (*type:* `list(String.t)`, *default:* `nil`) - The IDs of the assigned locations to delete in bulk, specified as a list of assigned_location_ids.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createdAssignedLocations =>
            list(GoogleApi.DisplayVideo.V1.Model.AssignedLocation.t()) | nil,
          :deletedAssignedLocations => list(String.t()) | nil
        }

  field(:createdAssignedLocations,
    as: GoogleApi.DisplayVideo.V1.Model.AssignedLocation,
    type: :list
  )

  field(:deletedAssignedLocations, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.BulkEditAssignedLocationsRequest do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.BulkEditAssignedLocationsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.BulkEditAssignedLocationsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
