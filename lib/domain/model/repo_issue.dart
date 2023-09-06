import 'dart:convert';

/// url : "https://api.github.com/repos/flutter/flutter/issues/133997"
/// repository_url : "https://api.github.com/repos/flutter/flutter"
/// html_url : "https://github.com/flutter/flutter/pull/133997"
/// id : 1880752789
/// number : 133997
/// title : "Roll Flutter Engine from fbc6f4a54047 to 90fec635e4fb (9 revisions)"
/// user : {"login":"engine-flutter-autoroll","id":42042535,"avatar_url":"https://avatars.githubusercontent.com/u/42042535?v=4","url":"https://api.github.com/users/engine-flutter-autoroll","html_url":"https://github.com/engine-flutter-autoroll","type":"User","site_admin":false}
/// labels : [{"id":284438921,"url":"https://api.github.com/repos/flutter/flutter/labels/engine","name":"engine","color":"003570","default":false,"description":"flutter/engine repository. See also e: labels."}]
/// created_at : "2023-09-04T18:57:46Z"
/// updated_at : "2023-09-04T19:09:24Z"
/// closed_at : null
/// body : "\nhttps://github.com/flutter/engine/compare/fbc6f4a54047...90fec635e4fb\n\n2023-09-04 skia-flutter-autoroll@skia.org Roll Dart SDK from a5c7102af509 to 671cf059e4b6 (1 revision) (flutter/engine#45429)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from ynBQWN3XpE2JvSlfd... to A82pOZ3-NNgfJ2Da7... (flutter/engine#45428)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from 1fb536394148 to ab9bbb9b11b3 (1 revision) (flutter/engine#45426)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 5eaf624077b5 to c9d527e6b535 (1 revision) (flutter/engine#45425)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from ebf1e7163216 to 1fb536394148 (1 revision) (flutter/engine#45424)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 906dcd219276 to 5eaf624077b5 (1 revision) (flutter/engine#45423)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 4d0501380011 to 906dcd219276 (1 revision) (flutter/engine#45422)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 15f77147a3ec to 4d0501380011 (1 revision) (flutter/engine#45421)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from p56hmQk2lEbN-VwEg... to ynBQWN3XpE2JvSlfd... (flutter/engine#45420)\n\nAlso rolling transitive DEPS:\n  fuchsia/sdk/core/mac-amd64 from p56hmQk2lEbN to A82pOZ3-NNgf\n\nIf this roll has caused a breakage, revert this CL and stop the roller\nusing the controls here:\nhttps://autoroll.skia.org/r/flutter-engine-flutter-autoroll\nPlease CC aaclarke@google.com,rmistry@google.com,zra@google.com on the revert to ensure that a human\nis aware of the problem.\n\nTo file a bug in Flutter: https://github.com/flutter/flutter/issues/new/choose\n\nTo report a problem with the AutoRoller itself, please file a bug:\nhttps://bugs.chromium.org/p/skia/issues/entry?template=Autoroller+Bug\n\nDocumentation for the AutoRoller is here:\nhttps://skia.googlesource.com/buildbot/+doc/main/autoroll/README.md\n"

final dummyRepoIssues = [
  RepoIssue(
      url: "https://api.github.com/repos/flutter/flutter/issues/133997",
      repositoryUrl: "https://api.github.com/repos/flutter/flutter",
      htmlUrl: "https://github.com/flutter/flutter/pull/133997",
      id: 1880752789,
      number: 133997,
      title:
          "Roll Flutter Engine from fbc6f4a54047 to 90fec635e4fb (9 revisions)",
      user: User(
          login: "autoroll",
          id: 42042535,
          avatarUrl: "https://avatars.githubusercontent.com/u/42042535?v=4",
          url: "https://api.github.com/users/engine-flutter-autoroll",
          htmlUrl: "https://github.com/engine-flutter-autoroll",
          type: "User",
          siteAdmin: false),
      labels: [
        Label(
            id: 284438921,
            url: "https://api.github.com/repos/flutter/flutter/labels/engine",
            name: "engine",
            color: "003570",
            defaultProperty: false,
            description: "flutter/engine repository. See also e: labels."),
        Label(
            id: 284438922,
            url: "https://api.github.com/repos/flutter/flutter/labels/engine",
            name: "engine two",
            color: "003570",
            defaultProperty: false,
            description: "flutter/engine repository. See also e: labels."),
        Label(
            id: 284438923,
            url: "https://api.github.com/repos/flutter/flutter/labels/engine",
            name: "engine three",
            color: "003570",
            defaultProperty: false,
            description: "flutter/engine repository. See also e: labels."),
      ],
      createdAt: "2023-09-04T18:57:46Z",
      updatedAt: "2023-09-04T19:09:24Z",
      closedAt: null,
      body:
          "\nhttps://github.com/flutter/engine/compare/fbc6f4a54047...90fec635e4fb\n\n2023-09-04 skia-flutter-autoroll@skia.org Roll Dart SDK from a5c7102af509 to 671cf059e4b6 (1 revision) (flutter/engine#45429)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from ynBQWN3XpE2JvSlfd... to A82pOZ3-NNgfJ2Da7... (flutter/engine#45428)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from 1fb536394148 to ab9bbb9b11b3 (1 revision) (flutter/engine#45426)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 5eaf624077b5 to c9d527e6b535 (1 revision) (flutter/engine#45425)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from ebf1e7163216 to 1fb536394148 (1 revision) (flutter/engine#45424)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 906dcd219276 to 5eaf624077b5 (1 revision) (flutter/engine#45423)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 4d0501380011 to 906dcd219276 (1 revision) (flutter/engine#45422)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 15f77147a3ec to 4d0501380011 (1 revision) (flutter/engine#45421)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from p56hmQk2lEbN-VwEg... to ynBQWN3XpE2JvSlfd... (flutter/engine#45420)\n\nAlso rolling transitive DEPS:\n  fuchsia/sdk/core/mac-amd64 from p56hmQk2lEbN to A82pOZ3-NNgf\n\nIf this roll has caused a breakage, revert this CL and stop the roller\nusing the controls here:\nhttps://autoroll.skia.org/r/flutter-engine-flutter-autoroll\nPlease CC aaclarke@google.com,rmistry@google.com,zra@google.com on the revert to ensure that a human\nis aware of the problem.\n\nTo file a bug in Flutter: https://github.com/flutter/flutter/issues/new/choose\n\nTo report a problem with the AutoRoller itself, please file a bug:\nhttps://bugs.chromium.org/p/skia/issues/entry?template=Autoroller+Bug\n\nDocumentation for the AutoRoller is here:\nhttps://skia.googlesource.com/buildbot/+doc/main/autoroll/README.md\n"),
  RepoIssue(
      url: "https://api.github.com/repos/flutter/flutter/issues/133997",
      repositoryUrl: "https://api.github.com/repos/flutter/flutter",
      htmlUrl: "https://github.com/flutter/flutter/pull/133997",
      id: 1880752789,
      number: 133997,
      title:
          "Roll Flutter Engine from fbc6f4a54047 to 90fec635e4fb (9 revisions)",
      user: User(
          login: "engine-flutter-autoroll",
          id: 42042535,
          avatarUrl: "https://avatars.githubusercontent.com/u/42042535?v=4",
          url: "https://api.github.com/users/engine-flutter-autoroll",
          htmlUrl: "https://github.com/engine-flutter-autoroll",
          type: "User",
          siteAdmin: false),
      labels: [
        Label(
            id: 284438921,
            url: "https://api.github.com/repos/flutter/flutter/labels/engine",
            name: "engine",
            color: "003570",
            defaultProperty: false,
            description: "flutter/engine repository. See also e: labels."),
      ],
      createdAt: "2023-09-04T18:57:46Z",
      updatedAt: "2023-09-04T19:09:24Z",
      closedAt: null,
      body:
          "\nhttps://github.com/flutter/engine/compare/fbc6f4a54047...90fec635e4fb\n\n2023-09-04 skia-flutter-autoroll@skia.org Roll Dart SDK from a5c7102af509 to 671cf059e4b6 (1 revision) (flutter/engine#45429)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from ynBQWN3XpE2JvSlfd... to A82pOZ3-NNgfJ2Da7... (flutter/engine#45428)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from 1fb536394148 to ab9bbb9b11b3 (1 revision) (flutter/engine#45426)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 5eaf624077b5 to c9d527e6b535 (1 revision) (flutter/engine#45425)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from ebf1e7163216 to 1fb536394148 (1 revision) (flutter/engine#45424)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 906dcd219276 to 5eaf624077b5 (1 revision) (flutter/engine#45423)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 4d0501380011 to 906dcd219276 (1 revision) (flutter/engine#45422)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 15f77147a3ec to 4d0501380011 (1 revision) (flutter/engine#45421)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from p56hmQk2lEbN-VwEg... to ynBQWN3XpE2JvSlfd... (flutter/engine#45420)\n\nAlso rolling transitive DEPS:\n  fuchsia/sdk/core/mac-amd64 from p56hmQk2lEbN to A82pOZ3-NNgf\n\nIf this roll has caused a breakage, revert this CL and stop the roller\nusing the controls here:\nhttps://autoroll.skia.org/r/flutter-engine-flutter-autoroll\nPlease CC aaclarke@google.com,rmistry@google.com,zra@google.com on the revert to ensure that a human\nis aware of the problem.\n\nTo file a bug in Flutter: https://github.com/flutter/flutter/issues/new/choose\n\nTo report a problem with the AutoRoller itself, please file a bug:\nhttps://bugs.chromium.org/p/skia/issues/entry?template=Autoroller+Bug\n\nDocumentation for the AutoRoller is here:\nhttps://skia.googlesource.com/buildbot/+doc/main/autoroll/README.md\n"),
  RepoIssue(
      url: "https://api.github.com/repos/flutter/flutter/issues/133997",
      repositoryUrl: "https://api.github.com/repos/flutter/flutter",
      htmlUrl: "https://github.com/flutter/flutter/pull/133997",
      id: 1880752789,
      number: 133997,
      title:
          "Roll Flutter Engine from fbc6f4a54047 to 90fec635e4fb (9 revisions)",
      user: User(
          login: "engine-flutter-autoroll",
          id: 42042535,
          avatarUrl: "https://avatars.githubusercontent.com/u/42042535?v=4",
          url: "https://api.github.com/users/engine-flutter-autoroll",
          htmlUrl: "https://github.com/engine-flutter-autoroll",
          type: "User",
          siteAdmin: false),
      labels: [
        Label(
            id: 284438921,
            url: "https://api.github.com/repos/flutter/flutter/labels/engine",
            name: "engine",
            color: "003570",
            defaultProperty: false,
            description: "flutter/engine repository. See also e: labels."),
      ],
      createdAt: "2023-09-04T18:57:46Z",
      updatedAt: "2023-09-04T19:09:24Z",
      closedAt: null,
      body:
          "\nhttps://github.com/flutter/engine/compare/fbc6f4a54047...90fec635e4fb\n\n2023-09-04 skia-flutter-autoroll@skia.org Roll Dart SDK from a5c7102af509 to 671cf059e4b6 (1 revision) (flutter/engine#45429)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from ynBQWN3XpE2JvSlfd... to A82pOZ3-NNgfJ2Da7... (flutter/engine#45428)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from 1fb536394148 to ab9bbb9b11b3 (1 revision) (flutter/engine#45426)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 5eaf624077b5 to c9d527e6b535 (1 revision) (flutter/engine#45425)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from ebf1e7163216 to 1fb536394148 (1 revision) (flutter/engine#45424)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 906dcd219276 to 5eaf624077b5 (1 revision) (flutter/engine#45423)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 4d0501380011 to 906dcd219276 (1 revision) (flutter/engine#45422)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 15f77147a3ec to 4d0501380011 (1 revision) (flutter/engine#45421)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from p56hmQk2lEbN-VwEg... to ynBQWN3XpE2JvSlfd... (flutter/engine#45420)\n\nAlso rolling transitive DEPS:\n  fuchsia/sdk/core/mac-amd64 from p56hmQk2lEbN to A82pOZ3-NNgf\n\nIf this roll has caused a breakage, revert this CL and stop the roller\nusing the controls here:\nhttps://autoroll.skia.org/r/flutter-engine-flutter-autoroll\nPlease CC aaclarke@google.com,rmistry@google.com,zra@google.com on the revert to ensure that a human\nis aware of the problem.\n\nTo file a bug in Flutter: https://github.com/flutter/flutter/issues/new/choose\n\nTo report a problem with the AutoRoller itself, please file a bug:\nhttps://bugs.chromium.org/p/skia/issues/entry?template=Autoroller+Bug\n\nDocumentation for the AutoRoller is here:\nhttps://skia.googlesource.com/buildbot/+doc/main/autoroll/README.md\n"),
  RepoIssue(
      url: "https://api.github.com/repos/flutter/flutter/issues/133997",
      repositoryUrl: "https://api.github.com/repos/flutter/flutter",
      htmlUrl: "https://github.com/flutter/flutter/pull/133997",
      id: 1880752789,
      number: 133997,
      title:
          "Roll Flutter Engine from fbc6f4a54047 to 90fec635e4fb (9 revisions)",
      user: User(
          login: "engine-flutter-autoroll",
          id: 42042535,
          avatarUrl: "https://avatars.githubusercontent.com/u/42042535?v=4",
          url: "https://api.github.com/users/engine-flutter-autoroll",
          htmlUrl: "https://github.com/engine-flutter-autoroll",
          type: "User",
          siteAdmin: false),
      labels: [
        Label(
            id: 284438921,
            url: "https://api.github.com/repos/flutter/flutter/labels/engine",
            name: "engine",
            color: "003570",
            defaultProperty: false,
            description: "flutter/engine repository. See also e: labels."),
      ],
      createdAt: "2023-09-04T18:57:46Z",
      updatedAt: "2023-09-04T19:09:24Z",
      closedAt: null,
      body:
          "\nhttps://github.com/flutter/engine/compare/fbc6f4a54047...90fec635e4fb\n\n2023-09-04 skia-flutter-autoroll@skia.org Roll Dart SDK from a5c7102af509 to 671cf059e4b6 (1 revision) (flutter/engine#45429)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from ynBQWN3XpE2JvSlfd... to A82pOZ3-NNgfJ2Da7... (flutter/engine#45428)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from 1fb536394148 to ab9bbb9b11b3 (1 revision) (flutter/engine#45426)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 5eaf624077b5 to c9d527e6b535 (1 revision) (flutter/engine#45425)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from ebf1e7163216 to 1fb536394148 (1 revision) (flutter/engine#45424)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 906dcd219276 to 5eaf624077b5 (1 revision) (flutter/engine#45423)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 4d0501380011 to 906dcd219276 (1 revision) (flutter/engine#45422)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 15f77147a3ec to 4d0501380011 (1 revision) (flutter/engine#45421)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from p56hmQk2lEbN-VwEg... to ynBQWN3XpE2JvSlfd... (flutter/engine#45420)\n\nAlso rolling transitive DEPS:\n  fuchsia/sdk/core/mac-amd64 from p56hmQk2lEbN to A82pOZ3-NNgf\n\nIf this roll has caused a breakage, revert this CL and stop the roller\nusing the controls here:\nhttps://autoroll.skia.org/r/flutter-engine-flutter-autoroll\nPlease CC aaclarke@google.com,rmistry@google.com,zra@google.com on the revert to ensure that a human\nis aware of the problem.\n\nTo file a bug in Flutter: https://github.com/flutter/flutter/issues/new/choose\n\nTo report a problem with the AutoRoller itself, please file a bug:\nhttps://bugs.chromium.org/p/skia/issues/entry?template=Autoroller+Bug\n\nDocumentation for the AutoRoller is here:\nhttps://skia.googlesource.com/buildbot/+doc/main/autoroll/README.md\n"),
  RepoIssue(
      url: "https://api.github.com/repos/flutter/flutter/issues/133997",
      repositoryUrl: "https://api.github.com/repos/flutter/flutter",
      htmlUrl: "https://github.com/flutter/flutter/pull/133997",
      id: 1880752789,
      number: 133997,
      title:
          "Roll Flutter Engine from fbc6f4a54047 to 90fec635e4fb (9 revisions)",
      user: User(
          login: "engine-flutter-autoroll",
          id: 42042535,
          avatarUrl: "https://avatars.githubusercontent.com/u/42042535?v=4",
          url: "https://api.github.com/users/engine-flutter-autoroll",
          htmlUrl: "https://github.com/engine-flutter-autoroll",
          type: "User",
          siteAdmin: false),
      labels: [
        Label(
            id: 284438921,
            url: "https://api.github.com/repos/flutter/flutter/labels/engine",
            name: "engine",
            color: "003570",
            defaultProperty: false,
            description: "flutter/engine repository. See also e: labels."),
      ],
      createdAt: "2023-09-04T18:57:46Z",
      updatedAt: "2023-09-04T19:09:24Z",
      closedAt: null,
      body:
          "\nhttps://github.com/flutter/engine/compare/fbc6f4a54047...90fec635e4fb\n\n2023-09-04 skia-flutter-autoroll@skia.org Roll Dart SDK from a5c7102af509 to 671cf059e4b6 (1 revision) (flutter/engine#45429)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from ynBQWN3XpE2JvSlfd... to A82pOZ3-NNgfJ2Da7... (flutter/engine#45428)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from 1fb536394148 to ab9bbb9b11b3 (1 revision) (flutter/engine#45426)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 5eaf624077b5 to c9d527e6b535 (1 revision) (flutter/engine#45425)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from ebf1e7163216 to 1fb536394148 (1 revision) (flutter/engine#45424)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 906dcd219276 to 5eaf624077b5 (1 revision) (flutter/engine#45423)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 4d0501380011 to 906dcd219276 (1 revision) (flutter/engine#45422)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 15f77147a3ec to 4d0501380011 (1 revision) (flutter/engine#45421)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from p56hmQk2lEbN-VwEg... to ynBQWN3XpE2JvSlfd... (flutter/engine#45420)\n\nAlso rolling transitive DEPS:\n  fuchsia/sdk/core/mac-amd64 from p56hmQk2lEbN to A82pOZ3-NNgf\n\nIf this roll has caused a breakage, revert this CL and stop the roller\nusing the controls here:\nhttps://autoroll.skia.org/r/flutter-engine-flutter-autoroll\nPlease CC aaclarke@google.com,rmistry@google.com,zra@google.com on the revert to ensure that a human\nis aware of the problem.\n\nTo file a bug in Flutter: https://github.com/flutter/flutter/issues/new/choose\n\nTo report a problem with the AutoRoller itself, please file a bug:\nhttps://bugs.chromium.org/p/skia/issues/entry?template=Autoroller+Bug\n\nDocumentation for the AutoRoller is here:\nhttps://skia.googlesource.com/buildbot/+doc/main/autoroll/README.md\n"),
  RepoIssue(
      url: "https://api.github.com/repos/flutter/flutter/issues/133997",
      repositoryUrl: "https://api.github.com/repos/flutter/flutter",
      htmlUrl: "https://github.com/flutter/flutter/pull/133997",
      id: 1880752789,
      number: 133997,
      title:
          "Roll Flutter Engine from fbc6f4a54047 to 90fec635e4fb (9 revisions)",
      user: User(
          login: "engine-flutter-autoroll",
          id: 42042535,
          avatarUrl: "https://avatars.githubusercontent.com/u/42042535?v=4",
          url: "https://api.github.com/users/engine-flutter-autoroll",
          htmlUrl: "https://github.com/engine-flutter-autoroll",
          type: "User",
          siteAdmin: false),
      labels: [
        Label(
            id: 284438921,
            url: "https://api.github.com/repos/flutter/flutter/labels/engine",
            name: "engine",
            color: "003570",
            defaultProperty: false,
            description: "flutter/engine repository. See also e: labels."),
      ],
      createdAt: "2023-09-04T18:57:46Z",
      updatedAt: "2023-09-04T19:09:24Z",
      closedAt: null,
      body:
          "\nhttps://github.com/flutter/engine/compare/fbc6f4a54047...90fec635e4fb\n\n2023-09-04 skia-flutter-autoroll@skia.org Roll Dart SDK from a5c7102af509 to 671cf059e4b6 (1 revision) (flutter/engine#45429)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from ynBQWN3XpE2JvSlfd... to A82pOZ3-NNgfJ2Da7... (flutter/engine#45428)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from 1fb536394148 to ab9bbb9b11b3 (1 revision) (flutter/engine#45426)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 5eaf624077b5 to c9d527e6b535 (1 revision) (flutter/engine#45425)\n2023-09-04 skia-flutter-autoroll@skia.org Roll ANGLE from ebf1e7163216 to 1fb536394148 (1 revision) (flutter/engine#45424)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 906dcd219276 to 5eaf624077b5 (1 revision) (flutter/engine#45423)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 4d0501380011 to 906dcd219276 (1 revision) (flutter/engine#45422)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Skia from 15f77147a3ec to 4d0501380011 (1 revision) (flutter/engine#45421)\n2023-09-04 skia-flutter-autoroll@skia.org Roll Fuchsia Mac SDK from p56hmQk2lEbN-VwEg... to ynBQWN3XpE2JvSlfd... (flutter/engine#45420)\n\nAlso rolling transitive DEPS:\n  fuchsia/sdk/core/mac-amd64 from p56hmQk2lEbN to A82pOZ3-NNgf\n\nIf this roll has caused a breakage, revert this CL and stop the roller\nusing the controls here:\nhttps://autoroll.skia.org/r/flutter-engine-flutter-autoroll\nPlease CC aaclarke@google.com,rmistry@google.com,zra@google.com on the revert to ensure that a human\nis aware of the problem.\n\nTo file a bug in Flutter: https://github.com/flutter/flutter/issues/new/choose\n\nTo report a problem with the AutoRoller itself, please file a bug:\nhttps://bugs.chromium.org/p/skia/issues/entry?template=Autoroller+Bug\n\nDocumentation for the AutoRoller is here:\nhttps://skia.googlesource.com/buildbot/+doc/main/autoroll/README.md\n"),
];

List<RepoIssue> repoIssuesFromJson(String str) =>
    List<RepoIssue>.from(json.decode(str).map((x) => RepoIssue.fromJson(x)));

String repoIssueToJson(List<RepoIssue> data) =>
    json.encode(List<RepoIssue>.from(data.map((x) => x.toJson())));

class RepoIssue {
  RepoIssue({
    String? url,
    String? repositoryUrl,
    String? htmlUrl,
    num? id,
    num? number,
    String? title,
    User? user,
    List<Label>? labels,
    String? createdAt,
    String? updatedAt,
    dynamic closedAt,
    String? body,
  }) {
    _url = url;
    _repositoryUrl = repositoryUrl;
    _htmlUrl = htmlUrl;
    _id = id;
    _number = number;
    _title = title;
    _user = user;
    _labels = labels;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _closedAt = closedAt;
    _body = body;
  }

  RepoIssue.fromJson(dynamic json) {
    _url = json['url'];
    _repositoryUrl = json['repository_url'];
    _htmlUrl = json['html_url'];
    _id = json['id'];
    _number = json['number'];
    _title = json['title'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    if (json['labels'] != null) {
      _labels = [];
      json['labels'].forEach((v) {
        _labels?.add(Label.fromJson(v));
      });
    }
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _closedAt = json['closed_at'];
    _body = json['body'];
  }

  String? _url;
  String? _repositoryUrl;
  String? _htmlUrl;
  num? _id;
  num? _number;
  String? _title;
  User? _user;
  List<Label>? _labels;
  String? _createdAt;
  String? _updatedAt;
  dynamic _closedAt;
  String? _body;

  RepoIssue copyWith({
    String? url,
    String? repositoryUrl,
    String? htmlUrl,
    num? id,
    num? number,
    String? title,
    User? user,
    List<Label>? labels,
    String? createdAt,
    String? updatedAt,
    dynamic closedAt,
    String? body,
  }) =>
      RepoIssue(
        url: url ?? _url,
        repositoryUrl: repositoryUrl ?? _repositoryUrl,
        htmlUrl: htmlUrl ?? _htmlUrl,
        id: id ?? _id,
        number: number ?? _number,
        title: title ?? _title,
        user: user ?? _user,
        labels: labels ?? _labels,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        closedAt: closedAt ?? _closedAt,
        body: body ?? _body,
      );

  String? get url => _url;

  String? get repositoryUrl => _repositoryUrl;

  String? get htmlUrl => _htmlUrl;

  num? get id => _id;

  num? get number => _number;

  String? get title => _title;

  User? get user => _user;

  List<Label>? get labels => _labels;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  dynamic get closedAt => _closedAt;

  String? get body => _body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['repository_url'] = _repositoryUrl;
    map['html_url'] = _htmlUrl;
    map['id'] = _id;
    map['number'] = _number;
    map['title'] = _title;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    if (_labels != null) {
      map['labels'] = _labels?.map((v) => v.toJson()).toList();
    }
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['closed_at'] = _closedAt;
    map['body'] = _body;
    return map;
  }
}

/// id : 284438921
/// url : "https://api.github.com/repos/flutter/flutter/labels/engine"
/// name : "engine"
/// color : "003570"
/// default : false
/// description : "flutter/engine repository. See also e: labels."

class Label {
  Label({
    num? id,
    String? url,
    String? name,
    String? color,
    bool? defaultProperty,
    String? description,
  }) {
    _id = id;
    _url = url;
    _name = name;
    _color = color;
    _defaultProperty = defaultProperty;
    _description = description;
  }

  Label.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _name = json['name'];
    _color = json['color'];
    _defaultProperty = json['default'];
    _description = json['description'];
  }

  num? _id;
  String? _url;
  String? _name;
  String? _color;
  bool? _defaultProperty;
  String? _description;

  Label copyWith({
    num? id,
    String? url,
    String? name,
    String? color,
    bool? defaultProperty,
    String? description,
  }) =>
      Label(
        id: id ?? _id,
        url: url ?? _url,
        name: name ?? _name,
        color: color ?? _color,
        defaultProperty: defaultProperty ?? _defaultProperty,
        description: description ?? _description,
      );

  num? get id => _id;

  String? get url => _url;

  String? get name => _name;

  String? get color => _color;

  bool? get defaultProperty => _defaultProperty;

  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['name'] = _name;
    map['color'] = _color;
    map['default'] = _defaultProperty;
    map['description'] = _description;
    return map;
  }

  @override
  bool operator ==(Object other) {
    return other is Label && other.hashCode == hashCode;
  }

  @override
  int get hashCode => Object.hash(id, name);
}

/// login : "engine-flutter-autoroll"
/// id : 42042535
/// avatar_url : "https://avatars.githubusercontent.com/u/42042535?v=4"
/// url : "https://api.github.com/users/engine-flutter-autoroll"
/// html_url : "https://github.com/engine-flutter-autoroll"
/// type : "User"
/// site_admin : false

class User {
  User({
    String? login,
    num? id,
    String? avatarUrl,
    String? url,
    String? htmlUrl,
    String? type,
    bool? siteAdmin,
  }) {
    _login = login;
    _id = id;
    _avatarUrl = avatarUrl;
    _url = url;
    _htmlUrl = htmlUrl;
    _type = type;
    _siteAdmin = siteAdmin;
  }

  User.fromJson(dynamic json) {
    _login = json['login'];
    _id = json['id'];
    _avatarUrl = json['avatar_url'];
    _url = json['url'];
    _htmlUrl = json['html_url'];
    _type = json['type'];
    _siteAdmin = json['site_admin'];
  }

  String? _login;
  num? _id;
  String? _avatarUrl;
  String? _url;
  String? _htmlUrl;
  String? _type;
  bool? _siteAdmin;

  User copyWith({
    String? login,
    num? id,
    String? avatarUrl,
    String? url,
    String? htmlUrl,
    String? type,
    bool? siteAdmin,
  }) =>
      User(
        login: login ?? _login,
        id: id ?? _id,
        avatarUrl: avatarUrl ?? _avatarUrl,
        url: url ?? _url,
        htmlUrl: htmlUrl ?? _htmlUrl,
        type: type ?? _type,
        siteAdmin: siteAdmin ?? _siteAdmin,
      );

  String? get login => _login;

  num? get id => _id;

  String? get avatarUrl => _avatarUrl;

  String? get url => _url;

  String? get htmlUrl => _htmlUrl;

  String? get type => _type;

  bool? get siteAdmin => _siteAdmin;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['login'] = _login;
    map['id'] = _id;
    map['avatar_url'] = _avatarUrl;
    map['url'] = _url;
    map['html_url'] = _htmlUrl;
    map['type'] = _type;
    map['site_admin'] = _siteAdmin;
    return map;
  }
}
