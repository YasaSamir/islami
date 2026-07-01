import 'package:islamii/features/home/data/data_source/suwer_remote_data_source.dart';
import 'package:islamii/features/home/data/model/suwar_model.dart';
import 'package:islamii/features/home/domain/repo/suwer_repo.dart';

class SuwerRepoImpl implements SuwerRepo {
  final SuwerRemoteDataSource remoteDataSource;

  SuwerRepoImpl(this.remoteDataSource);

  @override
  Future<List<SuwarModel>> getSuwar() async {
    return await remoteDataSource.getSuwar();
  }
}
