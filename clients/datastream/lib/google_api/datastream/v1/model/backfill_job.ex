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

defmodule GoogleApi.Datastream.V1.Model.BackfillJob do
  @moduledoc """
  Represents a backfill job on a specific stream object.

  ## Attributes

  *   `errors` (*type:* `list(GoogleApi.Datastream.V1.Model.Error.t)`, *default:* `nil`) - Output only. Errors which caused the backfill job to fail.
  *   `lastEndTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Backfill job's end time.
  *   `lastStartTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Backfill job's start time.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Backfill job state.
  *   `trigger` (*type:* `String.t`, *default:* `nil`) - Backfill job's triggering reason.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors => list(GoogleApi.Datastream.V1.Model.Error.t()) | nil,
          :lastEndTime => DateTime.t() | nil,
          :lastStartTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :trigger => String.t() | nil
        }

  field(:errors, as: GoogleApi.Datastream.V1.Model.Error, type: :list)
  field(:lastEndTime, as: DateTime)
  field(:lastStartTime, as: DateTime)
  field(:state)
  field(:trigger)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.BackfillJob do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.BackfillJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.BackfillJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end