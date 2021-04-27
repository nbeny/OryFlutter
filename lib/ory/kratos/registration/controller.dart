import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'service.dart';
import 'model.dart';

class RegistrationController extends GetxController {
  RxBool isLoading = true.obs;
  Rx<InitRegistration> initRegistration =
      InitRegistration('', '', DateTime.now(), DateTime.now(), '', null, {})
          .obs;
  Rx<Registration> registration = Registration('', null, null).obs;

  @override
  void onInit() {
    if (kIsWeb) {
      fetchRegistrationBrowser();
    } else {
      fetchRegistrationApi();
    }
    super.onInit();
  }

  void onSubmit(String id, Object body) {
    postRegistration(id, body);
  }

  Future<Registration?> postRegistration(String id, Object body) async {
    try {
      isLoading(true);

      Registration? result =
          await RegistrationService.postRegistrationFlow(id, body);
      if (result != null) {
        registration = result.obs;
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }

  void fetchRegistrationApi() async {
    try {
      isLoading(true);

      InitRegistration? result =
          await RegistrationService.getInitRegistrationApi();
      if (result != null) {
        initRegistration = result.obs;
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }

  void fetchRegistrationBrowser() async {
    try {
      isLoading(true);

      await RegistrationService.getInitRegitrationBrowser();
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }
}
