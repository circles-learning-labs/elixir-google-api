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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AddressDescriptorArea do
  @moduledoc """
  Area information and the area's relationship with the target location. Areas includes precise sublocality, neighborhoods, and large compounds that are useful for describing a location.

  ## Attributes

  *   `containment` (*type:* `String.t`, *default:* `nil`) - Defines the spatial relationship between the target location and the area.
  *   `displayName` (*type:* `GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t`, *default:* `nil`) - The area's display name.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The area's resource name.
  *   `placeId` (*type:* `String.t`, *default:* `nil`) - The area's place id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containment => String.t() | nil,
          :displayName => GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t() | nil,
          :name => String.t() | nil,
          :placeId => String.t() | nil
        }

  field(:containment)
  field(:displayName, as: GoogleApi.Places.V1.Model.GoogleTypeLocalizedText)
  field(:name)
  field(:placeId)
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AddressDescriptorArea do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AddressDescriptorArea.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AddressDescriptorArea do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
