part of 'tiktok_bloc.dart';

enum TikTokStatus { following, forYou }

enum Status { initial, success, error, loading }

extension StatusX on Status {
  bool get isInitial => this == Status.initial;
  bool get isSuccess => this == Status.success;
  bool get isError => this == Status.error;
  bool get isLoading => this == Status.loading;
}

extension TikTokStatusX on TikTokStatus {
  bool get isFollowing => this == TikTokStatus.following;
  bool get isForYou => this == TikTokStatus.forYou;
}

class TiktokState extends Equatable {
  const TiktokState({this.status = TikTokStatus.following});

  final TikTokStatus status;

  @override
  List<Object> get props => [status];

  TiktokState copyWith({TikTokStatus? status}) {
    return TiktokState(
      status: status ?? this.status,
    );
  }
}

class TiktokInitial extends TiktokState {}
