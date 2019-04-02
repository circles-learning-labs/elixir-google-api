# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Model.OrdersUpdateShipmentRequest do
  @moduledoc """


  ## Attributes

  - carrier (String.t): The carrier handling the shipment. Not updated if missing. See shipments[].carrier in the  Orders resource representation for a list of acceptable values. Defaults to: `null`.
  - deliveryDate (String.t): Date on which the shipment has been delivered, in ISO 8601 format. Optional and can be provided only if status is delivered. Defaults to: `null`.
  - operationId (String.t): The ID of the operation. Unique across all operations for a given order. Defaults to: `null`.
  - shipmentId (String.t): The ID of the shipment. Defaults to: `null`.
  - status (String.t): New status for the shipment. Not updated if missing. Defaults to: `null`.
  - trackingId (String.t): The tracking ID for the shipment. Not updated if missing. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrier => any(),
          :deliveryDate => any(),
          :operationId => any(),
          :shipmentId => any(),
          :status => any(),
          :trackingId => any()
        }

  field(:carrier)
  field(:deliveryDate)
  field(:operationId)
  field(:shipmentId)
  field(:status)
  field(:trackingId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrdersUpdateShipmentRequest do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrdersUpdateShipmentRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrdersUpdateShipmentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
