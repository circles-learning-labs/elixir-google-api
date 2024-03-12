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

defmodule GoogleApi.GKEHub.V1.Model.ConfigManagementOciConfig do
  @moduledoc """
  OCI repo configuration for a single cluster

  ## Attributes

  *   `gcpServiceAccountEmail` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Service Account Email used for auth when secret_type is gcpServiceAccount.
  *   `policyDir` (*type:* `String.t`, *default:* `nil`) - The absolute path of the directory that contains the local resources. Default: the root directory of the image.
  *   `secretType` (*type:* `String.t`, *default:* `nil`) - Type of secret configured for access to the Git repo.
  *   `syncRepo` (*type:* `String.t`, *default:* `nil`) - The OCI image repository URL for the package to sync from. e.g. `LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME`.
  *   `syncWaitSecs` (*type:* `String.t`, *default:* `nil`) - Period in seconds between consecutive syncs. Default: 15.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcpServiceAccountEmail => String.t() | nil,
          :policyDir => String.t() | nil,
          :secretType => String.t() | nil,
          :syncRepo => String.t() | nil,
          :syncWaitSecs => String.t() | nil
        }

  field(:gcpServiceAccountEmail)
  field(:policyDir)
  field(:secretType)
  field(:syncRepo)
  field(:syncWaitSecs)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ConfigManagementOciConfig do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ConfigManagementOciConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ConfigManagementOciConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
