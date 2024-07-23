import "package:flutter/widgets.dart";
import "package:l/l.dart";

import "src/core/storage/app_storage.dart";

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getStorageValues();
}

String? token;

Future<void> getStorageValues() async {
  token = await UserStorage.load(key: StorageKey.token);
  l.w(
    token ??
        "------\n------------\n-----------\n-------"
            " ====================================",
  );
}
