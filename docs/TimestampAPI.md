# TimestampAPI

All URIs are relative to *https://ap-01.tapyrus.chaintope.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTimestamp**](TimestampAPI.md#addtimestamp) | **POST** /timestamp | Timestampを記録
[**getTimestamps**](TimestampAPI.md#gettimestamps) | **GET** /timestamps | Timestamp一覧表示


# **addTimestamp**
```swift
    open class func addTimestamp(addTimestampRequest: AddTimestampRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Timestampを記録

ブロックチェーンにハッシュ値をタイムスタンプとして記録します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient

let addTimestampRequest = AddTimestampRequest(contentHash: "contentHash_example", _prefix: "_prefix_example") // AddTimestampRequest | `content_hash`, `prefix`を受け取り、ブロックチェーンにハッシュ値をタイムスタンプとして記録します。 (optional)

// Timestampを記録
TimestampAPI.addTimestamp(addTimestampRequest: addTimestampRequest) { (response, error) in
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
 **addTimestampRequest** | [**AddTimestampRequest**](AddTimestampRequest.md) | &#x60;content_hash&#x60;, &#x60;prefix&#x60;を受け取り、ブロックチェーンにハッシュ値をタイムスタンプとして記録します。 | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimestamps**
```swift
    open class func getTimestamps(completion: @escaping (_ data: [Array]?, _ error: Error?) -> Void)
```

Timestamp一覧表示

ブロックチェーンに記録したタイムスタンプを取得し、`content_hash`,`prefix`,`txid`を一覧で表示します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient


// Timestamp一覧表示
TimestampAPI.getTimestamps() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**[Array]**](Array.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

