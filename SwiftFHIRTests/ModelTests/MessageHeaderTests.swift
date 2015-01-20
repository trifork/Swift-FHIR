//
//  MessageHeaderTests.swift
//  MessageHeaderTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class MessageHeaderTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> MessageHeader? {
		let json = readJSONFile(filename)
		let instance = MessageHeader(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMessageHeader1() {
		let inst = instantiateFrom("messageheader-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MessageHeader instance")
		
		XCTAssertEqual(inst!.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.data![0].reference!, "Patient/example")
		XCTAssertEqual(inst!.destination![0].endpoint!.absoluteString!, "llp:10.11.12.14:5432")
		XCTAssertEqual(inst!.destination![0].name!, "Acme Message Gateway")
		XCTAssertEqual(inst!.destination![0].target!.reference!, "Practitioner/xcda-author")
		XCTAssertEqual(inst!.event!.code!, "admin-update")
		XCTAssertEqual(inst!.event!.system!.absoluteString!, "http://hl7.org/fhir/message-type")
		XCTAssertEqual(inst!.identifier!, "1cbdfb97-5859-48a4-8301-d54eab818d68")
		XCTAssertEqual(inst!.response!.code!, "ok")
		XCTAssertEqual(inst!.response!.identifier!, "5015fe84-8e76-4526-89d8-44b322e8d4fb")
		XCTAssertEqual(inst!.source!.contact!.system!, "phone")
		XCTAssertEqual(inst!.source!.contact!.value!, "+1 (555) 123 4567")
		XCTAssertEqual(inst!.source!.endpoint!.absoluteString!, "llp:10.11.12.13:5432")
		XCTAssertEqual(inst!.source!.name!, "Acme Central Patient Registry")
		XCTAssertEqual(inst!.source!.software!, "FooBar Patient Manager")
		XCTAssertEqual(inst!.source!.version!, "3.1.45.AABB")
		XCTAssertEqual(inst!.timestamp!.description, "2012-01-04T09:10:14Z")
	}
	
	func testMessageHeader2() {
		let inst = instantiateFrom("messageheader-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MessageHeader instance")
		
		XCTAssertEqual(inst!.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.data![0].reference!, "Patient/example")
		XCTAssertEqual(inst!.destination![0].endpoint!.absoluteString!, "llp:10.11.12.14:5432")
		XCTAssertEqual(inst!.destination![0].name!, "Acme Message Gateway")
		XCTAssertEqual(inst!.destination![0].target!.reference!, "Practitioner/xcda-author")
		XCTAssertEqual(inst!.event!.code!, "admin-update")
		XCTAssertEqual(inst!.event!.system!.absoluteString!, "http://hl7.org/fhir/message-type")
		XCTAssertEqual(inst!.identifier!, "1cbdfb97-5859-48a4-8301-d54eab818d68")
		XCTAssertEqual(inst!.response!.code!, "ok")
		XCTAssertEqual(inst!.response!.identifier!, "5015fe84-8e76-4526-89d8-44b322e8d4fb")
		XCTAssertEqual(inst!.source!.contact!.system!, "phone")
		XCTAssertEqual(inst!.source!.contact!.value!, "+1 (555) 123 4567")
		XCTAssertEqual(inst!.source!.endpoint!.absoluteString!, "llp:10.11.12.13:5432")
		XCTAssertEqual(inst!.source!.name!, "Acme Central Patient Registry")
		XCTAssertEqual(inst!.source!.software!, "FooBar Patient Manager")
		XCTAssertEqual(inst!.source!.version!, "3.1.45.AABB")
		XCTAssertEqual(inst!.timestamp!.description, "2012-01-04T09:10:14Z")
	}
	
	func testMessageHeader3() {
		let inst = instantiateFrom("messageheader-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a MessageHeader instance")
		
		XCTAssertEqual(inst!.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.data![0].reference!, "Patient/example")
		XCTAssertEqual(inst!.destination![0].endpoint!.absoluteString!, "llp:10.11.12.14:5432")
		XCTAssertEqual(inst!.destination![0].name!, "Acme Message Gateway")
		XCTAssertEqual(inst!.destination![0].target!.reference!, "Practitioner/xcda-author")
		XCTAssertEqual(inst!.event!.code!, "admin-update")
		XCTAssertEqual(inst!.event!.system!.absoluteString!, "http://hl7.org/fhir/message-type")
		XCTAssertEqual(inst!.identifier!, "1cbdfb97-5859-48a4-8301-d54eab818d68")
		XCTAssertEqual(inst!.response!.code!, "ok")
		XCTAssertEqual(inst!.response!.identifier!, "5015fe84-8e76-4526-89d8-44b322e8d4fb")
		XCTAssertEqual(inst!.source!.contact!.system!, "phone")
		XCTAssertEqual(inst!.source!.contact!.value!, "+1 (555) 123 4567")
		XCTAssertEqual(inst!.source!.endpoint!.absoluteString!, "llp:10.11.12.13:5432")
		XCTAssertEqual(inst!.source!.name!, "Acme Central Patient Registry")
		XCTAssertEqual(inst!.source!.software!, "FooBar Patient Manager")
		XCTAssertEqual(inst!.source!.version!, "3.1.45.AABB")
		XCTAssertEqual(inst!.timestamp!.description, "2012-01-04T09:10:14Z")
	}
}