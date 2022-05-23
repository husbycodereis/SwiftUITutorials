
//   let foxModel = try? newJSONDecoder().decode(FoxModel.self, from: jsonData)

import Foundation

// MARK: - FoxModel
struct FoxModel: Codable {
    let image: String?
    let link: String?
}
