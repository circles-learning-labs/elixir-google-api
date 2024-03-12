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

defmodule GoogleApi.PubSub.V1.Model.SchemaSettings do
  @moduledoc """
  Settings for validating messages published against a schema.

  ## Attributes

  *   `encoding` (*type:* `String.t`, *default:* `nil`) - Optional. The encoding of messages validated against `schema`.
  *   `firstRevisionId` (*type:* `String.t`, *default:* `nil`) - Optional. The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against last_revision or any revision created before.
  *   `lastRevisionId` (*type:* `String.t`, *default:* `nil`) - Optional. The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against first_revision or any revision created after.
  *   `schema` (*type:* `String.t`, *default:* `nil`) - Required. The name of the schema that messages published should be validated against. Format is `projects/{project}/schemas/{schema}`. The value of this field will be `_deleted-schema_` if the schema has been deleted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encoding => String.t() | nil,
          :firstRevisionId => String.t() | nil,
          :lastRevisionId => String.t() | nil,
          :schema => String.t() | nil
        }

  field(:encoding)
  field(:firstRevisionId)
  field(:lastRevisionId)
  field(:schema)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.SchemaSettings do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.SchemaSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.SchemaSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
