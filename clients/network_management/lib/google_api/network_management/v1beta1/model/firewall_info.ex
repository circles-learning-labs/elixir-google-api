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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.FirewallInfo do
  @moduledoc """
  For display only. Metadata associated with a VPC firewall rule, an implied VPC firewall rule, or a firewall policy rule.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Possible values: ALLOW, DENY, APPLY_SECURITY_PROFILE_GROUP
  *   `direction` (*type:* `String.t`, *default:* `nil`) - Possible values: INGRESS, EGRESS
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the firewall rule. This field might be empty for firewall policy rules.
  *   `firewallRuleType` (*type:* `String.t`, *default:* `nil`) - The firewall rule's type.
  *   `networkUri` (*type:* `String.t`, *default:* `nil`) - The URI of the VPC network that the firewall rule is associated with. This field is not applicable to hierarchical firewall policy rules.
  *   `policy` (*type:* `String.t`, *default:* `nil`) - The name of the firewall policy that this rule is associated with. This field is not applicable to VPC firewall rules and implied VPC firewall rules.
  *   `policyUri` (*type:* `String.t`, *default:* `nil`) - The URI of the firewall policy that this rule is associated with. This field is not applicable to VPC firewall rules and implied VPC firewall rules.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - The priority of the firewall rule.
  *   `targetServiceAccounts` (*type:* `list(String.t)`, *default:* `nil`) - The target service accounts specified by the firewall rule.
  *   `targetTags` (*type:* `list(String.t)`, *default:* `nil`) - The target tags defined by the VPC firewall rule. This field is not applicable to firewall policy rules.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - The URI of the firewall rule. This field is not applicable to implied VPC firewall rules.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :direction => String.t() | nil,
          :displayName => String.t() | nil,
          :firewallRuleType => String.t() | nil,
          :networkUri => String.t() | nil,
          :policy => String.t() | nil,
          :policyUri => String.t() | nil,
          :priority => integer() | nil,
          :targetServiceAccounts => list(String.t()) | nil,
          :targetTags => list(String.t()) | nil,
          :uri => String.t() | nil
        }

  field(:action)
  field(:direction)
  field(:displayName)
  field(:firewallRuleType)
  field(:networkUri)
  field(:policy)
  field(:policyUri)
  field(:priority)
  field(:targetServiceAccounts, type: :list)
  field(:targetTags, type: :list)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.FirewallInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.FirewallInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.FirewallInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
