//
//  JSON-extensions.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 7/4/14.
//  2014, SMART Health IT.
//

import Foundation


extension String {
	public func asJSON() -> String {
		return self
	}
}

extension Bool {
	public func asJSON() -> Bool {
		return self
	}
}

extension Int {
	public func asJSON() -> Int {
		return self
	}
}

extension UInt {
	public func asJSON() -> UInt {
		return self
	}
}

/// Added in order to handle a protocol wart.
public struct URLTranslations {
    internal static var jsonToUrl: [String: URL]?
    internal static var urlstringToJson: [String: String]?
    internal static var urlProblemLogger: ((String) -> ())?
    
    public static func setTranslations(_ translations: [String: URL]?) {
        jsonToUrl = translations
        urlstringToJson = translations.map { j2u in
            //let j2s = j2u.mapValues { $0.absoluteString }
            [String: String](uniqueKeysWithValues: j2u.map {(j,u) in (u.absoluteString, j)})
        }
    }
}

extension URL {
	
	public init?(json: String) {
        var ok = false
        defer {
            if !ok {
                if let logger = URLTranslations.urlProblemLogger {
                    logger("Bad URL in JSON: \"\(json)\"")
                }
            }
        }
        if let url = URLTranslations.jsonToUrl?[json] {
            self.init(string: url.absoluteString) // encode/decode - alas
        } else {
            self.init(string: json)
        }
        ok = true
	}
	
	public static func instantiate(fromArray json: [String]) -> [URL] {
		var arr: [URL] = []
		for jsonString in json {
			if let url = URL(json: jsonString) {
				arr.append(url)
			}
		}
		return arr
	}
	
	public func asJSON() -> String {
		return URLTranslations.urlstringToJson?[absoluteString] ?? self.description
	}
}

extension NSDecimalNumber {
	/*
		Takes an NSNumber, usually decoded from JSON, and creates an NSDecimalNumber instance
	
		We're using a string format approach using "%.15g" since NSJSONFormatting returns NSNumber objects instantiated
		with Double() or Int(). In the former case this causes precision issues (e.g. try 8.7). Unfortunately, some
		doubles with 16 and 17 significant digits will be truncated (e.g. a longitude of "4.844614000123024").
	
		TODO: improve to avoid double precision issues
	 */
	public convenience init(json: NSNumber) {
		if let _ = json.stringValue.characters.index(of: ".") {
			self.init(string: String(format: "%.15g", json.doubleValue))
		}
		else {
			self.init(string: "\(json)")
		}
	}
	
	public func asJSON() -> NSDecimalNumber {
		return self
	}
}

extension Base64Binary {
	public init(string: String) {
		self.init(value: string)
	}
	
	public func asJSON() -> String {
		return self.value ?? ""
	}
}

extension FHIRDate {
	public static func instantiate(fromArray json: [String]) -> [FHIRDate] {
		var arr: [FHIRDate] = []
		for string in json {
			if let obj = FHIRDate(string: string) {
				arr.append(obj)
			}
		}
		return arr
	}
	
	public func asJSON() -> String {
		return self.description
	}
}

extension FHIRTime {
	public static func instantiate(fromArray json: [String]) -> [FHIRTime] {
		var arr: [FHIRTime] = []
		for string in json {
			if let obj = FHIRTime(string: string) {
				arr.append(obj)
			}
		}
		return arr
	}
	
	public func asJSON() -> String {
		return self.description
	}
}

extension DateTime {
	public static func instantiate(fromArray json: [String]) -> [DateTime] {
		var arr: [DateTime] = []
		for string in json {
			if let obj = DateTime(string: string) {
				arr.append(obj)
			}
		}
		return arr
	}
	
	public func asJSON() -> String {
		return self.description
	}
}

extension Instant {
	public static func instantiate(fromArray json: [String]) -> [Instant] {
		var arr: [Instant] = []
		for string in json {
			if let obj = Instant(string: string) {
				arr.append(obj)
			}
		}
		return arr
	}
	
	public func asJSON() -> String {
		return self.description
	}
}

