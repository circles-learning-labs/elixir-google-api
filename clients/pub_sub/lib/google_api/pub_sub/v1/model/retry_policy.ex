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

defmodule GoogleApi.PubSub.V1.Model.RetryPolicy do
  @moduledoc """
  A policy that specifies how Pub/Sub retries message delivery. Retry delay will be exponential based on provided minimum and maximum backoffs. https://en.wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message. Retry Policy is implemented on a best effort basis. At times, the delay between consecutive deliveries may not match the configuration. That is, delay can be more or less than configured backoff.

  ## Attributes

  *   `maximumBackoff` (*type:* `String.t`, *default:* `nil`) - Optional. The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  *   `minimumBackoff` (*type:* `String.t`, *default:* `nil`) - Optional. The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maximumBackoff => String.t() | nil,
          :minimumBackoff => String.t() | nil
        }

  field(:maximumBackoff)
  field(:minimumBackoff)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.RetryPolicy do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.RetryPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.RetryPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
