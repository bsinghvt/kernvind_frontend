// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import 'stub.dart';

/// Renders a SIGN IN button that calls `handleSignIn` onclick.
Widget buildGoogleSignInButton({HandleSignInFn? onPressed}) {
  return SignInButton(
    buttonType: ButtonType.google,
    onPressed: onPressed,
    //btnColor: const Color(0xffF2F2F2),
    //btnTextColor: const Color(0xff1F1F1F),
    btnColor: const Color(0xff131314),
    btnTextColor: const Color(0xffE3E3E3),
    //width: 300,
  );
}
