//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class UserAPI {

    /**
     ユーザを作成します。
     
     - parameter createUserRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createUser(createUserRequest: CreateUserRequest, apiResponseQueue: DispatchQueue = TapyrusApiClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        createUserWithRequestBuilder(createUserRequest: createUserRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザを作成します。
     - POST /users
     - OpenID Connect を使った認証で得た id_token と access_token を Tapyrus API へ登録しユーザを作成します。すでにユーザが存在する場合は認証情報を更新します。
     - parameter createUserRequest: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func createUserWithRequestBuilder(createUserRequest: CreateUserRequest) -> RequestBuilder<Void> {
        let path = "/users"
        let URLString = TapyrusApiClient.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createUserRequest)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = TapyrusApiClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     ユーザの情報を返します。
     
     - parameter confirmationOnly: (query) オプションで&#x60;confirmation_only&#x60;を設定でき、&#x60;true&#x60;の場合ブロックチェーン上で承認済みのtpc・トークンのみを取得し、&#x60;false&#x60;の場合未承認のtpc・トークンも含めて取得します。デフォルトは&#x60;true&#x60;です。 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserInfo(confirmationOnly: Bool? = nil, apiResponseQueue: DispatchQueue = TapyrusApiClient.apiResponseQueue, completion: @escaping ((_ data: UserinfoResponse?, _ error: Error?) -> Void)) {
        getUserInfoWithRequestBuilder(confirmationOnly: confirmationOnly).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザの情報を返します。
     - GET /userinfo
     - ユーザの`id`,`balance`, `address`の情報を返します。
     - parameter confirmationOnly: (query) オプションで&#x60;confirmation_only&#x60;を設定でき、&#x60;true&#x60;の場合ブロックチェーン上で承認済みのtpc・トークンのみを取得し、&#x60;false&#x60;の場合未承認のtpc・トークンも含めて取得します。デフォルトは&#x60;true&#x60;です。 (optional)
     - returns: RequestBuilder<UserinfoResponse> 
     */
    open class func getUserInfoWithRequestBuilder(confirmationOnly: Bool? = nil) -> RequestBuilder<UserinfoResponse> {
        let path = "/userinfo"
        let URLString = TapyrusApiClient.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "confirmation_only": confirmationOnly?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserinfoResponse>.Type = TapyrusApiClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }
}
