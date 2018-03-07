//
//  Extension.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Extension) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  None.
 *
 *  Optional Extensions Element - found in all resources.
 */
public class Extension: Element {
	override public class var resourceType: String {
		get { return "Extension" }
	}
	
	/// identifies the meaning of the extension.
	public var url: URL?
	
	/// Value of extension.
	public var valueAddress: Address? {
		get {
			if case .address(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .address($0) }
		}
	}
	
	/// Value of extension.
	public var valueAnnotation: Annotation? {
		get {
			if case .annotation(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .annotation($0) }
		}
	}
	
	/// Value of extension.
	public var valueAttachment: Attachment? {
		get {
			if case .attachment(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .attachment($0) }
		}
	}
	
	/// Value of extension.
	public var valueBase64Binary: Base64Binary? {
		get {
			if case .base64Binary(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .base64Binary($0) }
		}
	}
	
	/// Value of extension.
	public var valueBoolean: Bool? {
		get {
			if case .boolean(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .boolean($0) }
		}
	}
	
	/// Value of extension.
	public var valueCode: String? {
		get {
			if case .code(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .code($0) }
		}
	}
	
	/// Value of extension.
	public var valueCodeableConcept: CodeableConcept? {
		get {
			if case .codeableConcept(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .codeableConcept($0) }
		}
	}
	
	/// Value of extension.
	public var valueCoding: Coding? {
		get {
			if case .coding(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .coding($0) }
		}
	}
	
	/// Value of extension.
	public var valueContactPoint: ContactPoint? {
		get {
			if case .contactPoint(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .contactPoint($0) }
		}
	}
	
	/// Value of extension.
	public var valueDate: FHIRDate? {
		get {
			if case .date(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .date($0) }
		}
	}
	
	/// Value of extension.
	public var valueDateTime: DateTime? {
		get {
			if case .dateTime(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .dateTime($0) }
		}
	}
	
	/// Value of extension.
	public var valueDecimal: NSDecimalNumber? {
		get {
			if case .decimal(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .decimal($0) }
		}
	}
	
	/// Value of extension.
	public var valueHumanName: HumanName? {
		get {
			if case .humanName(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .humanName($0) }
		}
	}
	
	/// Value of extension.
	public var valueId: String? {
		get {
			if case .id(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .id($0) }
		}
	}
	
	/// Value of extension.
	public var valueIdentifier: Identifier? {
		get {
			if case .identifier(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .identifier($0) }
		}
	}
	
	/// Value of extension.
	public var valueInstant: Instant? {
		get {
			if case .instant(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .instant($0) }
		}
	}
	
	/// Value of extension.
	public var valueInteger: Int? {
		get {
			if case .integer(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .integer($0) }
		}
	}
	
	/// Value of extension.
	public var valueMarkdown: String? {
		get {
			if case .markdown(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .markdown($0) }
		}
	}
	
	/// Value of extension.
	public var valueMeta: Meta? {
		get {
			if case .meta(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .meta($0) }
		}
	}
	
	/// Value of extension.
	public var valueOid: String? {
		get {
			if case .oid(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .oid($0) }
		}
	}
	
	/// Value of extension.
	public var valuePeriod: Period? {
		get {
			if case .period(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .period($0) }
		}
	}
	
	/// Value of extension.
	public var valuePositiveInt: UInt? {
		get {
			if case .positiveInt(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .positiveInt($0) }
		}
	}
	
	/// Value of extension.
	public var valueQuantity: Quantity? {
		get {
			if case .quantity(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .quantity($0) }
		}
	}
	
	/// Value of extension.
	public var valueRange: Range? {
		get {
			if case .range(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .range($0) }
		}
	}
	
	/// Value of extension.
	public var valueRatio: Ratio? {
		get {
			if case .ratio(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .ratio($0) }
		}
	}
	
	/// Value of extension.
	public var valueReference: Reference? {
		get {
			if case .reference(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .reference($0) }
		}
	}
	
	/// Value of extension.
	public var valueSampledData: SampledData? {
		get {
			if case .sampledData(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .sampledData($0) }
		}
	}
	
	/// Value of extension.
	public var valueSignature: Signature? {
		get {
			if case .signature(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .signature($0) }
		}
	}
	
	/// Value of extension.
	public var valueString: String? {
		get {
			if case .string(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .string($0) }
		}
	}
	
	/// Value of extension.
	public var valueTime: FHIRTime? {
		get {
			if case .time(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .time($0) }
		}
	}
	
	/// Value of extension.
	public var valueTiming: Timing? {
		get {
			if case .timing(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .timing($0) }
		}
	}
	
	/// Value of extension.
	public var valueUnsignedInt: UInt? {
		get {
			if case .unsignedInt(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .unsignedInt($0) }
		}
	}
	
	/// Value of extension.
	public var valueUri: URL? {
		get {
			if case .uri(let value)? = value { return value }
			else { return nil }
		}
		set {
			value = newValue.map { .uri($0) }
		}
	}
	
	private enum Value {
		case address(Address)
		case annotation(Annotation)
		case attachment(Attachment)
		case base64Binary(Base64Binary)
		case boolean(Bool)
		case code(String)
		case codeableConcept(CodeableConcept)
		case coding(Coding)
		case contactPoint(ContactPoint)
		case date(FHIRDate)
		case dateTime(DateTime)
		case decimal(NSDecimalNumber)
		case humanName(HumanName)
		case id(String)
		case identifier(Identifier)
		case instant(Instant)
		case integer(Int)
		case markdown(String)
		case meta(Meta)
		case oid(String)
		case period(Period)
		case positiveInt(UInt)
		case quantity(Quantity)
		case range(Range)
		case ratio(Ratio)
		case reference(Reference)
		case sampledData(SampledData)
		case signature(Signature)
		case string(String)
		case time(FHIRTime)
		case timing(Timing)
		case unsignedInt(UInt)
		case uri(URL)
	}
	
	private var value: Value?
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(url: URL) {
		self.init(json: nil)
		self.url = url
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "url"))
			}
			if let exist = js["valueAddress"] {
				presentKeys.insert("valueAddress")
				if let val = exist as? FHIRJSON {
					self.valueAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAddress", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueAnnotation"] {
				presentKeys.insert("valueAnnotation")
				if let val = exist as? FHIRJSON {
					self.valueAnnotation = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAnnotation", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueAttachment"] {
				presentKeys.insert("valueAttachment")
				if let val = exist as? FHIRJSON {
					self.valueAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAttachment", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueBase64Binary"] {
				presentKeys.insert("valueBase64Binary")
				if let val = exist as? String {
					self.valueBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueBase64Binary", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueBoolean"] {
				presentKeys.insert("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueCode"] {
				presentKeys.insert("valueCode")
				if let val = exist as? String {
					self.valueCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueCode", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueCodeableConcept"] {
				presentKeys.insert("valueCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueCoding"] {
				presentKeys.insert("valueCoding")
				if let val = exist as? FHIRJSON {
					self.valueCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCoding", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueContactPoint"] {
				presentKeys.insert("valueContactPoint")
				if let val = exist as? FHIRJSON {
					self.valueContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueContactPoint", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueDate"] {
				presentKeys.insert("valueDate")
				if let val = exist as? String {
					self.valueDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueDateTime"] {
				presentKeys.insert("valueDateTime")
				if let val = exist as? String {
					self.valueDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueDecimal"] {
				presentKeys.insert("valueDecimal")
				if let val = exist as? NSNumber {
					self.valueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDecimal", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueHumanName"] {
				presentKeys.insert("valueHumanName")
				if let val = exist as? FHIRJSON {
					self.valueHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueHumanName", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueId"] {
				presentKeys.insert("valueId")
				if let val = exist as? String {
					self.valueId = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueIdentifier"] {
				presentKeys.insert("valueIdentifier")
				if let val = exist as? FHIRJSON {
					self.valueIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueInstant"] {
				presentKeys.insert("valueInstant")
				if let val = exist as? String {
					self.valueInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueInstant", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueInteger"] {
				presentKeys.insert("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueInteger", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueMarkdown"] {
				presentKeys.insert("valueMarkdown")
				if let val = exist as? String {
					self.valueMarkdown = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueMarkdown", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueMeta"] {
				presentKeys.insert("valueMeta")
				if let val = exist as? FHIRJSON {
					self.valueMeta = Meta(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueMeta", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueOid"] {
				presentKeys.insert("valueOid")
				if let val = exist as? String {
					self.valueOid = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueOid", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valuePeriod"] {
				presentKeys.insert("valuePeriod")
				if let val = exist as? FHIRJSON {
					self.valuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valuePositiveInt"] {
				presentKeys.insert("valuePositiveInt")
				if let val = exist as? UInt {
					self.valuePositiveInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "valuePositiveInt", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueQuantity"] {
				presentKeys.insert("valueQuantity")
				if let val = exist as? FHIRJSON {
					self.valueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueRange"] {
				presentKeys.insert("valueRange")
				if let val = exist as? FHIRJSON {
					self.valueRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueRange", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueRatio"] {
				presentKeys.insert("valueRatio")
				if let val = exist as? FHIRJSON {
					self.valueRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueRatio", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueReference"] {
				presentKeys.insert("valueReference")
				if let val = exist as? FHIRJSON {
					self.valueReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueSampledData"] {
				presentKeys.insert("valueSampledData")
				if let val = exist as? FHIRJSON {
					self.valueSampledData = SampledData(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSampledData", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueSignature"] {
				presentKeys.insert("valueSignature")
				if let val = exist as? FHIRJSON {
					self.valueSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSignature", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueString"] {
				presentKeys.insert("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueString", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueTime"] {
				presentKeys.insert("valueTime")
				if let val = exist as? String {
					self.valueTime = FHIRTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueTiming"] {
				presentKeys.insert("valueTiming")
				if let val = exist as? FHIRJSON {
					self.valueTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueTiming", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueUnsignedInt"] {
				presentKeys.insert("valueUnsignedInt")
				if let val = exist as? UInt {
					self.valueUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueUnsignedInt", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueUri"] {
				presentKeys.insert("valueUri")
				if let val = exist as? String {
					self.valueUri = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueUri", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON()
		}
		if let valueAnnotation = self.valueAnnotation {
			json["valueAnnotation"] = valueAnnotation.asJSON()
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON()
		}
		if let valueBase64Binary = self.valueBase64Binary {
			json["valueBase64Binary"] = valueBase64Binary.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON()
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON()
		}
		if let valueContactPoint = self.valueContactPoint {
			json["valueContactPoint"] = valueContactPoint.asJSON()
		}
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON()
		}
		if let valueId = self.valueId {
			json["valueId"] = valueId.asJSON()
		}
		if let valueIdentifier = self.valueIdentifier {
			json["valueIdentifier"] = valueIdentifier.asJSON()
		}
		if let valueInstant = self.valueInstant {
			json["valueInstant"] = valueInstant.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueMarkdown = self.valueMarkdown {
			json["valueMarkdown"] = valueMarkdown.asJSON()
		}
		if let valueMeta = self.valueMeta {
			json["valueMeta"] = valueMeta.asJSON()
		}
		if let valueOid = self.valueOid {
			json["valueOid"] = valueOid.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON()
		}
		if let valuePositiveInt = self.valuePositiveInt {
			json["valuePositiveInt"] = valuePositiveInt.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON()
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON()
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON()
		}
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON()
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON()
		}
		if let valueSignature = self.valueSignature {
			json["valueSignature"] = valueSignature.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueTiming = self.valueTiming {
			json["valueTiming"] = valueTiming.asJSON()
		}
		if let valueUnsignedInt = self.valueUnsignedInt {
			json["valueUnsignedInt"] = valueUnsignedInt.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}

