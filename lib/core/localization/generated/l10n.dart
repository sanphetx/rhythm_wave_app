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

class L10n {
  L10n();

  static L10n? _current;

  static L10n get current {
    assert(_current != null,
        'No instance of L10n was loaded. Try to initialize the L10n delegate before accessing L10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L10n();
      L10n._current = instance;

      return instance;
    });
  }

  static L10n of(BuildContext context) {
    final instance = L10n.maybeOf(context);
    assert(instance != null,
        'No instance of L10n present in the widget tree. Did you add L10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static L10n? maybeOf(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  /// `ยืนยัน`
  String get globalButtonSubmit {
    return Intl.message(
      'ยืนยัน',
      name: 'globalButtonSubmit',
      desc: '',
      args: [],
    );
  }

  /// `ยกเลิก`
  String get globalButtonCancel {
    return Intl.message(
      'ยกเลิก',
      name: 'globalButtonCancel',
      desc: '',
      args: [],
    );
  }

  /// `DD/MM/YYYY`
  String get commonTextDateFormat {
    return Intl.message(
      'DD/MM/YYYY',
      name: 'commonTextDateFormat',
      desc: '',
      args: [],
    );
  }

  /// `{date}`
  String commonCustomDateFormat(DateTime date) {
    final DateFormat dateDateFormat =
        DateFormat('dd/MM/yyyy', Intl.getCurrentLocale());
    final String dateString = dateDateFormat.format(date);

    return Intl.message(
      '$dateString',
      name: 'commonCustomDateFormat',
      desc: '',
      args: [dateString],
    );
  }

  /// `ข้อมูลที่ร้องขอไม่ถูกต้อง`
  String get global_error_badRequest {
    return Intl.message(
      'ข้อมูลที่ร้องขอไม่ถูกต้อง',
      name: 'global_error_badRequest',
      desc: '',
      args: [],
    );
  }

  /// `ทรัพยากรที่ร้องขอไม่มีอยู่บนเซิร์ฟเวอร์`
  String get global_error_404 {
    return Intl.message(
      'ทรัพยากรที่ร้องขอไม่มีอยู่บนเซิร์ฟเวอร์',
      name: 'global_error_404',
      desc: '',
      args: [],
    );
  }

  /// `การเข้าถึงถูกปฏิเสธ`
  String get global_error_unauthorized {
    return Intl.message(
      'การเข้าถึงถูกปฏิเสธ',
      name: 'global_error_unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `ข้อผิดพลาดจากเซิฟเวอร์`
  String get global_error_server {
    return Intl.message(
      'ข้อผิดพลาดจากเซิฟเวอร์',
      name: 'global_error_server',
      desc: '',
      args: [],
    );
  }

  /// `ข้อผิดพลาดเน้นย้ายข้อมูล`
  String get global_error_network {
    return Intl.message(
      'ข้อผิดพลาดเน้นย้ายข้อมูล',
      name: 'global_error_network',
      desc: '',
      args: [],
    );
  }

  /// `เวลาหมด`
  String get global_error_timeout {
    return Intl.message(
      'เวลาหมด',
      name: 'global_error_timeout',
      desc: '',
      args: [],
    );
  }

  /// `ยกเลิก`
  String get global_error_cancelled {
    return Intl.message(
      'ยกเลิก',
      name: 'global_error_cancelled',
      desc: '',
      args: [],
    );
  }

  /// `ไม่ทราบข้อผิดพลาด`
  String get global_error_unknown {
    return Intl.message(
      'ไม่ทราบข้อผิดพลาด',
      name: 'global_error_unknown',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP code`
  String get pageOtpVerification_textEnterOtp {
    return Intl.message(
      'Enter the OTP code',
      name: 'pageOtpVerification_textEnterOtp',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP ({seconds})`
  String pageOtpVerification_buttonSendOtpAgain_label(Object seconds) {
    return Intl.message(
      'Resend OTP ($seconds)',
      name: 'pageOtpVerification_buttonSendOtpAgain_label',
      desc: '',
      args: [seconds],
    );
  }

  /// `Address`
  String get pageRegistration_textAddress {
    return Intl.message(
      'Address',
      name: 'pageRegistration_textAddress',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get pageRegistration_textRegistration {
    return Intl.message(
      'Registration',
      name: 'pageRegistration_textRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get pageRegistration_buttonSubmit_label {
    return Intl.message(
      'Register',
      name: 'pageRegistration_buttonSubmit_label',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get common_TextInputName {
    return Intl.message(
      'Name',
      name: 'common_TextInputName',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get common_TextInputName_hintText {
    return Intl.message(
      'Name',
      name: 'common_TextInputName_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get common_TextInputSurname {
    return Intl.message(
      'Surname',
      name: 'common_TextInputSurname',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get common_TextInputSurname_hintText {
    return Intl.message(
      'Surname',
      name: 'common_TextInputSurname_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get common_TextInputPhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'common_TextInputPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get common_TextInputPhoneNumber_hintText {
    return Intl.message(
      'Phone Number',
      name: 'common_TextInputPhoneNumber_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Company Name`
  String get common_TextInputCompanyName {
    return Intl.message(
      'Company Name',
      name: 'common_TextInputCompanyName',
      desc: '',
      args: [],
    );
  }

  /// `Company Name`
  String get common_TextInputCompanyName_hintText {
    return Intl.message(
      'Company Name',
      name: 'common_TextInputCompanyName_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Building`
  String get common_TextInputBuilding {
    return Intl.message(
      'Building',
      name: 'common_TextInputBuilding',
      desc: '',
      args: [],
    );
  }

  /// `Building`
  String get common_TextInputBuilding_hintText {
    return Intl.message(
      'Building',
      name: 'common_TextInputBuilding_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get common_TextInputAddressNumber {
    return Intl.message(
      'Number',
      name: 'common_TextInputAddressNumber',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get common_TextInputAddressNumber_hintText {
    return Intl.message(
      'Number',
      name: 'common_TextInputAddressNumber_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Order History`
  String get pageOrderHistory_textOrderHistory {
    return Intl.message(
      'Order History',
      name: 'pageOrderHistory_textOrderHistory',
      desc: '',
      args: [],
    );
  }

  /// `Ongoing`
  String get pageOrderHistory_textOngoing {
    return Intl.message(
      'Ongoing',
      name: 'pageOrderHistory_textOngoing',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get pageOrderHistory_textCompleted {
    return Intl.message(
      'Completed',
      name: 'pageOrderHistory_textCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Canceled/Failed`
  String get pageOrderHistory_textCanceledFailed {
    return Intl.message(
      'Canceled/Failed',
      name: 'pageOrderHistory_textCanceledFailed',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get pageOrderHistory_textTotal {
    return Intl.message(
      'Total',
      name: 'pageOrderHistory_textTotal',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get pageOrderHistory_textError {
    return Intl.message(
      'Error',
      name: 'pageOrderHistory_textError',
      desc: '',
      args: [],
    );
  }

  /// `Oops! Login failed`
  String get pageLoginSelection_alertLoadFailure_title {
    return Intl.message(
      'Oops! Login failed',
      name: 'pageLoginSelection_alertLoadFailure_title',
      desc: '',
      args: [],
    );
  }

  /// `Login with phone number`
  String get pageLoginSelection_buttonLoginWithPhoneNumber_label {
    return Intl.message(
      'Login with phone number',
      name: 'pageLoginSelection_buttonLoginWithPhoneNumber_label',
      desc: '',
      args: [],
    );
  }

  /// `Login in with Apple ID`
  String get pageLoginSelection_buttonLoginWithAppleId_label {
    return Intl.message(
      'Login in with Apple ID',
      name: 'pageLoginSelection_buttonLoginWithAppleId_label',
      desc: '',
      args: [],
    );
  }

  /// `Login in with Google ID`
  String get pageLoginSelection_buttonLoginWithGoogleId_label {
    return Intl.message(
      'Login in with Google ID',
      name: 'pageLoginSelection_buttonLoginWithGoogleId_label',
      desc: '',
      args: [],
    );
  }

  /// `ไทย`
  String get pageLoginSelection_buttonThaiLanguage_label {
    return Intl.message(
      'ไทย',
      name: 'pageLoginSelection_buttonThaiLanguage_label',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get pageLoginSelection_buttonEnglishLanguage_label {
    return Intl.message(
      'English',
      name: 'pageLoginSelection_buttonEnglishLanguage_label',
      desc: '',
      args: [],
    );
  }

  /// `เลือกที่อยู่`
  String get page_orderLocation_title {
    return Intl.message(
      'เลือกที่อยู่',
      name: 'page_orderLocation_title',
      desc: '',
      args: [],
    );
  }

  /// `ค้นหาที่อยู่`
  String get page_orderLocation_search {
    return Intl.message(
      'ค้นหาที่อยู่',
      name: 'page_orderLocation_search',
      desc: '',
      args: [],
    );
  }

  /// `เพิ่มที่อยู่`
  String get page_orderLocation_addAddress {
    return Intl.message(
      'เพิ่มที่อยู่',
      name: 'page_orderLocation_addAddress',
      desc: '',
      args: [],
    );
  }

  /// `รายการที่ดูเมื่อล่าสุด`
  String get page_orderLocation_recent {
    return Intl.message(
      'รายการที่ดูเมื่อล่าสุด',
      name: 'page_orderLocation_recent',
      desc: '',
      args: [],
    );
  }

  /// `บันทึก`
  String get page_orderLocation_saved {
    return Intl.message(
      'บันทึก',
      name: 'page_orderLocation_saved',
      desc: '',
      args: [],
    );
  }

  /// `ที่อยู่ปัจจุบัน`
  String get page_orderLocation_current_location {
    return Intl.message(
      'ที่อยู่ปัจจุบัน',
      name: 'page_orderLocation_current_location',
      desc: '',
      args: [],
    );
  }

  /// `รายละเอียดที่อยู่`
  String get page_orderLocation_bottomSheet_title {
    return Intl.message(
      'รายละเอียดที่อยู่',
      name: 'page_orderLocation_bottomSheet_title',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อบริษัท`
  String get page_orderLocation_bottomSheet_company_name {
    return Intl.message(
      'ชื่อบริษัท',
      name: 'page_orderLocation_bottomSheet_company_name',
      desc: '',
      args: [],
    );
  }

  /// `อาคาร`
  String get page_orderLocation_bottomSheet_building {
    return Intl.message(
      'อาคาร',
      name: 'page_orderLocation_bottomSheet_building',
      desc: '',
      args: [],
    );
  }

  /// `เลือกอาคาร`
  String get page_orderLocation_bottomSheet_choose_building {
    return Intl.message(
      'เลือกอาคาร',
      name: 'page_orderLocation_bottomSheet_choose_building',
      desc: '',
      args: [],
    );
  }

  /// `ชั้น`
  String get page_orderLocation_bottomSheet_floor {
    return Intl.message(
      'ชั้น',
      name: 'page_orderLocation_bottomSheet_floor',
      desc: '',
      args: [],
    );
  }

  /// `เลือกชั้น`
  String get page_orderLocation_bottomSheet_choose_floor {
    return Intl.message(
      'เลือกชั้น',
      name: 'page_orderLocation_bottomSheet_choose_floor',
      desc: '',
      args: [],
    );
  }

  /// `เบอร์โทรศัพท์`
  String get page_orderLocation_bottomSheet_number {
    return Intl.message(
      'เบอร์โทรศัพท์',
      name: 'page_orderLocation_bottomSheet_number',
      desc: '',
      args: [],
    );
  }

  /// `หมายเหตุ`
  String get page_orderLocation_bottomSheet_note {
    return Intl.message(
      'หมายเหตุ',
      name: 'page_orderLocation_bottomSheet_note',
      desc: '',
      args: [],
    );
  }

  /// `รายละเอียดเพิ่มเติม`
  String get page_orderLocation_bottomSheet_additional {
    return Intl.message(
      'รายละเอียดเพิ่มเติม',
      name: 'page_orderLocation_bottomSheet_additional',
      desc: '',
      args: [],
    );
  }

  /// `เลือก`
  String get page_orderLocation_bottomSheet_select {
    return Intl.message(
      'เลือก',
      name: 'page_orderLocation_bottomSheet_select',
      desc: '',
      args: [],
    );
  }

  /// `ตั้งเป็นที่อยู่ปัจจุบัน`
  String get page_orderLocation_bottomSheet_set_default {
    return Intl.message(
      'ตั้งเป็นที่อยู่ปัจจุบัน',
      name: 'page_orderLocation_bottomSheet_set_default',
      desc: '',
      args: [],
    );
  }

  /// `ข้อผิดพลาด`
  String get page_orderLocation_bottomSheet_error_title {
    return Intl.message(
      'ข้อผิดพลาด',
      name: 'page_orderLocation_bottomSheet_error_title',
      desc: '',
      args: [],
    );
  }

  /// `โปรดลองใหม่อีกครั้ง`
  String get page_orderLocation_bottomSheet_error_content {
    return Intl.message(
      'โปรดลองใหม่อีกครั้ง',
      name: 'page_orderLocation_bottomSheet_error_content',
      desc: '',
      args: [],
    );
  }

  /// `ที่อยู่ปัจจุบัน`
  String get page_orderLocation_bottomSheet_default {
    return Intl.message(
      'ที่อยู่ปัจจุบัน',
      name: 'page_orderLocation_bottomSheet_default',
      desc: '',
      args: [],
    );
  }

  /// `ไม่พบที่อยู่`
  String get page_orderLocation_bottomSheet_no_address {
    return Intl.message(
      'ไม่พบที่อยู่',
      name: 'page_orderLocation_bottomSheet_no_address',
      desc: '',
      args: [],
    );
  }

  /// `ไม่พบที่อยู่สำหรับ "{searchQuery}"`
  String page_orderLocation_bottomSheet_no_address_search(Object searchQuery) {
    return Intl.message(
      'ไม่พบที่อยู่สำหรับ "$searchQuery"',
      name: 'page_orderLocation_bottomSheet_no_address_search',
      desc: '',
      args: [searchQuery],
    );
  }

  /// `เบอร์โทรศัพท์ต้องมี`
  String get page_orderLocation_bottomSheet_error_phone_number_required {
    return Intl.message(
      'เบอร์โทรศัพท์ต้องมี',
      name: 'page_orderLocation_bottomSheet_error_phone_number_required',
      desc: '',
      args: [],
    );
  }

  /// `เบอร์โทรศัพท์ต้องมี 10 หลัก`
  String
      get page_orderLocation_bottomSheet_error_phone_number_must_be_10_digits {
    return Intl.message(
      'เบอร์โทรศัพท์ต้องมี 10 หลัก',
      name:
          'page_orderLocation_bottomSheet_error_phone_number_must_be_10_digits',
      desc: '',
      args: [],
    );
  }

  /// `000001\nโปรดลองใหม่อีกครั้ง`
  String get page_orderLocation_error_content_try_again {
    return Intl.message(
      '000001\nโปรดลองใหม่อีกครั้ง',
      name: 'page_orderLocation_error_content_try_again',
      desc: '',
      args: [],
    );
  }

  /// `000002\nทรัพยากรที่ร้องขอไม่มีอยู่บนเซิร์ฟเวอร์`
  String get page_orderLocation_error_404 {
    return Intl.message(
      '000002\nทรัพยากรที่ร้องขอไม่มีอยู่บนเซิร์ฟเวอร์',
      name: 'page_orderLocation_error_404',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get pageLoginInput_buttonSubmit_label {
    return Intl.message(
      'Login',
      name: 'pageLoginInput_buttonSubmit_label',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get pageLoginInput_textInputUsername_label {
    return Intl.message(
      'Username',
      name: 'pageLoginInput_textInputUsername_label',
      desc: '',
      args: [],
    );
  }

  /// `Invalid username`
  String get pageLoginInput_textInputUsername_errorText {
    return Intl.message(
      'Invalid username',
      name: 'pageLoginInput_textInputUsername_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get pageLoginInput_textInputUsername_hintText {
    return Intl.message(
      'Username',
      name: 'pageLoginInput_textInputUsername_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get pageLoginInput_textInputPassword_label {
    return Intl.message(
      'Password',
      name: 'pageLoginInput_textInputPassword_label',
      desc: '',
      args: [],
    );
  }

  /// `Invalid password`
  String get pageLoginInput_textInputPassword_errorText {
    return Intl.message(
      'Invalid password',
      name: 'pageLoginInput_textInputPassword_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get pageLoginInput_textInputPassword_hintText {
    return Intl.message(
      'Password',
      name: 'pageLoginInput_textInputPassword_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get pageLoginInput_textInputPhoneNumber_label {
    return Intl.message(
      'Phone Number',
      name: 'pageLoginInput_textInputPhoneNumber_label',
      desc: '',
      args: [],
    );
  }

  /// `Oops! Login failed`
  String get pageLoginInput_alertLoginFailed_title {
    return Intl.message(
      'Oops! Login failed',
      name: 'pageLoginInput_alertLoginFailed_title',
      desc: '',
      args: [],
    );
  }

  /// `Please check your credentials and try again.`
  String get pageLoginInput_alertLoginFailed_content {
    return Intl.message(
      'Please check your credentials and try again.',
      name: 'pageLoginInput_alertLoginFailed_content',
      desc: '',
      args: [],
    );
  }

  /// `Explore Happiness!`
  String get pagePreferencesSelection_buttonSubmit_label {
    return Intl.message(
      'Explore Happiness!',
      name: 'pagePreferencesSelection_buttonSubmit_label',
      desc: '',
      args: [],
    );
  }

  /// `Skip for Now`
  String get pagePreferencesSelection_buttonSkip_label {
    return Intl.message(
      'Skip for Now',
      name: 'pagePreferencesSelection_buttonSkip_label',
      desc: '',
      args: [],
    );
  }

  /// `Let's Discover Your `
  String get pagePreferencesSelection_textTitleSection1 {
    return Intl.message(
      'Let\'s Discover Your ',
      name: 'pagePreferencesSelection_textTitleSection1',
      desc: '',
      args: [],
    );
  }

  /// `Sook`
  String get pagePreferencesSelection_textTitleSection2 {
    return Intl.message(
      'Sook',
      name: 'pagePreferencesSelection_textTitleSection2',
      desc: '',
      args: [],
    );
  }

  /// `อุ๊ย! มีข้อผิดพลาดบางอย่างเกิดขึ้น`
  String get pagePreferencesSelection_alertLoadFailure_title {
    return Intl.message(
      'อุ๊ย! มีข้อผิดพลาดบางอย่างเกิดขึ้น',
      name: 'pagePreferencesSelection_alertLoadFailure_title',
      desc: '',
      args: [],
    );
  }

  /// `โปรดลองใหม่อีกครั้ง`
  String get pagePreferencesSelection_alertLoadFailure_content {
    return Intl.message(
      'โปรดลองใหม่อีกครั้ง',
      name: 'pagePreferencesSelection_alertLoadFailure_content',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get pagePreferencesSelection_alertLoadFailure_submitText {
    return Intl.message(
      'Refresh',
      name: 'pagePreferencesSelection_alertLoadFailure_submitText',
      desc: '',
      args: [],
    );
  }

  /// `การติดตั้งและเข้าใช้งาน BevFood Application นี้`
  String get pageLoginSelection_textTermsAcknowledgementSection1 {
    return Intl.message(
      'การติดตั้งและเข้าใช้งาน BevFood Application นี้',
      name: 'pageLoginSelection_textTermsAcknowledgementSection1',
      desc: '',
      args: [],
    );
  }

  /// `ถือว่าคุณตกลงยอมรับ `
  String get pageLoginSelection_textTermsAcknowledgementSection2 {
    return Intl.message(
      'ถือว่าคุณตกลงยอมรับ ',
      name: 'pageLoginSelection_textTermsAcknowledgementSection2',
      desc: '',
      args: [],
    );
  }

  /// `ข้อกำหนดในการให้บริษัท`
  String get pageLoginSelection_textTermsAcknowledgementSection3 {
    return Intl.message(
      'ข้อกำหนดในการให้บริษัท',
      name: 'pageLoginSelection_textTermsAcknowledgementSection3',
      desc: '',
      args: [],
    );
  }

  /// ` แล้ว`
  String get pageLoginSelection_textTermsAcknowledgementSection4 {
    return Intl.message(
      ' แล้ว',
      name: 'pageLoginSelection_textTermsAcknowledgementSection4',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get pageOrderDetailsSelection_textOrderHeader {
    return Intl.message(
      'Order Details',
      name: 'pageOrderDetailsSelection_textOrderHeader',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get pageOrderDetailsSelection_textOrderAddress {
    return Intl.message(
      'Address',
      name: 'pageOrderDetailsSelection_textOrderAddress',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Detail`
  String get pageOrderDetailsSelection_textOrderDeliveryDetail {
    return Intl.message(
      'Delivery Detail',
      name: 'pageOrderDetailsSelection_textOrderDeliveryDetail',
      desc: '',
      args: [],
    );
  }

  /// `Distance from you`
  String get pageOrderDetailsSelection_textOrderDistance {
    return Intl.message(
      'Distance from you',
      name: 'pageOrderDetailsSelection_textOrderDistance',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary`
  String get pageOrderDetailsSelection_textOrderSummary {
    return Intl.message(
      'Order Summary',
      name: 'pageOrderDetailsSelection_textOrderSummary',
      desc: '',
      args: [],
    );
  }

  /// `Item`
  String get pageOrderDetailsSelection_textOrderTotalItem {
    return Intl.message(
      'Item',
      name: 'pageOrderDetailsSelection_textOrderTotalItem',
      desc: '',
      args: [],
    );
  }

  /// `Payment Details`
  String get pageOrderDetailsSelection_textOrderPaymentDetails {
    return Intl.message(
      'Payment Details',
      name: 'pageOrderDetailsSelection_textOrderPaymentDetails',
      desc: '',
      args: [],
    );
  }

  /// `Visa`
  String get pageOrderDetailsSelection_textOrderPaymentType {
    return Intl.message(
      'Visa',
      name: 'pageOrderDetailsSelection_textOrderPaymentType',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Free`
  String get pageOrderDetailsSelection_textOrderDeliveryfree {
    return Intl.message(
      'Delivery Free',
      name: 'pageOrderDetailsSelection_textOrderDeliveryfree',
      desc: '',
      args: [],
    );
  }

  /// `Product Free`
  String get pageOrderDetailsSelection_textOrderProductfree {
    return Intl.message(
      'Product Free',
      name: 'pageOrderDetailsSelection_textOrderProductfree',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get pageOrderDetailsSelection_textOrderTotal {
    return Intl.message(
      'Total',
      name: 'pageOrderDetailsSelection_textOrderTotal',
      desc: '',
      args: [],
    );
  }

  /// `offers use`
  String get pageOrderDetailsSelection_textdiscount_title {
    return Intl.message(
      'offers use',
      name: 'pageOrderDetailsSelection_textdiscount_title',
      desc: '',
      args: [],
    );
  }

  /// `Reorder`
  String get pageOrderDetailsSelection_buttonReorder {
    return Intl.message(
      'Reorder',
      name: 'pageOrderDetailsSelection_buttonReorder',
      desc: '',
      args: [],
    );
  }

  /// `Error status`
  String get pageOrderDetailsSelection_errorStatusText {
    return Intl.message(
      'Error status',
      name: 'pageOrderDetailsSelection_errorStatusText',
      desc: '',
      args: [],
    );
  }

  /// `Enter your code`
  String get pageuserOfferPage_hintText_Search {
    return Intl.message(
      'Enter your code',
      name: 'pageuserOfferPage_hintText_Search',
      desc: '',
      args: [],
    );
  }

  /// ` at `
  String get pageuserOfferpage_coupons_text_card {
    return Intl.message(
      ' at ',
      name: 'pageuserOfferpage_coupons_text_card',
      desc: '',
      args: [],
    );
  }

  /// `จำกัดจำนวน`
  String get pageuserOfferpage_coupons_text_failed_No_minimum {
    return Intl.message(
      'จำกัดจำนวน',
      name: 'pageuserOfferpage_coupons_text_failed_No_minimum',
      desc: '',
      args: [],
    );
  }

  /// `No minimum spend`
  String get pageuserOfferpage_coupons_text_failed_No_minimum_spend {
    return Intl.message(
      'No minimum spend',
      name: 'pageuserOfferpage_coupons_text_failed_No_minimum_spend',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load coupons`
  String get pageuserOfferpage_CouponsFailurer_text_failed_load {
    return Intl.message(
      'Failed to load coupons',
      name: 'pageuserOfferpage_CouponsFailurer_text_failed_load',
      desc: '',
      args: [],
    );
  }

  /// `User Offers`
  String get pageuserOfferpage_appbar_text_UserOffers {
    return Intl.message(
      'User Offers',
      name: 'pageuserOfferpage_appbar_text_UserOffers',
      desc: '',
      args: [],
    );
  }

  /// `Starts`
  String get pageuserOfferDetails_title_start {
    return Intl.message(
      'Starts',
      name: 'pageuserOfferDetails_title_start',
      desc: '',
      args: [],
    );
  }

  /// `Ends`
  String get pageuserOfferDetails_title_end {
    return Intl.message(
      'Ends',
      name: 'pageuserOfferDetails_title_end',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get pageuserOfferDetails_text_term {
    return Intl.message(
      'Terms of Service',
      name: 'pageuserOfferDetails_text_term',
      desc: '',
      args: [],
    );
  }

  /// `  By using any coupon or promotional code on the Sook App, you agree that promotions are valid for a limited time, subject to specific conditions, and cannot be combined with other offers unless stated otherwise. Each coupon is non-transferable, redeemable once per user, and must be applied before checkout. Misuse or fraudulent activity may result in cancellation of the promotion or suspension of your account. Sook reserves the right to modify, suspend, or cancel promotions at any time without notice. For details or assistance, please contact our support team.`
  String get pageUserOfferDetails_text_termdetail {
    return Intl.message(
      '  By using any coupon or promotional code on the Sook App, you agree that promotions are valid for a limited time, subject to specific conditions, and cannot be combined with other offers unless stated otherwise. Each coupon is non-transferable, redeemable once per user, and must be applied before checkout. Misuse or fraudulent activity may result in cancellation of the promotion or suspension of your account. Sook reserves the right to modify, suspend, or cancel promotions at any time without notice. For details or assistance, please contact our support team.',
      name: 'pageUserOfferDetails_text_termdetail',
      desc: '',
      args: [],
    );
  }

  /// `Contact Info`
  String get pageUserOfferDetails_text_contact {
    return Intl.message(
      'Contact Info',
      name: 'pageUserOfferDetails_text_contact',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get pageUserOfferDetails_text_No_Data {
    return Intl.message(
      'No Data',
      name: 'pageUserOfferDetails_text_No_Data',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error occurred`
  String get pageUserOfferDetails_text_Unexpected_error {
    return Intl.message(
      'Unexpected error occurred',
      name: 'pageUserOfferDetails_text_Unexpected_error',
      desc: '',
      args: [],
    );
  }

  /// `Use now`
  String get pageuserOfferDetails_button_text_Usenow {
    return Intl.message(
      'Use now',
      name: 'pageuserOfferDetails_button_text_Usenow',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for Payment`
  String get pageOrder_status_waitingforPaymenttitle {
    return Intl.message(
      'Waiting for Payment',
      name: 'pageOrder_status_waitingforPaymenttitle',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your payment to proceed.`
  String get pageOrder_status_waitingforPaymentdescription {
    return Intl.message(
      'Please confirm your payment to proceed.',
      name: 'pageOrder_status_waitingforPaymentdescription',
      desc: '',
      args: [],
    );
  }

  /// `Order has been confirmed!`
  String get pageOrder_status_orderConfirmedtitle {
    return Intl.message(
      'Order has been confirmed!',
      name: 'pageOrder_status_orderConfirmedtitle',
      desc: '',
      args: [],
    );
  }

  /// `Happiness is on the way 🍳`
  String get pageOrder_status_orderConfirmeddescription {
    return Intl.message(
      'Happiness is on the way 🍳',
      name: 'pageOrder_status_orderConfirmeddescription',
      desc: '',
      args: [],
    );
  }

  /// ` Prepare your order`
  String get pageOrder_status_prepareyourordertitle {
    return Intl.message(
      ' Prepare your order',
      name: 'pageOrder_status_prepareyourordertitle',
      desc: '',
      args: [],
    );
  }

  /// `Getting your order ready with care! 🎉`
  String get pageOrder_status_prepareyourorderdescription {
    return Intl.message(
      'Getting your order ready with care! 🎉',
      name: 'pageOrder_status_prepareyourorderdescription',
      desc: '',
      args: [],
    );
  }

  /// `Your rider is on the way!`
  String get pageOrder_status_riderOnTheWaytitle {
    return Intl.message(
      'Your rider is on the way!',
      name: 'pageOrder_status_riderOnTheWaytitle',
      desc: '',
      args: [],
    );
  }

  /// `Get ready for deliciousness 💨`
  String get pageOrder_status_riderOnTheWaydescription {
    return Intl.message(
      'Get ready for deliciousness 💨',
      name: 'pageOrder_status_riderOnTheWaydescription',
      desc: '',
      args: [],
    );
  }

  /// `Your food has arrived!`
  String get pageOrder_status_foodArrivedtitle {
    return Intl.message(
      'Your food has arrived!',
      name: 'pageOrder_status_foodArrivedtitle',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy your meal 🍴`
  String get pageOrder_status_foodArriveddescription {
    return Intl.message(
      'Enjoy your meal 🍴',
      name: 'pageOrder_status_foodArriveddescription',
      desc: '',
      args: [],
    );
  }

  /// `Order canceled`
  String get pageOrder_status_orderCancelled {
    return Intl.message(
      'Order canceled',
      name: 'pageOrder_status_orderCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Sorry your order was canceled.`
  String get pageOrder_status_orderCancelleddescription {
    return Intl.message(
      'Sorry your order was canceled.',
      name: 'pageOrder_status_orderCancelleddescription',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get common_TextNote {
    return Intl.message(
      'Note',
      name: 'common_TextNote',
      desc: '',
      args: [],
    );
  }

  /// `Additional`
  String get common_TextNote_hintText {
    return Intl.message(
      'Additional',
      name: 'common_TextNote_hintText',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get common_text_kilomater {
    return Intl.message(
      'km',
      name: 'common_text_kilomater',
      desc: '',
      args: [],
    );
  }

  /// `Additional Address Details`
  String get common_AdditionalAddressDetails {
    return Intl.message(
      'Additional Address Details',
      name: 'common_AdditionalAddressDetails',
      desc: '',
      args: [],
    );
  }

  /// `Additional`
  String get common_AdditionalAddressDetails_hintText {
    return Intl.message(
      'Additional',
      name: 'common_AdditionalAddressDetails_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Card Name`
  String get pagePaymentSelection_textCardName {
    return Intl.message(
      'Card Name',
      name: 'pagePaymentSelection_textCardName',
      desc: '',
      args: [],
    );
  }

  /// `Card name`
  String get pagePaymentSelection_textCardName_hintText {
    return Intl.message(
      'Card name',
      name: 'pagePaymentSelection_textCardName_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get pagePaymentSelection_textCardNumber {
    return Intl.message(
      'Card Number',
      name: 'pagePaymentSelection_textCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Card number`
  String get pagePaymentSelection_textCardNumber_hintText {
    return Intl.message(
      'Card number',
      name: 'pagePaymentSelection_textCardNumber_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Expiry date`
  String get pagePaymentSelection_textCardExpiryDate {
    return Intl.message(
      'Expiry date',
      name: 'pagePaymentSelection_textCardExpiryDate',
      desc: '',
      args: [],
    );
  }

  /// `MM/YY`
  String get pagePaymentSelection_textCardExpiryDate_hintText {
    return Intl.message(
      'MM/YY',
      name: 'pagePaymentSelection_textCardExpiryDate_hintText',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get pagePaymentSelection_textCardCvv {
    return Intl.message(
      'CVV',
      name: 'pagePaymentSelection_textCardCvv',
      desc: '',
      args: [],
    );
  }

  /// `000`
  String get pagePaymentSelection_textCardCvv_hintText {
    return Intl.message(
      '000',
      name: 'pagePaymentSelection_textCardCvv_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Country/Region`
  String get pagePaymentSelection_textCountry {
    return Intl.message(
      'Country/Region',
      name: 'pagePaymentSelection_textCountry',
      desc: '',
      args: [],
    );
  }

  /// `Country/Region`
  String get pagePaymentSelection_textCountry_hintText {
    return Intl.message(
      'Country/Region',
      name: 'pagePaymentSelection_textCountry_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get pagePayment_buttonSubmit_label {
    return Intl.message(
      'Confirm',
      name: 'pagePayment_buttonSubmit_label',
      desc: '',
      args: [],
    );
  }

  /// `Add Card`
  String get pagePayment_textTitle_title {
    return Intl.message(
      'Add Card',
      name: 'pagePayment_textTitle_title',
      desc: '',
      args: [],
    );
  }

  /// `Addition Request`
  String get pageProductDetailSelection_textAdditionRequest {
    return Intl.message(
      'Addition Request',
      name: 'pageProductDetailSelection_textAdditionRequest',
      desc: '',
      args: [],
    );
  }

  /// `Pay the bill`
  String get pageCart_buttonSubmit_label {
    return Intl.message(
      'Pay the bill',
      name: 'pageCart_buttonSubmit_label',
      desc: '',
      args: [],
    );
  }

  /// `Promotion item`
  String get pageCart_supplierSection_text {
    return Intl.message(
      'Promotion item',
      name: 'pageCart_supplierSection_text',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get pageCart_textTitleSection {
    return Intl.message(
      'Cart',
      name: 'pageCart_textTitleSection',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get pageCart_buttonEdit_label {
    return Intl.message(
      'Edit',
      name: 'pageCart_buttonEdit_label',
      desc: '',
      args: [],
    );
  }

  /// `Additional address details`
  String get pageCart_textArea_label {
    return Intl.message(
      'Additional address details',
      name: 'pageCart_textArea_label',
      desc: '',
      args: [],
    );
  }

  /// `Additional`
  String get pageCart_textArea_hintText {
    return Intl.message(
      'Additional',
      name: 'pageCart_textArea_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Use Offers`
  String get pageCart_widgetNavigateUseOffers_title {
    return Intl.message(
      'Use Offers',
      name: 'pageCart_widgetNavigateUseOffers_title',
      desc: '',
      args: [],
    );
  }

  /// `offers applied`
  String get pageCart_widgetUseOffers_title {
    return Intl.message(
      'offers applied',
      name: 'pageCart_widgetUseOffers_title',
      desc: '',
      args: [],
    );
  }

  /// `Add Card`
  String get pageCart_widgetNavigateAddCard_title {
    return Intl.message(
      'Add Card',
      name: 'pageCart_widgetNavigateAddCard_title',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Option`
  String get pageCart_deliveryOptionSection_title {
    return Intl.message(
      'Delivery Option',
      name: 'pageCart_deliveryOptionSection_title',
      desc: '',
      args: [],
    );
  }

  /// `Distance from you`
  String get pageCart_distanceSection_title {
    return Intl.message(
      'Distance from you',
      name: 'pageCart_distanceSection_title',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get pageCart_distanceSection_text {
    return Intl.message(
      'km',
      name: 'pageCart_distanceSection_text',
      desc: '',
      args: [],
    );
  }

  /// `Today order`
  String get pageCart_buttomShipping_text {
    return Intl.message(
      'Today order',
      name: 'pageCart_buttomShipping_text',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary`
  String get pageCart_orderSummarySection_title {
    return Intl.message(
      'Order Summary',
      name: 'pageCart_orderSummarySection_title',
      desc: '',
      args: [],
    );
  }

  /// `+Add Item`
  String get pageCart_AddItem_text {
    return Intl.message(
      '+Add Item',
      name: 'pageCart_AddItem_text',
      desc: '',
      args: [],
    );
  }

  /// `No SKU available`
  String get pageCart_NoSkuAvailable_text {
    return Intl.message(
      'No SKU available',
      name: 'pageCart_NoSkuAvailable_text',
      desc: '',
      args: [],
    );
  }

  /// `รายการ`
  String get pageCart_quantitySection_text {
    return Intl.message(
      'รายการ',
      name: 'pageCart_quantitySection_text',
      desc: '',
      args: [],
    );
  }

  /// `MasterCard`
  String get pageCart_paymenttype2_label {
    return Intl.message(
      'MasterCard',
      name: 'pageCart_paymenttype2_label',
      desc: '',
      args: [],
    );
  }

  /// `QR Payment`
  String get pageCart_paymenttype3_label {
    return Intl.message(
      'QR Payment',
      name: 'pageCart_paymenttype3_label',
      desc: '',
      args: [],
    );
  }

  /// `KBank`
  String get pageCart_paymenttype4_label {
    return Intl.message(
      'KBank',
      name: 'pageCart_paymenttype4_label',
      desc: '',
      args: [],
    );
  }

  /// `Delivery fee`
  String get pageCart_deliveryFee_title {
    return Intl.message(
      'Delivery fee',
      name: 'pageCart_deliveryFee_title',
      desc: '',
      args: [],
    );
  }

  /// `Offers use`
  String get pageCart_discount_title {
    return Intl.message(
      'Offers use',
      name: 'pageCart_discount_title',
      desc: '',
      args: [],
    );
  }

  /// `Product fee`
  String get pageCart_productFee_title {
    return Intl.message(
      'Product fee',
      name: 'pageCart_productFee_title',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get pageCart_total_title {
    return Intl.message(
      'Total',
      name: 'pageCart_total_title',
      desc: '',
      args: [],
    );
  }

  /// `Oops! Something went wrong`
  String get pageCart_alertLoadFailure_title {
    return Intl.message(
      'Oops! Something went wrong',
      name: 'pageCart_alertLoadFailure_title',
      desc: '',
      args: [],
    );
  }

  /// `Please try again later.`
  String get pageCart_alertLoadFailure_content {
    return Intl.message(
      'Please try again later.',
      name: 'pageCart_alertLoadFailure_content',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get pageCart_alertLoadFailure_submitText {
    return Intl.message(
      'Refresh',
      name: 'pageCart_alertLoadFailure_submitText',
      desc: '',
      args: [],
    );
  }

  /// `Oops! Some items are unavailable.`
  String get pageCart_alertUnavailableItems_title {
    return Intl.message(
      'Oops! Some items are unavailable.',
      name: 'pageCart_alertUnavailableItems_title',
      desc: '',
      args: [],
    );
  }

  /// `Continue without unavailable items`
  String get pageCart_alertUnavailableItems_content {
    return Intl.message(
      'Continue without unavailable items',
      name: 'pageCart_alertUnavailableItems_content',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get pageCart_alertUnavailableItems_submitText {
    return Intl.message(
      'Continue',
      name: 'pageCart_alertUnavailableItems_submitText',
      desc: '',
      args: [],
    );
  }

  /// `DELIVERY TO`
  String get componentAppHeader_delivery_label {
    return Intl.message(
      'DELIVERY TO',
      name: 'componentAppHeader_delivery_label',
      desc: '',
      args: [],
    );
  }

  /// `What to Eat?`
  String get componentAppHeader_hintText {
    return Intl.message(
      'What to Eat?',
      name: 'componentAppHeader_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Hello! Create an account to order faster.`
  String get componentAppHeader_beforeRegister_label {
    return Intl.message(
      'Hello! Create an account to order faster.',
      name: 'componentAppHeader_beforeRegister_label',
      desc: '',
      args: [],
    );
  }

  /// `Oops! The restaurant has closed`
  String get pageCart_alertRestaurantClosed_title {
    return Intl.message(
      'Oops! The restaurant has closed',
      name: 'pageCart_alertRestaurantClosed_title',
      desc: '',
      args: [],
    );
  }

  /// `Please check back during their operating hours or explore other delicious options!`
  String get pageCart_alertRestaurantClosed_content {
    return Intl.message(
      'Please check back during their operating hours or explore other delicious options!',
      name: 'pageCart_alertRestaurantClosed_content',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get pageCart_alertRestaurantClosed_submitText {
    return Intl.message(
      'Refresh',
      name: 'pageCart_alertRestaurantClosed_submitText',
      desc: '',
      args: [],
    );
  }

  /// `Out of stock`
  String get pageCart_tagOutOfStock_text {
    return Intl.message(
      'Out of stock',
      name: 'pageCart_tagOutOfStock_text',
      desc: '',
      args: [],
    );
  }

  /// `ทั้งหมด`
  String get pageStore_seeAll_text {
    return Intl.message(
      'ทั้งหมด',
      name: 'pageStore_seeAll_text',
      desc: '',
      args: [],
    );
  }

  /// `ตระกร้าของฉัน`
  String get pageStore_basketButton_title {
    return Intl.message(
      'ตระกร้าของฉัน',
      name: 'pageStore_basketButton_title',
      desc: '',
      args: [],
    );
  }

  /// `ส่งฟรี`
  String get pageStore_freeDelivery_textSection1 {
    return Intl.message(
      'ส่งฟรี',
      name: 'pageStore_freeDelivery_textSection1',
      desc: '',
      args: [],
    );
  }

  /// `เมื่อสั่ง`
  String get pageStore_freeDelivery_textSection2 {
    return Intl.message(
      'เมื่อสั่ง',
      name: 'pageStore_freeDelivery_textSection2',
      desc: '',
      args: [],
    );
  }

  /// `เพิ่มอีก`
  String get pageStore_addAnother_textSection1 {
    return Intl.message(
      'เพิ่มอีก',
      name: 'pageStore_addAnother_textSection1',
      desc: '',
      args: [],
    );
  }

  /// `เพื่อรับส่วนลด`
  String get pageStore_addAnother_textSection2 {
    return Intl.message(
      'เพื่อรับส่วนลด',
      name: 'pageStore_addAnother_textSection2',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get pageStore_addAnother_textSection3 {
    return Intl.message(
      '',
      name: 'pageStore_addAnother_textSection3',
      desc: '',
      args: [],
    );
  }

  /// `แก้ไข`
  String get pageStore_editButton_title {
    return Intl.message(
      'แก้ไข',
      name: 'pageStore_editButton_title',
      desc: '',
      args: [],
    );
  }

  /// `เพิ่มรายการใหม่`
  String get pageStore_addButton_title {
    return Intl.message(
      'เพิ่มรายการใหม่',
      name: 'pageStore_addButton_title',
      desc: '',
      args: [],
    );
  }

  /// `ใช้`
  String get pageStore_applyCouponButton_label {
    return Intl.message(
      'ใช้',
      name: 'pageStore_applyCouponButton_label',
      desc: '',
      args: [],
    );
  }

  /// `ลบ`
  String get pageStore_removeCouponButton_label {
    return Intl.message(
      'ลบ',
      name: 'pageStore_removeCouponButton_label',
      desc: '',
      args: [],
    );
  }

  /// `ร้านค้าปิดให้บริการในขณะนี้`
  String get pageStore_storeClosedAlert_title {
    return Intl.message(
      'ร้านค้าปิดให้บริการในขณะนี้',
      name: 'pageStore_storeClosedAlert_title',
      desc: '',
      args: [],
    );
  }

  /// `ไม่ต้องกังวล ยังมีตัวเลือกอร่อย ๆ อีกมากมายให้คุณสำรวจ! ✨`
  String get pageStore_storeClosedAlert_content {
    return Intl.message(
      'ไม่ต้องกังวล ยังมีตัวเลือกอร่อย ๆ อีกมากมายให้คุณสำรวจ! ✨',
      name: 'pageStore_storeClosedAlert_content',
      desc: '',
      args: [],
    );
  }

  /// `สำรวจเพิ่มเติม!`
  String get pageStore_storeClosedAlert_submitText {
    return Intl.message(
      'สำรวจเพิ่มเติม!',
      name: 'pageStore_storeClosedAlert_submitText',
      desc: '',
      args: [],
    );
  }

  /// `ปิด`
  String get pageStore_supplierClosed_text {
    return Intl.message(
      'ปิด',
      name: 'pageStore_supplierClosed_text',
      desc: '',
      args: [],
    );
  }

  /// `ฟรี`
  String get pageStore_supplierFree_text {
    return Intl.message(
      'ฟรี',
      name: 'pageStore_supplierFree_text',
      desc: '',
      args: [],
    );
  }

  /// `นาที`
  String get pageStore_supplierMinutes_text {
    return Intl.message(
      'นาที',
      name: 'pageStore_supplierMinutes_text',
      desc: '',
      args: [],
    );
  }

  /// `ข้อเสนอพิเศษ 🔥`
  String get pageStore_specialOffer_text {
    return Intl.message(
      'ข้อเสนอพิเศษ 🔥',
      name: 'pageStore_specialOffer_text',
      desc: '',
      args: [],
    );
  }

  /// `บางอย่างผิดพลาด`
  String get pageStore_alertLoadFailure_title {
    return Intl.message(
      'บางอย่างผิดพลาด',
      name: 'pageStore_alertLoadFailure_title',
      desc: '',
      args: [],
    );
  }

  /// `โปรดลองอีกครั้งในภายหลัง`
  String get pageStore_alertLoadFailure_content {
    return Intl.message(
      'โปรดลองอีกครั้งในภายหลัง',
      name: 'pageStore_alertLoadFailure_content',
      desc: '',
      args: [],
    );
  }

  /// `รีเฟรช`
  String get pageStore_alertLoadFailure_submitText {
    return Intl.message(
      'รีเฟรช',
      name: 'pageStore_alertLoadFailure_submitText',
      desc: '',
      args: [],
    );
  }

  /// `โปรโมชั่น`
  String get pageStore_promotion_text {
    return Intl.message(
      'โปรโมชั่น',
      name: 'pageStore_promotion_text',
      desc: '',
      args: [],
    );
  }

  /// `Addition Request`
  String get pageProduct_customization_additionalInput_textInputTitle {
    return Intl.message(
      'Addition Request',
      name: 'pageProduct_customization_additionalInput_textInputTitle',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet.`
  String get pageProduct_customization_additionalInput_hintText {
    return Intl.message(
      'Lorem ipsum dolor sit amet.',
      name: 'pageProduct_customization_additionalInput_hintText',
      desc: '',
      args: [],
    );
  }

  /// ` (Optional)`
  String get pageProduct_customization_textOptionalLabel {
    return Intl.message(
      ' (Optional)',
      name: 'pageProduct_customization_textOptionalLabel',
      desc: '',
      args: [],
    );
  }

  /// ` (Required)`
  String get pageProduct_customization_textRequiredLabel {
    return Intl.message(
      ' (Required)',
      name: 'pageProduct_customization_textRequiredLabel',
      desc: '',
      args: [],
    );
  }

  /// ` *`
  String get pageProduct_customization_optionalGroup_requiredSign {
    return Intl.message(
      ' *',
      name: 'pageProduct_customization_optionalGroup_requiredSign',
      desc: '',
      args: [],
    );
  }

  /// ` (Required {max} choice)`
  String pageProduct_customization_optionalGroup_required(Object max) {
    return Intl.message(
      ' (Required $max choice)',
      name: 'pageProduct_customization_optionalGroup_required',
      desc: '',
      args: [max],
    );
  }

  /// `+{price}฿`
  String pageProduct_customization_optionalGroup_priceForm(Object price) {
    return Intl.message(
      '+$price฿',
      name: 'pageProduct_customization_optionalGroup_priceForm',
      desc: '',
      args: [price],
    );
  }

  /// ` (Select up to {max} options)`
  String pageProduct_customization_optionalGroup_optional(Object max) {
    return Intl.message(
      ' (Select up to $max options)',
      name: 'pageProduct_customization_optionalGroup_optional',
      desc: '',
      args: [max],
    );
  }

  /// `฿{price}`
  String pageProduct_customization_productCustomizationDetails_priceForm(
      Object price) {
    return Intl.message(
      '฿$price',
      name: 'pageProduct_customization_productCustomizationDetails_priceForm',
      desc: '',
      args: [price],
    );
  }

  /// `You're viewing products from `
  String get pageProduct_customization_storeNavigator_storeLable {
    return Intl.message(
      'You\'re viewing products from ',
      name: 'pageProduct_customization_storeNavigator_storeLable',
      desc: '',
      args: [],
    );
  }

  /// `More products `
  String get pageProduct_customization_storeNavigator_routeLable {
    return Intl.message(
      'More products ',
      name: 'pageProduct_customization_storeNavigator_routeLable',
      desc: '',
      args: [],
    );
  }

  /// `Update cart`
  String
      get pageProduct_customization_productCustomizationFooter_textUpdateToCart {
    return Intl.message(
      'Update cart',
      name:
          'pageProduct_customization_productCustomizationFooter_textUpdateToCart',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String
      get pageProduct_customization_productCustomizationFooter_textAddToCart {
    return Intl.message(
      'Add to cart',
      name:
          'pageProduct_customization_productCustomizationFooter_textAddToCart',
      desc: '',
      args: [],
    );
  }

  /// `Delete from cart`
  String
      get pageProduct_customization_productCustomizationFooter_textDeleteFromCart {
    return Intl.message(
      'Delete from cart',
      name:
          'pageProduct_customization_productCustomizationFooter_textDeleteFromCart',
      desc: '',
      args: [],
    );
  }

  /// `Item added to cart`
  String
      get pageProduct_customization_productCustomizationFooter_textAddSuccess {
    return Intl.message(
      'Item added to cart',
      name:
          'pageProduct_customization_productCustomizationFooter_textAddSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Item in cart updated`
  String
      get pageProduct_customization_productCustomizationFooter_textUpdateSuccess {
    return Intl.message(
      'Item in cart updated',
      name:
          'pageProduct_customization_productCustomizationFooter_textUpdateSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Failure add to cart`
  String
      get pageProduct_customization_productCustomizationFooter_textAddFailure {
    return Intl.message(
      'Failure add to cart',
      name:
          'pageProduct_customization_productCustomizationFooter_textAddFailure',
      desc: '',
      args: [],
    );
  }

  /// `Failure to update cart`
  String
      get pageProduct_customization_productCustomizationFooter_textUpdateFailure {
    return Intl.message(
      'Failure to update cart',
      name:
          'pageProduct_customization_productCustomizationFooter_textUpdateFailure',
      desc: '',
      args: [],
    );
  }

  /// `Item deleled from cart`
  String
      get pageProduct_customization_productCustomizationFooter_textDeleteSuccess {
    return Intl.message(
      'Item deleled from cart',
      name:
          'pageProduct_customization_productCustomizationFooter_textDeleteSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Failure to Delete item`
  String
      get pageProduct_customization_productCustomizationFooter_textDeleteFailure {
    return Intl.message(
      'Failure to Delete item',
      name:
          'pageProduct_customization_productCustomizationFooter_textDeleteFailure',
      desc: '',
      args: [],
    );
  }

  /// `ไม่สามารถเพิ่มสินค้าได้`
  String
      get pageProduct_customization_productCustomizationFooter_notSelectRequiredOption_title {
    return Intl.message(
      'ไม่สามารถเพิ่มสินค้าได้',
      name:
          'pageProduct_customization_productCustomizationFooter_notSelectRequiredOption_title',
      desc: '',
      args: [],
    );
  }

  /// `กรุณาเลือกตัวเลือกที่จําเป็น`
  String
      get pageProduct_customization_productCustomizationFooter_notSelectRequiredOption_content {
    return Intl.message(
      'กรุณาเลือกตัวเลือกที่จําเป็น',
      name:
          'pageProduct_customization_productCustomizationFooter_notSelectRequiredOption_content',
      desc: '',
      args: [],
    );
  }

  /// `Oops! Something went wrong`
  String get componentAlert_failure_title {
    return Intl.message(
      'Oops! Something went wrong',
      name: 'componentAlert_failure_title',
      desc: '',
      args: [],
    );
  }

  /// `We're working on fixing the issue. Please try again later.`
  String get componentAlert_failure_content {
    return Intl.message(
      'We\'re working on fixing the issue. Please try again later.',
      name: 'componentAlert_failure_content',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get componentAlert_failure_action {
    return Intl.message(
      'Refresh',
      name: 'componentAlert_failure_action',
      desc: '',
      args: [],
    );
  }

  /// `Your order is being processed`
  String get componentAlert_success_title {
    return Intl.message(
      'Your order is being processed',
      name: 'componentAlert_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Please wait! Your happiness is on its way. Track your order status here. 🎉`
  String get componentAlert_success_content {
    return Intl.message(
      'Please wait! Your happiness is on its way. Track your order status here. 🎉',
      name: 'componentAlert_success_content',
      desc: '',
      args: [],
    );
  }

  /// `Track Your Order`
  String get componentAlert_success_confirmAction {
    return Intl.message(
      'Track Your Order',
      name: 'componentAlert_success_confirmAction',
      desc: '',
      args: [],
    );
  }

  /// `Go Back to Home`
  String get componentAlert_success_cancelAction {
    return Intl.message(
      'Go Back to Home',
      name: 'componentAlert_success_cancelAction',
      desc: '',
      args: [],
    );
  }

  /// `ปิด`
  String get pageHome_closeTag_text {
    return Intl.message(
      'ปิด',
      name: 'pageHome_closeTag_text',
      desc: '',
      args: [],
    );
  }

  /// `ฟรี`
  String get pageHome_deliveryCost_text {
    return Intl.message(
      'ฟรี',
      name: 'pageHome_deliveryCost_text',
      desc: '',
      args: [],
    );
  }

  /// `ประมาณ`
  String get pageHome_deliveryTime_text {
    return Intl.message(
      'ประมาณ',
      name: 'pageHome_deliveryTime_text',
      desc: '',
      args: [],
    );
  }

  /// `นาที`
  String get pageHome_deliveryTime_text2 {
    return Intl.message(
      'นาที',
      name: 'pageHome_deliveryTime_text2',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get pageTermsAndConditionsSetting_terms_and_service {
    return Intl.message(
      'Terms of Service',
      name: 'pageTermsAndConditionsSetting_terms_and_service',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions of Service`
  String get pageTermsAndConditionsSetting_terms_and_conditions {
    return Intl.message(
      'Terms and Conditions of Service',
      name: 'pageTermsAndConditionsSetting_terms_and_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Personal Data Protection Policy (PDPA)`
  String get pageTermsAndConditionsSetting_personal_text {
    return Intl.message(
      'Personal Data Protection Policy (PDPA)',
      name: 'pageTermsAndConditionsSetting_personal_text',
      desc: '',
      args: [],
    );
  }

  /// `Our company prioritizes the privacy and protection of your personal data. To comply with Thailand’s Personal Data Protection Act (PDPA), we outline the`
  String get pageTermsAndConditionsSetting_company_privacy_statement {
    return Intl.message(
      'Our company prioritizes the privacy and protection of your personal data. To comply with Thailand’s Personal Data Protection Act (PDPA), we outline the',
      name: 'pageTermsAndConditionsSetting_company_privacy_statement',
      desc: '',
      args: [],
    );
  }

  /// `following terms:`
  String get pageTermsAndConditionsSetting_following_terms {
    return Intl.message(
      'following terms:',
      name: 'pageTermsAndConditionsSetting_following_terms',
      desc: '',
      args: [],
    );
  }

  /// `Collection of Personal Data`
  String get pageTermsAndConditionsSetting_collection_of_personal_data {
    return Intl.message(
      'Collection of Personal Data',
      name: 'pageTermsAndConditionsSetting_collection_of_personal_data',
      desc: '',
      args: [],
    );
  }

  /// `We collect personal data such as your name, phone number, email address, and other related information for the purposes of providing services, improving service quality, and sharing relevant updates.`
  String get pageTermsAndConditionsSetting_personal_data_collection_text {
    return Intl.message(
      'We collect personal data such as your name, phone number, email address, and other related information for the purposes of providing services, improving service quality, and sharing relevant updates.',
      name: 'pageTermsAndConditionsSetting_personal_data_collection_text',
      desc: '',
      args: [],
    );
  }

  /// `Purpose of Data Usage`
  String get pageTermsAndConditionsSetting_purpose_of_data_usage {
    return Intl.message(
      'Purpose of Data Usage',
      name: 'pageTermsAndConditionsSetting_purpose_of_data_usage',
      desc: '',
      args: [],
    );
  }

  /// `Your personal data will be used for:`
  String get pageTermsAndConditionsSetting_personal_data_usage_purpose {
    return Intl.message(
      'Your personal data will be used for:',
      name: 'pageTermsAndConditionsSetting_personal_data_usage_purpose',
      desc: '',
      args: [],
    );
  }

  /// `Providing the services you request Enhancing and developing our website or application Communicating news, promotions, or related benefits Data Retention We will securely store your personal data in a system that complies with standards and prevents unauthorized access.`
  String get pageTermsAndConditionsSetting_data_usage_text {
    return Intl.message(
      'Providing the services you request Enhancing and developing our website or application Communicating news, promotions, or related benefits Data Retention We will securely store your personal data in a system that complies with standards and prevents unauthorized access.',
      name: 'pageTermsAndConditionsSetting_data_usage_text',
      desc: '',
      args: [],
    );
  }

  /// `Rights of Data Owners`
  String get pageTermsAndConditionsSetting_rights_of_data_owners {
    return Intl.message(
      'Rights of Data Owners',
      name: 'pageTermsAndConditionsSetting_rights_of_data_owners',
      desc: '',
      args: [],
    );
  }

  /// `You have the right to access, request modifications, or delete your personal data. You also have the right to withdraw consent for the use of your data by contacting us through the specified channels. \nDisclosure of Data \nWe will not disclose your personal data to third parties unless with your consent or as required by law. \nPlease check the boxes below to confirm that you have read and accepted these terms and conditions:`
  String get pageTermsAndConditionsSetting_personal_data_rights_extended {
    return Intl.message(
      'You have the right to access, request modifications, or delete your personal data. You also have the right to withdraw consent for the use of your data by contacting us through the specified channels. \nDisclosure of Data \nWe will not disclose your personal data to third parties unless with your consent or as required by law. \nPlease check the boxes below to confirm that you have read and accepted these terms and conditions:',
      name: 'pageTermsAndConditionsSetting_personal_data_rights_extended',
      desc: '',
      args: [],
    );
  }

  /// `เพิ่มเติม`
  String get pageHome_widgetMoreDiscover_title {
    return Intl.message(
      'เพิ่มเติม',
      name: 'pageHome_widgetMoreDiscover_title',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get pageLanguageSwitcher_title {
    return Intl.message(
      'Language',
      name: 'pageLanguageSwitcher_title',
      desc: '',
      args: [],
    );
  }

  /// `ภาษาไทย`
  String get pageLanguageSwitcher_th_title {
    return Intl.message(
      'ภาษาไทย',
      name: 'pageLanguageSwitcher_th_title',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get pageLanguageSwitcher_en_title {
    return Intl.message(
      'English',
      name: 'pageLanguageSwitcher_en_title',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get pageLanguageSwitcher_action_button {
    return Intl.message(
      'Confirm',
      name: 'pageLanguageSwitcher_action_button',
      desc: '',
      args: [],
    );
  }

  /// `การตั้งค่าวันที่และเวลา`
  String get common_DatetimeDetectDialog_title {
    return Intl.message(
      'การตั้งค่าวันที่และเวลา',
      name: 'common_DatetimeDetectDialog_title',
      desc: '',
      args: [],
    );
  }

  /// `กรุณาตั้งค่าวันที่และเวลาบนอุปกรณ์ของคุณเป็นโหมดอัตโนมัติเพื่อให้แอปพลิเคชันทำงานได้อย่างถูกต้อง`
  String get common_DatetimeDetectDialog_content {
    return Intl.message(
      'กรุณาตั้งค่าวันที่และเวลาบนอุปกรณ์ของคุณเป็นโหมดอัตโนมัติเพื่อให้แอปพลิเคชันทำงานได้อย่างถูกต้อง',
      name: 'common_DatetimeDetectDialog_content',
      desc: '',
      args: [],
    );
  }

  /// `เปิดการตั้งค่า`
  String get common_DatetimeDetectDialog_submitText {
    return Intl.message(
      'เปิดการตั้งค่า',
      name: 'common_DatetimeDetectDialog_submitText',
      desc: '',
      args: [],
    );
  }

  /// ` *`
  String get common_textinputDetectDialog_DetectText {
    return Intl.message(
      ' *',
      name: 'common_textinputDetectDialog_DetectText',
      desc: '',
      args: [],
    );
  }

  /// `ผู้บริโภคมีสิทธิเลิกสัญญาโดยการส่งหนังสือแสดงเจตนาภายใน 7 วัน นับแต่วันที่ได้รับสินค้าหรือบริการ ไปยังผู้ประกอบธุรกิจตลาดแบบตรง และ ผู้ประผู้ประกอบธุรกิจ ตลาดแบบตรง จะคืนเงินเต็มจํานวนที่ผู้บริโภคจ่าย ไปเพื่อการซื้อสิ้นค้าหรือบริการนั้น ภายในกําหนดเวลา 15 วัน นับแต่วันที่ได้รับหนังสือแสดงเจตนาเลิกสัญญา`
  String get pageOrderDetailsSelection_textRightofcancellation {
    return Intl.message(
      'ผู้บริโภคมีสิทธิเลิกสัญญาโดยการส่งหนังสือแสดงเจตนาภายใน 7 วัน นับแต่วันที่ได้รับสินค้าหรือบริการ ไปยังผู้ประกอบธุรกิจตลาดแบบตรง และ ผู้ประผู้ประกอบธุรกิจ ตลาดแบบตรง จะคืนเงินเต็มจํานวนที่ผู้บริโภคจ่าย ไปเพื่อการซื้อสิ้นค้าหรือบริการนั้น ภายในกําหนดเวลา 15 วัน นับแต่วันที่ได้รับหนังสือแสดงเจตนาเลิกสัญญา',
      name: 'pageOrderDetailsSelection_textRightofcancellation',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load order details`
  String get pageOrderDetailsSelection_textFailedLoadOrder {
    return Intl.message(
      'Failed to load order details',
      name: 'pageOrderDetailsSelection_textFailedLoadOrder',
      desc: '',
      args: [],
    );
  }

  /// `Promotion item`
  String get pageOrderDetailsSelection_textPromotionItem {
    return Intl.message(
      'Promotion item',
      name: 'pageOrderDetailsSelection_textPromotionItem',
      desc: '',
      args: [],
    );
  }

  /// `฿0`
  String get pageOrderDetailsSelection_textPromotionPrice {
    return Intl.message(
      '฿0',
      name: 'pageOrderDetailsSelection_textPromotionPrice',
      desc: '',
      args: [],
    );
  }

  /// `Delivery detail`
  String get pageOrderDetailsSelection_textdeliveryDetail {
    return Intl.message(
      'Delivery detail',
      name: 'pageOrderDetailsSelection_textdeliveryDetail',
      desc: '',
      args: [],
    );
  }

  /// `กรุณาเข้าสู่ระบบเพื่อดำเนินการต่อ`
  String get common_please_login {
    return Intl.message(
      'กรุณาเข้าสู่ระบบเพื่อดำเนินการต่อ',
      name: 'common_please_login',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Order`
  String get pageOrderDetailsSelection_buttonCancelOrder {
    return Intl.message(
      'Cancel Order',
      name: 'pageOrderDetailsSelection_buttonCancelOrder',
      desc: '',
      args: [],
    );
  }
  /// `Rhythm Wave`
  String get pageAppBar_textPage {
    return Intl.message(
      'Rhythm Wave',
      name: 'pageAppBar_textPage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'th'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<L10n> load(Locale locale) => L10n.load(locale);
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
