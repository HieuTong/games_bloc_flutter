import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_games/repository/game_repository.dart';
import 'package:learning_games/repository/service/game_service.dart';
import 'package:learning_games/ui/home/pages/home_layout.dart';
import 'package:learning_games/ui/widgets/category_widget/bloc/category_bloc.dart';
import 'package:learning_games/ui/widgets/category_widget/bloc/category_event.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: RepositoryProvider(
        create: (context) => GameRepository(service: GameService()),
        child: MultiBlocProvider(providers: [
          BlocProvider<CategoryBloc>(
              create: (context) =>
                  CategoryBloc(gameRepository: context.read<GameRepository>())
                    ..add(GetCategories()))
        ], child: HomeLayout()),
      ),
    );
  }
}
