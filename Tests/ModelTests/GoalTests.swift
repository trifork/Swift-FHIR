//
//  GoalTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-04-05.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class GoalTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> Goal {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Goal {
		let instance = Goal(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testGoal1() {
		do {
			let instance = try runGoal1()
			try runGoal1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Goal successfully, but threw")
		}
	}
	
	func runGoal1(json: FHIRJSON? = nil) throws -> Goal {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "goal-example.json")
		
		XCTAssertEqual(inst.addresses![0].display!, "obesity")
		XCTAssertEqual(inst.addresses![0].reference!, "Condition/12345")
		XCTAssertEqual(inst.description_fhir!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![0].url!.absoluteString, "measure")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![0].valueCodeableConcept!.coding![0].code!, "3141-9")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![0].valueCodeableConcept!.coding![0].display!, "Weight Measured")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].url!.absoluteString, "detail")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.high!.code!, "[lb_av]")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.high!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.high!.unit!, "lbs")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.high!.value!, NSDecimalNumber(string: "180"))
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.low!.code!, "[lb_av]")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.low!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.low!.unit!, "lbs")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.low!.value!, NSDecimalNumber(string: "160"))
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/goal-target")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.status!, "in-progress")
		XCTAssertEqual(inst.subject!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
}