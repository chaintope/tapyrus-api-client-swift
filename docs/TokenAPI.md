# TokenAPI

All URIs are relative to *https://ap-01.tapyrus.chaintope.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**burnToken**](TokenAPI.md#burntoken) | **DELETE** /tokens/{token_id}/burn | トークンの焼却
[**getTokens**](TokenAPI.md#gettokens) | **GET** /tokens | トークンの総量取得
[**issueToken**](TokenAPI.md#issuetoken) | **POST** /tokens/issue | トークンの新規発行
[**reissueToken**](TokenAPI.md#reissuetoken) | **POST** /tokens/{token_id}/reissue | トークンの再発行
[**transferToken**](TokenAPI.md#transfertoken) | **PUT** /tokens/{token_id}/transfer | トークンの送付


# **burnToken**
```swift
    open class func burnToken(tokenId: String, amount: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

トークンの焼却

任意の数のトークンを焼却します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient

let tokenId = "tokenId_example" // String | トークンの識別子。
let amount = 987 // Int | `amount`を受け取り、指定した量のトークンを焼却します。 `amount`が未入力の場合全てのトークンを焼却します。  (optional)

// トークンの焼却
TokenAPI.burnToken(tokenId: tokenId, amount: amount) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenId** | **String** | トークンの識別子。 | 
 **amount** | **Int** | &#x60;amount&#x60;を受け取り、指定した量のトークンを焼却します。 &#x60;amount&#x60;が未入力の場合全てのトークンを焼却します。  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTokens**
```swift
    open class func getTokens(confirmationOnly: Bool? = nil, completion: @escaping (_ data: [GetTokensResponse]?, _ error: Error?) -> Void)
```

トークンの総量取得

所有するトークンの総量を取得し、トークン識別子(`token_id`)ごとに総量(`amount`)を一覧で表示します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient

let confirmationOnly = true // Bool | オプションで`confirmation_only`を設定でき、`true`の場合ブロックチェーン上で承認済みのトークンのみを取得し、`false`の場合未承認のトークンも含めて取得します。デフォルトは`true`です。 (optional)

// トークンの総量取得
TokenAPI.getTokens(confirmationOnly: confirmationOnly) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmationOnly** | **Bool** | オプションで&#x60;confirmation_only&#x60;を設定でき、&#x60;true&#x60;の場合ブロックチェーン上で承認済みのトークンのみを取得し、&#x60;false&#x60;の場合未承認のトークンも含めて取得します。デフォルトは&#x60;true&#x60;です。 | [optional] 

### Return type

[**[GetTokensResponse]**](GetTokensResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueToken**
```swift
    open class func issueToken(issueTokenRequest: IssueTokenRequest? = nil, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```

トークンの新規発行

任意の数のトークンを新規発行します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient

let issueTokenRequest = IssueTokenRequest(amount: 123, tokenType: 123) // IssueTokenRequest | `amount`を受け取り指定した数のトークンを新規発行します。 任意で`token_type`を設定し、トークンの種類を指定できます。 `token_type`が未指定な場合、再発行可能なトークンが発行されます。 トークンの種類は以下の通りです。 - 1: 再発行可能なトークン - 2: 再発行不可能なトークン - 3: NFT  また、`token_type`が未指定または`1`の場合、任意でトークン識別子`id`を指定することで、指定したトークン識別子のトークンを再発行します。  (optional)

// トークンの新規発行
TokenAPI.issueToken(issueTokenRequest: issueTokenRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueTokenRequest** | [**IssueTokenRequest**](IssueTokenRequest.md) | &#x60;amount&#x60;を受け取り指定した数のトークンを新規発行します。 任意で&#x60;token_type&#x60;を設定し、トークンの種類を指定できます。 &#x60;token_type&#x60;が未指定な場合、再発行可能なトークンが発行されます。 トークンの種類は以下の通りです。 - 1: 再発行可能なトークン - 2: 再発行不可能なトークン - 3: NFT  また、&#x60;token_type&#x60;が未指定または&#x60;1&#x60;の場合、任意でトークン識別子&#x60;id&#x60;を指定することで、指定したトークン識別子のトークンを再発行します。  | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reissueToken**
```swift
    open class func reissueToken(tokenId: String, reissueTokenRequest: ReissueTokenRequest? = nil, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```

トークンの再発行

指定した識別子を持つ再発行可能なトークンを任意の量再発行します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient

let tokenId = "tokenId_example" // String | トークンの識別子。
let reissueTokenRequest = ReissueTokenRequest(amount: 123) // ReissueTokenRequest |  (optional)

// トークンの再発行
TokenAPI.reissueToken(tokenId: tokenId, reissueTokenRequest: reissueTokenRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenId** | **String** | トークンの識別子。 | 
 **reissueTokenRequest** | [**ReissueTokenRequest**](ReissueTokenRequest.md) |  | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transferToken**
```swift
    open class func transferToken(tokenId: String, transferTokenRequest: TransferTokenRequest, completion: @escaping (_ data: TokenResponse?, _ error: Error?) -> Void)
```

トークンの送付

任意の数のトークンを指定したアドレスに対して送付します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient

let tokenId = "tokenId_example" // String | トークンの識別子。
let transferTokenRequest = TransferTokenRequest(address: "address_example", amount: 123) // TransferTokenRequest | `address`でトークンを送付する相手のアドレスを指定し、`amount`で送付するトークンの量を指定します。

// トークンの送付
TokenAPI.transferToken(tokenId: tokenId, transferTokenRequest: transferTokenRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenId** | **String** | トークンの識別子。 | 
 **transferTokenRequest** | [**TransferTokenRequest**](TransferTokenRequest.md) | &#x60;address&#x60;でトークンを送付する相手のアドレスを指定し、&#x60;amount&#x60;で送付するトークンの量を指定します。 | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

