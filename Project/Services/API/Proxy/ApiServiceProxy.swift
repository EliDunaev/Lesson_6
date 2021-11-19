//
//  ApiServiceProxy.swift
//  UI_Project
//
//  Created by Илья Дунаев on 18.11.2021.
//

import Foundation
import PromiseKit
import DynamicJSON

class ApiServiceProxy: ApiServicesProtocol {
    
    let apiService: APIRequest
    
    init(apiService: APIRequest) {
        self.apiService = apiService
    }
    
    func getFriends() {
        self.apiService.getFriends()
        print("# Получение списка друзей пользователя")
    }
    
    func getPhoto(userID: String) -> Promise<Data> {
        print("# Загрузка фотографий пользователя \(userID)")
        return self.apiService.getPhoto(userID: userID)
    }
    
    func photoPromiseParser(_ data: Data) -> Promise<Array<JSON>> {
        print("# Вызов функции парсинга фото")
        return self.apiService.photoPromiseParser(data)
    }
    
    func getGroups() {
        self.apiService.getGroups()
        print("# Получение списка групп пользователя")
    }
    
    func searchGroups(searchText: String, completion: @escaping ([GroupsModel]) -> ()) {
        self.apiService.searchGroups(searchText: searchText, completion: completion)
        print("# Получение списка группа по запросу \(searchText)")
    }
    
}
