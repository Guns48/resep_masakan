import 'package:resep_masakan/model/resep_model.dart';
import 'package:dio/dio.dart';

class ResepRequest {
  Future<ResepModel> getResepMasakan() async {
    var response = await Dio()
        .get("https://masak-apa-tomorisakura.vercel.app/api/recipes");
    return ResepModel.fromJson(response.data);
  }
}
