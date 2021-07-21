# PaymentAPI

All URIs are relative to *https://ap-01.tapyrus.chaintope.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transfer**](PaymentAPI.md#transfer) | **POST** /payment | 資金の送金


# **transfer**
```swift
    open class func transfer(paymentRequest: PaymentRequest? = nil, completion: @escaping (_ data: PaymentResponse?, _ error: Error?) -> Void)
```

資金の送金

指定したアドレスに任意のtapyrusを送金します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TapyrusApiClient

let paymentRequest = PaymentRequest(address: "address_example", amount: 123, fee: 123) // PaymentRequest | `address`, `amount`を受け取り、アドレスに対して指定した額の資金(tapyrus)を送金します。 任意で`fee`を設定し、送金手数料を指定できます。  (optional)

// 資金の送金
PaymentAPI.transfer(paymentRequest: paymentRequest) { (response, error) in
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
 **paymentRequest** | [**PaymentRequest**](PaymentRequest.md) | &#x60;address&#x60;, &#x60;amount&#x60;を受け取り、アドレスに対して指定した額の資金(tapyrus)を送金します。 任意で&#x60;fee&#x60;を設定し、送金手数料を指定できます。  | [optional] 

### Return type

[**PaymentResponse**](PaymentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

