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

defmodule GoogleApi.TravelImpactModel.V1.Model.FlightWithEmissions do
  @moduledoc """
  Direct flight with emission estimates.

  ## Attributes

  *   `emissionsGramsPerPax` (*type:* `GoogleApi.TravelImpactModel.V1.Model.EmissionsGramsPerPax.t`, *default:* `nil`) - Optional. Per-passenger emission estimate numbers. Will not be present if emissions could not be computed. For the list of reasons why emissions could not be computed, see ComputeFlightEmissions. This field uses wtw emissions aka ttw_emissions_grams_per_pax + wtt_emissions_grams_per_pax.
  *   `flight` (*type:* `GoogleApi.TravelImpactModel.V1.Model.Flight.t`, *default:* `nil`) - Required. Matches the flight identifiers in the request. Note: all IATA codes are capitalized.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :emissionsGramsPerPax =>
            GoogleApi.TravelImpactModel.V1.Model.EmissionsGramsPerPax.t() | nil,
          :flight => GoogleApi.TravelImpactModel.V1.Model.Flight.t() | nil
        }

  field(:emissionsGramsPerPax, as: GoogleApi.TravelImpactModel.V1.Model.EmissionsGramsPerPax)
  field(:flight, as: GoogleApi.TravelImpactModel.V1.Model.Flight)
end

defimpl Poison.Decoder, for: GoogleApi.TravelImpactModel.V1.Model.FlightWithEmissions do
  def decode(value, options) do
    GoogleApi.TravelImpactModel.V1.Model.FlightWithEmissions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TravelImpactModel.V1.Model.FlightWithEmissions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
