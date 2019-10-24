import 'package:telehealth/src/nurse/features/generalinfo/data/GeneralInfoRepository.dart';
import 'package:telehealth/src/nurse/features/generalinfo/data/model/general_info_model.dart';

class GeneralInfoUseCases {
  GeneralInfoRepository _repository;

  saveGeneralInfo(GeneralInfoModel generalInfo) {
    //Do some validation
    _repository.saveGeneralInfo(generalInfo);
  }

  Stream<GeneralInfoModel> fetchGeneralInfo(String id) async*{
    //Do some validation/error handling
     yield* _repository.fetchFreshGeneralInfo(id).asStream();
  }
}
