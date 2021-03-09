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

defmodule GoogleApi.DisplayVideo.V1.Model.Creative do
  @moduledoc """
  A single Creative.

  ## Attributes

  *   `creativeId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the creative. Assigned by the system.
  *   `exitEvents` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.ExitEvent.t)`, *default:* `nil`) - Required. Exit events for this creative. An exit (also known as a click tag) is any area in your creative that someone can click or tap to open an advertiser's landing page. Every creative must include at least one exit. You can add an exit to your creative in any of the following ways: * Use Google Web Designer's tap area. * Define a JavaScript variable called "clickTag". * Use the Enabler (Enabler.exit()) to track exits in rich media formats.
  *   `skippable` (*type:* `boolean()`, *default:* `nil`) - Whether the user can choose to skip a video creative. This field is only supported for the following creative_type: * `CREATIVE_TYPE_VIDEO`
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the advertiser the creative belongs to.
  *   `trackerUrls` (*type:* `list(String.t)`, *default:* `nil`) - Tracking URLs for analytics providers or third-party ad technology vendors. The URLs must start with https (except on inventory that doesn't require SSL compliance). If using macros in your URL, use only macros supported by Display & Video 360. Standard URLs only, no IMG or SCRIPT tags. This field is only supported in following creative_type: * `CREATIVE_TYPE_NATIVE` * `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` * `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
  *   `expandOnHover` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates the creative will automatically expand on hover. Optional and only valid for third-party expandable creatives. Third-party expandable creatives are creatives with following hosting source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_EXPANDABLE`
  *   `obaIcon` (*type:* `GoogleApi.DisplayVideo.V1.Model.ObaIcon.t`, *default:* `nil`) - Specifies the OBA icon for a video creative. This field is only supported in following creative_type: * `CREATIVE_TYPE_VIDEO`
  *   `iasCampaignMonitoring` (*type:* `boolean()`, *default:* `nil`) - Indicates whether Integral Ad Science (IAS) campaign monitoring is enabled. To enable this for the creative, make sure the Advertiser.creative_config.ias_client_id has been set to your IAS client ID.
  *   `expandingDirection` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the expanding direction of the creative. Required and only valid for third-party expandable creatives. Third-party expandable creatives are creatives with following hosting source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_EXPANDABLE`
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the creative was last updated. Assigned by the system.
  *   `appendedTag` (*type:* `String.t`, *default:* `nil`) - Third-party HTML tracking tag to be appended to the creative tag.
  *   `requirePingForAttribution` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates that the creative will wait for a return ping for attribution. Only valid when using a Campaign Manager 360 tracking ad with a third-party ad server parameter and the ${DC_DBM_TOKEN} macro. Optional and only valid for third-party tag creatives or third-party VAST tag creatives. Third-party tag creatives are creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE` Third-party VAST tag creatives are creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO`
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the creative. Must be UTF-8 encoded with a maximum size of 240 bytes.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the creative was created. Assigned by the system.
  *   `integrationCode` (*type:* `String.t`, *default:* `nil`) - ID information used to link this creative to an external system. Must be UTF-8 encoded with a length of no more than 10,000 characters.
  *   `creativeType` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The type of the creative.
  *   `vpaid` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates the third-party VAST tag creative requires VPAID (Digital Video Player-Ad Interface). Output only and only valid for third-party VAST tag creatives. Third-party VAST tag creatives are creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_VIDEO`
  *   `html5Video` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates the third-party VAST tag creative requires HTML5 Video support. Output only and only valid for third-party VAST tag creatives. Third-party VAST tag creatives are creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_VIDEO`
  *   `jsTrackerUrl` (*type:* `String.t`, *default:* `nil`) - JavaScript measurement URL from supported third-party verification providers (ComScore, DoubleVerify, IAS, Moat). HTML script tags are not supported. This field is only supported in following creative_type: * `CREATIVE_TYPE_NATIVE` * `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` * `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
  *   `thirdPartyUrls` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.ThirdPartyUrl.t)`, *default:* `nil`) - Tracking URLs from third parties to track interactions with a video creative. This field is only supported for the following creative_type: * `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_NATIVE_VIDEO`
  *   `mp3Audio` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates the third-party audio creative supports MP3. Output only and only valid for third-party audio creatives. Third-party audio creatives are creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_AUDIO`
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the creative.
  *   `counterEvents` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.CounterEvent.t)`, *default:* `nil`) - Counter events for a rich media creative. Counters track the number of times that a user interacts with any part of a rich media creative in a specified way (mouse-overs, mouse-outs, clicks, taps, data loading, keyboard entries, etc.). Any event that can be captured in the creative can be recorded as a counter. Leave it empty or unset for creatives containing image assets only.
  *   `progressOffset` (*type:* `GoogleApi.DisplayVideo.V1.Model.AudioVideoOffset.t`, *default:* `nil`) - Amount of time to play the video before counting a view. This field is required when skippable is true. This field is only supported for the following creative_type: * `CREATIVE_TYPE_VIDEO`
  *   `creativeAttributes` (*type:* `list(String.t)`, *default:* `nil`) - Output only. A list of attributes of the creative that is generated by the system.
  *   `hostingSource` (*type:* `String.t`, *default:* `nil`) - Required. Indicates where the creative is hosted.
  *   `dynamic` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether the creative is dynamic.
  *   `cmPlacementId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the Campaign Manager 360 placement associated with the creative. This field is only applicable for creatives that are synced from Campaign Manager.
  *   `skipOffset` (*type:* `GoogleApi.DisplayVideo.V1.Model.AudioVideoOffset.t`, *default:* `nil`) - Amount of time to play the video before the skip button appears. This field is required when skippable is true. This field is only supported for the following creative_type: * `CREATIVE_TYPE_VIDEO`
  *   `vastTagUrl` (*type:* `String.t`, *default:* `nil`) - Optional. The URL of the VAST tag for a third-party VAST tag creative. Required and only valid for third-party VAST tag creatives. Third-party VAST tag creatives are creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO`
  *   `lineItemIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The IDs of the line items this creative is associated with. To associate a creative to a line item, use LineItem.creative_ids instead.
  *   `entityStatus` (*type:* `String.t`, *default:* `nil`) - Required. Controls whether or not the creative can serve. Accepted values are: * `ENTITY_STATUS_ACTIVE` * `ENTITY_STATUS_ARCHIVED` * `ENTITY_STATUS_PAUSED`
  *   `additionalDimensions` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.Dimensions.t)`, *default:* `nil`) - Additional dimensions. Applicable when creative_type is one of: * `CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE` * `CREATIVE_TYPE_NATIVE` * `CREATIVE_TYPE_TEMPLATED_APP_INSTALL` * `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_LIGHTBOX` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` * `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_PUBLISHER_HOSTED` If this field is specified, width_pixels and height_pixels are both required and must be greater than or equal to 0.
  *   `timerEvents` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.TimerEvent.t)`, *default:* `nil`) - Timer custom events for a rich media creative. Timers track the time during which a user views and interacts with a specified part of a rich media creative. A creative can have multiple timer events, each timed independently. Leave it empty or unset for creatives containing image assets only.
  *   `cmTrackingAd` (*type:* `GoogleApi.DisplayVideo.V1.Model.CmTrackingAd.t`, *default:* `nil`) - The Campaign Manager 360 tracking ad associated with the creative. Optional for the following creative_type when created by an advertiser that uses both Campaign Manager 360 and third-party ad serving: * `CREATIVE_TYPE_NATIVE` * `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` * `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` Output only for other cases.
  *   `oggAudio` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates the third-party audio creative supports OGG. Output only and only valid for third-party audio creatives. Third-party audio creatives are creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_AUDIO`
  *   `assets` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.AssetAssociation.t)`, *default:* `nil`) - Required. Assets associated to this creative. Assets can be associated to the creative in one of following roles: * `ASSET_ROLE_UNSPECIFIED` * `ASSET_ROLE_MAIN` * `ASSET_ROLE_BACKUP` * `ASSET_ROLE_POLITE_LOAD`
  *   `mediaDuration` (*type:* `String.t`, *default:* `nil`) - Output only. Media duration of the creative. Applicable when creative_type is one of: * `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_NATIVE_VIDEO` * `CREATIVE_TYPE_PUBLISHER_HOSTED`
  *   `thirdPartyTag` (*type:* `String.t`, *default:* `nil`) - Optional. The original third-party tag used for the creative. Required and only valid for third-party tag creatives. Third-party tag creatives are creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE`
  *   `universalAdId` (*type:* `GoogleApi.DisplayVideo.V1.Model.UniversalAdId.t`, *default:* `nil`) - Optional. An optional creative identifier provided by a registry that is unique across all platforms. Universal Ad ID is part of the VAST 4.0 standard. It can be modified after the creative is created. This field is only supported for the following creative_type: * `CREATIVE_TYPE_VIDEO`
  *   `companionCreativeIds` (*type:* `list(String.t)`, *default:* `nil`) - The IDs of companion creatives for a video creative. You can assign existing display creatives (with image or HTML5 assets) to serve surrounding the publisher's video player. Companions display around the video player while the video is playing and remain after the video has completed. Creatives contain additional dimensions can not be companion creatives. This field is only supported for following creative_type: * `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO`
  *   `dimensions` (*type:* `GoogleApi.DisplayVideo.V1.Model.Dimensions.t`, *default:* `nil`) - Required. Primary dimensions of the creative. Applicable to all creative types. The value of width_pixels and height_pixels defaults to `0` when creative_type is one of: * `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_TEMPLATED_APP_INSTALL_INTERSTITIAL` * `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_NATIVE_VIDEO` * `CREATIVE_TYPE_TEMPLATED_APP_INSTALL_VIDEO`
  *   `transcodes` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.Transcode.t)`, *default:* `nil`) - Output only. Audio/Video transcodes. Display & Video 360 transcodes the main asset into a number of alternative versions that use different file formats or have different properties (resolution, audio bit rate, and video bit rate), each designed for specific video players or bandwidths. These transcodes give a publisher's system more options to choose from for each impression on your video and ensures that the appropriate file serves based on the viewer’s connection and screen size. This field is only supported in following creative_type: * `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_NATIVE_VIDEO` * `CREATIVE_TYPE_AUDIO`
  *   `requireMraid` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates that the creative requires MRAID (Mobile Rich Media Ad Interface Definitions system). Set this if the creative relies on mobile gestures for interactivity, such as swiping or tapping. Optional and only valid for third-party tag creatives. Third-party tag creatives are creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE`
  *   `reviewStatus` (*type:* `GoogleApi.DisplayVideo.V1.Model.ReviewStatusInfo.t`, *default:* `nil`) - Output only. The current status of the creative review process.
  *   `notes` (*type:* `String.t`, *default:* `nil`) - User notes for this creative. Must be UTF-8 encoded with a length of no more than 20,000 characters.
  *   `requireHtml5` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates that the creative relies on HTML5 to render properly. Optional and only valid for third-party tag creatives. Third-party tag creatives are creatives with following hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: * `CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creativeId => String.t() | nil,
          :exitEvents => list(GoogleApi.DisplayVideo.V1.Model.ExitEvent.t()) | nil,
          :skippable => boolean() | nil,
          :advertiserId => String.t() | nil,
          :trackerUrls => list(String.t()) | nil,
          :expandOnHover => boolean() | nil,
          :obaIcon => GoogleApi.DisplayVideo.V1.Model.ObaIcon.t() | nil,
          :iasCampaignMonitoring => boolean() | nil,
          :expandingDirection => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :appendedTag => String.t() | nil,
          :requirePingForAttribution => boolean() | nil,
          :displayName => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :integrationCode => String.t() | nil,
          :creativeType => String.t() | nil,
          :vpaid => boolean() | nil,
          :html5Video => boolean() | nil,
          :jsTrackerUrl => String.t() | nil,
          :thirdPartyUrls => list(GoogleApi.DisplayVideo.V1.Model.ThirdPartyUrl.t()) | nil,
          :mp3Audio => boolean() | nil,
          :name => String.t() | nil,
          :counterEvents => list(GoogleApi.DisplayVideo.V1.Model.CounterEvent.t()) | nil,
          :progressOffset => GoogleApi.DisplayVideo.V1.Model.AudioVideoOffset.t() | nil,
          :creativeAttributes => list(String.t()) | nil,
          :hostingSource => String.t() | nil,
          :dynamic => boolean() | nil,
          :cmPlacementId => String.t() | nil,
          :skipOffset => GoogleApi.DisplayVideo.V1.Model.AudioVideoOffset.t() | nil,
          :vastTagUrl => String.t() | nil,
          :lineItemIds => list(String.t()) | nil,
          :entityStatus => String.t() | nil,
          :additionalDimensions => list(GoogleApi.DisplayVideo.V1.Model.Dimensions.t()) | nil,
          :timerEvents => list(GoogleApi.DisplayVideo.V1.Model.TimerEvent.t()) | nil,
          :cmTrackingAd => GoogleApi.DisplayVideo.V1.Model.CmTrackingAd.t() | nil,
          :oggAudio => boolean() | nil,
          :assets => list(GoogleApi.DisplayVideo.V1.Model.AssetAssociation.t()) | nil,
          :mediaDuration => String.t() | nil,
          :thirdPartyTag => String.t() | nil,
          :universalAdId => GoogleApi.DisplayVideo.V1.Model.UniversalAdId.t() | nil,
          :companionCreativeIds => list(String.t()) | nil,
          :dimensions => GoogleApi.DisplayVideo.V1.Model.Dimensions.t() | nil,
          :transcodes => list(GoogleApi.DisplayVideo.V1.Model.Transcode.t()) | nil,
          :requireMraid => boolean() | nil,
          :reviewStatus => GoogleApi.DisplayVideo.V1.Model.ReviewStatusInfo.t() | nil,
          :notes => String.t() | nil,
          :requireHtml5 => boolean() | nil
        }

  field(:creativeId)
  field(:exitEvents, as: GoogleApi.DisplayVideo.V1.Model.ExitEvent, type: :list)
  field(:skippable)
  field(:advertiserId)
  field(:trackerUrls, type: :list)
  field(:expandOnHover)
  field(:obaIcon, as: GoogleApi.DisplayVideo.V1.Model.ObaIcon)
  field(:iasCampaignMonitoring)
  field(:expandingDirection)
  field(:updateTime, as: DateTime)
  field(:appendedTag)
  field(:requirePingForAttribution)
  field(:displayName)
  field(:createTime, as: DateTime)
  field(:integrationCode)
  field(:creativeType)
  field(:vpaid)
  field(:html5Video)
  field(:jsTrackerUrl)
  field(:thirdPartyUrls, as: GoogleApi.DisplayVideo.V1.Model.ThirdPartyUrl, type: :list)
  field(:mp3Audio)
  field(:name)
  field(:counterEvents, as: GoogleApi.DisplayVideo.V1.Model.CounterEvent, type: :list)
  field(:progressOffset, as: GoogleApi.DisplayVideo.V1.Model.AudioVideoOffset)
  field(:creativeAttributes, type: :list)
  field(:hostingSource)
  field(:dynamic)
  field(:cmPlacementId)
  field(:skipOffset, as: GoogleApi.DisplayVideo.V1.Model.AudioVideoOffset)
  field(:vastTagUrl)
  field(:lineItemIds, type: :list)
  field(:entityStatus)
  field(:additionalDimensions, as: GoogleApi.DisplayVideo.V1.Model.Dimensions, type: :list)
  field(:timerEvents, as: GoogleApi.DisplayVideo.V1.Model.TimerEvent, type: :list)
  field(:cmTrackingAd, as: GoogleApi.DisplayVideo.V1.Model.CmTrackingAd)
  field(:oggAudio)
  field(:assets, as: GoogleApi.DisplayVideo.V1.Model.AssetAssociation, type: :list)
  field(:mediaDuration)
  field(:thirdPartyTag)
  field(:universalAdId, as: GoogleApi.DisplayVideo.V1.Model.UniversalAdId)
  field(:companionCreativeIds, type: :list)
  field(:dimensions, as: GoogleApi.DisplayVideo.V1.Model.Dimensions)
  field(:transcodes, as: GoogleApi.DisplayVideo.V1.Model.Transcode, type: :list)
  field(:requireMraid)
  field(:reviewStatus, as: GoogleApi.DisplayVideo.V1.Model.ReviewStatusInfo)
  field(:notes)
  field(:requireHtml5)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.Creative do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.Creative.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.Creative do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
