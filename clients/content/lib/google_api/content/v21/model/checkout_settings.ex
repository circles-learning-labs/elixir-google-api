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

defmodule GoogleApi.Content.V21.Model.CheckoutSettings do
  @moduledoc """
  `CheckoutSettings` for a specific merchant ID.

  ## Attributes

  *   `effectiveEnrollmentState` (*type:* `String.t`, *default:* `nil`) - Output only. The effective value of enrollment state for a given merchant ID. If account level settings are present then this value will be a copy of the account level settings. Otherwise, it will have the value of the parent account.
  *   `effectiveReviewState` (*type:* `String.t`, *default:* `nil`) - Output only. The effective value of review state for a given merchant ID. If account level settings are present then this value will be a copy of the account level settings. Otherwise, it will have the value of the parent account.
  *   `effectiveUriSettings` (*type:* `GoogleApi.Content.V21.Model.UrlSettings.t`, *default:* `nil`) - The effective value of `url_settings` for a given merchant ID. If account level settings are present then this value will be a copy of the account level settings. Otherwise, it will have the value of the parent account.
  *   `enrollmentState` (*type:* `String.t`, *default:* `nil`) - Output only. Reflects the merchant enrollment state in `Checkout` feature.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the account.
  *   `reviewState` (*type:* `String.t`, *default:* `nil`) - Output only. Reflects the merchant review state in `Checkout` feature. This is set based on the data quality reviews of the URL provided by the merchant. A merchant with enrollment state as `ENROLLED` can be in the following review states: `IN_REVIEW`, `APPROVED` or `DISAPPROVED`. A merchant must be in an enrollment_state of `ENROLLED` before a review can begin for the merchant.
  *   `uriSettings` (*type:* `GoogleApi.Content.V21.Model.UrlSettings.t`, *default:* `nil`) - URL settings for cart or checkout URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :effectiveEnrollmentState => String.t() | nil,
          :effectiveReviewState => String.t() | nil,
          :effectiveUriSettings => GoogleApi.Content.V21.Model.UrlSettings.t() | nil,
          :enrollmentState => String.t() | nil,
          :merchantId => String.t() | nil,
          :reviewState => String.t() | nil,
          :uriSettings => GoogleApi.Content.V21.Model.UrlSettings.t() | nil
        }

  field(:effectiveEnrollmentState)
  field(:effectiveReviewState)
  field(:effectiveUriSettings, as: GoogleApi.Content.V21.Model.UrlSettings)
  field(:enrollmentState)
  field(:merchantId)
  field(:reviewState)
  field(:uriSettings, as: GoogleApi.Content.V21.Model.UrlSettings)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.CheckoutSettings do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.CheckoutSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.CheckoutSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end