# UserAPI

All URIs are relative to *https://ap-01.tapyrus.chaintope.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UserAPI.md#createuser) | **POST** /users | ユーザを作成します。
[**getUserInfo**](UserAPI.md#getuserinfo) | **GET** /userinfo | ユーザの情報を返します。


# **createUser**
```swift
    open class func createUser(createUserRequest: CreateUserRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ユーザを作成します。

OpenID Connect を使った認証で得た id_token と access_token を Tapyrus API へ登録しユーザを作成します。すでにユーザが存在する場合は認証情報を更新します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient

let createUserRequest = CreateUserRequest(idToken: "idToken_example", issuer: "issuer_example", clientId: "clientId_example", accessToken: "accessToken_example") // CreateUserRequest | 

// ユーザを作成します。
UserAPI.createUser(createUserRequest: createUserRequest) { (response, error) in
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
 **createUserRequest** | [**CreateUserRequest**](CreateUserRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInfo**
```swift
    open class func getUserInfo(confirmationOnly: Bool? = nil, completion: @escaping (_ data: UserinfoResponse?, _ error: Error?) -> Void)
```

ユーザの情報を返します。

ユーザの`id`,`balance`, `address`の情報を返します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient

let confirmationOnly = true // Bool | オプションで`confirmation_only`を設定でき、`true`の場合ブロックチェーン上で承認済みのtpc・トークンのみを取得し、`false`の場合未承認のtpc・トークンも含めて取得します。デフォルトは`true`です。 (optional)

// ユーザの情報を返します。
UserAPI.getUserInfo(confirmationOnly: confirmationOnly) { (response, error) in
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
 **confirmationOnly** | **Bool** | オプションで&#x60;confirmation_only&#x60;を設定でき、&#x60;true&#x60;の場合ブロックチェーン上で承認済みのtpc・トークンのみを取得し、&#x60;false&#x60;の場合未承認のtpc・トークンも含めて取得します。デフォルトは&#x60;true&#x60;です。 | [optional] 

### Return type

[**UserinfoResponse**](UserinfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

