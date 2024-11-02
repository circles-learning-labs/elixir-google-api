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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecTranslationPrompt do
  @moduledoc """
  Prompt variation for Translation use case.

  ## Attributes

  *   `example` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecTranslationExample.t`, *default:* `nil`) - The translation example.
  *   `option` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecTranslationOption.t`, *default:* `nil`) - The translation option.
  *   `promptMessage` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage.t`, *default:* `nil`) - The prompt message.
  *   `sourceLanguageCode` (*type:* `String.t`, *default:* `nil`) - The source language code.
  *   `targetLanguageCode` (*type:* `String.t`, *default:* `nil`) - The target language code.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :example =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecTranslationExample.t()
            | nil,
          :option =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecTranslationOption.t()
            | nil,
          :promptMessage =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage.t()
            | nil,
          :sourceLanguageCode => String.t() | nil,
          :targetLanguageCode => String.t() | nil
        }

  field(:example,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecTranslationExample
  )

  field(:option,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecTranslationOption
  )

  field(:promptMessage,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage
  )

  field(:sourceLanguageCode)
  field(:targetLanguageCode)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecTranslationPrompt do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecTranslationPrompt.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaPromptSpecTranslationPrompt do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
