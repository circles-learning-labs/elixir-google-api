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

defmodule GoogleApi.CloudSearch.V1.Model.HistoryRecord do
  @moduledoc """


  ## Attributes

  *   `clientContext` (*type:* `GoogleApi.CloudSearch.V1.Model.ClientContext.t`, *default:* `nil`) - This will almost always be set, but there are corner cases in which the information is not available, and thus applications must handle its absence appropriately.
  *   `filterUpdate` (*type:* `GoogleApi.CloudSearch.V1.Model.FilterUpdate.t`, *default:* `nil`) - 
  *   `imapUpdate` (*type:* `GoogleApi.CloudSearch.V1.Model.ImapUpdate.t`, *default:* `nil`) - 
  *   `labelUpdate` (*type:* `GoogleApi.CloudSearch.V1.Model.LabelUpdate.t`, *default:* `nil`) - 
  *   `prefUpdate` (*type:* `GoogleApi.CloudSearch.V1.Model.PrefUpdate.t`, *default:* `nil`) - 
  *   `recordId` (*type:* `String.t`, *default:* `nil`) - Each HistoryRecord has a unique id. Ids are monotonically increasing, and not necessarily contiguous.
  *   `threadUpdate` (*type:* `GoogleApi.CloudSearch.V1.Model.ThreadUpdate.t`, *default:* `nil`) - 
  *   `transactionContext` (*type:* `GoogleApi.CloudSearch.V1.Model.TransactionContext.t`, *default:* `nil`) - This will almost always be set, but there are corner cases in which the information is not available, and thus applications must handle its absence appropriately.
  *   `txnDebugInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.TransactionDebugInfo.t`, *default:* `nil`) - 
  *   `type` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientContext => GoogleApi.CloudSearch.V1.Model.ClientContext.t() | nil,
          :filterUpdate => GoogleApi.CloudSearch.V1.Model.FilterUpdate.t() | nil,
          :imapUpdate => GoogleApi.CloudSearch.V1.Model.ImapUpdate.t() | nil,
          :labelUpdate => GoogleApi.CloudSearch.V1.Model.LabelUpdate.t() | nil,
          :prefUpdate => GoogleApi.CloudSearch.V1.Model.PrefUpdate.t() | nil,
          :recordId => String.t() | nil,
          :threadUpdate => GoogleApi.CloudSearch.V1.Model.ThreadUpdate.t() | nil,
          :transactionContext => GoogleApi.CloudSearch.V1.Model.TransactionContext.t() | nil,
          :txnDebugInfo => GoogleApi.CloudSearch.V1.Model.TransactionDebugInfo.t() | nil,
          :type => String.t() | nil
        }

  field(:clientContext, as: GoogleApi.CloudSearch.V1.Model.ClientContext)
  field(:filterUpdate, as: GoogleApi.CloudSearch.V1.Model.FilterUpdate)
  field(:imapUpdate, as: GoogleApi.CloudSearch.V1.Model.ImapUpdate)
  field(:labelUpdate, as: GoogleApi.CloudSearch.V1.Model.LabelUpdate)
  field(:prefUpdate, as: GoogleApi.CloudSearch.V1.Model.PrefUpdate)
  field(:recordId)
  field(:threadUpdate, as: GoogleApi.CloudSearch.V1.Model.ThreadUpdate)
  field(:transactionContext, as: GoogleApi.CloudSearch.V1.Model.TransactionContext)
  field(:txnDebugInfo, as: GoogleApi.CloudSearch.V1.Model.TransactionDebugInfo)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.HistoryRecord do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.HistoryRecord.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.HistoryRecord do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end