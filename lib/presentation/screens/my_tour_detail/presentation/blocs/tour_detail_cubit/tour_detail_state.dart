part of 'tour_detail_cubit.dart';

class TourDetailState extends Equatable {
  const TourDetailState({
    this.tour,
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
  });

  final MyTour? tour;
  final FormzSubmissionStatus status;
  final String? errorMessage;

  @override
  List<Object?> get props => [
    tour,
    status,
    errorMessage,
  ];

  TourDetailState copyWith({
    MyTour? tour,
    FormzSubmissionStatus? status,
    String? errorMessage,
  }) => TourDetailState(
    tour: tour ?? this.tour,
    status: status ?? FormzSubmissionStatus.initial,
    errorMessage: errorMessage,
  );
}
