# AddressAPI

All URIs are relative to *https://ap-01.tapyrus.chaintope.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAddress**](AddressAPI.md#createaddress) | **POST** /addresses | アドレスを生成して返します。
[**getAddresses**](AddressAPI.md#getaddresses) | **GET** /addresses | これまで生成したアドレスを一覧にして返します。


# **createAddress**
```swift
    open class func createAddress(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

アドレスを生成して返します。

受金用のアドレス生成して返します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient


// アドレスを生成して返します。
AddressAPI.createAddress() { (response, error) in
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddresses**
```swift
    open class func getAddresses(per: Int? = nil, page: Int? = nil, completion: @escaping (_ data: GetAddressesResponse?, _ error: Error?) -> Void)
```

これまで生成したアドレスを一覧にして返します。

これまで生成したアドレスを一覧にして返します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient

let per = 987 // Int | 1ページあたりの件数 (optional)
let page = 987 // Int | ページ番号 (optional)

// これまで生成したアドレスを一覧にして返します。
AddressAPI.getAddresses(per: per, page: page) { (response, error) in
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
 **per** | **Int** | 1ページあたりの件数 | [optional] 
 **page** | **Int** | ページ番号 | [optional] 

### Return type

[**GetAddressesResponse**](GetAddressesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

