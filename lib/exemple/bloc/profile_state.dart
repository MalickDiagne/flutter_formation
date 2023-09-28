class ProfileState {
  final String username;
  final String description;
  final int followers;
  final int following;

  ProfileState({
    required this.username,
    required this.description,
    required this.followers,
    required this.following,
  });

  ProfileState copyWith({
    String? username,
    String? description,
    int? followers,
    int? following,
  }) {
    return ProfileState(
      username: username ?? this.username,
      description: description ?? this.description,
      followers: followers ?? this.followers,
      following: following ?? this.following,
    );
  }
}
