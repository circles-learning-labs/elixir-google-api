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

defmodule GoogleApi.DigitalAssetLinks.V1.Api.Assetlinks do
  @moduledoc """
  API calls for all endpoints tagged `Assetlinks`.
  """

  alias GoogleApi.DigitalAssetLinks.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Determines whether the specified (directional) relationship exists between
  the specified source and target assets.

  The relation describes the intent of the link between the two assets as
  claimed by the source asset.  An example for such relationships is the
  delegation of privileges or permissions.

  This command is most often used by infrastructure systems to check
  preconditions for an action.  For example, a client may want to know if it
  is OK to send a web URL to a particular mobile app instead. The client can
  check for the relevant asset link from the website to the mobile app to
  decide if the operation should be allowed.

  A note about security: if you specify a secure asset as the source, such as
  an HTTPS website or an Android app, the API will ensure that any
  statements used to generate the response have been made in a secure way by
  the owner of that asset.  Conversely, if the source asset is an insecure
  HTTP website (that is, the URL starts with `http://` instead of
  `https://`), the API cannot verify its statements securely, and it is not
  possible to ensure that the website's statements have not been altered by a
  third party.  For more information, see the [Digital Asset Links technical
  design
  specification](https://github.com/google/digitalassetlinks/blob/master/well-known/details.md).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DigitalAssetLinks.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:relation` (*type:* `String.t`) - Query string for the relation.

          We identify relations with strings of the format `<kind>/<detail>`, where
          `<kind>` must be one of a set of pre-defined purpose categories, and
          `<detail>` is a free-form lowercase alphanumeric string that describes the
          specific use case of the statement.

          Refer to [our API documentation](/digital-asset-links/v1/relation-strings)
          for the current list of supported relations.

          For a query to match an asset link, both the query's and the asset link's
          relation strings must match exactly.

          Example: A query with relation `delegate_permission/common.handle_all_urls`
          matches an asset link with relation
          `delegate_permission/common.handle_all_urls`.
      *   `:"source.androidApp.certificate.sha256Fingerprint"` (*type:* `String.t`) - The uppercase SHA-265 fingerprint of the certificate.  From the PEM
           certificate, it can be acquired like this:

              $ keytool -printcert -file $CERTFILE | grep SHA256:
              SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\
                  42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5

          or like this:

              $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256
              SHA256 Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\
                  16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5

          In this example, the contents of this field would be `14:6D:E9:83:C5:73:
          06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:
          44:E5`.

          If these tools are not available to you, you can convert the PEM
          certificate into the DER format, compute the SHA-256 hash of that string
          and represent the result as a hexstring (that is, uppercase hexadecimal
          representations of each octet, separated by colons).
      *   `:"source.androidApp.packageName"` (*type:* `String.t`) - Android App assets are naturally identified by their Java package name.
          For example, the Google Maps app uses the package name
          `com.google.android.apps.maps`.
          REQUIRED
      *   `:"source.web.site"` (*type:* `String.t`) - Web assets are identified by a URL that contains only the scheme, hostname
          and port parts.  The format is

              http[s]://<hostname>[:<port>]

          Hostnames must be fully qualified: they must end in a single period
          ("`.`").

          Only the schemes "http" and "https" are currently allowed.

          Port numbers are given as a decimal number, and they must be omitted if the
          standard port numbers are used: 80 for http and 443 for https.

          We call this limited URL the "site".  All URLs that share the same scheme,
          hostname and port are considered to be a part of the site and thus belong
          to the web asset.

          Example: the asset with the site `https://www.google.com` contains all
          these URLs:

            *   `https://www.google.com/`
            *   `https://www.google.com:443/`
            *   `https://www.google.com/foo`
            *   `https://www.google.com/foo?bar`
            *   `https://www.google.com/foo#bar`
            *   `https://user@password:www.google.com/`

          But it does not contain these URLs:

            *   `http://www.google.com/`       (wrong scheme)
            *   `https://google.com/`          (hostname does not match)
            *   `https://www.google.com:444/`  (port does not match)
          REQUIRED
      *   `:"target.androidApp.certificate.sha256Fingerprint"` (*type:* `String.t`) - The uppercase SHA-265 fingerprint of the certificate.  From the PEM
           certificate, it can be acquired like this:

              $ keytool -printcert -file $CERTFILE | grep SHA256:
              SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\
                  42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5

          or like this:

              $ openssl x509 -in $CERTFILE -noout -fingerprint -sha256
              SHA256 Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\
                  16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5

          In this example, the contents of this field would be `14:6D:E9:83:C5:73:
          06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:
          44:E5`.

          If these tools are not available to you, you can convert the PEM
          certificate into the DER format, compute the SHA-256 hash of that string
          and represent the result as a hexstring (that is, uppercase hexadecimal
          representations of each octet, separated by colons).
      *   `:"target.androidApp.packageName"` (*type:* `String.t`) - Android App assets are naturally identified by their Java package name.
          For example, the Google Maps app uses the package name
          `com.google.android.apps.maps`.
          REQUIRED
      *   `:"target.web.site"` (*type:* `String.t`) - Web assets are identified by a URL that contains only the scheme, hostname
          and port parts.  The format is

              http[s]://<hostname>[:<port>]

          Hostnames must be fully qualified: they must end in a single period
          ("`.`").

          Only the schemes "http" and "https" are currently allowed.

          Port numbers are given as a decimal number, and they must be omitted if the
          standard port numbers are used: 80 for http and 443 for https.

          We call this limited URL the "site".  All URLs that share the same scheme,
          hostname and port are considered to be a part of the site and thus belong
          to the web asset.

          Example: the asset with the site `https://www.google.com` contains all
          these URLs:

            *   `https://www.google.com/`
            *   `https://www.google.com:443/`
            *   `https://www.google.com/foo`
            *   `https://www.google.com/foo?bar`
            *   `https://www.google.com/foo#bar`
            *   `https://user@password:www.google.com/`

          But it does not contain these URLs:

            *   `http://www.google.com/`       (wrong scheme)
            *   `https://google.com/`          (hostname does not match)
            *   `https://www.google.com:444/`  (port does not match)
          REQUIRED
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DigitalAssetLinks.V1.Model.CheckResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec digitalassetlinks_assetlinks_check(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.DigitalAssetLinks.V1.Model.CheckResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def digitalassetlinks_assetlinks_check(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :relation => :query,
      :"source.androidApp.certificate.sha256Fingerprint" => :query,
      :"source.androidApp.packageName" => :query,
      :"source.web.site" => :query,
      :"target.androidApp.certificate.sha256Fingerprint" => :query,
      :"target.androidApp.packageName" => :query,
      :"target.web.site" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/assetlinks:check", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DigitalAssetLinks.V1.Model.CheckResponse{}])
  end
end
