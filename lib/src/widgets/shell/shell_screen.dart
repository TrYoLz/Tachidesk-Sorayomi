// Copyright (c) 2022 Contributors to the Suwayomi project
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pub_semver/pub_semver.dart';

import '../../features/about/data/about_repository.dart';
import '../../features/about/presentation/about/controllers/about_controller.dart';
import '../../features/about/presentation/about/widget/app_update_dialog.dart';

import '../../utils/extensions/custom_extensions.dart';
import '../../utils/misc/toast/toast.dart';
import 'big_screen_navigation_bar.dart';
import 'small_screen_navigation_bar.dart';

class ShellScreen extends HookConsumerWidget {
  const ShellScreen({
    super.key,
    required this.child,
  });
  final Widget child;

  Future<void> checkForUpdate({
    required String? title,
    required BuildContext context,
    required Future<AsyncValue<Version?>> Function() updateCallback,
    required Toast toast,
  }) async {
    final AsyncValue<Version?> versionResult = await updateCallback();
    toast.close();
    if (context.mounted) {
      versionResult.whenOrNull(
        data: (version) {
          if (false && version != null) {
            appUpdateDialog(
              title: title ?? context.l10n!.appTitle,
              newRelease: "v${version.canonicalizedVersion}",
              context: context,
              toast: toast,
            );
          }
        },
      );
    }
    return;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.microtask(
        () => checkForUpdate(
          title: ref.read(packageInfoProvider).appName,
          context: context,
          updateCallback: ref.read(aboutRepositoryProvider).checkUpdate,
          toast: ref.read(toastProvider(context)),
        ),
      );
      return;
    }, []);
    if (context.isTablet) {
      return Scaffold(
        body: Row(
          children: [
            BigScreenNavigationBar(selectedScreen: context.location),
            Expanded(child: child),
          ],
        ),
      );
    } else {
      return Scaffold(
        body: child,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar:
            SmallScreenNavigationBar(selectedScreen: context.location),
      );
    }
  }
}
