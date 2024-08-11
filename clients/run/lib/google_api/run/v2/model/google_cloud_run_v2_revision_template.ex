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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionTemplate do
  @moduledoc """
  RevisionTemplate describes the data a revision should have when created from a template.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Optional. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules.
  *   `containers` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Container.t)`, *default:* `nil`) - Holds the single container that defines the unit of execution for this Revision.
  *   `encryptionKey` (*type:* `String.t`, *default:* `nil`) - A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  *   `executionEnvironment` (*type:* `String.t`, *default:* `nil`) - Optional. The sandbox environment to host this Revision.
  *   `healthCheckDisabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Disables health checking containers during deployment.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
  *   `maxInstanceRequestConcurrency` (*type:* `integer()`, *default:* `nil`) - Optional. Sets the maximum number of requests that each serving instance can receive. If not specified or 0, defaults to 80 when requested CPU >= 1 and defaults to 1 when requested CPU < 1.
  *   `nodeSelector` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2NodeSelector.t`, *default:* `nil`) - Optional. The node selector for the revision template.
  *   `revision` (*type:* `String.t`, *default:* `nil`) - Optional. The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  *   `scaling` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScaling.t`, *default:* `nil`) - Optional. Scaling settings for this Revision.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Optional. Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  *   `serviceMesh` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2ServiceMesh.t`, *default:* `nil`) - Optional. Enables service mesh connectivity.
  *   `sessionAffinity` (*type:* `boolean()`, *default:* `nil`) - Optional. Enable session affinity.
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - Optional. Max allowed time for an instance to respond to a request.
  *   `volumes` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume.t)`, *default:* `nil`) - Optional. A list of Volumes to make available to containers.
  *   `vpcAccess` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess.t`, *default:* `nil`) - Optional. VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :containers => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Container.t()) | nil,
          :encryptionKey => String.t() | nil,
          :executionEnvironment => String.t() | nil,
          :healthCheckDisabled => boolean() | nil,
          :labels => map() | nil,
          :maxInstanceRequestConcurrency => integer() | nil,
          :nodeSelector => GoogleApi.Run.V2.Model.GoogleCloudRunV2NodeSelector.t() | nil,
          :revision => String.t() | nil,
          :scaling => GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScaling.t() | nil,
          :serviceAccount => String.t() | nil,
          :serviceMesh => GoogleApi.Run.V2.Model.GoogleCloudRunV2ServiceMesh.t() | nil,
          :sessionAffinity => boolean() | nil,
          :timeout => String.t() | nil,
          :volumes => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume.t()) | nil,
          :vpcAccess => GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess.t() | nil
        }

  field(:annotations, type: :map)
  field(:containers, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Container, type: :list)
  field(:encryptionKey)
  field(:executionEnvironment)
  field(:healthCheckDisabled)
  field(:labels, type: :map)
  field(:maxInstanceRequestConcurrency)
  field(:nodeSelector, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2NodeSelector)
  field(:revision)
  field(:scaling, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScaling)
  field(:serviceAccount)
  field(:serviceMesh, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2ServiceMesh)
  field(:sessionAffinity)
  field(:timeout)
  field(:volumes, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume, type: :list)
  field(:vpcAccess, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionTemplate do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
