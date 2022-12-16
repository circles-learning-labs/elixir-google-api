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

defmodule GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1TransformDescription do
  @moduledoc """
  Description of a schema-aware transform, which provides info on how it can be configured.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The full name of this resource formatted as: projects/{project}/locations/{location}/transformDescriptions/{transform_description} `transform_description` is the same as the `uniform_resource_name` field.
  *   `options` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Schema.t`, *default:* `nil`) - Available options for configuring the transform.
  *   `uniformResourceName` (*type:* `String.t`, *default:* `nil`) - Unique resource name of the transform.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :options => GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Schema.t() | nil,
          :uniformResourceName => String.t() | nil
        }

  field(:name)
  field(:options, as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Schema)
  field(:uniformResourceName)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1TransformDescription do
  def decode(value, options) do
    GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1TransformDescription.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1TransformDescription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end