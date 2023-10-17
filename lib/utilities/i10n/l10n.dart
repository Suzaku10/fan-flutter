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

  /// `Masukkan No. KTP anda`
  String get hint_id_number {
    return Intl.message(
      'Masukkan No. KTP anda',
      name: 'hint_id_number',
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

  /// `Lupa Password anda ?`
  String get forgot_password_info {
    return Intl.message(
      'Lupa Password anda ?',
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

  /// `Belum punya akun ?`
  String get no_account {
    return Intl.message(
      'Belum punya akun ?',
      name: 'no_account',
      desc: '',
      args: [],
    );
  }

  /// `Sudah punya akun ?`
  String get have_account {
    return Intl.message(
      'Sudah punya akun ?',
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

  /// `Nama Depan`
  String get first_name {
    return Intl.message(
      'Nama Depan',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Nama Belakang`
  String get last_name {
    return Intl.message(
      'Nama Belakang',
      name: 'last_name',
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

  /// `No. Telpon`
  String get phone_number {
    return Intl.message(
      'No. Telpon',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `No. KTP`
  String get id_number {
    return Intl.message(
      'No. KTP',
      name: 'id_number',
      desc: '',
      args: [],
    );
  }

  /// `Solusi, `
  String get banner_home_title {
    return Intl.message(
      'Solusi, ',
      name: 'banner_home_title',
      desc: '',
      args: [],
    );
  }

  /// `Kesehatan Anda`
  String get banner_home_title_2 {
    return Intl.message(
      'Kesehatan Anda',
      name: 'banner_home_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Update informasi seputar kesehatan \nsemua bisa disini !`
  String get banner_home_subtitle {
    return Intl.message(
      'Update informasi seputar kesehatan \nsemua bisa disini !',
      name: 'banner_home_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Selengkapnya`
  String get more {
    return Intl.message(
      'Selengkapnya',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Layanan Khusus`
  String get left_banner_title {
    return Intl.message(
      'Layanan Khusus',
      name: 'left_banner_title',
      desc: '',
      args: [],
    );
  }

  /// `Tes Covid 19, Cegah Corona\nSedini Mungkin`
  String get left_banner_subtitle {
    return Intl.message(
      'Tes Covid 19, Cegah Corona\nSedini Mungkin',
      name: 'left_banner_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Daftar Tes`
  String get register_test {
    return Intl.message(
      'Daftar Tes',
      name: 'register_test',
      desc: '',
      args: [],
    );
  }

  /// `Track Pemeriksaan`
  String get right_banner_title {
    return Intl.message(
      'Track Pemeriksaan',
      name: 'right_banner_title',
      desc: '',
      args: [],
    );
  }

  /// `Kamu dapat mengecek progress pemeriksaanmu disini`
  String get right_banner_subtitle {
    return Intl.message(
      'Kamu dapat mengecek progress pemeriksaanmu disini',
      name: 'right_banner_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Track`
  String get track {
    return Intl.message(
      'Track',
      name: 'track',
      desc: '',
      args: [],
    );
  }

  /// `All Product`
  String get all_product {
    return Intl.message(
      'All Product',
      name: 'all_product',
      desc: '',
      args: [],
    );
  }

  /// `Layanan Kesehatan`
  String get health_service {
    return Intl.message(
      'Layanan Kesehatan',
      name: 'health_service',
      desc: '',
      args: [],
    );
  }

  /// `Alat Kesehatan`
  String get health_equipment {
    return Intl.message(
      'Alat Kesehatan',
      name: 'health_equipment',
      desc: '',
      args: [],
    );
  }

  /// `Pilih Tipe Layanan Kesehatan Anda`
  String get choose_service_info {
    return Intl.message(
      'Pilih Tipe Layanan Kesehatan Anda',
      name: 'choose_service_info',
      desc: '',
      args: [],
    );
  }

  /// `Ready Stock`
  String get ready_stock {
    return Intl.message(
      'Ready Stock',
      name: 'ready_stock',
      desc: '',
      args: [],
    );
  }

  /// `Suntik Steril`
  String get dummy_product {
    return Intl.message(
      'Suntik Steril',
      name: 'dummy_product',
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
