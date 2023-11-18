import 'package:bookly/core/utils/app_string.dart';
import 'package:bookly/core/widgets/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

const transitionDuration = Duration(milliseconds: 250);
Future<void> urlLauncher(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSnackBar(context, '${AppString.notLaunch} $url');
    }
  }
}
