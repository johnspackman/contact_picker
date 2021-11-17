abstract class Contact {
  const Contact(this.fullName);

  /// Full name of the contact
  /// On Flutter Web this can be null if the user unselects name in the contact picker interface
  final String? fullName;

  @override
  String toString() {
    return 'Contact{fullName: $fullName}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Contact &&
          runtimeType == other.runtimeType &&
          fullName == other.fullName;

  @override
  int get hashCode => fullName.hashCode;
}

///Phone Contact
class IdentifiedContact extends Contact {
  const IdentifiedContact(String? fullName, this.identifier) : super(fullName);

  factory IdentifiedContact.fromMap(Map<dynamic, dynamic> map) =>
      IdentifiedContact(map['fullName'], map['identifier']);

  /// Unique identifier for the contact
  final String? identifier;

  @override
  String toString() {
    return 'IdentifiedContact{fullName: $fullName}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IdentifiedContact &&
          runtimeType == other.runtimeType &&
          identifier == other.identifier;

  @override
  int get hashCode => identifier.hashCode;
}
