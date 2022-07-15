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

defmodule GoogleApi.CertificateManager.V1.Model.Certificate do
  @moduledoc """
  Defines TLS certificate.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation timestamp of a Certificate.
  *   `description` (*type:* `String.t`, *default:* `nil`) - One or more paragraphs of text description of a certificate.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The expiry timestamp of a Certificate.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Set of labels associated with a Certificate.
  *   `managed` (*type:* `GoogleApi.CertificateManager.V1.Model.ManagedCertificate.t`, *default:* `nil`) - If set, contains configuration and state of a managed certificate.
  *   `name` (*type:* `String.t`, *default:* `nil`) - A user-defined name of the certificate. Certificate names must be unique globally and match pattern `projects/*/locations/*/certificates/*`.
  *   `pemCertificate` (*type:* `String.t`, *default:* `nil`) - Output only. The PEM-encoded certificate chain.
  *   `sanDnsnames` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The list of Subject Alternative Names of dnsName type defined in the certificate (see RFC 5280 4.2.1.6). Managed certificates that haven't been provisioned yet have this field populated with a value of the managed.domains field.
  *   `scope` (*type:* `String.t`, *default:* `nil`) - Immutable. The scope of the certificate.
  *   `selfManaged` (*type:* `GoogleApi.CertificateManager.V1.Model.SelfManagedCertificate.t`, *default:* `nil`) - If set, defines data of a self-managed certificate.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of a Certificate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :labels => map() | nil,
          :managed => GoogleApi.CertificateManager.V1.Model.ManagedCertificate.t() | nil,
          :name => String.t() | nil,
          :pemCertificate => String.t() | nil,
          :sanDnsnames => list(String.t()) | nil,
          :scope => String.t() | nil,
          :selfManaged => GoogleApi.CertificateManager.V1.Model.SelfManagedCertificate.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:expireTime, as: DateTime)
  field(:labels, type: :map)
  field(:managed, as: GoogleApi.CertificateManager.V1.Model.ManagedCertificate)
  field(:name)
  field(:pemCertificate)
  field(:sanDnsnames, type: :list)
  field(:scope)
  field(:selfManaged, as: GoogleApi.CertificateManager.V1.Model.SelfManagedCertificate)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CertificateManager.V1.Model.Certificate do
  def decode(value, options) do
    GoogleApi.CertificateManager.V1.Model.Certificate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CertificateManager.V1.Model.Certificate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
