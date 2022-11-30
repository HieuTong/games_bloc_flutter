import 'package:equatable/equatable.dart';
import 'package:learning_games/repository/models/genre.dart';

enum CategoryStatus { initial, success, error, loading, selected }

extension CategoryStatusX on CategoryStatus {
  bool get isInitial => this == CategoryStatus.initial;
  bool get isSuccess => this == CategoryStatus.success;
  bool get isError => this == CategoryStatus.error;
  bool get isLoading => this == CategoryStatus.loading;
  bool get isSelected => this == CategoryStatus.success;
}

class CategoryState extends Equatable {
  const CategoryState({
    this.status = CategoryStatus.initial,
    List<Genre>? categories,
    this.idSelected = 0,
  }) : categories = categories ?? const [];

  final List<Genre> categories;
  final CategoryStatus status;
  final int idSelected;

  @override
  List<Object?> get props => [status, categories, idSelected];

  CategoryState copyWith({
    List<Genre>? categories,
    CategoryStatus? status,
    int? idSelected,
  }) {
    return CategoryState(
        categories: categories ?? this.categories,
        status: status ?? this.status,
        idSelected: idSelected ?? this.idSelected);
  }
}
