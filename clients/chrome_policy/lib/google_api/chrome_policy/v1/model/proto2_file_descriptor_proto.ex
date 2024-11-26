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

defmodule GoogleApi.ChromePolicy.V1.Model.Proto2FileDescriptorProto do
  @moduledoc """
  Describes a complete .proto file.

  ## Attributes

  *   `editionDeprecated` (*type:* `String.t`, *default:* `nil`) - BEGIN GOOGLE-INTERNAL TODO(b/297898292) Deprecate and remove this field in favor of enums. END GOOGLE-INTERNAL
  *   `enumType` (*type:* `list(GoogleApi.ChromePolicy.V1.Model.Proto2EnumDescriptorProto.t)`, *default:* `nil`) - 
  *   `messageType` (*type:* `list(GoogleApi.ChromePolicy.V1.Model.Proto2DescriptorProto.t)`, *default:* `nil`) - All top-level definitions in this file.
  *   `name` (*type:* `String.t`, *default:* `nil`) - file name, relative to root of source tree
  *   `package` (*type:* `String.t`, *default:* `nil`) - e.g. "foo", "foo.bar", etc.
  *   `syntax` (*type:* `String.t`, *default:* `nil`) - The syntax of the proto file. The supported values are "proto2", "proto3", and "editions". If `edition` is present, this value must be "editions". WARNING: This field should only be used by protobuf plugins or special cases like the proto compiler. Other uses are discouraged and developers should rely on the protoreflect APIs for their client language.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :editionDeprecated => String.t() | nil,
          :enumType => list(GoogleApi.ChromePolicy.V1.Model.Proto2EnumDescriptorProto.t()) | nil,
          :messageType => list(GoogleApi.ChromePolicy.V1.Model.Proto2DescriptorProto.t()) | nil,
          :name => String.t() | nil,
          :package => String.t() | nil,
          :syntax => String.t() | nil
        }

  field(:editionDeprecated)
  field(:enumType, as: GoogleApi.ChromePolicy.V1.Model.Proto2EnumDescriptorProto, type: :list)
  field(:messageType, as: GoogleApi.ChromePolicy.V1.Model.Proto2DescriptorProto, type: :list)
  field(:name)
  field(:package)
  field(:syntax)
end

defimpl Poison.Decoder, for: GoogleApi.ChromePolicy.V1.Model.Proto2FileDescriptorProto do
  def decode(value, options) do
    GoogleApi.ChromePolicy.V1.Model.Proto2FileDescriptorProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ChromePolicy.V1.Model.Proto2FileDescriptorProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
