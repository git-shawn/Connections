import Foundation
import Contacts

public enum ContactKey {
    /// The type of contact. E.g. person, organization
    case type
    /// The name prefix for this contact. E.g. Dr
    case namePrefix
    /// The given/first name for the contact
    case givenName
    /// The middle name for the contact
    case middleName
    /// The family/last name for the contact
    case familyName
    /// The previous family name for the contact. For example pre-marriage
    case previousFamilyName
    /// The name suffix for this contact. E.g. PhD
    case nameSuffix
    /// The nickname for this contact
    case nickname
    /// The name of the organization associated with the contact
    case organizationName
    /// The name of the department associated with the contact
    case departmentName
    /// The job title for this contact
    case jobTitle
    /// The phonetic spelling of the given/first name for this contact
    case phoneticGivenName
    /// The phonetic spelling of the middle name for this contact
    case phoneticMiddleName
    /// The phonetic spelling of the family/last for this contact
    case phoneticFamilyName
    /// The phonetic spelling of the organization associated with the contact
    case phoneticOrganizationName
    /// A date component for the Gregorian birthday of the contact
    case birthday
    /// A date component for the non-Gregorian birthday of the contact
    case nonGregorianBirthday
    /// A boolean indicating whether a contact has a profile picture
    case hasImage
    /// The profile picture of a contact
    case imageData
    /// The thumbnail version of the contact’s profile picture
    case thumbnailData
    /// The labelled phone numbers for this contact
    case phoneNumbers
    /// The labelled email addresses for this contact
    case emailAddresses
    /// The other labelled gregorian dates associated with this contact
    case dates
    /// The labelled postal address for this contact
    case postalAddresses
    /// The labelled URLs associated with this contact
    case urls
    /// The labelled relationships associated with this contact
    case relationships
    /// The labelled social profiles associated with this contact
    case socialProfiles
    /// The labelled IM addresses associated with this contact
    case instantMessageAddresses
    /// The note attached to this contact. See notes about additional entitlement requirements.
    ///
    /// Requires additional [entitlement](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_contacts_notes).
    case note
    /// The required keys necessary to perform vCard serialization via `CNContactVCardSerialization`
    case vcard

    public var keyDescriptor: CNKeyDescriptor {
        switch self {
        case .type: return CNContactTypeKey as CNKeyDescriptor
        case .namePrefix: return CNContactNamePrefixKey as CNKeyDescriptor
        case .givenName: return CNContactGivenNameKey as CNKeyDescriptor
        case .middleName: return CNContactMiddleNameKey as CNKeyDescriptor
        case .familyName: return CNContactFamilyNameKey as CNKeyDescriptor
        case .previousFamilyName: return CNContactPreviousFamilyNameKey as CNKeyDescriptor
        case .nameSuffix: return CNContactNameSuffixKey as CNKeyDescriptor
        case .nickname: return CNContactNicknameKey as CNKeyDescriptor
        case .organizationName: return CNContactOrganizationNameKey as CNKeyDescriptor
        case .departmentName: return CNContactDepartmentNameKey as CNKeyDescriptor
        case .jobTitle: return CNContactJobTitleKey as CNKeyDescriptor
        case .phoneticGivenName: return CNContactPhoneticGivenNameKey as CNKeyDescriptor
        case .phoneticMiddleName: return CNContactPhoneticMiddleNameKey as CNKeyDescriptor
        case .phoneticFamilyName: return CNContactPhoneticFamilyNameKey as CNKeyDescriptor
        case .phoneticOrganizationName: return CNContactPhoneticOrganizationNameKey as CNKeyDescriptor
        case .birthday: return CNContactBirthdayKey as CNKeyDescriptor
        case .nonGregorianBirthday: return CNContactNonGregorianBirthdayKey as CNKeyDescriptor
        case .hasImage: return CNContactImageDataAvailableKey as CNKeyDescriptor
        case .imageData: return CNContactImageDataKey as CNKeyDescriptor
        case .thumbnailData: return CNContactThumbnailImageDataKey as CNKeyDescriptor
        case .phoneNumbers: return CNContactPhoneNumbersKey as CNKeyDescriptor
        case .emailAddresses: return CNContactEmailAddressesKey as CNKeyDescriptor
        case .postalAddresses: return CNContactPostalAddressesKey as CNKeyDescriptor
        case .dates: return CNContactDatesKey as CNKeyDescriptor
        case .urls: return CNContactUrlAddressesKey as CNKeyDescriptor
        case .relationships: return CNContactRelationsKey as CNKeyDescriptor
        case .socialProfiles: return CNContactSocialProfilesKey as CNKeyDescriptor
        case .instantMessageAddresses: return CNContactInstantMessageAddressesKey as CNKeyDescriptor
        case .note: return CNContactNoteKey as CNKeyDescriptor
        case .vcard: return CNContactVCardSerialization.descriptorForRequiredKeys()
        
        }
    }
}

public extension Array where Element == ContactKey {
    /// Includes all known keys excluding `.note` since that requires an additional [entitlement](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_contacts_notes) and permission from apple.
    static var allExcludingNote: Self {
        [
            .type, .namePrefix, .nameSuffix, .previousFamilyName,
            .givenName, .middleName, .familyName,
            .phoneticGivenName, .phoneticMiddleName, .phoneticFamilyName,
            .nickname, .departmentName, .jobTitle,
            .organizationName, .phoneticOrganizationName,
            .birthday, .nonGregorianBirthday,
            .hasImage, .imageData, .thumbnailData,
            .phoneNumbers, .emailAddresses, .postalAddresses,
            .dates, .urls,
            .relationships, .socialProfiles, .instantMessageAddresses, .vcard
        ]
    }
}
