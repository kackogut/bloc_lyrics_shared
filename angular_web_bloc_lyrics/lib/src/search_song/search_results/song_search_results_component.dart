import 'package:angular/angular.dart';
import 'package:angular_web_bloc_lyrics/src/search_song/search_results/search_reult_item/search_result_item_component.dart';

import 'package:common_bloc_lyrics/common_bloc_lyrics.dart';

@Component(
  selector: 'search-results',
  templateUrl: 'song_search_results_component.html',
  directives: [coreDirectives, SearchResultItemComponent],
)
class SearchResultsComponent {
  @Input()
  List<SongBase> songs;
}