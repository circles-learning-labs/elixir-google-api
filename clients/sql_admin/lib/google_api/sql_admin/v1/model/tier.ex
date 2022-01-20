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

defmodule GoogleApi.SQLAdmin.V1.Model.Tier do
  @moduledoc """
  A Google Cloud SQL service tier resource.

  ## Attributes

  *   `DiskQuota` (*type:* `String.t`, *default:* `nil`) - The maximum disk size of this tier in bytes.
  *   `RAM` (*type:* `String.t`, *default:* `nil`) - The maximum RAM usage of this tier in bytes.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always **sql#tier**.
  *   `region` (*type:* `list(String.t)`, *default:* `nil`) - The applicable regions for this tier.
  *   `tier` (*type:* `String.t`, *default:* `nil`) - An identifier for the machine type, for example, db-custom-1-3840. For related information, see [Pricing](/sql/pricing).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :DiskQuota => String.t() | nil,
          :RAM => String.t() | nil,
          :kind => String.t() | nil,
          :region => list(String.t()) | nil,
          :tier => String.t() | nil
        }

  field(:DiskQuota)
  field(:RAM)
  field(:kind)
  field(:region, type: :list)
  field(:tier)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.Tier do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.Tier.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.Tier do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end