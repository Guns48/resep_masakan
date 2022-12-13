import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:resep_masakan/model/resep_model.dart';
import 'package:resep_masakan/request/resep_request.dart';

part 'resep_state.dart';

class ResepCubit extends Cubit<ResepState> {
  ResepCubit() : super(ResepInitial());

  ResepRequest resepRequest = ResepRequest();
  ResepModel resepModel = ResepModel();

  loadResep() async {
    resepModel = await resepRequest.getResepMasakan();
    emit(ResepMasakan(resepModel));
  }
}
