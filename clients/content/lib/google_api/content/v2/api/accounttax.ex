# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Api.Accounttax do
  @moduledoc """
  API calls for all endpoints tagged `Accounttax`.
  """

  alias GoogleApi.Content.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves and updates tax settings of multiple accounts in a single request.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dryRun (boolean()): Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
    - :body (AccounttaxCustomBatchRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccounttaxCustomBatchResponse{}} on success
  {:error, info} on failure
  """
  @spec content_accounttax_custombatch(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.AccounttaxCustomBatchResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_accounttax_custombatch(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/accounttax/batch")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V2.Model.AccounttaxCustomBatchResponse{}]
    )
  end

  @doc """
  Retrieves the tax settings of the account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  - account_id (String.t): The ID of the account for which to get/update account tax settings.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccountTax{}} on success
  {:error, info} on failure
  """
  @spec content_accounttax_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.AccountTax.t()} | {:error, Tesla.Env.t()}
  def content_accounttax_get(
        connection,
        merchant_id,
        account_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/accounttax/{accountId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.AccountTax{}])
  end

  @doc """
  Lists the tax settings of the sub-accounts in your Merchant Center account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. This must be a multi-client account.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): The maximum number of tax settings to return in the response, used for paging.
    - :pageToken (String.t): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccounttaxListResponse{}} on success
  {:error, info} on failure
  """
  @spec content_accounttax_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.AccounttaxListResponse.t()} | {:error, Tesla.Env.t()}
  def content_accounttax_list(connection, merchant_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/accounttax", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.AccounttaxListResponse{}])
  end

  @doc """
  Updates the tax settings of the account. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  - account_id (String.t): The ID of the account for which to get/update account tax settings.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dryRun (boolean()): Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
    - :body (AccountTax): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccountTax{}} on success
  {:error, info} on failure
  """
  @spec content_accounttax_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.AccountTax.t()} | {:error, Tesla.Env.t()}
  def content_accounttax_patch(
        connection,
        merchant_id,
        account_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/{merchantId}/accounttax/{accountId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.AccountTax{}])
  end

  @doc """
  Updates the tax settings of the account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  - account_id (String.t): The ID of the account for which to get/update account tax settings.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dryRun (boolean()): Flag to simulate a request like in a live environment. If set to true, dry-run mode checks the validity of the request and returns errors (if any).
    - :body (AccountTax): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccountTax{}} on success
  {:error, info} on failure
  """
  @spec content_accounttax_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.AccountTax.t()} | {:error, Tesla.Env.t()}
  def content_accounttax_update(
        connection,
        merchant_id,
        account_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/{merchantId}/accounttax/{accountId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.AccountTax{}])
  end
end
