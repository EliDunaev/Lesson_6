//
//  ApiServicesProtocol.swift
//  UI_Project
//
//  Created by Илья Дунаев on 18.11.2021.
//

import Foundation
import PromiseKit
import DynamicJSON

protocol ApiServicesProtocol {
    func getFriends()
    
    func getPhoto(userID: String) -> Promise<Data>
    
    func photoPromiseParser(_ data: Data) -> Promise<Array<JSON>>
    
    func getGroups()
    
    func searchGroups(searchText: String, completion: @escaping([GroupsModel])->())
    
}
