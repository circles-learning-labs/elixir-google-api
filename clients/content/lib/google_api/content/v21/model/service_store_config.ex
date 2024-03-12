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

defmodule GoogleApi.Content.V21.Model.ServiceStoreConfig do
  @moduledoc """
  Stores that provide local delivery. Only valid with local delivery fulfillment.

  ## Attributes

  *   `cutoffConfig` (*type:* `GoogleApi.Content.V21.Model.ServiceStoreConfigCutoffConfig.t`, *default:* `nil`) - Time local delivery ends for the day. This can be either `local_cutoff_time` or `store_close_offset_hours`, if both are provided an error is thrown.
  *   `serviceRadius` (*type:* `GoogleApi.Content.V21.Model.Distance.t`, *default:* `nil`) - Maximum delivery radius. Only needed for local delivery fulfillment type.
  *   `storeCodes` (*type:* `list(String.t)`, *default:* `nil`) - A list of store codes that provide local delivery. If empty, then `store_service_type` must be `all_stores`, or an error is thrown. If not empty, then `store_service_type` must be `selected_stores`, or an error is thrown.
  *   `storeServiceType` (*type:* `String.t`, *default:* `nil`) - Indicates whether all stores listed by this merchant provide local delivery or not. Acceptable values are `all stores` and `selected stores`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cutoffConfig => GoogleApi.Content.V21.Model.ServiceStoreConfigCutoffConfig.t() | nil,
          :serviceRadius => GoogleApi.Content.V21.Model.Distance.t() | nil,
          :storeCodes => list(String.t()) | nil,
          :storeServiceType => String.t() | nil
        }

  field(:cutoffConfig, as: GoogleApi.Content.V21.Model.ServiceStoreConfigCutoffConfig)
  field(:serviceRadius, as: GoogleApi.Content.V21.Model.Distance)
  field(:storeCodes, type: :list)
  field(:storeServiceType)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ServiceStoreConfig do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ServiceStoreConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ServiceStoreConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end