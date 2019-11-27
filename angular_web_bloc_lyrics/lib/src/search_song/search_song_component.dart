import 'package:angular/angular.dart';
import 'package:angular_bloc/angular_bloc.dart';

import 'package:common_bloc_lyrics/common_bloc_lyrics.dart';
import 'package:angular_web_bloc_lyrics/src/search_song/search_bar/song_search_bar_component.dart';
import 'package:angular_web_bloc_lyrics/src/search_song/search_body/song_search_body_component.dart';

@Component(
    selector: 'search-form',
    templateUrl: 'search_song_component.html',
    directives: [
      SearchBarComponent,
      SearchBodyComponent
    ],
    pipes: [
      BlocPipe
    ])
class SearchSongComponent implements OnInit, OnDestroy {
  @Input()
  LyricsRepository lyricsRepository;

  SongsSearchBloc songsSearchBloc;

  @override
  void ngOnInit() {
    songsSearchBloc = SongsSearchBloc(
      lyricsRepository: lyricsRepository,
      songAddEditBloc: SongAddEditBloc(lyricsRepository: lyricsRepository)
    );
  }

  @override
  void ngOnDestroy() {
    songsSearchBloc.close();
  }
}
