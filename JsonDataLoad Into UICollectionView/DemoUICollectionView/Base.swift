
import Foundation
struct Base : Codable {
	let page : Int?
	let per_page : Int?
	let total : Int?
	let total_pages : Int?
	let data : [Data]?

	enum CodingKeys: String, CodingKey {

		case page = "page"
		case per_page = "per_page"
		case total = "total"
		case total_pages = "total_pages"
		case data = "data"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		page = try values.decodeIfPresent(Int.self, forKey: .page)
		per_page = try values.decodeIfPresent(Int.self, forKey: .per_page)
		total = try values.decodeIfPresent(Int.self, forKey: .total)
		total_pages = try values.decodeIfPresent(Int.self, forKey: .total_pages)
		data = try values.decodeIfPresent([Data].self, forKey: .data)
	}

}
