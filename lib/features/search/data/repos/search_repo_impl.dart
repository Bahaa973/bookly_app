import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBook(
      {required String bookName}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=$bookName');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(
          ServerFailure.fromDioError(
            e,
          ),
        );
      } else {
        return left(
          ServerFailure(
            e.toString(),
          ),
        );
      }
    }
  }
}
