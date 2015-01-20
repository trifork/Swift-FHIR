//
//  AppointmentResponse.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (appointmentresponse.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
 */
public class AppointmentResponse: FHIRResource
{
	override public class var resourceName: String {
		get { return "AppointmentResponse" }
	}
	
	/// Parent appointment that this response is replying to
	public var appointment: Reference?
	
	/// Additional comments about the appointment
	public var comment: String?
	
	/// Date/Time that the appointment is to conclude
	public var end: Instant?
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// A Person of device that is participating in the appointment, usually Practitioner, Patient, RelatedPerson or Device
	public var individual: [Reference]?
	
	/// Date when the response was recorded or last updated
	public var lastModified: DateTime?
	
	/// Who recorded the appointment response
	public var lastModifiedBy: Reference?
	
	/// accepted | declined | tentative | in-process | completed | needs-action
	public var participantStatus: String?
	
	/// Role of participant in the appointment
	public var participantType: [CodeableConcept]?
	
	/// Date/Time that the appointment is to take place
	public var start: Instant?
	
	public convenience init(appointment: Reference?, participantStatus: String?) {
		self.init(json: nil)
		if nil != appointment {
			self.appointment = appointment
		}
		if nil != participantStatus {
			self.participantStatus = participantStatus
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["appointment"] as? JSONDictionary {
				self.appointment = Reference(json: val, owner: self)
			}
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["end"] as? String {
				self.end = Instant(string: val)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["individual"] as? [JSONDictionary] {
				self.individual = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["lastModified"] as? String {
				self.lastModified = DateTime(string: val)
			}
			if let val = js["lastModifiedBy"] as? JSONDictionary {
				self.lastModifiedBy = Reference(json: val, owner: self)
			}
			if let val = js["participantStatus"] as? String {
				self.participantStatus = val
			}
			if let val = js["participantType"] as? [JSONDictionary] {
				self.participantType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["start"] as? String {
				self.start = Instant(string: val)
			}
		}
	}
}
