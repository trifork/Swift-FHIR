//
//  AllergyIntolerance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/AllergyIntolerance) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Allergy or Intolerance (generally: Risk Of Adverse reaction to a substance).
 *
 *  Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure
 *  to a substance.
 */
public class AllergyIntolerance: DomainResource {
	override public class var resourceType: String {
		get { return "AllergyIntolerance" }
	}
	
	/// food | medication | environment | other - Category of Substance.
	public var category: String?
	
	/// CRITL | CRITH | CRITU.
	public var criticality: String?
	
	/// External ids for this item.
	public var identifier: [Identifier]?
	
	/// Date(/time) of last known occurrence of a reaction.
	public var lastOccurence: DateTime?
	
	/// Additional text not captured in other fields.
	public var note: Annotation?
	
	/// Date(/time) when manifestations showed.
	public var onset: DateTime?
	
	/// Who the sensitivity is for.
	public var patient: Reference?
	
	/// Adverse Reaction Events linked to exposure to substance.
	public var reaction: [AllergyIntoleranceReaction]?
	
	/// When recorded.
	public var recordedDate: DateTime?
	
	/// Who recorded the sensitivity.
	public var recorder: Reference?
	
	/// Source of the information about the allergy.
	public var reporter: Reference?
	
	/// active | unconfirmed | confirmed | inactive | resolved | refuted | entered-in-error.
	public var status: String?
	
	/// Substance, (or class) considered to be responsible for risk.
	public var substance: CodeableConcept?
	
	/// allergy | intolerance - Underlying mechanism (if known).
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, substance: CodeableConcept) {
		self.init(json: nil)
		self.patient = patient
		self.substance = substance
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["criticality"] {
				presentKeys.insert("criticality")
				if let val = exist as? String {
					self.criticality = val
				}
				else {
					errors.append(FHIRJSONError(key: "criticality", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["lastOccurence"] {
				presentKeys.insert("lastOccurence")
				if let val = exist as? String {
					self.lastOccurence = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "lastOccurence", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? FHIRJSON {
					self.note = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["onset"] {
				presentKeys.insert("onset")
				if let val = exist as? String {
					self.onset = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "onset", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "patient"))
			}
			if let exist = js["reaction"] {
				presentKeys.insert("reaction")
				if let val = exist as? [FHIRJSON] {
					self.reaction = AllergyIntoleranceReaction.instantiate(fromArray: val, owner: self) as? [AllergyIntoleranceReaction]
				}
				else {
					errors.append(FHIRJSONError(key: "reaction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["recordedDate"] {
				presentKeys.insert("recordedDate")
				if let val = exist as? String {
					self.recordedDate = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "recordedDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["recorder"] {
				presentKeys.insert("recorder")
				if let val = exist as? FHIRJSON {
					self.recorder = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "recorder", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reporter"] {
				presentKeys.insert("reporter")
				if let val = exist as? FHIRJSON {
					self.reporter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reporter", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["substance"] {
				presentKeys.insert("substance")
				if let val = exist as? FHIRJSON {
					self.substance = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "substance", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "substance"))
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON(with options: FHIRJSONOptions) -> FHIRJSON {
		var json = super.asJSON(with: options)
		
		if let category = self.category {
			json["category"] = category.asJSON(with: options)
		}
		if let criticality = self.criticality {
			json["criticality"] = criticality.asJSON(with: options)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(with: options) }
		}
		if let lastOccurence = self.lastOccurence {
			json["lastOccurence"] = lastOccurence.asJSON(with: options)
		}
		if let note = self.note {
			json["note"] = note.asJSON(with: options)
		}
		if let onset = self.onset {
			json["onset"] = onset.asJSON(with: options)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(with: options)
		}
		if let reaction = self.reaction {
			json["reaction"] = reaction.map() { $0.asJSON(with: options) }
		}
		if let recordedDate = self.recordedDate {
			json["recordedDate"] = recordedDate.asJSON(with: options)
		}
		if let recorder = self.recorder {
			json["recorder"] = recorder.asJSON(with: options)
		}
		if let reporter = self.reporter {
			json["reporter"] = reporter.asJSON(with: options)
		}
		if let status = self.status {
			json["status"] = status.asJSON(with: options)
		}
		if let substance = self.substance {
			json["substance"] = substance.asJSON(with: options)
		}
		if let type = self.type {
			json["type"] = type.asJSON(with: options)
		}
		
		return json
	}
}


/**
 *  Adverse Reaction Events linked to exposure to substance.
 *
 *  Details about each adverse reaction event linked to exposure to the identified Substance.
 */
public class AllergyIntoleranceReaction: BackboneElement {
	override public class var resourceType: String {
		get { return "AllergyIntoleranceReaction" }
	}
	
	/// unlikely | likely | confirmed - clinical certainty about the specific substance.
	public var certainty: String?
	
	/// Description of the event as a whole.
	public var description_fhir: String?
	
	/// How the subject was exposed to the substance.
	public var exposureRoute: CodeableConcept?
	
	/// Clinical symptoms/signs associated with the Event.
	public var manifestation: [CodeableConcept]?
	
	/// Text about event not captured in other fields.
	public var note: Annotation?
	
	/// Date(/time) when manifestations showed.
	public var onset: DateTime?
	
	/// mild | moderate | severe (of event as a whole).
	public var severity: String?
	
	/// Specific substance considered to be responsible for event.
	public var substance: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(manifestation: [CodeableConcept]) {
		self.init(json: nil)
		self.manifestation = manifestation
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["certainty"] {
				presentKeys.insert("certainty")
				if let val = exist as? String {
					self.certainty = val
				}
				else {
					errors.append(FHIRJSONError(key: "certainty", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["exposureRoute"] {
				presentKeys.insert("exposureRoute")
				if let val = exist as? FHIRJSON {
					self.exposureRoute = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exposureRoute", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["manifestation"] {
				presentKeys.insert("manifestation")
				if let val = exist as? [FHIRJSON] {
					self.manifestation = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "manifestation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "manifestation"))
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? FHIRJSON {
					self.note = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["onset"] {
				presentKeys.insert("onset")
				if let val = exist as? String {
					self.onset = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "onset", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["severity"] {
				presentKeys.insert("severity")
				if let val = exist as? String {
					self.severity = val
				}
				else {
					errors.append(FHIRJSONError(key: "severity", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["substance"] {
				presentKeys.insert("substance")
				if let val = exist as? FHIRJSON {
					self.substance = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "substance", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON(with options: FHIRJSONOptions) -> FHIRJSON {
		var json = super.asJSON(with: options)
		
		if let certainty = self.certainty {
			json["certainty"] = certainty.asJSON(with: options)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON(with: options)
		}
		if let exposureRoute = self.exposureRoute {
			json["exposureRoute"] = exposureRoute.asJSON(with: options)
		}
		if let manifestation = self.manifestation {
			json["manifestation"] = manifestation.map() { $0.asJSON(with: options) }
		}
		if let note = self.note {
			json["note"] = note.asJSON(with: options)
		}
		if let onset = self.onset {
			json["onset"] = onset.asJSON(with: options)
		}
		if let severity = self.severity {
			json["severity"] = severity.asJSON(with: options)
		}
		if let substance = self.substance {
			json["substance"] = substance.asJSON(with: options)
		}
		
		return json
	}
}

