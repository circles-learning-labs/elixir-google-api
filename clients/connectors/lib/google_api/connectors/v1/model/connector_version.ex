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

defmodule GoogleApi.Connectors.V1.Model.ConnectorVersion do
  @moduledoc """
  ConnectorVersion indicates a specific version of a connector.

  ## Attributes

  *   `authConfigTemplates` (*type:* `list(GoogleApi.Connectors.V1.Model.AuthConfigTemplate.t)`, *default:* `nil`) - Output only. List of auth configs supported by the Connector Version.
  *   `authOverrideEnabled` (*type:* `boolean()`, *default:* `nil`) - Output only. Flag to mark the dynamic auth override.
  *   `configVariableTemplates` (*type:* `list(GoogleApi.Connectors.V1.Model.ConfigVariableTemplate.t)`, *default:* `nil`) - Output only. List of config variables needed to create a connection.
  *   `connectorInfraConfig` (*type:* `GoogleApi.Connectors.V1.Model.ConnectorInfraConfig.t`, *default:* `nil`) - Output only. Infra configs supported by Connector.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Created time.
  *   `destinationConfigTemplates` (*type:* `list(GoogleApi.Connectors.V1.Model.DestinationConfigTemplate.t)`, *default:* `nil`) - Output only. List of destination configs needed to create a connection.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. Display name.
  *   `egressControlConfig` (*type:* `GoogleApi.Connectors.V1.Model.EgressControlConfig.t`, *default:* `nil`) - Output only. Configuration for Egress Control.
  *   `eventingConfigTemplate` (*type:* `GoogleApi.Connectors.V1.Model.EventingConfigTemplate.t`, *default:* `nil`) - Output only. Eventing configuration supported by the Connector.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Output only. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  *   `launchStage` (*type:* `String.t`, *default:* `nil`) - Output only. Flag to mark the version indicating the launch stage.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the Version. Format: projects/{project}/locations/{location}/providers/{provider}/connectors/{connector}/versions/{version} Only global location is supported for Connector resource.
  *   `releaseVersion` (*type:* `String.t`, *default:* `nil`) - Output only. ReleaseVersion of the connector, for example: "1.0.1-alpha".
  *   `roleGrant` (*type:* `GoogleApi.Connectors.V1.Model.RoleGrant.t`, *default:* `nil`) - Output only. Role grant configuration for this config variable. It will be DEPRECATED soon.
  *   `roleGrants` (*type:* `list(GoogleApi.Connectors.V1.Model.RoleGrant.t)`, *default:* `nil`) - Output only. Role grant configurations for this connector version.
  *   `schemaRefreshConfig` (*type:* `GoogleApi.Connectors.V1.Model.SchemaRefreshConfig.t`, *default:* `nil`) - Connection Schema Refresh Config
  *   `sslConfigTemplate` (*type:* `GoogleApi.Connectors.V1.Model.SslConfigTemplate.t`, *default:* `nil`) - Output only. Ssl configuration supported by the Connector.
  *   `supportedRuntimeFeatures` (*type:* `GoogleApi.Connectors.V1.Model.SupportedRuntimeFeatures.t`, *default:* `nil`) - Output only. Information about the runtime features supported by the Connector.
  *   `unsupportedConnectionTypes` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Unsupported connection types.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Updated time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authConfigTemplates =>
            list(GoogleApi.Connectors.V1.Model.AuthConfigTemplate.t()) | nil,
          :authOverrideEnabled => boolean() | nil,
          :configVariableTemplates =>
            list(GoogleApi.Connectors.V1.Model.ConfigVariableTemplate.t()) | nil,
          :connectorInfraConfig => GoogleApi.Connectors.V1.Model.ConnectorInfraConfig.t() | nil,
          :createTime => DateTime.t() | nil,
          :destinationConfigTemplates =>
            list(GoogleApi.Connectors.V1.Model.DestinationConfigTemplate.t()) | nil,
          :displayName => String.t() | nil,
          :egressControlConfig => GoogleApi.Connectors.V1.Model.EgressControlConfig.t() | nil,
          :eventingConfigTemplate =>
            GoogleApi.Connectors.V1.Model.EventingConfigTemplate.t() | nil,
          :labels => map() | nil,
          :launchStage => String.t() | nil,
          :name => String.t() | nil,
          :releaseVersion => String.t() | nil,
          :roleGrant => GoogleApi.Connectors.V1.Model.RoleGrant.t() | nil,
          :roleGrants => list(GoogleApi.Connectors.V1.Model.RoleGrant.t()) | nil,
          :schemaRefreshConfig => GoogleApi.Connectors.V1.Model.SchemaRefreshConfig.t() | nil,
          :sslConfigTemplate => GoogleApi.Connectors.V1.Model.SslConfigTemplate.t() | nil,
          :supportedRuntimeFeatures =>
            GoogleApi.Connectors.V1.Model.SupportedRuntimeFeatures.t() | nil,
          :unsupportedConnectionTypes => list(String.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:authConfigTemplates, as: GoogleApi.Connectors.V1.Model.AuthConfigTemplate, type: :list)
  field(:authOverrideEnabled)

  field(:configVariableTemplates,
    as: GoogleApi.Connectors.V1.Model.ConfigVariableTemplate,
    type: :list
  )

  field(:connectorInfraConfig, as: GoogleApi.Connectors.V1.Model.ConnectorInfraConfig)
  field(:createTime, as: DateTime)

  field(:destinationConfigTemplates,
    as: GoogleApi.Connectors.V1.Model.DestinationConfigTemplate,
    type: :list
  )

  field(:displayName)
  field(:egressControlConfig, as: GoogleApi.Connectors.V1.Model.EgressControlConfig)
  field(:eventingConfigTemplate, as: GoogleApi.Connectors.V1.Model.EventingConfigTemplate)
  field(:labels, type: :map)
  field(:launchStage)
  field(:name)
  field(:releaseVersion)
  field(:roleGrant, as: GoogleApi.Connectors.V1.Model.RoleGrant)
  field(:roleGrants, as: GoogleApi.Connectors.V1.Model.RoleGrant, type: :list)
  field(:schemaRefreshConfig, as: GoogleApi.Connectors.V1.Model.SchemaRefreshConfig)
  field(:sslConfigTemplate, as: GoogleApi.Connectors.V1.Model.SslConfigTemplate)
  field(:supportedRuntimeFeatures, as: GoogleApi.Connectors.V1.Model.SupportedRuntimeFeatures)
  field(:unsupportedConnectionTypes, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.ConnectorVersion do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.ConnectorVersion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.ConnectorVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
