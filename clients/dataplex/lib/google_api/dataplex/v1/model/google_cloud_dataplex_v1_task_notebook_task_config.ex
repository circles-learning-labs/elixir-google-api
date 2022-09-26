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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskNotebookTaskConfig do
  @moduledoc """
  Config for running scheduled notebooks.

  ## Attributes

  *   `archiveUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. GCS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  *   `fileUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. GCS URIs of files to be placed in the working directory of each executor.
  *   `infrastructureSpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskInfrastructureSpec.t`, *default:* `nil`) - Optional. Infrastructure specification for the execution.
  *   `notebook` (*type:* `String.t`, *default:* `nil`) - Required. Path to input notebook. This can be the GCS URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :archiveUris => list(String.t()) | nil,
          :fileUris => list(String.t()) | nil,
          :infrastructureSpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskInfrastructureSpec.t() | nil,
          :notebook => String.t() | nil
        }

  field(:archiveUris, type: :list)
  field(:fileUris, type: :list)

  field(:infrastructureSpec,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskInfrastructureSpec
  )

  field(:notebook)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskNotebookTaskConfig do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskNotebookTaskConfig.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskNotebookTaskConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end