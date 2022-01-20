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

defmodule GoogleApi.Domains.V1.Model.GlueRecord do
  @moduledoc """
  Defines a host on your domain that is a DNS name server for your domain and/or other domains. Glue records are a way of making the IP address of a name server known, even when it serves DNS queries for its parent domain. For example, when `ns.example.com` is a name server for `example.com`, the host `ns.example.com` must have a glue record to break the circular DNS reference.

  ## Attributes

  *   `hostName` (*type:* `String.t`, *default:* `nil`) - Required. Domain name of the host in Punycode format.
  *   `ipv4Addresses` (*type:* `list(String.t)`, *default:* `nil`) - List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. `198.51.100.1`). At least one of `ipv4_address` and `ipv6_address` must be set.
  *   `ipv6Addresses` (*type:* `list(String.t)`, *default:* `nil`) - List of IPv6 addresses corresponding to this host in the standard hexadecimal format (e.g. `2001:db8::`). At least one of `ipv4_address` and `ipv6_address` must be set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hostName => String.t() | nil,
          :ipv4Addresses => list(String.t()) | nil,
          :ipv6Addresses => list(String.t()) | nil
        }

  field(:hostName)
  field(:ipv4Addresses, type: :list)
  field(:ipv6Addresses, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1.Model.GlueRecord do
  def decode(value, options) do
    GoogleApi.Domains.V1.Model.GlueRecord.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1.Model.GlueRecord do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end