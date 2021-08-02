//
//  PostData.swift
//  H4X0R News
//
//  Created by Kegan Ronholt on 8/2/21.
//

import Foundation


struct Results: Codable {
    var hits: [Post]
}

struct Post: Codable, Identifiable{
    var id: String {
        return objectID
    }
    var points: Int
    var objectID: String
    var title: String
    var url: String?
}
