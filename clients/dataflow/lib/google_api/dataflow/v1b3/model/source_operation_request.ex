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

defmodule GoogleApi.Dataflow.V1b3.Model.SourceOperationRequest do
  @moduledoc """
  A work item that represents the different operations that can be
  performed on a user-defined Source specification.

  ## Attributes

  *   `getMetadata` (*type:* `GoogleApi.Dataflow.V1b3.Model.SourceGetMetadataRequest.t`, *default:* `nil`) - Information about a request to get metadata about a source.
  *   `name` (*type:* `String.t`, *default:* `nil`) - User-provided name of the Read instruction for this source.
  *   `originalName` (*type:* `String.t`, *default:* `nil`) - System-defined name for the Read instruction for this source
      in the original workflow graph.
  *   `split` (*type:* `GoogleApi.Dataflow.V1b3.Model.SourceSplitRequest.t`, *default:* `nil`) - Information about a request to split a source.
  *   `stageName` (*type:* `String.t`, *default:* `nil`) - System-defined name of the stage containing the source operation.
      Unique across the workflow.
  *   `systemName` (*type:* `String.t`, *default:* `nil`) - System-defined name of the Read instruction for this source.
      Unique across the workflow.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :getMetadata => GoogleApi.Dataflow.V1b3.Model.SourceGetMetadataRequest.t(),
          :name => String.t(),
          :originalName => String.t(),
          :split => GoogleApi.Dataflow.V1b3.Model.SourceSplitRequest.t(),
          :stageName => String.t(),
          :systemName => String.t()
        }

  field(:getMetadata, as: GoogleApi.Dataflow.V1b3.Model.SourceGetMetadataRequest)
  field(:name)
  field(:originalName)
  field(:split, as: GoogleApi.Dataflow.V1b3.Model.SourceSplitRequest)
  field(:stageName)
  field(:systemName)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.SourceOperationRequest do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.SourceOperationRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.SourceOperationRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
