//
//  CompositionTests.swift
//  CompositionTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class CompositionTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Composition? {
		let json = readJSONFile(filename)
		let instance = Composition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testComposition1() {
		let inst = instantiateFrom("composition-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Composition instance")
		
		XCTAssertEqual(inst!.attester![0].mode![0], "legal")
		XCTAssertEqual(inst!.attester![0].party!.display!, "Robert Dolin MD")
		XCTAssertEqual(inst!.attester![0].party!.reference!, "Practitioner/xcda-author")
		XCTAssertEqual(inst!.author![0].display!, "Robert Dolin MD")
		XCTAssertEqual(inst!.author![0].reference!, "Practitioner/xcda-author")
		XCTAssertEqual(inst!.confidentiality!.code!, "1.3.6.1.4.1.21367.2006.7.101")
		XCTAssertEqual(inst!.confidentiality!.display!, "Clinical-Staff")
		XCTAssertEqual(inst!.confidentiality!.system!.absoluteString!, "http://ihe.net/xds/connectathon/confidentialityCodes")
		XCTAssertEqual(inst!.custodian!.display!, "Good Health Clinic")
		XCTAssertEqual(inst!.custodian!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst!.date!.description, "2012-01-04T09:10:14Z")
		XCTAssertEqual(inst!.identifier!.system!.absoluteString!, "http://healthintersections.com.au/test")
		XCTAssertEqual(inst!.identifier!.value!, "1")
		XCTAssertEqual(inst!.section![0].content!.reference!, "MedicationAdministration/example")
		XCTAssertEqual(inst!.section![0].title!, "History of present illness")
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.display!, "Henry Levin the 7th")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst!.type!.coding![0].code!, "11488-4")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Consult note")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://loinc.org")
	}
	
	func testComposition2() {
		let inst = instantiateFrom("composition-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Composition instance")
		
		XCTAssertEqual(inst!.attester![0].mode![0], "legal")
		XCTAssertEqual(inst!.attester![0].party!.display!, "Robert Dolin MD")
		XCTAssertEqual(inst!.attester![0].party!.reference!, "Practitioner/xcda-author")
		XCTAssertEqual(inst!.author![0].display!, "Robert Dolin MD")
		XCTAssertEqual(inst!.author![0].reference!, "Practitioner/xcda-author")
		XCTAssertEqual(inst!.confidentiality!.code!, "1.3.6.1.4.1.21367.2006.7.101")
		XCTAssertEqual(inst!.confidentiality!.display!, "Clinical-Staff")
		XCTAssertEqual(inst!.confidentiality!.system!.absoluteString!, "http://ihe.net/xds/connectathon/confidentialityCodes")
		XCTAssertEqual(inst!.custodian!.display!, "Good Health Clinic")
		XCTAssertEqual(inst!.custodian!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst!.date!.description, "2012-01-04T09:10:14Z")
		XCTAssertEqual(inst!.identifier!.system!.absoluteString!, "http://healthintersections.com.au/test")
		XCTAssertEqual(inst!.identifier!.value!, "1")
		XCTAssertEqual(inst!.section![0].content!.reference!, "MedicationAdministration/example")
		XCTAssertEqual(inst!.section![0].title!, "History of present illness")
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.display!, "Henry Levin the 7th")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst!.type!.coding![0].code!, "11488-4")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Consult note")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://loinc.org")
	}
	
	func testComposition3() {
		let inst = instantiateFrom("composition-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Composition instance")
		
		XCTAssertEqual(inst!.attester![0].mode![0], "legal")
		XCTAssertEqual(inst!.attester![0].party!.display!, "Robert Dolin MD")
		XCTAssertEqual(inst!.attester![0].party!.reference!, "Practitioner/xcda-author")
		XCTAssertEqual(inst!.author![0].display!, "Robert Dolin MD")
		XCTAssertEqual(inst!.author![0].reference!, "Practitioner/xcda-author")
		XCTAssertEqual(inst!.confidentiality!.code!, "1.3.6.1.4.1.21367.2006.7.101")
		XCTAssertEqual(inst!.confidentiality!.display!, "Clinical-Staff")
		XCTAssertEqual(inst!.confidentiality!.system!.absoluteString!, "http://ihe.net/xds/connectathon/confidentialityCodes")
		XCTAssertEqual(inst!.custodian!.display!, "Good Health Clinic")
		XCTAssertEqual(inst!.custodian!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst!.date!.description, "2012-01-04T09:10:14Z")
		XCTAssertEqual(inst!.identifier!.system!.absoluteString!, "http://healthintersections.com.au/test")
		XCTAssertEqual(inst!.identifier!.value!, "1")
		XCTAssertEqual(inst!.section![0].content!.reference!, "MedicationAdministration/example")
		XCTAssertEqual(inst!.section![0].title!, "History of present illness")
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.display!, "Henry Levin the 7th")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst!.type!.coding![0].code!, "11488-4")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Consult note")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://loinc.org")
	}
}