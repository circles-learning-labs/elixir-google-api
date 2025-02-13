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

defmodule GoogleApi.Workstations.V1.Model.GceInstance do
  @moduledoc """
  A runtime using a Compute Engine instance.

  ## Attributes

  *   `accelerators` (*type:* `list(GoogleApi.Workstations.V1.Model.Accelerator.t)`, *default:* `nil`) - Optional. A list of the type and count of accelerator cards attached to the instance.
  *   `boostConfigs` (*type:* `list(GoogleApi.Workstations.V1.Model.BoostConfig.t)`, *default:* `nil`) - Optional. A list of the boost configurations that workstations created using this workstation configuration are allowed to use. If specified, users will have the option to choose from the list of boost configs when starting a workstation.
  *   `bootDiskSizeGb` (*type:* `integer()`, *default:* `nil`) - Optional. The size of the boot disk for the VM in gigabytes (GB). The minimum boot disk size is `30` GB. Defaults to `50` GB.
  *   `confidentialInstanceConfig` (*type:* `GoogleApi.Workstations.V1.Model.GceConfidentialInstanceConfig.t`, *default:* `nil`) - Optional. A set of Compute Engine Confidential VM instance options.
  *   `disablePublicIpAddresses` (*type:* `boolean()`, *default:* `nil`) - Optional. When set to true, disables public IP addresses for VMs. If you disable public IP addresses, you must set up Private Google Access or Cloud NAT on your network. If you use Private Google Access and you use `private.googleapis.com` or `restricted.googleapis.com` for Container Registry and Artifact Registry, make sure that you set up DNS records for domains `*.gcr.io` and `*.pkg.dev`. Defaults to false (VMs have public IP addresses).
  *   `disableSsh` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether to disable SSH access to the VM.
  *   `enableNestedVirtualization` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether to enable nested virtualization on Cloud Workstations VMs created using this workstation configuration. Defaults to false. Nested virtualization lets you run virtual machine (VM) instances inside your workstation. Before enabling nested virtualization, consider the following important considerations. Cloud Workstations instances are subject to the [same restrictions as Compute Engine instances](https://cloud.google.com/compute/docs/instances/nested-virtualization/overview#restrictions): * **Organization policy**: projects, folders, or organizations may be restricted from creating nested VMs if the **Disable VM nested virtualization** constraint is enforced in the organization policy. For more information, see the Compute Engine section, [Checking whether nested virtualization is allowed](https://cloud.google.com/compute/docs/instances/nested-virtualization/managing-constraint#checking_whether_nested_virtualization_is_allowed). * **Performance**: nested VMs might experience a 10% or greater decrease in performance for workloads that are CPU-bound and possibly greater than a 10% decrease for workloads that are input/output bound. * **Machine Type**: nested virtualization can only be enabled on workstation configurations that specify a machine_type in the N1 or N2 machine series.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Optional. The type of machine to use for VM instances—for example, `"e2-standard-4"`. For more information about machine types that Cloud Workstations supports, see the list of [available machine types](https://cloud.google.com/workstations/docs/available-machine-types).
  *   `poolSize` (*type:* `integer()`, *default:* `nil`) - Optional. The number of VMs that the system should keep idle so that new workstations can be started quickly for new users. Defaults to `0` in the API.
  *   `pooledInstances` (*type:* `integer()`, *default:* `nil`) - Output only. Number of instances currently available in the pool for faster workstation startup.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Optional. The email address of the service account for Cloud Workstations VMs created with this configuration. When specified, be sure that the service account has `logging.logEntries.create` and `monitoring.timeSeries.create` permissions on the project so it can write logs out to Cloud Logging. If using a custom container image, the service account must have [Artifact Registry Reader](https://cloud.google.com/artifact-registry/docs/access-control#roles) permission to pull the specified image. If you as the administrator want to be able to `ssh` into the underlying VM, you need to set this value to a service account for which you have the `iam.serviceAccounts.actAs` permission. Conversely, if you don't want anyone to be able to `ssh` into the underlying VM, use a service account where no one has that permission. If not set, VMs run with a service account provided by the Cloud Workstations service, and the image must be publicly accessible.
  *   `serviceAccountScopes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Scopes to grant to the service_account. When specified, users of workstations under this configuration must have `iam.serviceAccounts.actAs` on the service account.
  *   `shieldedInstanceConfig` (*type:* `GoogleApi.Workstations.V1.Model.GceShieldedInstanceConfig.t`, *default:* `nil`) - Optional. A set of Compute Engine Shielded instance options.
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Network tags to add to the Compute Engine VMs backing the workstations. This option applies [network tags](https://cloud.google.com/vpc/docs/add-remove-network-tags) to VMs created with this configuration. These network tags enable the creation of [firewall rules](https://cloud.google.com/workstations/docs/configure-firewall-rules).
  *   `vmTags` (*type:* `map()`, *default:* `nil`) - Optional. Resource manager tags to be bound to this instance. Tag keys and values have the same definition as [resource manager tags](https://cloud.google.com/resource-manager/docs/tags/tags-overview). Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accelerators => list(GoogleApi.Workstations.V1.Model.Accelerator.t()) | nil,
          :boostConfigs => list(GoogleApi.Workstations.V1.Model.BoostConfig.t()) | nil,
          :bootDiskSizeGb => integer() | nil,
          :confidentialInstanceConfig =>
            GoogleApi.Workstations.V1.Model.GceConfidentialInstanceConfig.t() | nil,
          :disablePublicIpAddresses => boolean() | nil,
          :disableSsh => boolean() | nil,
          :enableNestedVirtualization => boolean() | nil,
          :machineType => String.t() | nil,
          :poolSize => integer() | nil,
          :pooledInstances => integer() | nil,
          :serviceAccount => String.t() | nil,
          :serviceAccountScopes => list(String.t()) | nil,
          :shieldedInstanceConfig =>
            GoogleApi.Workstations.V1.Model.GceShieldedInstanceConfig.t() | nil,
          :tags => list(String.t()) | nil,
          :vmTags => map() | nil
        }

  field(:accelerators, as: GoogleApi.Workstations.V1.Model.Accelerator, type: :list)
  field(:boostConfigs, as: GoogleApi.Workstations.V1.Model.BoostConfig, type: :list)
  field(:bootDiskSizeGb)

  field(:confidentialInstanceConfig,
    as: GoogleApi.Workstations.V1.Model.GceConfidentialInstanceConfig
  )

  field(:disablePublicIpAddresses)
  field(:disableSsh)
  field(:enableNestedVirtualization)
  field(:machineType)
  field(:poolSize)
  field(:pooledInstances)
  field(:serviceAccount)
  field(:serviceAccountScopes, type: :list)
  field(:shieldedInstanceConfig, as: GoogleApi.Workstations.V1.Model.GceShieldedInstanceConfig)
  field(:tags, type: :list)
  field(:vmTags, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Workstations.V1.Model.GceInstance do
  def decode(value, options) do
    GoogleApi.Workstations.V1.Model.GceInstance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Workstations.V1.Model.GceInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
