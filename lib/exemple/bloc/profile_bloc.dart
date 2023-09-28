import 'package:flutter_bloc/flutter_bloc.dart';

import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc()
      : super(ProfileState(
            username: '', description: '', followers: 0, following: 0));

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is LoadProfileEvent) {
      // Simuler la récupération des données du profil
      await Future.delayed(Duration(seconds: 2));
      yield state.copyWith(
        username: 'Nom d\'utilisateur',
        description: 'Description de l\'utilisateur',
        followers: 123,
        following: 456,
      );
    } else if (event is EditProfileEvent) {
      // Ajoutez ici la logique pour éditer le profil
    }
  }
}
