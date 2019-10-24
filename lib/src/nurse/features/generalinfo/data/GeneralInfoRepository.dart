import 'model/general_info_model.dart';

class GeneralInfoRepository {
  GeneralInfoLocalDataSource _localDataSource;
  GeneralInfoRemoteDataSource _remoteDataSource;

  saveGeneralInfo(GeneralInfoModel model) {}

  Future<GeneralInfoModel> fetchFreshGeneralInfo(String id) {
    // Fetch the general info from local db if present, then start a remote call
    // with that id, if the last synced is out of date in local, delete local
    // and emit the new info from Remote Server else, try to sync the local draft
    // to remote server.

    return _remoteDataSource.fetchGeneralInfo(id);
  }
}

abstract class GeneralInfoLocalDataSource {
  updateGeneralInfo(GeneralInfoModel fullName);

  saveGeneralInfo(String fullName);

  deleteGeneralInfo(String formID);
}

abstract class GeneralInfoRemoteDataSource {
  Future<bool> syncGeneralInfo(GeneralInfoModel model);

  Future<GeneralInfoModel> fetchGeneralInfo(String formID);
}
