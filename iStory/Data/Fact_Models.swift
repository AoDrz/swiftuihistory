//
//  Fact_Models.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI

struct Fait : Identifiable{
    //id
    var id = UUID()
    var intID : Int
    // fait
    var faitext : String
    // date
    var date : String
    // detail
    var faitdetail : String
    // fav
    var fav : Bool
    var link : String
}
