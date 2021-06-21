//
//  NetworkService.swift
//  MyTravelHelper
//
//  Created by Rudra on 21/06/21.
//  Copyright © 2021 Sample. All rights reserved.
//

import Foundation


class NetworkServices: NSObject {
   
    static let shared = NetworkServices()

    private override init() {
        super.init()
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }

    
}
