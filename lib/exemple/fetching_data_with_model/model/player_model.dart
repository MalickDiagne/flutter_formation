class Player {
  final int id;
  final String firstName;
  final String lastName;
  final String position;
  final int? heightFeet;
  final int? heightInches;
  final int? weightPounds;
  final Team team;

  Player({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.position,
    this.heightFeet,
    this.heightInches,
    this.weightPounds,
    required this.team,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'],
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'] ?? '',
      position: json['position'] ?? '',
      heightFeet: json['height_feet'],
      heightInches: json['height_inches'],
      weightPounds: json['weight_pounds'],
      team: Team.fromJson(json['team']),
    );
  }
}

class Team {
  final int id;
  final String abbreviation;
  final String city;
  final String conference;
  final String division;
  final String fullName;
  final String name;

  Team({
    required this.id,
    required this.abbreviation,
    required this.city,
    required this.conference,
    required this.division,
    required this.fullName,
    required this.name,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      abbreviation: json['abbreviation'] ?? '',
      city: json['city'] ?? '',
      conference: json['conference'] ?? '',
      division: json['division'] ?? '',
      fullName: json['full_name'] ?? '',
      name: json['name'] ?? '',
    );
  }
}
