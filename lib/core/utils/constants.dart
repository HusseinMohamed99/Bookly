import 'package:bookly/core/utils/app_string.dart';
import 'package:url_launcher/url_launcher.dart';

const transitionDuration = Duration(milliseconds: 250);
Future<void> urlLauncher(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('${AppString.notLaunch}$url');
  }
}
