part of 'alert_dialogs.dart';

Future<bool> showAlertBoolDialog({
  required BuildContext context,
  required String title,
  required String defaultActionText,
  String? content,
  String? cancelActionText,
}) async {
  final completer = Completer<bool>();

  if (kIsWeb || !Platform.isIOS) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: context.theme.colorScheme.surface,
        title: Text(
          title,
        ),
        titleTextStyle: context.theme.textTheme.bodyMedium?.copyWith(
          color: Colors.black,
        ),
        content: content != null ? Text(content) : null,
        contentTextStyle: context.theme.textTheme.bodySmall?.copyWith(
          color: Colors.black,
        ),
        actions: <Widget>[
          if (cancelActionText != null)
            TextButton(
              child: Text(cancelActionText),
              onPressed: () => Navigator.of(context).pop(false),
            ),
          TextButton(
            child: Text(defaultActionText),
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ],
      ),
    ).then((value) => value ?? false);
  } else {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showCupertinoDialog<bool>(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: Text(
            title,
            style: context.theme.textTheme.bodyMedium?.copyWith(
              color: Colors.black,
            ),
          ),
          content: content != null
              ? Text(
                  content,
                  style: context.theme.textTheme.bodySmall?.copyWith(
                    color: Colors.black,
                  ),
                )
              : null,
          actions: <Widget>[
            if (cancelActionText != null)
              CupertinoDialogAction(
                child: Text(cancelActionText),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
            CupertinoDialogAction(
              child: Text(defaultActionText),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        ),
      ).then((value) {
        completer.complete(value ?? false);
      });
    });

    return completer.future;
  }
}
