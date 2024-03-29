class User {
  late String _id;
  late String _name;
  late bool _gender;
  late String _profileAvatarUrl;
  late DateTime _creationDate;

  User(this._id, this._name, this._gender, this._profileAvatarUrl,
      this._creationDate);

  DateTime get creationDate => _creationDate;

  set creationDate(DateTime value) {
    _creationDate = value;
  }

  String get profileAvatarUrl => _profileAvatarUrl;

  set profileAvatarUrl(String value) {
    _profileAvatarUrl = value;
  }

  bool get gender => _gender;

  set gender(bool value) {
    _gender = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}