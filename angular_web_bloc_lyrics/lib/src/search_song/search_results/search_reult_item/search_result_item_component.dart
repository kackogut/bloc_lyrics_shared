import 'package:angular/angular.dart';

import 'package:common_bloc_lyrics/common_bloc_lyrics.dart';

@Component(
  selector: 'search-result-item',
  templateUrl: 'search_result_item_component.html',
)
class SearchResultItemComponent {
  @Input()
  SongBase song;
}