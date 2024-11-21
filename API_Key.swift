//
//  API_Key.swift
//  YemekTarifleri_App
//
//  Created by Feyza Çelik on 30.05.2024.
//

import Foundation
enum APIKey {
  // Fetch the API key from `GenerativeAI-Info.plist`
  static var `default`: String {
    guard let filePath = Bundle.main.path(forResource: "GenerativeAI-info", ofType: "plist")
    else {
      fatalError("Couldn't find file 'GenerativeAI-info.plist'.")
    }
    let plist = NSDictionary(contentsOfFile: filePath)
    guard let value = plist?.object(forKey: "API_Key") as? String else {
      fatalError("Couldn't find key 'API_Key' in 'GenerativeAI-Info.plist'.")
    }
    if value.starts(with: "_") {
      fatalError(
        "Follow the instructions at https://ai.google.dev/tutorials/setup to get an API key."
      )
    }
    return value
  }
}

