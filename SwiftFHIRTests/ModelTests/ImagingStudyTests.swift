//
//  ImagingStudyTests.swift
//  ImagingStudyTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ImagingStudyTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> ImagingStudy? {
		let json = readJSONFile(filename)
		let instance = ImagingStudy(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImagingStudy1() {
		let inst = instantiateFrom("imagingstudy-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImagingStudy instance")
		
		XCTAssertEqual(inst!.numberOfInstances!, 1)
		XCTAssertEqual(inst!.numberOfSeries!, 1)
		XCTAssertEqual(inst!.patient!.reference!, "Patient/dicom")
		XCTAssertEqual(inst!.series![0].bodySite!.code!, "67734004")
		XCTAssertEqual(inst!.series![0].bodySite!.display!, "Upper Trunk Structure")
		XCTAssertEqual(inst!.series![0].bodySite!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.series![0].description!, "CT Surview 180")
		XCTAssertEqual(inst!.series![0].instance![0].number!, 1)
		XCTAssertEqual(inst!.series![0].instance![0].sopclass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst!.series![0].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst!.series![0].instance![0].url!.absoluteString!, "http://localhost/fhir/Binary/1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst!.series![0].modality!, "CT")
		XCTAssertEqual(inst!.series![0].number!, 3)
		XCTAssertEqual(inst!.series![0].numberOfInstances!, 1)
		XCTAssertEqual(inst!.series![0].uid!, "urn:oid:2.16.124.113543.6003.2588828330.45298.17418.2723805630")
		XCTAssertEqual(inst!.started!.description, "2011-01-01T11:01:20+03:00")
		XCTAssertEqual(inst!.uid!, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045")
	}
	
	func testImagingStudy2() {
		let inst = instantiateFrom("imagingstudy-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImagingStudy instance")
		
		XCTAssertEqual(inst!.numberOfInstances!, 1)
		XCTAssertEqual(inst!.numberOfSeries!, 1)
		XCTAssertEqual(inst!.patient!.reference!, "Patient/dicom")
		XCTAssertEqual(inst!.series![0].bodySite!.code!, "67734004")
		XCTAssertEqual(inst!.series![0].bodySite!.display!, "Upper Trunk Structure")
		XCTAssertEqual(inst!.series![0].bodySite!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.series![0].description!, "CT Surview 180")
		XCTAssertEqual(inst!.series![0].instance![0].number!, 1)
		XCTAssertEqual(inst!.series![0].instance![0].sopclass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst!.series![0].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst!.series![0].instance![0].url!.absoluteString!, "http://localhost/fhir/Binary/1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst!.series![0].modality!, "CT")
		XCTAssertEqual(inst!.series![0].number!, 3)
		XCTAssertEqual(inst!.series![0].numberOfInstances!, 1)
		XCTAssertEqual(inst!.series![0].uid!, "urn:oid:2.16.124.113543.6003.2588828330.45298.17418.2723805630")
		XCTAssertEqual(inst!.started!.description, "2011-01-01T11:01:20+03:00")
		XCTAssertEqual(inst!.uid!, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045")
	}
	
	func testImagingStudy3() {
		let inst = instantiateFrom("imagingstudy-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImagingStudy instance")
		
		XCTAssertEqual(inst!.numberOfInstances!, 1)
		XCTAssertEqual(inst!.numberOfSeries!, 1)
		XCTAssertEqual(inst!.patient!.reference!, "Patient/dicom")
		XCTAssertEqual(inst!.series![0].bodySite!.code!, "67734004")
		XCTAssertEqual(inst!.series![0].bodySite!.display!, "Upper Trunk Structure")
		XCTAssertEqual(inst!.series![0].bodySite!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.series![0].description!, "CT Surview 180")
		XCTAssertEqual(inst!.series![0].instance![0].number!, 1)
		XCTAssertEqual(inst!.series![0].instance![0].sopclass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst!.series![0].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst!.series![0].instance![0].url!.absoluteString!, "http://localhost/fhir/Binary/1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst!.series![0].modality!, "CT")
		XCTAssertEqual(inst!.series![0].number!, 3)
		XCTAssertEqual(inst!.series![0].numberOfInstances!, 1)
		XCTAssertEqual(inst!.series![0].uid!, "urn:oid:2.16.124.113543.6003.2588828330.45298.17418.2723805630")
		XCTAssertEqual(inst!.started!.description, "2011-01-01T11:01:20+03:00")
		XCTAssertEqual(inst!.uid!, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045")
	}
}