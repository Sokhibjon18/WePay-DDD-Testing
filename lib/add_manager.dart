import 'dart:developer';
import 'dart:io';

class AdManager {
  static bool isReleasing = false;

  static String get appId {
    if (Platform.isAndroid) {
      return "ca-app-pub-7575188577190438~1761080054";
    } else if (Platform.isIOS) {
      return "ca-app-pub-7575188577190438~9271904416";
    } else {
      log('error on Add Manager class');
      return '';
    }
  }

  static String get bannerAdUnitIdHome {
    if (Platform.isAndroid) {
      return AdManager.isReleasing
          ? "ca-app-pub-7575188577190438/6163359498"
          : "ca-app-pub-3940256099942544/6300978111";
    } else if (Platform.isIOS) {
      return "ca-app-pub-7575188577190438/1455610681";
    } else {
      log('error on Add Manager class');
      return '';
    }
  }

  static String get bannerAdUnitIdExpenses {
    if (Platform.isAndroid) {
      return AdManager.isReleasing
          ? "ca-app-pub-7575188577190438/2685766022"
          : "ca-app-pub-3940256099942544/6300978111";
    } else if (Platform.isIOS) {
      return "";
    } else {
      log('error on Add Manager class');
      return '';
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/7049598008";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/3964253750";
    } else {
      log('error on Add Manager class');
      return '';
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/8673189370";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/7552160883";
    } else {
      log('error on Add Manager class');
      return '';
    }
  }
}
