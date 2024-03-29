import 'User.dart';

class Group {
  late String _id;
  late String _name;
  late String _avatarProfileUrl;
  late List<User> _users;

  Group(this._id, this._name, this._avatarProfileUrl, this._users);

  List<User> get users => _users;

  set users(List<User> value) {
    _users = value;
  }

  String get avatarProfileUrl => _avatarProfileUrl;

  set avatarProfileUrl(String value) {
    _avatarProfileUrl = value;
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