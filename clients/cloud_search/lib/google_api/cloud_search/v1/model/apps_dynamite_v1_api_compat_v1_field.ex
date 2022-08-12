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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteV1ApiCompatV1Field do
  @moduledoc """
  A column of text in an attachment. Documentation: - https://api.slack.com/docs/message-attachments

  ## Attributes

  *   `short` (*type:* `boolean()`, *default:* `nil`) - Whether the field can be shown side-by-side with another field.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The heading text, shown in bold.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The text value of the field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :short => boolean() | nil,
          :title => String.t() | nil,
          :value => String.t() | nil
        }

  field(:short)
  field(:title)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteV1ApiCompatV1Field do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteV1ApiCompatV1Field.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteV1ApiCompatV1Field do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end