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

defmodule GoogleApi.Pollen.V1.Model.PlantDescription do
  @moduledoc """
  Contains general information about plants, including details on their seasonality, special shapes and colors, information about allergic cross-reactions, and plant photos.

  ## Attributes

  *   `crossReaction` (*type:* `String.t`, *default:* `nil`) - Textual description of pollen cross reaction plants. Example: Alder, Hazel, Hornbeam, Beech, Willow, and Oak pollen.
  *   `family` (*type:* `String.t`, *default:* `nil`) - A human readable representation of the plant family name. Example: "Betulaceae (the Birch family)".
  *   `picture` (*type:* `String.t`, *default:* `nil`) - Link to the picture of the plant.
  *   `pictureCloseup` (*type:* `String.t`, *default:* `nil`) - Link to a closeup picture of the plant.
  *   `season` (*type:* `String.t`, *default:* `nil`) - Textual list of explanations of seasons where the pollen is active. Example: "Late winter, spring".
  *   `specialColors` (*type:* `String.t`, *default:* `nil`) - Textual description of the plants' colors of leaves, bark, flowers or seeds that helps identify the plant.
  *   `specialShapes` (*type:* `String.t`, *default:* `nil`) - Textual description of the plants' shapes of leaves, bark, flowers or seeds that helps identify the plant.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The plant's pollen type. For example: "GRASS". A list of all available codes could be found here.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :crossReaction => String.t() | nil,
          :family => String.t() | nil,
          :picture => String.t() | nil,
          :pictureCloseup => String.t() | nil,
          :season => String.t() | nil,
          :specialColors => String.t() | nil,
          :specialShapes => String.t() | nil,
          :type => String.t() | nil
        }

  field(:crossReaction)
  field(:family)
  field(:picture)
  field(:pictureCloseup)
  field(:season)
  field(:specialColors)
  field(:specialShapes)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Pollen.V1.Model.PlantDescription do
  def decode(value, options) do
    GoogleApi.Pollen.V1.Model.PlantDescription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Pollen.V1.Model.PlantDescription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
