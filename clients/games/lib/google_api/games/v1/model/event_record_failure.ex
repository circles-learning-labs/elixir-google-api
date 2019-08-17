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

defmodule GoogleApi.Games.V1.Model.EventRecordFailure do
  @moduledoc """
  This is a JSON template for an event update failure resource.

  ## Attributes

  *   `eventId` (*type:* `String.t`, *default:* `nil`) - The ID of the event that was not updated.
  *   `failureCause` (*type:* `String.t`, *default:* `nil`) - The cause for the update failure.
      Possible values are:  
      - "NOT_FOUND" - An attempt was made to set an event that was not defined. 
      - "INVALID_UPDATE_VALUE" - An attempt was made to increment an event by a non-positive value.
  *   `kind` (*type:* `String.t`, *default:* `games#eventRecordFailure`) - Uniquely identifies the type of this resource. Value is always the fixed string games#eventRecordFailure.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventId => String.t(),
          :failureCause => String.t(),
          :kind => String.t()
        }

  field(:eventId)
  field(:failureCause)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.EventRecordFailure do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.EventRecordFailure.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.EventRecordFailure do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
