import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/service_locator.dart';
import '../bloc/movies_bloc.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()
        ..add(GetNowPlayingMoviesEvent()), //*fornsico un evento subito
      child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          print(state);
          return const Scaffold();
        },
      ),
    );
  }
}
