//
//  TaskDelegate.swift
//  HttpPlay
//
//  Created by Igor on 23.02.2023.
//

import Foundation
import async_http_client

class TaskDelegate : NSObject, ITaskDelegate{
    
    func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) {
        print(metrics, "Metrics")
    }
}
