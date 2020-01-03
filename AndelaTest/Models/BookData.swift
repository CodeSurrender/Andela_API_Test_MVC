//
//  AndelaTest
//
//  Created by Cole on 31/12/2019.
//  Copyright © 2019 Cole. All rights reserved.
//

import Foundation

/* Book entries object for JSON  */

// MARK: - Empty
struct Welcome: Codable {
    let count: Int
    let entries: [Entry]
}

// MARK: - Entry
struct Entry: Codable {
    let api, entryDescription: String
    let auth: Auth
    let https: Bool
    let cors: Cors
    let link: String
    let category: String
    
    enum CodingKeys: String, CodingKey {
        case api = "API"
        case entryDescription = "Description"
        case auth = "Auth"
        case https = "HTTPS"
        case cors = "Cors"
        case link = "Link"
        case category = "Category"
    }
}

enum Auth: String, Codable {
    case apiKey = "apiKey"
    case empty = ""
    case no = "No"
    case oAuth = "OAuth"
    case xMashapeKey = "X-Mashape-Key"
}

enum Cors: String, Codable {
    case no = "no"
    case unknown = "unknown"
    case yes = "yes"
}


/* APIS   */
var bookList = "https://api.publicapis.org/entries"


