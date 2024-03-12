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

defmodule GoogleApi.PubSub.V1.Model.CloudStorageConfig do
  @moduledoc """
  Configuration for a Cloud Storage subscription.

  ## Attributes

  *   `avroConfig` (*type:* `GoogleApi.PubSub.V1.Model.AvroConfig.t`, *default:* `nil`) - Optional. If set, message data will be written to Cloud Storage in Avro format.
  *   `bucket` (*type:* `String.t`, *default:* `nil`) - Required. User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://". See the [bucket naming requirements] (https://cloud.google.com/storage/docs/buckets#naming).
  *   `filenamePrefix` (*type:* `String.t`, *default:* `nil`) - Optional. User-provided prefix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  *   `filenameSuffix` (*type:* `String.t`, *default:* `nil`) - Optional. User-provided suffix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming). Must not end in "/".
  *   `maxBytes` (*type:* `String.t`, *default:* `nil`) - Optional. The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB. The max_bytes limit may be exceeded in cases where messages are larger than the limit.
  *   `maxDuration` (*type:* `String.t`, *default:* `nil`) - Optional. The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes. May not exceed the subscription's acknowledgement deadline.
  *   `serviceAccountEmail` (*type:* `String.t`, *default:* `nil`) - Optional. The service account to use to write to Cloud Storage. The subscription creator or updater that specifies this field must have `iam.serviceAccounts.actAs` permission on the service account. If not specified, the Pub/Sub [service agent](https://cloud.google.com/iam/docs/service-agents), service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. An output-only field that indicates whether or not the subscription can receive messages.
  *   `textConfig` (*type:* `GoogleApi.PubSub.V1.Model.TextConfig.t`, *default:* `nil`) - Optional. If set, message data will be written to Cloud Storage in text format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :avroConfig => GoogleApi.PubSub.V1.Model.AvroConfig.t() | nil,
          :bucket => String.t() | nil,
          :filenamePrefix => String.t() | nil,
          :filenameSuffix => String.t() | nil,
          :maxBytes => String.t() | nil,
          :maxDuration => String.t() | nil,
          :serviceAccountEmail => String.t() | nil,
          :state => String.t() | nil,
          :textConfig => GoogleApi.PubSub.V1.Model.TextConfig.t() | nil
        }

  field(:avroConfig, as: GoogleApi.PubSub.V1.Model.AvroConfig)
  field(:bucket)
  field(:filenamePrefix)
  field(:filenameSuffix)
  field(:maxBytes)
  field(:maxDuration)
  field(:serviceAccountEmail)
  field(:state)
  field(:textConfig, as: GoogleApi.PubSub.V1.Model.TextConfig)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.CloudStorageConfig do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.CloudStorageConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.CloudStorageConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
