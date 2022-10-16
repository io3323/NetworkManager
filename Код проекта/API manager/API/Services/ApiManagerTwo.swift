//
//  ApiManagerTwo.swift
//  API manager
//
//  Created by Игорь Островский on 16.10.2022.
//

import Foundation
enum APIType{
    case getUser
    case getPosts
    case gaetAlbum
    
    var baseURL:String{
        return "https://jsonplaceholder.typicode.com/"
    }
    var headers:[String:String]{
        switch self{
        default: return [:]
        }
    }
    var path:String{
        switch self{
        case .getUser: return "users"
        case .getPosts: return "posts"
        case .gaetAlbum: return "albums"
        }
    }
    var request:URLRequest{
        var url = URL(string: path, relativeTo: URL(string: baseURL)!)!
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = headers
        switch self{
        default: request.httpMethod = "GET"
        }
    }
}
class APIManager{
    var shared = APIManager()
    func getUser(complition: @escaping (Users) -> Void){
        var request = APIType.getUser.request
        var task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let users = try? JSONDecoder().decode(Users.self, from: data){
                complition(users)
            }else{
                complition([])
            }
        }
        
    }
}
