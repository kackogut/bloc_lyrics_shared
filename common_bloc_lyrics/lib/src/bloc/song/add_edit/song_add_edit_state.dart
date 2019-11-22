import 'package:equatable/equatable.dart';
import 'package:common_bloc_lyrics/common_bloc_lyrics.dart';

abstract class SongAddEditState extends Equatable {
  SongAddEditState([List props = const []]) : super(props);
}

class StateShowSong extends SongAddEditState {
  @override
  String toString() => 'SearchStateEmpty';
}

class StateLoading extends SongAddEditState {
  @override
  String toString() => 'SearchStateLoading';
}

class AddSongStateSuccess extends SongAddEditState {
  final SongBase song;

  AddSongStateSuccess(this.song) : super([song]);

  @override
  String toString() => 'AddSongSuccess {song: $song }';
}

class EditSongStateSuccess extends SongAddEditState {
  final SongBase song;

  EditSongStateSuccess(this.song) : super([song]);

  @override
  String toString() => 'EditSongSuccess {song: $song }';
}
