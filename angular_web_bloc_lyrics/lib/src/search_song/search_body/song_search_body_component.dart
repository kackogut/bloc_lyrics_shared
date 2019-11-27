import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_web_bloc_lyrics/src/search_song/search_results/song_search_results_component.dart';

import 'package:common_bloc_lyrics/common_bloc_lyrics.dart';

@Component(
  selector: 'search-body',
  templateUrl: 'song_search_body_component.html',
  directives: [
    coreDirectives,
    MaterialSpinnerComponent,
    MaterialIconComponent,
    SearchResultsComponent
  ],
)
class SearchBodyComponent {
  @Input()
  SongsSearchState state;

  bool get isEmpty => state is SearchStateEmpty;
  bool get isLoading => state is SearchStateLoading;
  bool get isSuccess => state is SearchStateSuccess;
  bool get isError => state is SearchStateError;

  List<SongBase> get songs =>
      isSuccess ? (state as SearchStateSuccess).songs : [];

  String get error => isError ? (state as SearchStateError).error : '';
}