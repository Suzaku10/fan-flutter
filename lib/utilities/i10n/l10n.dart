// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I10n {
  I10n();

  static I10n? _current;

  static I10n get current {
    assert(_current != null,
        'No instance of I10n was loaded. Try to initialize the I10n delegate before accessing I10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I10n();
      I10n._current = instance;

      return instance;
    });
  }

  static I10n of(BuildContext context) {
    final instance = I10n.maybeOf(context);
    assert(instance != null,
        'No instance of I10n present in the widget tree. Did you add I10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I10n? maybeOf(BuildContext context) {
    return Localizations.of<I10n>(context, I10n);
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Silahkan login untuk melanjutkan`
  String get login_info {
    return Intl.message(
      'Silahkan login untuk melanjutkan',
      name: 'login_info',
      desc: '',
      args: [],
    );
  }

  /// `Hei,`
  String get greetings {
    return Intl.message(
      'Hei,',
      name: 'greetings',
      desc: '',
      args: [],
    );
  }

  /// `Selamat Datang`
  String get welcome {
    return Intl.message(
      'Selamat Datang',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Masukkan email anda`
  String get hint_email {
    return Intl.message(
      'Masukkan email anda',
      name: 'hint_email',
      desc: '',
      args: [],
    );
  }

  /// `Masukkan password anda`
  String get hint_password {
    return Intl.message(
      'Masukkan password anda',
      name: 'hint_password',
      desc: '',
      args: [],
    );
  }

  /// `Konfirmasi password anda`
  String get hint_confirmation_password {
    return Intl.message(
      'Konfirmasi password anda',
      name: 'hint_confirmation_password',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get hint_search {
    return Intl.message(
      'Search',
      name: 'hint_search',
      desc: '',
      args: [],
    );
  }

  /// `Masukkan nama anda`
  String get hint_name {
    return Intl.message(
      'Masukkan nama anda',
      name: 'hint_name',
      desc: '',
      args: [],
    );
  }

  /// `Lupa Password anda?`
  String get forgot_password_info {
    return Intl.message(
      'Lupa Password anda?',
      name: 'forgot_password_info',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Belum punya akun?`
  String get no_account {
    return Intl.message(
      'Belum punya akun?',
      name: 'no_account',
      desc: '',
      args: [],
    );
  }

  /// `Sudah punya akun?`
  String get have_account {
    return Intl.message(
      'Sudah punya akun?',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Daftar sekarang`
  String get register_now {
    return Intl.message(
      'Daftar sekarang',
      name: 'register_now',
      desc: '',
      args: [],
    );
  }

  /// `Login sekarang`
  String get login_now {
    return Intl.message(
      'Login sekarang',
      name: 'login_now',
      desc: '',
      args: [],
    );
  }

  /// `SZK. all right reserved.`
  String get copyright {
    return Intl.message(
      'SZK. all right reserved.',
      name: 'copyright',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Nama`
  String get name {
    return Intl.message(
      'Nama',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Konfirmasi Password`
  String get confirm_password {
    return Intl.message(
      'Konfirmasi Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Nama tidak boleh kosong`
  String get validator_name_empty {
    return Intl.message(
      'Nama tidak boleh kosong',
      name: 'validator_name_empty',
      desc: '',
      args: [],
    );
  }

  /// `Nama minimal 3 Huruf dan Maksimal 50`
  String get validator_name_limit {
    return Intl.message(
      'Nama minimal 3 Huruf dan Maksimal 50',
      name: 'validator_name_limit',
      desc: '',
      args: [],
    );
  }

  /// `Email tidak boleh kosong`
  String get validator_email_empty {
    return Intl.message(
      'Email tidak boleh kosong',
      name: 'validator_email_empty',
      desc: '',
      args: [],
    );
  }

  /// `Email tidak valid`
  String get validator_email_invalid {
    return Intl.message(
      'Email tidak valid',
      name: 'validator_email_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Password tidak boleh kosong`
  String get validator_password_empty {
    return Intl.message(
      'Password tidak boleh kosong',
      name: 'validator_password_empty',
      desc: '',
      args: [],
    );
  }

  /// `Password harus lebih dari 8 huruf`
  String get validator_password_limit {
    return Intl.message(
      'Password harus lebih dari 8 huruf',
      name: 'validator_password_limit',
      desc: '',
      args: [],
    );
  }

  /// `Password harus mengandung angka, huruf kecil, dan huruf besar`
  String get validator_password_invalid {
    return Intl.message(
      'Password harus mengandung angka, huruf kecil, dan huruf besar',
      name: 'validator_password_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Konfirmasi Password tidak boleh kosong`
  String get validator_confirm_password_empty {
    return Intl.message(
      'Konfirmasi Password tidak boleh kosong',
      name: 'validator_confirm_password_empty',
      desc: '',
      args: [],
    );
  }

  /// `Konfirmasi Password tidak sesuai`
  String get validator_confirm_password_not_match {
    return Intl.message(
      'Konfirmasi Password tidak sesuai',
      name: 'validator_confirm_password_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Kirim`
  String get send {
    return Intl.message(
      'Kirim',
      name: 'send',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I10n> load(Locale locale) => I10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
