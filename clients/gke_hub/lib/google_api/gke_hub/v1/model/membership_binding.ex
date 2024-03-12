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

defmodule GoogleApi.GKEHub.V1.Model.MembershipBinding do
  @moduledoc """
  MembershipBinding is a subresource of a Membership, representing what Fleet Scopes (or other, future Fleet resources) a Membership is bound to.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When the membership binding was created.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When the membership binding was deleted.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Labels for this MembershipBinding.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  *   `scope` (*type:* `String.t`, *default:* `nil`) - A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  *   `state` (*type:* `GoogleApi.GKEHub.V1.Model.MembershipBindingLifecycleState.t`, *default:* `nil`) - Output only. State of the membership binding resource.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Google-generated UUID for this resource. This is unique across all membershipbinding resources. If a membershipbinding resource is deleted and another resource with the same name is created, it gets a different uid.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When the membership binding was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :scope => String.t() | nil,
          :state => GoogleApi.GKEHub.V1.Model.MembershipBindingLifecycleState.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:labels, type: :map)
  field(:name)
  field(:scope)
  field(:state, as: GoogleApi.GKEHub.V1.Model.MembershipBindingLifecycleState)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.MembershipBinding do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.MembershipBinding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.MembershipBinding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
