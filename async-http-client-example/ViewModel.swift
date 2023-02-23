//
//  ViewModel.swift
//  HttpPlay
//
//  Created by Igor on 23.02.2023.
//

import Foundation
import async_http_client

final class ViewModel : ObservableObject{
    
    let http = Http.Proxy(baseURL: URL(string: "http://localhost:3000")!)
    
    func get(path: String) async throws -> Http.Response<[User]>{
        try await http.get(path: path)
    }
    
    func postWithMetrics(path: String) async throws -> Http.Response<[User]>{
        try await http.post(path: path, taskDelegate: TaskDelegate())
    }
    
    func post(path: String) async throws -> Http.Response<[User]>{
        try await http.post(path: path, body: data, query: [("name", "Igor"), ("page","1")], headers: ["Content-Type": "application/json"])
    }
    
    func put(path: String) async throws -> Http.Response<[User]>{
        try await http.put(path: path, body: data)
    }
    
    func delete(path: String) async throws -> Http.Response<[User]>{
        try await http.delete(path: path)
    }
}
