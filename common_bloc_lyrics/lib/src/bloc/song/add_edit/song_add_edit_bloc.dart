import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:common_bloc_lyrics/common_bloc_lyrics.dart';
import 'package:meta/meta.dart';

class SongAddEditBloc extends Bloc<SongAddEditEvent, SongAddEditState> {
  final LyricsRepository lyricsRepository;

  SongAddEditBloc({@required this.lyricsRepository});

  @override
  SongAddEditState get initialState => StateShowSong();

  @override
  Stream<SongAddEditState> mapEventToState(SongAddEditEvent event) async* {
    if (event is AddSong) {
      yield* _mapSongAddToState(event);
    }
    if (event is EditSong) {
      yield* _mapSongEditToState(event);
    }
  }

  Stream<SongAddEditState> _mapSongAddToState(AddSong event) async* {
    yield StateLoading();
    SongBase updatedSong = await lyricsRepository.addSong(event.song);
    yield AddSongStateSuccess(updatedSong);
  }


  Stream<SongAddEditState> _mapSongEditToState(EditSong event) async* {
    yield StateLoading();
    SongBase updatedSong = await lyricsRepository.editSong(event.song);
    yield EditSongStateSuccess(updatedSong);
  }

  @override
  void onTransition(Transition<SongAddEditEvent, SongAddEditState> transition) {
    print(transition);
  }
}
