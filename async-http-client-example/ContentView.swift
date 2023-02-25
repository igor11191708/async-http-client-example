//
//  ContentView.swift
//  HttpPlay
//
//  Created by Igor on 22.02.2023.
//

import SwiftUI


struct User: Codable{
    let id : Int
    let name : String
}

let data : [User] = [.init(id: 1, name: "Igor"), .init(id: 2, name: "Max")]

struct ContentView: View {
    
    @StateObject var model : ViewModel = .init()
        
    var body: some View {
        VStack {
            Button("GET"){ Task{ await doGet() } }
            Button("POST"){ Task{ await doPost() } }
            Button("POST with METRICS"){ Task{ await doPostWithMetrics() } }
            Button("PUT"){ Task{ await doPut() } }
            Button("DELETE"){ Task{ await doDelete() } }
        }
        .padding()
        .task{
            
        }
    }
    
    func doGet() async{
        do{
            let data = try await model.get(path: "user")
            print(data.value)
        }
        catch{ print(error) }
    }
    
    func doPost() async{
        do{
            let data = try await model.post(path: "user")
            print(data.value)
        }
        catch{ print(error) }
    }
    
    func doPostWithMetrics() async{
        do{
            let data = try await model.postWithMetrics(path: "user")
            print(data.value)
        }
        catch{ print(error) }
    }
    
    func doPut() async{
        do{
            let data = try await model.put(path: "user")
            print(data.value)
        }
        catch{ print(error) }
    }
    
    func doDelete() async{
        do{
            let data = try await model.delete(path: "user")
            print(data.value)
        }
        catch{ print(error) }
    }
}

