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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaExportUserEventsResponse do
  @moduledoc """
  Response of the ExportUserEventsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field.

  ## Attributes

  *   `status` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t`, *default:* `nil`) - The status of the export operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :status => GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t() | nil
        }

  field(:status, as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaExportUserEventsResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaExportUserEventsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaExportUserEventsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
