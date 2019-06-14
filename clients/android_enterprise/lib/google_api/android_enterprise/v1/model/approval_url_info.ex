# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AndroidEnterprise.V1.Model.ApprovalUrlInfo do
  @moduledoc """
  Information on an approval URL.

  ## Attributes

  - approvalUrl (String.t): A URL that displays a product's permissions and that can also be used to approve the product with the Products.approve call. Defaults to `nil`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string "androidenterprise#approvalUrlInfo". Defaults to `androidenterprise#approvalUrlInfo`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :approvalUrl => String.t(),
          :kind => String.t()
        }

  field(:approvalUrl)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ApprovalUrlInfo do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.ApprovalUrlInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ApprovalUrlInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
