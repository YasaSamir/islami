import 'package:islamii/features/home/data/model/suwar_model.dart';

abstract class SuwerRepo {
  Future<List<SuwarModel>> getSuwar(

      );
}
