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

defmodule GoogleApi.Content.V21.Model.CloudExportAdditionalProperties do
  @moduledoc """
  Product property for the Cloud Retail API. For example, properties for a TV product could be "Screen-Resolution" or "Screen-Size".

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Boolean value of the given property. For example for a TV product, "True" or "False" if the screen is UHD.
  *   `floatValue` (*type:* `list(number())`, *default:* `nil`) - Float values of the given property. For example for a TV product 1.2345. Maximum number of specified values for this field is 400. Values are stored in an arbitrary but consistent order.
  *   `intValue` (*type:* `list(String.t)`, *default:* `nil`) - Integer values of the given property. For example, 1080 for a screen resolution of a TV product. Maximum number of specified values for this field is 400. Values are stored in an arbitrary but consistent order.
  *   `maxValue` (*type:* `number()`, *default:* `nil`) - Maximum float value of the given property. For example for a TV product 100.00.
  *   `minValue` (*type:* `number()`, *default:* `nil`) - Minimum float value of the given property. For example for a TV product 1.00.
  *   `propertyName` (*type:* `String.t`, *default:* `nil`) - Name of the given property. For example, "Screen-Resolution" for a TV product. Maximum string size is 256 characters.
  *   `textValue` (*type:* `list(String.t)`, *default:* `nil`) - Text value of the given property. For example, "8K(UHD)" could be a text value for a TV product. Maximum number of specified values for this field is 400. Values are stored in an arbitrary but consistent order. Maximum string size is 256 characters.
  *   `unitCode` (*type:* `String.t`, *default:* `nil`) - Unit of the given property. For example, "Pixels" for a TV product. Maximum string size is 256 bytes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :floatValue => list(number()) | nil,
          :intValue => list(String.t()) | nil,
          :maxValue => number() | nil,
          :minValue => number() | nil,
          :propertyName => String.t() | nil,
          :textValue => list(String.t()) | nil,
          :unitCode => String.t() | nil
        }

  field(:boolValue)
  field(:floatValue, type: :list)
  field(:intValue, type: :list)
  field(:maxValue)
  field(:minValue)
  field(:propertyName)
  field(:textValue, type: :list)
  field(:unitCode)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.CloudExportAdditionalProperties do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.CloudExportAdditionalProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.CloudExportAdditionalProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
