// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct BookData: Codable {
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let type, id: String
    let attributes: Attributes
    let relationships: Relationships
    let links: DatumLinks
}

// MARK: - Attributes
struct Attributes: Codable {
    let title, slug, content: String
    let createdAt, updatedAt: Date

    enum CodingKeys: String, CodingKey {
        case title, slug, content
        case createdAt
        case updatedAt
    }
}

// MARK: - DatumLinks
struct DatumLinks: Codable {
    let linksSelf: String

    enum CodingKeys: String, CodingKey {
        case linksSelf
    }
}

// MARK: - Relationships
struct Relationships: Codable {
    let authors, categories: Authors
}

// MARK: - Authors
struct Authors: Codable {
    let links: AuthorsLinks
}

// MARK: - AuthorsLinks
struct AuthorsLinks: Codable {
    let linksSelf, related: String

    enum CodingKeys: String, CodingKey {
        case linksSelf
        case related
    }
}
