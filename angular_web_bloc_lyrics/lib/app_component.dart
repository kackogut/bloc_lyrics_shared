import 'package:angular/angular.dart';

import 'package:common_bloc_lyrics/common_bloc_lyrics.dart';
import 'package:angular_web_bloc_lyrics/src/search_song/search_song_component.dart';

@Component(
  selector: 'my-app',
  template:
      '<search-form [lyricsRepository]="lyricsRepository"></search-form>',
  directives: [SearchSongComponent],
)
class AppComponent {
  final lyricsRepository = LyricsRepository(
    LyricsClient(),
    LocalClient()
  );
}
