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

defmodule GoogleApi.CloudSearch.V1.Model.AttributeSet do
  @moduledoc """
  An attribute was added to some (subset of the) messages in this thread.

  ## Attributes

  *   `attributeId` (*type:* `String.t`, *default:* `nil`) - 
  *   `attributeValue` (*type:* `String.t`, *default:* `nil`) - The serialized attribute_value as persisted in the storage layer. The application is responsible for deserializing it to an Attribute.Value if appropriate.
  *   `messageKeys` (*type:* `list(GoogleApi.CloudSearch.V1.Model.MultiKey.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeId => String.t() | nil,
          :attributeValue => String.t() | nil,
          :messageKeys => list(GoogleApi.CloudSearch.V1.Model.MultiKey.t()) | nil
        }

  field(:attributeId)
  field(:attributeValue)
  field(:messageKeys, as: GoogleApi.CloudSearch.V1.Model.MultiKey, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AttributeSet do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AttributeSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AttributeSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end