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

defmodule GoogleApi.ServiceManagement.V1.Model.GetPolicyOptions do
  @moduledoc """
  Encapsulates settings provided to GetIamPolicy.

  ## Attributes

  *   `requestedPolicyVersion` (*type:* `integer()`, *default:* `nil`) - Optional. The policy format version to be returned.
      Acceptable values are 0, 1, and 3.
      If the value is 0, or the field is omitted, policy format version 1 will be
      returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :requestedPolicyVersion => integer()
        }

  field(:requestedPolicyVersion)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.GetPolicyOptions do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.GetPolicyOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.GetPolicyOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
