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

defmodule GoogleApi.Memcache.V1.Model.AssetLocation do
  @moduledoc """
  Provides the mapping of a cloud asset to a direct physical location or to a proxy that defines the location on its behalf.

  ## Attributes

  *   `ccfeRmsPath` (*type:* `String.t`, *default:* `nil`) - Spanner path of the CCFE RMS database. It is only applicable for CCFE tenants that use CCFE RMS for storing resource metadata.
  *   `expected` (*type:* `GoogleApi.Memcache.V1.Model.IsolationExpectations.t`, *default:* `nil`) - Defines the customer expectation around ZI/ZS for this asset and ZI/ZS state of the region at the time of asset creation.
  *   `extraParameters` (*type:* `list(GoogleApi.Memcache.V1.Model.ExtraParameter.t)`, *default:* `nil`) - Defines extra parameters required for specific asset types.
  *   `locationData` (*type:* `list(GoogleApi.Memcache.V1.Model.LocationData.t)`, *default:* `nil`) - Contains all kinds of physical location definitions for this asset.
  *   `parentAsset` (*type:* `list(GoogleApi.Memcache.V1.Model.CloudAsset.t)`, *default:* `nil`) - Defines parents assets if any in order to allow later generation of child_asset_location data via child assets.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ccfeRmsPath => String.t() | nil,
          :expected => GoogleApi.Memcache.V1.Model.IsolationExpectations.t() | nil,
          :extraParameters => list(GoogleApi.Memcache.V1.Model.ExtraParameter.t()) | nil,
          :locationData => list(GoogleApi.Memcache.V1.Model.LocationData.t()) | nil,
          :parentAsset => list(GoogleApi.Memcache.V1.Model.CloudAsset.t()) | nil
        }

  field(:ccfeRmsPath)
  field(:expected, as: GoogleApi.Memcache.V1.Model.IsolationExpectations)
  field(:extraParameters, as: GoogleApi.Memcache.V1.Model.ExtraParameter, type: :list)
  field(:locationData, as: GoogleApi.Memcache.V1.Model.LocationData, type: :list)
  field(:parentAsset, as: GoogleApi.Memcache.V1.Model.CloudAsset, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Memcache.V1.Model.AssetLocation do
  def decode(value, options) do
    GoogleApi.Memcache.V1.Model.AssetLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Memcache.V1.Model.AssetLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
