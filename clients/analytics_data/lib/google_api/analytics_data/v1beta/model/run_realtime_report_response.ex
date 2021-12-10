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

defmodule GoogleApi.AnalyticsData.V1beta.Model.RunRealtimeReportResponse do
  @moduledoc """
  The response realtime report table corresponding to a request.

  ## Attributes

  *   `dimensionHeaders` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.DimensionHeader.t)`, *default:* `nil`) - Describes dimension columns. The number of DimensionHeaders and ordering of DimensionHeaders matches the dimensions present in rows.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this message is. This `kind` is always the fixed string "analyticsData#runRealtimeReport". Useful to distinguish between response types in JSON.
  *   `maximums` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.Row.t)`, *default:* `nil`) - If requested, the maximum values of metrics.
  *   `metricHeaders` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.MetricHeader.t)`, *default:* `nil`) - Describes metric columns. The number of MetricHeaders and ordering of MetricHeaders matches the metrics present in rows.
  *   `minimums` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.Row.t)`, *default:* `nil`) - If requested, the minimum values of metrics.
  *   `propertyQuota` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.PropertyQuota.t`, *default:* `nil`) - This Analytics Property's Realtime quota state including this request.
  *   `rowCount` (*type:* `integer()`, *default:* `nil`) - The total number of rows in the query result. `rowCount` is independent of the number of rows returned in the response and the `limit` request parameter. For example if a query returns 175 rows and includes `limit` of 50 in the API request, the response will contain `rowCount` of 175 but only 50 rows.
  *   `rows` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.Row.t)`, *default:* `nil`) - Rows of dimension value combinations and metric values in the report.
  *   `totals` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.Row.t)`, *default:* `nil`) - If requested, the totaled values of metrics.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionHeaders =>
            list(GoogleApi.AnalyticsData.V1beta.Model.DimensionHeader.t()) | nil,
          :kind => String.t() | nil,
          :maximums => list(GoogleApi.AnalyticsData.V1beta.Model.Row.t()) | nil,
          :metricHeaders => list(GoogleApi.AnalyticsData.V1beta.Model.MetricHeader.t()) | nil,
          :minimums => list(GoogleApi.AnalyticsData.V1beta.Model.Row.t()) | nil,
          :propertyQuota => GoogleApi.AnalyticsData.V1beta.Model.PropertyQuota.t() | nil,
          :rowCount => integer() | nil,
          :rows => list(GoogleApi.AnalyticsData.V1beta.Model.Row.t()) | nil,
          :totals => list(GoogleApi.AnalyticsData.V1beta.Model.Row.t()) | nil
        }

  field(:dimensionHeaders, as: GoogleApi.AnalyticsData.V1beta.Model.DimensionHeader, type: :list)
  field(:kind)
  field(:maximums, as: GoogleApi.AnalyticsData.V1beta.Model.Row, type: :list)
  field(:metricHeaders, as: GoogleApi.AnalyticsData.V1beta.Model.MetricHeader, type: :list)
  field(:minimums, as: GoogleApi.AnalyticsData.V1beta.Model.Row, type: :list)
  field(:propertyQuota, as: GoogleApi.AnalyticsData.V1beta.Model.PropertyQuota)
  field(:rowCount)
  field(:rows, as: GoogleApi.AnalyticsData.V1beta.Model.Row, type: :list)
  field(:totals, as: GoogleApi.AnalyticsData.V1beta.Model.Row, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.RunRealtimeReportResponse do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.RunRealtimeReportResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.RunRealtimeReportResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end