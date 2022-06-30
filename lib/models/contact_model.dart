class ContactModel {
  int id;
  String name;
  String family;
  String? profilePictureUrl;

  ContactModel({
    required this.id,
    required this.name,
    required this.family,
    this.profilePictureUrl,
  });
}
