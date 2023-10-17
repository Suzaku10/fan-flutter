// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "confirm_password":
            MessageLookupByLibrary.simpleMessage("Konfirmasi Password"),
        "copyright":
            MessageLookupByLibrary.simpleMessage("SZK. all right reserved."),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "forgot_password_info":
            MessageLookupByLibrary.simpleMessage("Lupa Password anda?"),
        "greetings": MessageLookupByLibrary.simpleMessage("Hei,"),
        "have_account":
            MessageLookupByLibrary.simpleMessage("Sudah punya akun?"),
        "hint_confirmation_password":
            MessageLookupByLibrary.simpleMessage("Konfirmasi password anda"),
        "hint_email":
            MessageLookupByLibrary.simpleMessage("Masukkan email anda"),
        "hint_name": MessageLookupByLibrary.simpleMessage("Masukkan nama anda"),
        "hint_password":
            MessageLookupByLibrary.simpleMessage("Masukkan password anda"),
        "hint_search": MessageLookupByLibrary.simpleMessage("Search"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "login_info": MessageLookupByLibrary.simpleMessage(
            "Silahkan login untuk melanjutkan"),
        "login_now": MessageLookupByLibrary.simpleMessage("Login sekarang"),
        "name": MessageLookupByLibrary.simpleMessage("Nama"),
        "no_account": MessageLookupByLibrary.simpleMessage("Belum punya akun?"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "register_now": MessageLookupByLibrary.simpleMessage("Daftar sekarang"),
        "validator_confirm_password_empty":
            MessageLookupByLibrary.simpleMessage(
                "Konfirmasi Password tidak boleh kosong"),
        "validator_confirm_password_not_match":
            MessageLookupByLibrary.simpleMessage(
                "Konfirmasi Password tidak sesuai"),
        "validator_email_empty":
            MessageLookupByLibrary.simpleMessage("Email tidak boleh kosong"),
        "validator_email_invalid":
            MessageLookupByLibrary.simpleMessage("Email tidak valid"),
        "validator_name_empty":
            MessageLookupByLibrary.simpleMessage("Nama tidak boleh kosong"),
        "validator_name_limit": MessageLookupByLibrary.simpleMessage(
            "Nama minimal 3 Huruf dan Maksimal 50"),
        "validator_password_empty":
            MessageLookupByLibrary.simpleMessage("Password tidak boleh kosong"),
        "validator_password_invalid": MessageLookupByLibrary.simpleMessage(
            "Password harus mengandung angka, huruf kecil, dan huruf besar"),
        "validator_password_limit": MessageLookupByLibrary.simpleMessage(
            "Password harus lebih dari 8 huruf"),
        "welcome": MessageLookupByLibrary.simpleMessage("Selamat Datang")
      };
}
