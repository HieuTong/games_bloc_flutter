import 'package:learning_games/repository/models/genre.dart';
import 'package:learning_games/repository/service/game_service.dart';

class GameRepository {
  GameRepository({required this.service});
  final GameService service;

  Future<List<Genre>> getGenres() async => service.getGenres();
}
