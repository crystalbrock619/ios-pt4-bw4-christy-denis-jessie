//
//  CatRepresentation.swift
//  CatCart
//
//  Created by Christy Hicks on 6/22/20.
//  Copyright © 2020 CatCartCo. All rights reserved.
//

import Foundation

struct CatRepresentation: Codable {
    // swiftlint:disable identifier_name

    var id: UUID?
    var name: String?
    var price: Double?
    var latitude: Double?
    var longitude: Double?
    var years: Int16?
    var months: Int16?
    var imageURL: String?
}

func == (lhs: CatRepresentation, rhs: Cat) -> Bool {
    return rhs.id == lhs.id &&
        rhs.name == lhs.name &&
        rhs.price == lhs.price &&
        rhs.latitude == lhs.latitude &&
        rhs.longitude == lhs.longitude &&
        rhs.years == lhs.years &&
        rhs.months == lhs.months &&
        rhs.imageURL == lhs.imageURL
}

func == (lhs: Cat, rhs: CatRepresentation) -> Bool {
    return rhs == lhs
}

func != (lhs: CatRepresentation, rhs: Cat) -> Bool {
    return !(lhs == rhs)
}

func != (lhs: Cat, rhs: CatRepresentation) -> Bool {
    return rhs != lhs
}
