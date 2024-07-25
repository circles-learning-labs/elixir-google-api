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

defmodule GoogleApi.DataFusion.V1beta1.Model.LocationData do
  @moduledoc """


  ## Attributes

  *   `blobstoreLocation` (*type:* `GoogleApi.DataFusion.V1beta1.Model.BlobstoreLocation.t`, *default:* `nil`) - 
  *   `childAssetLocation` (*type:* `GoogleApi.DataFusion.V1beta1.Model.CloudAssetComposition.t`, *default:* `nil`) - 
  *   `directLocation` (*type:* `GoogleApi.DataFusion.V1beta1.Model.DirectLocationAssignment.t`, *default:* `nil`) - 
  *   `gcpProjectProxy` (*type:* `GoogleApi.DataFusion.V1beta1.Model.TenantProjectProxy.t`, *default:* `nil`) - 
  *   `placerLocation` (*type:* `GoogleApi.DataFusion.V1beta1.Model.PlacerLocation.t`, *default:* `nil`) - 
  *   `spannerLocation` (*type:* `GoogleApi.DataFusion.V1beta1.Model.SpannerLocation.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blobstoreLocation => GoogleApi.DataFusion.V1beta1.Model.BlobstoreLocation.t() | nil,
          :childAssetLocation =>
            GoogleApi.DataFusion.V1beta1.Model.CloudAssetComposition.t() | nil,
          :directLocation =>
            GoogleApi.DataFusion.V1beta1.Model.DirectLocationAssignment.t() | nil,
          :gcpProjectProxy => GoogleApi.DataFusion.V1beta1.Model.TenantProjectProxy.t() | nil,
          :placerLocation => GoogleApi.DataFusion.V1beta1.Model.PlacerLocation.t() | nil,
          :spannerLocation => GoogleApi.DataFusion.V1beta1.Model.SpannerLocation.t() | nil
        }

  field(:blobstoreLocation, as: GoogleApi.DataFusion.V1beta1.Model.BlobstoreLocation)
  field(:childAssetLocation, as: GoogleApi.DataFusion.V1beta1.Model.CloudAssetComposition)
  field(:directLocation, as: GoogleApi.DataFusion.V1beta1.Model.DirectLocationAssignment)
  field(:gcpProjectProxy, as: GoogleApi.DataFusion.V1beta1.Model.TenantProjectProxy)
  field(:placerLocation, as: GoogleApi.DataFusion.V1beta1.Model.PlacerLocation)
  field(:spannerLocation, as: GoogleApi.DataFusion.V1beta1.Model.SpannerLocation)
end

defimpl Poison.Decoder, for: GoogleApi.DataFusion.V1beta1.Model.LocationData do
  def decode(value, options) do
    GoogleApi.DataFusion.V1beta1.Model.LocationData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataFusion.V1beta1.Model.LocationData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
