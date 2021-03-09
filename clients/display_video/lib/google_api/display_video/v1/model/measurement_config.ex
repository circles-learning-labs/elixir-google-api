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

defmodule GoogleApi.DisplayVideo.V1.Model.MeasurementConfig do
  @moduledoc """
  Measurement settings of a partner.

  ## Attributes

  *   `dv360ToCmCostReportingEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether or not to report DV360 cost to CM360.
  *   `dv360ToCmDataSharingEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether or not to include DV360 data in CM360 data transfer reports.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dv360ToCmCostReportingEnabled => boolean() | nil,
          :dv360ToCmDataSharingEnabled => boolean() | nil
        }

  field(:dv360ToCmCostReportingEnabled)
  field(:dv360ToCmDataSharingEnabled)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.MeasurementConfig do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.MeasurementConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.MeasurementConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
