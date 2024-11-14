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

defmodule GoogleApi.SecurityCenter.V1.Model.EffectiveEventThreatDetectionCustomModule do
  @moduledoc """
  An EffectiveEventThreatDetectionCustomModule is the representation of an Event Threat Detection custom module at a specified level of the resource hierarchy: organization, folder, or project. If a custom module is inherited from a parent organization or folder, the value of the `enablement_state` property in EffectiveEventThreatDetectionCustomModule is set to the value that is effective in the parent, instead of `INHERITED`. For example, if the module is enabled in a parent organization or folder, the effective `enablement_state` for the module in all child folders or projects is also `enabled`. EffectiveEventThreatDetectionCustomModule is read-only.

  ## Attributes

  *   `cloudProvider` (*type:* `String.t`, *default:* `nil`) - The cloud provider of the custom module.
  *   `config` (*type:* `map()`, *default:* `nil`) - Output only. Config for the effective module.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. The description for the module.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. The human readable name to be displayed for the module.
  *   `enablementState` (*type:* `String.t`, *default:* `nil`) - Output only. The effective state of enablement for the module at the given level of the hierarchy.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the effective ETD custom module. Its format is: * `organizations/{organization}/eventThreatDetectionSettings/effectiveCustomModules/{module}`. * `folders/{folder}/eventThreatDetectionSettings/effectiveCustomModules/{module}`. * `projects/{project}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudProvider => String.t() | nil,
          :config => map() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :enablementState => String.t() | nil,
          :name => String.t() | nil,
          :type => String.t() | nil
        }

  field(:cloudProvider)
  field(:config, type: :map)
  field(:description)
  field(:displayName)
  field(:enablementState)
  field(:name)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.EffectiveEventThreatDetectionCustomModule do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.EffectiveEventThreatDetectionCustomModule.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.EffectiveEventThreatDetectionCustomModule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
