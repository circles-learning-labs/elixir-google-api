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

defmodule GoogleApi.Spanner.V1.Model.UpdateInstanceConfigRequest do
  @moduledoc """
  The request for UpdateInstanceConfig.

  ## Attributes

  *   `instanceConfig` (*type:* `GoogleApi.Spanner.V1.Model.InstanceConfig.t`, *default:* `nil`) - Required. The user instance configuration to update, which must always include the instance configuration name. Otherwise, only fields mentioned in update_mask need be included. To prevent conflicts of concurrent updates, etag can be used.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Required. A mask specifying which fields in InstanceConfig should be updated. The field mask must always be specified; this prevents any future fields in InstanceConfig from being erased accidentally by clients that do not know about them. Only display_name and labels can be updated.
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - An option to validate, but not actually execute, a request, and provide the same response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceConfig => GoogleApi.Spanner.V1.Model.InstanceConfig.t() | nil,
          :updateMask => String.t() | nil,
          :validateOnly => boolean() | nil
        }

  field(:instanceConfig, as: GoogleApi.Spanner.V1.Model.InstanceConfig)
  field(:updateMask)
  field(:validateOnly)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.UpdateInstanceConfigRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.UpdateInstanceConfigRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.UpdateInstanceConfigRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
