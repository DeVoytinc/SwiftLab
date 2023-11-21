import Foundation

struct Doctor {
    let id: UUID = UUID()
    let imageName: String
    let name: String
    let specialization: String
    var distance: Float
    var mark: Float
    var reviewsCount: Int
    var openAtTime: String
}

