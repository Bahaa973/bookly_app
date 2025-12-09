import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:meta/meta.dart';

import '../../../../../core/model/book_model.dart';
import '../../../../home/data/repos/home_repo.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());
  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String bookName}) async {
    emit(SearchBookLoading());
    var result = await searchRepo.fetchSearchBook(bookName: bookName);
    result.fold((failure) {
      emit(SearchBookFailure(failure.errMessage));
    }, (books) {
      emit(SearchBookSuccess(books));
    });
  }
}
