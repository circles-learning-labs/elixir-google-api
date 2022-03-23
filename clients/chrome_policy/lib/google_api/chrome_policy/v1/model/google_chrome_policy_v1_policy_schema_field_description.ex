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

defmodule GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldDescription do
  @moduledoc """
  Provides detailed information for a particular field that is part of a PolicySchema.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. The description for the field.
  *   `field` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the field for associated with this description.
  *   `fieldDependencies` (*type:* `list(GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldDependencies.t)`, *default:* `nil`) - Output only. Provides a list of fields and the values they must have for this field to be allowed to be set.
  *   `inputConstraint` (*type:* `String.t`, *default:* `nil`) - Output only. Any input constraints associated on the values for the field.
  *   `knownValueDescriptions` (*type:* `list(GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription.t)`, *default:* `nil`) - Output only. If the field has a set of known values, this field will provide a description for these values.
  *   `nestedFieldDescriptions` (*type:* `list(GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldDescription.t)`, *default:* `nil`) - Output only. Provides the description of the fields nested in this field, if the field is a message type that defines multiple fields.
  *   `requiredItems` (*type:* `list(GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaRequiredItems.t)`, *default:* `nil`) - Output only. Provides a list of fields that are required to be set if this field has a certain value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :field => String.t() | nil,
          :fieldDependencies =>
            list(
              GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldDependencies.t()
            )
            | nil,
          :inputConstraint => String.t() | nil,
          :knownValueDescriptions =>
            list(
              GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription.t()
            )
            | nil,
          :nestedFieldDescriptions =>
            list(
              GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldDescription.t()
            )
            | nil,
          :requiredItems =>
            list(
              GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaRequiredItems.t()
            )
            | nil
        }

  field(:description)
  field(:field)

  field(:fieldDependencies,
    as: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldDependencies,
    type: :list
  )

  field(:inputConstraint)

  field(:knownValueDescriptions,
    as:
      GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription,
    type: :list
  )

  field(:nestedFieldDescriptions,
    as: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldDescription,
    type: :list
  )

  field(:requiredItems,
    as: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaRequiredItems,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldDescription do
  def decode(value, options) do
    GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldDescription.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyV1PolicySchemaFieldDescription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
