//
//  DateAndTimeTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 1/19/15.
//  2015, SMART Health IT.
//

import XCTest
@testable import SwiftFHIR


class DateTests: XCTestCase {
	
	func testParsing() {
		var d = FHIRDate(string: "2015")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.year)
		XCTAssertTrue(nil == d!.month)
		XCTAssertTrue(nil == d!.day)
		
		d = FHIRDate(string: "2015-83")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.year)
		XCTAssertTrue(nil == d!.month)
		XCTAssertTrue(nil == d!.day)
		
		d = FHIRDate(string: "2015-03")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.year)
		XCTAssertEqual(UInt8(3), d!.month!)
		XCTAssertTrue(nil == d!.day)
		
		d = FHIRDate(string: "2015-03-54")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.year)
		XCTAssertEqual(UInt8(3), d!.month!)
		XCTAssertTrue(nil == d!.day)
		
		d = FHIRDate(string: "2015-03-28")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.year)
		XCTAssertEqual(UInt8(3), d!.month!)
		XCTAssertEqual(UInt8(28), d!.day!)
		
		d = FHIRDate(string: "abc")
		XCTAssertTrue(nil == d)
		
		d = FHIRDate(string: "201512")
		XCTAssertTrue(nil == d)
		
		d = FHIRDate(string: "2015-123-456")!
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.year)
		XCTAssertTrue(nil == d!.month)
		XCTAssertTrue(nil == d!.day)
	}
	
	func testComparisons() {
		var a = FHIRDate(string: "2014")!
		var b = FHIRDate(string: "1914")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = FHIRDate(string: "2014-12")!
		b = FHIRDate(string: "2014-11")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = FHIRDate(string: "2014-11-25")!
		b = FHIRDate(string: "2014-11-24")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = FHIRDate(string: "2014-11-24")!
		b = FHIRDate(string: "1914-11-24")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = FHIRDate(string: "2014-12-24")!
		b = FHIRDate(string: "2014-11-24")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
	}
	
	func testConversion() {
		let date = FHIRDate(string: "1981-03-28")!
		let ns = date.nsDate
		XCTAssertEqual(date, ns.fhir_asDate(), "Conversion to NSDate and back again must not alter `Date`")
	}

    func testCloseToMidnight() {
        let inDate = Date(timeIntervalSince1970: 1527199938) // Just past midnight 25/5 in Denmark

        let fhirDate = inDate.fhir_asDate()
        XCTAssertEqual(25, fhirDate.day)

        // Test nsDate
        var calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        calendar.timeZone = TimeZone.current

        let flags: Set<Calendar.Component> = [.year, .month, .day, .hour, .minute, .second, .nanosecond, .timeZone]

        let comps1 = calendar.dateComponents(flags, from: inDate)
        let comps2 = calendar.dateComponents(flags, from: fhirDate.nsDate)
        XCTAssertEqual(comps1.year, comps2.year)
        XCTAssertEqual(comps1.month, comps2.month)
        XCTAssertEqual(comps1.day, comps2.day)
    }
}


class TimeTests: XCTestCase {

    /// Added in 2.8.1-trifork branch because of interop necessity.
    func testForgivingParsing() {
        var t: FHIRTime?

        // Hour and nothing else:
        t = FHIRTime(string: "18")
        XCTAssertNotEqual(nil, t)
        XCTAssertEqual(18, t!.hour)
        XCTAssertEqual(0, t!.minute)
        XCTAssertEqual(nil, t!.second)

        t = FHIRTime(string: "0")
        XCTAssertNotEqual(nil, t)
        XCTAssertEqual(0, t!.hour)
        XCTAssertEqual(0, t!.minute)
        XCTAssertEqual(nil, t!.second)

        t = FHIRTime(string: "24")
        XCTAssertEqual(nil, t)

        t = FHIRTime(string: "-1")
        XCTAssertEqual(nil, t)

        // Hour and a colon:
        t = FHIRTime(string: "18:")
        XCTAssertNotEqual(nil, t)
        XCTAssertEqual(18, t!.hour)
        XCTAssertEqual(0, t!.minute)
        XCTAssertEqual(nil, t!.second)

        t = FHIRTime(string: "0:")
        XCTAssertNotEqual(nil, t)
        XCTAssertEqual(0, t!.hour)
        XCTAssertEqual(0, t!.minute)
        XCTAssertEqual(nil, t!.second)

        t = FHIRTime(string: "24:")
        XCTAssertEqual(nil, t)
    }

	func testParsing() {
        var t: FHIRTime?
        /*
		var t = FHIRTime(string: "18")
		XCTAssertTrue(nil == t)
         */
		
		t = FHIRTime(string: "18:72")
		XCTAssertTrue(nil == t)
		
		t = FHIRTime(string: "25:44")
		XCTAssertTrue(nil == t)
		
		t = FHIRTime(string: "18:44")
		XCTAssertFalse(nil == t)
		XCTAssertEqual(UInt8(18), t!.hour)
		XCTAssertEqual(UInt8(44), t!.minute)
		XCTAssertTrue(nil == t!.second)
		
		t = FHIRTime(string: "00:00:00")
		XCTAssertFalse(nil == t)
		XCTAssertEqual(UInt8(0), t!.hour)
		XCTAssertEqual(UInt8(0), t!.minute)
		XCTAssertEqual(0.0, t!.second)
		
		t = FHIRTime(string: "18:44:88")
		XCTAssertFalse(nil == t)
		XCTAssertEqual(UInt8(18), t!.hour)
		XCTAssertEqual(UInt8(44), t!.minute)
		XCTAssertTrue(nil == t!.second)
		
		t = FHIRTime(string: "18:44:-4")
		XCTAssertFalse(nil == t)
		XCTAssertEqual(UInt8(18), t!.hour)
		XCTAssertEqual(UInt8(44), t!.minute)
		XCTAssertTrue(nil == t!.second)
		
		t = FHIRTime(string: "18:44:02")
		XCTAssertFalse(nil == t)
		XCTAssertEqual(UInt8(18), t!.hour)
		XCTAssertEqual(UInt8(44), t!.minute)
		XCTAssertEqual(2.0, t!.second)
		
		t = FHIRTime(string: "18:44:02.2912")
		XCTAssertFalse(nil == t)
		XCTAssertEqual(UInt8(18), t!.hour)
		XCTAssertEqual(UInt8(44), t!.minute)
		XCTAssertEqual(2.2912, t!.second)
		
		t = FHIRTime(string: "18:74:28.0381")
		XCTAssertTrue(nil == t)
		
		t = FHIRTime(string: "18:-32:28.0381")
		XCTAssertTrue(nil == t)
		
		t = FHIRTime(string: "18:44:-28.0381")
		XCTAssertFalse(nil == t)
		XCTAssertEqual(UInt8(18), t!.hour)
		XCTAssertEqual(UInt8(44), t!.minute)
		XCTAssertTrue(nil == t!.second)
		
		t = FHIRTime(string: "18:44:28.038100")
		XCTAssertFalse(nil == t)
		XCTAssertEqual(UInt8(18), t!.hour)
		XCTAssertEqual(UInt8(44), t!.minute)
		XCTAssertEqual(28.0381, t!.second)
		XCTAssertEqual(t!.description, "18:44:28.038100", "must preserve precision")
		
		t = FHIRTime(string: "abc")
		XCTAssertTrue(nil == t)
	}
	
	func testComparisons() {
		var a = FHIRTime(string: "19:12")!
		var b = FHIRTime(string: "19:11")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = FHIRTime(string: "19:11:04")!
		b = FHIRTime(string: "19:11:03")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = FHIRTime(string: "19:11:04")!
		b = FHIRTime(string: "07:11:05")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = FHIRTime(string: "19:00:04")!
		b = FHIRTime(string: "07:11:05")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = FHIRTime(string: "19:11:04")!
		b = FHIRTime(string: "19:11")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = FHIRTime(string: "19:11:04.0002")!
		b = FHIRTime(string: "19:11:04")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = FHIRTime(string: "19:11:04.0002")!
		b = FHIRTime(hour: 19, minute: 11, second: 4.0002)
		XCTAssertFalse(a > b)
		XCTAssertTrue(a == b)
		
		a = FHIRTime(string: "19:11:04.000200")!
		b = FHIRTime(hour: 19, minute: 11, second: 4.0002)
		XCTAssertFalse(a > b)
		XCTAssertFalse(a < b)
		XCTAssertFalse(a == b)
	}
	
	func testConversion() {
		let time = FHIRTime(string: "15:42:03")!
		let ns = time.nsDate
		XCTAssertEqual(time, ns.fhir_asTime(), "Conversion to NSDate and back again must not alter `Time`")
	}
}


class DateTimeTests: XCTestCase {
	
	func testParseAllCorrect() {
		var d = DateTime(string: "2015")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertTrue(nil == d!.date.month)
		XCTAssertTrue(nil == d!.time)
		XCTAssertTrue(nil == d!.timeZone)
		
		d = DateTime(string: "2015-03")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertTrue(nil == d!.date.day)
		XCTAssertTrue(nil == d!.time)
		XCTAssertTrue(nil == d!.timeZone)
		
		d = DateTime(string: "2015-03-28")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertTrue(nil == d!.time)
		XCTAssertTrue(nil == d!.timeZone)
		
		d = DateTime(string: "2015-03-28T02:33")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertFalse(nil == d!.time)
		XCTAssertEqual(UInt8(2), d!.time!.hour)
		XCTAssertEqual(UInt8(33), d!.time!.minute)
		XCTAssertTrue(nil == d!.time!.second)
		XCTAssertFalse(nil == d!.timeZone)
		XCTAssertEqual(TimeZone.current, d!.timeZone!, "Must default to the local timezone")
		
		d = DateTime(string: "2015-03-28T02:33:29")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertFalse(nil == d!.time)
		XCTAssertEqual(UInt8(2), d!.time!.hour)
		XCTAssertEqual(UInt8(33), d!.time!.minute)
		XCTAssertEqual(29, d!.time!.second!)
		XCTAssertFalse(nil == d!.timeZone)
		XCTAssertEqual(TimeZone.current, d!.timeZone!, "Should default to local time zone but have \(d!.timeZone)")
		
		d = DateTime(string: "2015-03-28T02:33:29+01:00")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertFalse(nil == d!.time)
		XCTAssertEqual(UInt8(2), d!.time!.hour)
		XCTAssertEqual(UInt8(33), d!.time!.minute)
		XCTAssertEqual(29, d!.time!.second!)
		XCTAssertFalse(nil == d!.timeZone)
        XCTAssertEqual("GMT+1", d!.timeZone?.abbreviation()!)
		XCTAssertTrue(3600 == d!.timeZone!.secondsFromGMT(), "Should be 3600 seconds ahead, but am \(d!.timeZone!.secondsFromGMT) seconds")
		
		d = DateTime(string: "2015-03-28T02:33:29-05:00")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertFalse(nil == d!.time)
		XCTAssertEqual(UInt8(2), d!.time!.hour)
		XCTAssertEqual(UInt8(33), d!.time!.minute)
		XCTAssertEqual(29, d!.time!.second!)
		XCTAssertFalse(nil == d!.timeZone)
        XCTAssertEqual("GMT-5", d!.timeZone?.abbreviation()!)
		XCTAssertTrue(-18000 == d!.timeZone!.secondsFromGMT(), "Should be 18000 seconds ahead, but am \(d!.timeZone!.secondsFromGMT()) seconds")
		
		d = DateTime(string: "2015-03-28T02:33:29.1285-05:00")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertFalse(nil == d!.time)
		XCTAssertEqual(UInt8(2), d!.time!.hour)
		XCTAssertEqual(UInt8(33), d!.time!.minute)
		XCTAssertEqual(29.1285, d!.time!.second!)
		XCTAssertFalse(nil == d!.timeZone)
		XCTAssertTrue(-18000 == d!.timeZone!.secondsFromGMT(), "Should be 18000 seconds ahead, but am \(d!.timeZone!.secondsFromGMT()) seconds")
		
		d = DateTime(string: "2015-03-28T02:33:29.1285-05:30")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertFalse(nil == d!.time)
		XCTAssertEqual(UInt8(2), d!.time!.hour)
		XCTAssertEqual(UInt8(33), d!.time!.minute)
		XCTAssertEqual(29.1285, d!.time!.second!)
		XCTAssertFalse(nil == d!.timeZone)
		XCTAssertTrue(-19800 == d!.timeZone!.secondsFromGMT(), "Should be 19800 seconds ahead, but am \(d!.timeZone!.secondsFromGMT()) seconds")
		
		d = DateTime(string: "2015-03-28T02:33:29.128500-05:30")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertFalse(nil == d!.time)
		XCTAssertEqual(UInt8(2), d!.time!.hour)
		XCTAssertEqual(UInt8(33), d!.time!.minute)
		XCTAssertEqual(29.1285, d!.time!.second!)
		XCTAssertEqual("2015-03-28T02:33:29.128500-05:30", d!.description)
		XCTAssertFalse(nil == d!.timeZone)
		XCTAssertTrue(-19800 == d!.timeZone!.secondsFromGMT(), "Should be 19800 seconds ahead, but am \(d!.timeZone!.secondsFromGMT()) seconds")
		
		d = DateTime(string: "2015-03-28T02:33:29-05")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertFalse(nil == d!.time)
		XCTAssertEqual(UInt8(2), d!.time!.hour)
		XCTAssertEqual(UInt8(33), d!.time!.minute)
		XCTAssertEqual(29, d!.time!.second!)
		XCTAssertFalse(nil == d!.timeZone)
		XCTAssertTrue(-18000 == d!.timeZone!.secondsFromGMT(), "Should be 18000 seconds ahead, but am \(d!.timeZone!.secondsFromGMT()) seconds")
		
		d = DateTime(string: "2015-03-28T02:33:29.1285-0500")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertFalse(nil == d!.time)
		XCTAssertEqual(UInt8(2), d!.time!.hour)
		XCTAssertEqual(UInt8(33), d!.time!.minute)
		XCTAssertEqual(29.1285, d!.time!.second!)
		XCTAssertFalse(nil == d!.timeZone)
		XCTAssertTrue(-18000 == d!.timeZone!.secondsFromGMT(), "Should be 18000 seconds ahead, but am \(d!.timeZone!.secondsFromGMT()) seconds")
		
		d = DateTime(string: "2015-03-28T02:33:29.1285-0530")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertFalse(nil == d!.time)
		XCTAssertEqual(UInt8(2), d!.time!.hour)
		XCTAssertEqual(UInt8(33), d!.time!.minute)
		XCTAssertEqual(29.1285, d!.time!.second!)
		XCTAssertFalse(nil == d!.timeZone)
		XCTAssertTrue(-19800 == d!.timeZone!.secondsFromGMT(), "Should be 19800 seconds ahead, but am \(d!.timeZone!.secondsFromGMT()) seconds")
	}
	
	func testParseSomeFails() {
		var d: DateTime?
//		d = DateTime(string: "02015")	// should probably fail, currently doesn't
//		XCTAssertTrue(nil == d)
		
		d = DateTime(string: "2015-103")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertTrue(nil == d!.date.month)
		XCTAssertTrue(nil == d!.date.day)
		XCTAssertTrue(nil == d!.time)
		XCTAssertTrue(nil == d!.timeZone)
		
		d = DateTime(string: "2015-03-208")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertTrue(nil == d!.date.day)
		XCTAssertTrue(nil == d!.time)
		XCTAssertTrue(nil == d!.timeZone)
		
		d = DateTime(string: "2015-03-28 02:33")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertTrue(nil == d!.time)
		XCTAssertTrue(nil == d!.timeZone)
		
		d = DateTime(string: "2015-03-28T02-33-29")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertTrue(nil == d!.time)
		XCTAssertTrue(nil == d!.timeZone)
		
		d = DateTime(string: "2015-03-28T02:33:29GMT")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertFalse(nil == d!.time)
		XCTAssertEqual(UInt8(2), d!.time!.hour)
		XCTAssertEqual(UInt8(33), d!.time!.minute)
		XCTAssertEqual(29, d!.time!.second!)
		XCTAssertFalse(nil == d!.timeZone)
		XCTAssertEqual(TimeZone.current, d!.timeZone!, "Should default to local time zone but have \(d!.timeZone)")
	}
	
	func testComparisons() {
		var a = DateTime(string: "2014")!
		var b = DateTime(string: "1914")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = DateTime(string: "2015-03-28T03:11")!
		b = DateTime(string: "2015-03-28T03:10")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = DateTime(string: "2015-03-28T03:11:04")!
		b = DateTime(string: "2015-03-28T03:11:03")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = DateTime(string: "2015-03-28T03:11:04")!
		b = DateTime(string: "2015-03-28T03:11:04")!
		XCTAssertFalse(a > b)
		XCTAssertTrue(a == b)
		XCTAssertTrue(a == a)
		
		a = DateTime(string: "2015-03-28T03:11:04Z")!
		b = DateTime(string: "1915-03-28T03:11:04Z")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = DateTime(string: "2015-03-28T03:11:04Z")!
		b = DateTime(string: "2015-03-28T03:11:04+00:00")!
		XCTAssertFalse(a > b)
		XCTAssertTrue(a == b)
		XCTAssertTrue(a == a)
		
		a = DateTime(string: "2015-03-28T03:11+00:00")!
		b = DateTime(string: "2015-03-28T03:17+01:00")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = DateTime(string: "2015-03-27T22:12:44-05:00")!
		b = DateTime(string: "2015-03-28T03:12:43-00:00")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = DateTime(string: "2015-03-28T05:11:44.3+01:00")!
		b = DateTime(string: "2015-03-27T23:11:44.3-05:00")!
		XCTAssertFalse(a > b)
		XCTAssertTrue(a == b)
		XCTAssertTrue(a == a)
	}
	
	func testConversion() {
		let dt = DateTime(string: "1981-03-28T15:42:03")!
		let ns = dt.nsDate
		XCTAssertEqual(dt, ns.fhir_asDateTime(), "Conversion to NSDate and back again must not alter `DateTime`")
		
		let dt2 = DateTime(string: "1981-03-28T15:42:03-0100")!
		let ns2 = dt2.nsDate
		XCTAssertEqual(dt2, ns2.fhir_asDateTime(), "Conversion to NSDate and back again must not alter `DateTime`")
	}
}


class InstantTests: XCTestCase {
	
	func testParseSuccess() {
		var d = Instant(string: "2015")
		XCTAssertTrue(nil == d)
		
		d = Instant(string: "2015-03")
		XCTAssertTrue(nil == d)
		
		d = Instant(string: "2015-03-28")
		XCTAssertTrue(nil == d)
		
		d = Instant(string: "2015-03-28T02:33")
		XCTAssertTrue(nil == d)
		
		d = Instant(string: "2015-03-28T02:33:29")
		XCTAssertTrue(nil == d)
		
		d = Instant(string: "2015-03-28T02:33:29+01:00")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertEqual(UInt8(2), d!.time.hour)
		XCTAssertEqual(UInt8(33), d!.time.minute)
		XCTAssertEqual(29, d!.time.second!)
		XCTAssertTrue(3600 == d!.timeZone.secondsFromGMT())
		
		d = Instant(string: "2015-03-28T02:33:29-05:00")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertEqual(UInt8(2), d!.time.hour)
		XCTAssertEqual(UInt8(33), d!.time.minute)
		XCTAssertEqual(29, d!.time.second!)
		XCTAssertTrue(-18000 == d!.timeZone.secondsFromGMT())
		
		d = Instant(string: "2015-03-28T02:33:29.1285-05:00")
		XCTAssertFalse(nil == d)
		XCTAssertEqual(2015, d!.date.year)
		XCTAssertEqual(UInt8(3), d!.date.month!)
		XCTAssertEqual(UInt8(28), d!.date.day!)
		XCTAssertEqual(UInt8(2), d!.time.hour)
		XCTAssertEqual(UInt8(33), d!.time.minute)
		XCTAssertEqual(29.1285, d!.time.second!)
		XCTAssertTrue(-18000 == d!.timeZone.secondsFromGMT())
	}
	
	func testComparisons() {
		var a = Instant(string: "2015-03-28T03:11:04Z")!
		var b = Instant(string: "1915-03-28T03:11:04Z")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = Instant(string: "2015-03-28T03:11:04Z")!
		b = Instant(string: "2015-03-28T03:11:04+00:00")!
		XCTAssertFalse(a > b)
		XCTAssertTrue(a == b)
		XCTAssertTrue(a == a)
		
		a = Instant(string: "2015-03-28T03:11:44+00:00")!
		b = Instant(string: "2015-03-28T03:17:44+01:00")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = Instant(string: "2015-03-27T22:12:44-05:00")!
		b = Instant(string: "2015-03-28T03:11:44-00:00")!
		XCTAssertTrue(a > b)
		XCTAssertFalse(a == b)
		XCTAssertTrue(a == a)
		
		a = Instant(string: "2015-03-28T05:11:44.3+01:00")!
		b = Instant(string: "2015-03-27T23:11:44.3-05:00")!
		XCTAssertFalse(a > b)
		XCTAssertTrue(a == b)
		XCTAssertTrue(a == a)
	}
	
	func testConversion() {
		let inst = Instant(string: "1981-03-28T15:42:03-0500")!
		let ns = inst.nsDate
		XCTAssertEqual(inst, ns.fhir_asInstant(), "Conversion to NSDate and back again must not alter `Instant`")
	}
	
	func testHttpDateParsing() {
		if let instant = Instant.fromHttpDate("Fri, 14 Aug 2009 14:45:31 GMT") {
			XCTAssertEqual(instant.date.year, 2009)
			XCTAssertEqual(instant.date.month, 8)
			XCTAssertEqual(instant.time.hour, 14)
			XCTAssertEqual(instant.time.minute, 45)
		}
		else {
			XCTAssertTrue(false, "Failed to parse perfectly fine HTTP date")
		}
		
		if let instant = Instant.fromHttpDate("Sun, 06 Nov 1994 08:49:37 GMT") {
			XCTAssertEqual(instant.date.year, 1994)
			XCTAssertEqual(instant.date.month, 11)
			XCTAssertEqual(instant.time.hour, 8)
			XCTAssertEqual(instant.time.minute, 49)
			XCTAssertEqual(instant.time.second, 37.0)
		}
		else {
			XCTAssertTrue(false, "Failed to parse perfectly fine HTTP date")
		}
		
		if let instant = Instant.fromHttpDate("Sunday, 06-Nov-94 08:49:37 GMT") {
			XCTAssertEqual(instant.date.year, 1994)
			XCTAssertEqual(instant.date.month, 11)
			XCTAssertEqual(instant.time.hour, 8)
			XCTAssertEqual(instant.time.minute, 49)
			XCTAssertEqual(instant.time.second, 37.0)
		}
		else {
			XCTAssertTrue(false, "Failed to parse perfectly fine HTTP date")
		}
		
		if let instant = Instant.fromHttpDate("Wed Nov 16 08:49:37 1994") {
			XCTAssertEqual(instant.date.year, 1994)
			XCTAssertEqual(instant.date.month, 11)
			XCTAssertEqual(instant.time.hour, 8)
			XCTAssertEqual(instant.time.minute, 49)
			XCTAssertEqual(instant.time.second, 37.0)
		}
		else {
			XCTAssertTrue(false, "Failed to parse perfectly fine HTTP date")
		}
	}
}


// Tests moved from Cura
class TimeZoneTests: XCTestCase {

    let utc = TimeZone(identifier: "UTC")!
    let cet_no_dst = TimeZone(secondsFromGMT: 1*60*60)!
    let cet_dst = TimeZone(secondsFromGMT: 2*60*60)!
    let dateline_tz = TimeZone(secondsFromGMT: 12*60*60)!
    let allTimeZones = (-24...24 /*half-hours*/).map { TimeZone(secondsFromGMT: $0*30*60)! }
    let selectedTimeZones = [-24, -23, 22, -2, -1, 0, 1, 2, 22, 23, 24/*half-hours*/].map { TimeZone(secondsFromGMT: $0*30*60)! }
    //swiftlint:enable identifier_name

    private static func runTestInTimeZone(_ timeZone: TimeZone, _ body: () -> Void) {
        let saved = DateNSDateConverter.sharedConverterCurrentTimeZone
        DateNSDateConverter.sharedConverterCurrentTimeZone = DateNSDateConverter(timeZone: timeZone)
        defer {
            DateNSDateConverter.sharedConverterCurrentTimeZone = saved
        }
        body()
    }

    func testDateToFHIRDateAndTime_Zulu() {
        TimeZoneTests.runTestInTimeZone(utc) {
            // Test at all hours
            for hour in 0...23 {
                for minute in stride(from: 0, to: 59, by: 30) {
                    let date = parseDate(String(format: "01-04-2020 %02d:%02d Z", hour, minute))
                    let dateCurrentTZ = date.fhir_asDate()
                    let timeCurrentTZ = date.fhir_asTime()

                    XCTAssertEqual(dateCurrentTZ.description, "2020-04-01")
                    XCTAssertEqual(timeCurrentTZ.description, String(format: "%02d:%02d:00", hour, minute))
                }
            }
        }
    }

    func testDateToFHIRDateAndTime_CET() {
        TimeZoneTests.runTestInTimeZone(cet_no_dst) {
            // Test at all hours
            for hour in 0...23 {
                for minute in stride(from: 0, to: 59, by: 30) {
                    let date = parseDate(String(format: "01-04-2020 %02d:%02d +01:00", hour, minute))
                    let dateCurrentTZ = date.fhir_asDate()
                    let timeCurrentTZ = date.fhir_asTime()

                    XCTAssertEqual(dateCurrentTZ.description, "2020-04-01")
                    XCTAssertEqual(timeCurrentTZ.description, String(format: "%02d:%02d:00", hour, minute))
                }
            }
        }
    }

    func testFHIRDateToDate_allTimeZones() {
        for timeZone in allTimeZones {
            TimeZoneTests.runTestInTimeZone(timeZone) {
                let fhirDate = FHIRDate(year: 2020, month: 04, day: 01)
                let date1 = fhirDate.nsDate
                let date2 = fhirDate.nsDate.addingTimeInterval((23*60*60)+59*60)
                let expectedDate1 = parseDate("01-04-2020 00:00 " + timeZoneToString(timeZone))
                let expectedDate2 = parseDate("01-04-2020 23:59 " + timeZoneToString(timeZone))

                XCTAssertEqual(date1, expectedDate1, " in timezone \(Double(timeZone.secondsFromGMT()) / 3600.0)")
                XCTAssertEqual(date2, expectedDate2, " in timezone \(Double(timeZone.secondsFromGMT()) / 3600.0)")
            }
        }
    }

    func testRoundTrip_allTimeZones() {
        for timeZone in selectedTimeZones {
            TimeZoneTests.runTestInTimeZone(timeZone) {
                let tzName = timeZoneToString(timeZone)
                for hour in [0, 1, 22, 23] {
                    for minute in stride(from: 0, to: 59, by: 30) {
                        for second in stride(from: 0, to: 59, by: 30) {
                            let dateWithSeconds = parseDateWithSeconds(String(format: "01-04-2020 %02d:%02d:%02d ", hour, minute, second) + tzName)

                            let date = dateWithSeconds.fhir_asDate()
                            let time = dateWithSeconds.fhir_asTime()
                            let date2 = DateTime(date: date, time: time, timeZone: timeZone).nsDate

                            XCTAssertEqual(dateWithSeconds, date2) //, " in timezone \(Double(tz.secondsFromGMT()) / 3600.0)")
                        }
                    }
                }

            }
        }
    }

    // MARK: - Utility functions
    private let timeFormat: String = "dd-MM-yyyy HH:mm ZZZZ"
    private func parseDate(_ dateString: String) -> Date {
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = timeFormat
        if let date = dateFormatter.date(from: dateString) {
            return date
        }
        fatalError("Could not parse date: \(dateString)")
    }
    private let timeFormatSeconds: String = "dd-MM-yyyy HH:mm:ss ZZZZ"
    private func parseDateWithSeconds(_ dateString: String) -> Date {
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = timeFormatSeconds
        if let date = dateFormatter.date(from: dateString) {
            return date
        }
        fatalError("Could not parse date: \(dateString)")
    }

    private func timeZoneToString(_ timeZone: TimeZone) -> String {
        // From Swift-FHIR:
        if "UTC" == timeZone.identifier || "GMT" == timeZone.identifier {
            return "Z"
        }

        /* The following Swift_FHIR code has a bug! E.g. handling of "-11:30" = secs=-41400, or non-integral timezones in general.
         let secsFromGMT = tz.secondsFromGMT()
         let hr = abs((secsFromGMT / 3600) - (secsFromGMT % 3600))
         let min = abs((secsFromGMT % 3600) / 60)
         */
        //Bugfix:
        let secsFromGMT = timeZone.secondsFromGMT()
        let posSign = secsFromGMT >= 0
        let secs = abs(secsFromGMT)
        let hour = (secs - (secs % 3600)) / 3600
        let min = (secs % 3600) / 60
        return (posSign ? "+" : "-") + String(format: "%02d:%02d", hour, min)
    }

}

