//
//  TaskDelegate.swift
//  HttpPlay
//
//  Created by Igor on 23.02.2023.
//

import Foundation

class TaskDelegate : NSObject, URLSessionTaskDelegate{
    
    func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) {
        print(metrics, "Metrics")
    }
}
