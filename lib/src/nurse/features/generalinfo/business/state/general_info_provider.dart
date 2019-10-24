
import 'package:telehealth/src/nurse/features/generalinfo/business/usecases/general_info_usecases.dart';
import 'package:telehealth/src/nurse/features/generalinfo/data/model/general_info_model.dart';

class GeneralInfoProvider {
  GeneralInfoUseCases _generalInfoUseCases;
  String formId;

  Stream<GeneralInfoModel> get generalInfo =>
      _generalInfoUseCases.fetchGeneralInfo(formId);

  saveGeneralInfo(GeneralInfoModel model) =>
      _generalInfoUseCases.saveGeneralInfo(model);
}
