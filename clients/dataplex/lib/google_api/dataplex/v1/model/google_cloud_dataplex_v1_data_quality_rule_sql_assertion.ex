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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleSqlAssertion do
  @moduledoc """
  A SQL statement that is evaluated to return rows that match an invalid state. If any rows are are returned, this rule fails.The SQL statement must use BigQuery standard SQL syntax, and must not contain any semicolons.You can use the data reference parameter ${data()} to reference the source table with all of its precondition filters applied. Examples of precondition filters include row filters, incremental data filters, and sampling. For more information, see Data reference parameter (https://cloud.google.com/dataplex/docs/auto-data-quality-overview#data-reference-parameter).Example: SELECT * FROM ${data()} WHERE price < 0

  ## Attributes

  *   `sqlStatement` (*type:* `String.t`, *default:* `nil`) - Optional. The SQL statement.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sqlStatement => String.t() | nil
        }

  field(:sqlStatement)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleSqlAssertion do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleSqlAssertion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityRuleSqlAssertion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
