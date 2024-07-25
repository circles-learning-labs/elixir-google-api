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

defmodule GoogleApi.ArtifactRegistry.V1.Model.Repository do
  @moduledoc """
  A Repository for storing artifacts with a specific format.

  ## Attributes

  *   `cleanupPolicies` (*type:* `%{optional(String.t) => GoogleApi.ArtifactRegistry.V1.Model.CleanupPolicy.t}`, *default:* `nil`) - Optional. Cleanup policies for this repository. Cleanup policies indicate when certain package versions can be automatically deleted. Map keys are policy IDs supplied by users during policy creation. They must unique within a repository and be under 128 characters in length.
  *   `cleanupPolicyDryRun` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, the cleanup pipeline is prevented from deleting versions in this repository.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the repository was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The user-provided description of the repository.
  *   `disallowUnspecifiedMode` (*type:* `boolean()`, *default:* `nil`) - Optional. If this is true, an unspecified repo type will be treated as error rather than defaulting to standard.
  *   `dockerConfig` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.DockerRepositoryConfig.t`, *default:* `nil`) - Docker repository config contains repository level configuration for the repositories of docker type.
  *   `format` (*type:* `String.t`, *default:* `nil`) - Optional. The format of packages that are stored in the repository.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  *   `mavenConfig` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.MavenRepositoryConfig.t`, *default:* `nil`) - Maven repository config contains repository level configuration for the repositories of maven type.
  *   `mode` (*type:* `String.t`, *default:* `nil`) - Optional. The mode of the repository.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`. For each location in a project, repository names must be unique.
  *   `remoteRepositoryConfig` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.RemoteRepositoryConfig.t`, *default:* `nil`) - Configuration specific for a Remote Repository.
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. If set, the repository satisfies physical zone isolation.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. If set, the repository satisfies physical zone separation.
  *   `sizeBytes` (*type:* `String.t`, *default:* `nil`) - Output only. The size, in bytes, of all artifact storage in this repository. Repositories that are generally available or in public preview use this to calculate storage costs.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the repository was last updated.
  *   `virtualRepositoryConfig` (*type:* `GoogleApi.ArtifactRegistry.V1.Model.VirtualRepositoryConfig.t`, *default:* `nil`) - Configuration specific for a Virtual Repository.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cleanupPolicies =>
            %{optional(String.t()) => GoogleApi.ArtifactRegistry.V1.Model.CleanupPolicy.t()} | nil,
          :cleanupPolicyDryRun => boolean() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :disallowUnspecifiedMode => boolean() | nil,
          :dockerConfig => GoogleApi.ArtifactRegistry.V1.Model.DockerRepositoryConfig.t() | nil,
          :format => String.t() | nil,
          :kmsKeyName => String.t() | nil,
          :labels => map() | nil,
          :mavenConfig => GoogleApi.ArtifactRegistry.V1.Model.MavenRepositoryConfig.t() | nil,
          :mode => String.t() | nil,
          :name => String.t() | nil,
          :remoteRepositoryConfig =>
            GoogleApi.ArtifactRegistry.V1.Model.RemoteRepositoryConfig.t() | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :sizeBytes => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :virtualRepositoryConfig =>
            GoogleApi.ArtifactRegistry.V1.Model.VirtualRepositoryConfig.t() | nil
        }

  field(:cleanupPolicies, as: GoogleApi.ArtifactRegistry.V1.Model.CleanupPolicy, type: :map)
  field(:cleanupPolicyDryRun)
  field(:createTime, as: DateTime)
  field(:description)
  field(:disallowUnspecifiedMode)
  field(:dockerConfig, as: GoogleApi.ArtifactRegistry.V1.Model.DockerRepositoryConfig)
  field(:format)
  field(:kmsKeyName)
  field(:labels, type: :map)
  field(:mavenConfig, as: GoogleApi.ArtifactRegistry.V1.Model.MavenRepositoryConfig)
  field(:mode)
  field(:name)
  field(:remoteRepositoryConfig, as: GoogleApi.ArtifactRegistry.V1.Model.RemoteRepositoryConfig)
  field(:satisfiesPzi)
  field(:satisfiesPzs)
  field(:sizeBytes)
  field(:updateTime, as: DateTime)
  field(:virtualRepositoryConfig, as: GoogleApi.ArtifactRegistry.V1.Model.VirtualRepositoryConfig)
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1.Model.Repository do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1.Model.Repository.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1.Model.Repository do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
