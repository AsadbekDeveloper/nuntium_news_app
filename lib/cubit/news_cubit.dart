import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium_news/model/news.dart';
import 'package:nuntium_news/repos/news_repo.dart';

class NewsCubit extends Cubit<List<NewsModel>> {
  NewsCubit() : super([]);
  load() async {
    final news = await NewsRepo.loadNews();
    emit(news);
  }
}
