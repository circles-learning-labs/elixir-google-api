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

defmodule GoogleApi.GKEHub.V1.Model.IdentityServiceAzureADConfig do
  @moduledoc """
  Configuration for the AzureAD Auth flow.

  ## Attributes

  *   `clientId` (*type:* `String.t`, *default:* `nil`) - ID for the registered client application that makes authentication requests to the Azure AD identity provider.
  *   `clientSecret` (*type:* `String.t`, *default:* `nil`) - Input only. Unencrypted AzureAD client secret will be passed to the GKE Hub CLH.
  *   `encryptedClientSecret` (*type:* `String.t`, *default:* `nil`) - Output only. Encrypted AzureAD client secret.
  *   `groupFormat` (*type:* `String.t`, *default:* `nil`) - Optional. Format of the AzureAD groups that the client wants for auth.
  *   `kubectlRedirectUri` (*type:* `String.t`, *default:* `nil`) - The redirect URL that kubectl uses for authorization.
  *   `tenant` (*type:* `String.t`, *default:* `nil`) - Kind of Azure AD account to be authenticated. Supported values are or for accounts belonging to a specific tenant.
  *   `userClaim` (*type:* `String.t`, *default:* `nil`) - Optional. Claim in the AzureAD ID Token that holds the user details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientId => String.t() | nil,
          :clientSecret => String.t() | nil,
          :encryptedClientSecret => String.t() | nil,
          :groupFormat => String.t() | nil,
          :kubectlRedirectUri => String.t() | nil,
          :tenant => String.t() | nil,
          :userClaim => String.t() | nil
        }

  field(:clientId)
  field(:clientSecret)
  field(:encryptedClientSecret)
  field(:groupFormat)
  field(:kubectlRedirectUri)
  field(:tenant)
  field(:userClaim)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.IdentityServiceAzureADConfig do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.IdentityServiceAzureADConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.IdentityServiceAzureADConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
