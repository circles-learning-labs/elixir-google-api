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

defmodule GoogleApi.AndroidEnterprise.V1.Model.StoreLayoutPagesListResponse do
  @moduledoc """
  The store page resources for the enterprise.

  ## Attributes

  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string "androidenterprise#storeLayoutPagesListResponse". Defaults to `androidenterprise#storeLayoutPagesListResponse`.
  - page (list(GoogleApi.AndroidEnterprise.V1.Model.StorePage.t)): A store page of an enterprise. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :page => list(GoogleApi.AndroidEnterprise.V1.Model.StorePage.t())
        }

  field(:kind)
  field(:page, as: GoogleApi.AndroidEnterprise.V1.Model.StorePage, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.StoreLayoutPagesListResponse do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.StoreLayoutPagesListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.StoreLayoutPagesListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
