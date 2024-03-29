import 'User.dart';

class GameMatch {

  late String _id;
  late int _round;
  late int _numberPlayers;
  late double _startingLoot;
  late List<User> _players;

  GameMatch(this._id, this._round, this._numberPlayers, this._startingLoot,
      this._players);

  List<User> get players => _players;

  set players(List<User> value) {
    _players = value;
  }

  double get startingLoot => _startingLoot;

  set startingLoot(double value) {
    _startingLoot = value;
  }

  int get numberPlayers => _numberPlayers;

  set numberPlayers(int value) {
    _numberPlayers = value;
  }

  int get round => _round;

  set round(int value) {
    _round = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}