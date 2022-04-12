import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';



// void main() {
//   Future<OkCancelResult> showOkAlertDialog({
//     required BuildContext context,
//     String? title,
//     String? message,
//     String? okLabel,
//     bool barrierDismissible = true,
//     @Deprecated('Use `style` instead.') AdaptiveStyle? alertStyle,
//     AdaptiveStyle style = AdaptiveStyle.adaptive,
//     bool useActionSheetForCupertino = false,
//     bool useRootNavigator = true,
//     VerticalDirection actionsOverflowDirection = VerticalDirection.up,
//     bool fullyCapitalizedForMaterial = true,
//     WillPopCallback? onWillPop,
//     AdaptiveDialogBuilder? builder,
//   }) async {
//     final result = await showAlertDialog<OkCancelResult>(
//       context: context,
//       title: title,
//       message: message,
//       barrierDismissible: barrierDismissible,
//       style: alertStyle ?? style,
//       useActionSheetForCupertino: useActionSheetForCupertino,
//       useRootNavigator: useRootNavigator,
//       actionsOverflowDirection: actionsOverflowDirection,
//       fullyCapitalizedForMaterial: fullyCapitalizedForMaterial,
//       onWillPop: onWillPop,
//       builder: builder,
//       actions: [
//         AlertDialogAction(
//           label: okLabel ?? MaterialLocalizations.of(context).okButtonLabel,
//           key: OkCancelResult.ok,
//         )
//       ],
//     );
//     return result ?? OkCancelResult.cancel;
//   }
// }

void main() => runApp(MyApp());

class adaptive {
  Future<OkCancelResult> showOkAlertDialog({
    required BuildContext context,
    String? title,
    String? message,
    String? okLabel,
    bool barrierDismissible = true,
    @Deprecated('Use `style` instead.') AdaptiveStyle? alertStyle,
    AdaptiveStyle style = AdaptiveStyle.adaptive,
    bool useActionSheetForCupertino = false,
    bool useRootNavigator = true,
    VerticalDirection actionsOverflowDirection = VerticalDirection.up,
    bool fullyCapitalizedForMaterial = true,
    WillPopCallback? onWillPop,
    AdaptiveDialogBuilder? builder,
  }) async {
    final result = await showAlertDialog<OkCancelResult>(
      context: context,
      title: title,
      message: message,
      barrierDismissible: barrierDismissible,
      style: alertStyle ?? style,
      useActionSheetForCupertino: useActionSheetForCupertino,
      useRootNavigator: useRootNavigator,
      actionsOverflowDirection: actionsOverflowDirection,
      fullyCapitalizedForMaterial: fullyCapitalizedForMaterial,
      onWillPop: onWillPop,
      builder: builder,
      actions: [
        AlertDialogAction(
          label: okLabel ?? MaterialLocalizations.of(context).okButtonLabel,
          key: OkCancelResult.ok,
        )
      ],
    );
    return result ?? OkCancelResult.cancel;
  }
}

class MyApp extends StatefulWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Text('TextButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed: adaptive(),
                  child: Text('disabled'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('enabled'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {},
                  child: Text('enabled'),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Text('OutlinedButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlinedButton(
                  onPressed: null,
                  child: Text('disabled'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('enabled'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Text('enabled'),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Text('ElevatedButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: null,
                  child: Text('disabled'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('enabled'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    elevation: 16,
                  ),
                  child: Text('enabled'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

