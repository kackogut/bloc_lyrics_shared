import 'package:angular/angular.dart';

import 'package:common_bloc_lyrics/common_bloc_lyrics.dart';

@Component(
  selector: 'search-bar',
  templateUrl: 'song_search_bar_component.html',
)
class SearchBarComponent {
  @Input()
  SongsSearchBloc songsSearchBloc;

  void onTextChanged(String text) {
    songsSearchBloc.add(TextChanged(query: text));
  }
}