// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a th locale. All the
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
  String get localeName => 'th';

  static String m0(date) => "${date}";

  static String m1(seconds) => "Resend OTP (${seconds})";

  static String m3(max) => " (Select up to ${max} options)";

  static String m4(price) => "+${price}฿";

  static String m5(max) => " (Required ${max} choice)";

  static String m6(price) => "฿${price}";

  static String m2(searchQuery) => "ไม่พบที่อยู่สำหรับ \"${searchQuery}\"";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "commonCustomDateFormat": m0,
        "commonTextDateFormat":
            MessageLookupByLibrary.simpleMessage("DD/MM/YYYY"),
        "common_AdditionalAddressDetails":
            MessageLookupByLibrary.simpleMessage("Additional Address Details"),
        "common_AdditionalAddressDetails_hintText":
            MessageLookupByLibrary.simpleMessage("Additional"),
        "common_DatetimeDetectDialog_content": MessageLookupByLibrary.simpleMessage(
            "กรุณาตั้งค่าวันที่และเวลาบนอุปกรณ์ของคุณเป็นโหมดอัตโนมัติเพื่อให้แอปพลิเคชันทำงานได้อย่างถูกต้อง"),
        "common_DatetimeDetectDialog_submitText":
            MessageLookupByLibrary.simpleMessage("เปิดการตั้งค่า"),
        "common_DatetimeDetectDialog_title":
            MessageLookupByLibrary.simpleMessage("การตั้งค่าวันที่และเวลา"),
        "common_TextInputAddressNumber":
            MessageLookupByLibrary.simpleMessage("Number"),
        "common_TextInputAddressNumber_hintText":
            MessageLookupByLibrary.simpleMessage("Number"),
        "common_TextInputBuilding":
            MessageLookupByLibrary.simpleMessage("Building"),
        "common_TextInputBuilding_hintText":
            MessageLookupByLibrary.simpleMessage("Building"),
        "common_TextInputCompanyName":
            MessageLookupByLibrary.simpleMessage("Company Name"),
        "common_TextInputCompanyName_hintText":
            MessageLookupByLibrary.simpleMessage("Company Name"),
        "common_TextInputName": MessageLookupByLibrary.simpleMessage("Name"),
        "common_TextInputName_hintText":
            MessageLookupByLibrary.simpleMessage("Name"),
        "common_TextInputPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Phone Number"),
        "common_TextInputPhoneNumber_hintText":
            MessageLookupByLibrary.simpleMessage("Phone Number"),
        "common_TextInputSurname":
            MessageLookupByLibrary.simpleMessage("Surname"),
        "common_TextInputSurname_hintText":
            MessageLookupByLibrary.simpleMessage("Surname"),
        "common_TextNote": MessageLookupByLibrary.simpleMessage("Note"),
        "common_TextNote_hintText":
            MessageLookupByLibrary.simpleMessage("Additional"),
        "common_please_login": MessageLookupByLibrary.simpleMessage(
            "กรุณาเข้าสู่ระบบเพื่อดำเนินการต่อ"),
        "common_text_kilomater": MessageLookupByLibrary.simpleMessage("km"),
        "common_textinputDetectDialog_DetectText":
            MessageLookupByLibrary.simpleMessage(" *"),
        "componentAlert_failure_action":
            MessageLookupByLibrary.simpleMessage("Refresh"),
        "componentAlert_failure_content": MessageLookupByLibrary.simpleMessage(
            "We\'re working on fixing the issue. Please try again later."),
        "componentAlert_failure_title":
            MessageLookupByLibrary.simpleMessage("Oops! Something went wrong"),
        "componentAlert_success_cancelAction":
            MessageLookupByLibrary.simpleMessage("Go Back to Home"),
        "componentAlert_success_confirmAction":
            MessageLookupByLibrary.simpleMessage("Track Your Order"),
        "componentAlert_success_content": MessageLookupByLibrary.simpleMessage(
            "Please wait! Your happiness is on its way. Track your order status here. 🎉"),
        "componentAlert_success_title": MessageLookupByLibrary.simpleMessage(
            "Your order is being processed"),
        "componentAppHeader_beforeRegister_label":
            MessageLookupByLibrary.simpleMessage(
                "Hello! Create an account to order faster."),
        "componentAppHeader_delivery_label":
            MessageLookupByLibrary.simpleMessage("DELIVERY TO"),
        "componentAppHeader_hintText":
            MessageLookupByLibrary.simpleMessage("What to Eat?"),
        "globalButtonCancel": MessageLookupByLibrary.simpleMessage("ยกเลิก"),
        "globalButtonSubmit": MessageLookupByLibrary.simpleMessage("ยืนยัน"),
        "global_error_404": MessageLookupByLibrary.simpleMessage(
            "ทรัพยากรที่ร้องขอไม่มีอยู่บนเซิร์ฟเวอร์"),
        "global_error_badRequest":
            MessageLookupByLibrary.simpleMessage("ข้อมูลที่ร้องขอไม่ถูกต้อง"),
        "global_error_cancelled":
            MessageLookupByLibrary.simpleMessage("ยกเลิก"),
        "global_error_network":
            MessageLookupByLibrary.simpleMessage("ข้อผิดพลาดเน้นย้ายข้อมูล"),
        "global_error_server":
            MessageLookupByLibrary.simpleMessage("ข้อผิดพลาดจากเซิฟเวอร์"),
        "global_error_timeout": MessageLookupByLibrary.simpleMessage("เวลาหมด"),
        "global_error_unauthorized":
            MessageLookupByLibrary.simpleMessage("การเข้าถึงถูกปฏิเสธ"),
        "global_error_unknown":
            MessageLookupByLibrary.simpleMessage("ไม่ทราบข้อผิดพลาด"),
        "pageCart_AddItem_text":
            MessageLookupByLibrary.simpleMessage("+Add Item"),
        "pageCart_NoSkuAvailable_text":
            MessageLookupByLibrary.simpleMessage("No SKU available"),
        "pageCart_alertLoadFailure_content":
            MessageLookupByLibrary.simpleMessage("Please try again later."),
        "pageCart_alertLoadFailure_submitText":
            MessageLookupByLibrary.simpleMessage("Refresh"),
        "pageCart_alertLoadFailure_title":
            MessageLookupByLibrary.simpleMessage("Oops! Something went wrong"),
        "pageCart_alertRestaurantClosed_content":
            MessageLookupByLibrary.simpleMessage(
                "Please check back during their operating hours or explore other delicious options!"),
        "pageCart_alertRestaurantClosed_submitText":
            MessageLookupByLibrary.simpleMessage("Refresh"),
        "pageCart_alertRestaurantClosed_title":
            MessageLookupByLibrary.simpleMessage(
                "Oops! The restaurant has closed"),
        "pageCart_alertUnavailableItems_content":
            MessageLookupByLibrary.simpleMessage(
                "Continue without unavailable items"),
        "pageCart_alertUnavailableItems_submitText":
            MessageLookupByLibrary.simpleMessage("Continue"),
        "pageCart_alertUnavailableItems_title":
            MessageLookupByLibrary.simpleMessage(
                "Oops! Some items are unavailable."),
        "pageCart_buttomShipping_text":
            MessageLookupByLibrary.simpleMessage("Today order"),
        "pageCart_buttonEdit_label":
            MessageLookupByLibrary.simpleMessage("Edit"),
        "pageCart_buttonSubmit_label":
            MessageLookupByLibrary.simpleMessage("Pay the bill"),
        "pageCart_deliveryFee_title":
            MessageLookupByLibrary.simpleMessage("Delivery fee"),
        "pageCart_deliveryOptionSection_title":
            MessageLookupByLibrary.simpleMessage("Delivery Option"),
        "pageCart_discount_title":
            MessageLookupByLibrary.simpleMessage("Offers use"),
        "pageCart_distanceSection_text":
            MessageLookupByLibrary.simpleMessage("km"),
        "pageCart_distanceSection_title":
            MessageLookupByLibrary.simpleMessage("Distance from you"),
        "pageCart_orderSummarySection_title":
            MessageLookupByLibrary.simpleMessage("Order Summary"),
        "pageCart_paymenttype2_label":
            MessageLookupByLibrary.simpleMessage("MasterCard"),
        "pageCart_paymenttype3_label":
            MessageLookupByLibrary.simpleMessage("QR Payment"),
        "pageCart_paymenttype4_label":
            MessageLookupByLibrary.simpleMessage("KBank"),
        "pageCart_productFee_title":
            MessageLookupByLibrary.simpleMessage("Product fee"),
        "pageCart_quantitySection_text":
            MessageLookupByLibrary.simpleMessage("รายการ"),
        "pageCart_supplierSection_text":
            MessageLookupByLibrary.simpleMessage("Promotion item"),
        "pageCart_tagOutOfStock_text":
            MessageLookupByLibrary.simpleMessage("Out of stock"),
        "pageCart_textArea_hintText":
            MessageLookupByLibrary.simpleMessage("Additional"),
        "pageCart_textArea_label":
            MessageLookupByLibrary.simpleMessage("Additional address details"),
        "pageCart_textTitleSection":
            MessageLookupByLibrary.simpleMessage("Cart"),
        "pageCart_total_title": MessageLookupByLibrary.simpleMessage("Total"),
        "pageCart_widgetNavigateAddCard_title":
            MessageLookupByLibrary.simpleMessage("Add Card"),
        "pageCart_widgetNavigateUseOffers_title":
            MessageLookupByLibrary.simpleMessage("Use Offers"),
        "pageCart_widgetUseOffers_title":
            MessageLookupByLibrary.simpleMessage("offers applied"),
        "pageHome_closeTag_text": MessageLookupByLibrary.simpleMessage("ปิด"),
        "pageHome_deliveryCost_text":
            MessageLookupByLibrary.simpleMessage("ฟรี"),
        "pageHome_deliveryTime_text":
            MessageLookupByLibrary.simpleMessage("ประมาณ"),
        "pageHome_deliveryTime_text2":
            MessageLookupByLibrary.simpleMessage("นาที"),
        "pageHome_widgetMoreDiscover_title":
            MessageLookupByLibrary.simpleMessage("เพิ่มเติม"),
        "pageLanguageSwitcher_action_button":
            MessageLookupByLibrary.simpleMessage("Confirm"),
        "pageLanguageSwitcher_en_title":
            MessageLookupByLibrary.simpleMessage("English"),
        "pageLanguageSwitcher_th_title":
            MessageLookupByLibrary.simpleMessage("ภาษาไทย"),
        "pageLanguageSwitcher_title":
            MessageLookupByLibrary.simpleMessage("Language"),
        "pageLoginInput_alertLoginFailed_content":
            MessageLookupByLibrary.simpleMessage(
                "Please check your credentials and try again."),
        "pageLoginInput_alertLoginFailed_title":
            MessageLookupByLibrary.simpleMessage("Oops! Login failed"),
        "pageLoginInput_buttonSubmit_label":
            MessageLookupByLibrary.simpleMessage("Login"),
        "pageLoginInput_textInputPassword_errorText":
            MessageLookupByLibrary.simpleMessage("Invalid password"),
        "pageLoginInput_textInputPassword_hintText":
            MessageLookupByLibrary.simpleMessage("Password"),
        "pageLoginInput_textInputPassword_label":
            MessageLookupByLibrary.simpleMessage("Password"),
        "pageLoginInput_textInputPhoneNumber_label":
            MessageLookupByLibrary.simpleMessage("Phone Number"),
        "pageLoginInput_textInputUsername_errorText":
            MessageLookupByLibrary.simpleMessage("Invalid username"),
        "pageLoginInput_textInputUsername_hintText":
            MessageLookupByLibrary.simpleMessage("Username"),
        "pageLoginInput_textInputUsername_label":
            MessageLookupByLibrary.simpleMessage("Username"),
        "pageLoginSelection_alertLoadFailure_title":
            MessageLookupByLibrary.simpleMessage("Oops! Login failed"),
        "pageLoginSelection_buttonEnglishLanguage_label":
            MessageLookupByLibrary.simpleMessage("English"),
        "pageLoginSelection_buttonLoginWithAppleId_label":
            MessageLookupByLibrary.simpleMessage("Login in with Apple ID"),
        "pageLoginSelection_buttonLoginWithGoogleId_label":
            MessageLookupByLibrary.simpleMessage("Login in with Google ID"),
        "pageLoginSelection_buttonLoginWithPhoneNumber_label":
            MessageLookupByLibrary.simpleMessage("Login with phone number"),
        "pageLoginSelection_buttonThaiLanguage_label":
            MessageLookupByLibrary.simpleMessage("ไทย"),
        "pageLoginSelection_textTermsAcknowledgementSection1":
            MessageLookupByLibrary.simpleMessage(
                "การติดตั้งและเข้าใช้งาน BevFood Application นี้"),
        "pageLoginSelection_textTermsAcknowledgementSection2":
            MessageLookupByLibrary.simpleMessage("ถือว่าคุณตกลงยอมรับ "),
        "pageLoginSelection_textTermsAcknowledgementSection3":
            MessageLookupByLibrary.simpleMessage("ข้อกำหนดในการให้บริษัท"),
        "pageLoginSelection_textTermsAcknowledgementSection4":
            MessageLookupByLibrary.simpleMessage(" แล้ว"),
        "pageOrderDetailsSelection_buttonCancelOrder":
            MessageLookupByLibrary.simpleMessage("Cancel Order"),
        "pageOrderDetailsSelection_buttonReorder":
            MessageLookupByLibrary.simpleMessage("Reorder"),
        "pageOrderDetailsSelection_errorStatusText":
            MessageLookupByLibrary.simpleMessage("Error status"),
        "pageOrderDetailsSelection_textFailedLoadOrder":
            MessageLookupByLibrary.simpleMessage(
                "Failed to load order details"),
        "pageOrderDetailsSelection_textOrderAddress":
            MessageLookupByLibrary.simpleMessage("Address"),
        "pageOrderDetailsSelection_textOrderDeliveryDetail":
            MessageLookupByLibrary.simpleMessage("Delivery Detail"),
        "pageOrderDetailsSelection_textOrderDeliveryfree":
            MessageLookupByLibrary.simpleMessage("Delivery Free"),
        "pageOrderDetailsSelection_textOrderDistance":
            MessageLookupByLibrary.simpleMessage("Distance from you"),
        "pageOrderDetailsSelection_textOrderHeader":
            MessageLookupByLibrary.simpleMessage("Order Details"),
        "pageOrderDetailsSelection_textOrderPaymentDetails":
            MessageLookupByLibrary.simpleMessage("Payment Details"),
        "pageOrderDetailsSelection_textOrderPaymentType":
            MessageLookupByLibrary.simpleMessage("Visa"),
        "pageOrderDetailsSelection_textOrderProductfree":
            MessageLookupByLibrary.simpleMessage("Product Free"),
        "pageOrderDetailsSelection_textOrderSummary":
            MessageLookupByLibrary.simpleMessage("Order Summary"),
        "pageOrderDetailsSelection_textOrderTotal":
            MessageLookupByLibrary.simpleMessage("Total"),
        "pageOrderDetailsSelection_textOrderTotalItem":
            MessageLookupByLibrary.simpleMessage("Item"),
        "pageOrderDetailsSelection_textPromotionItem":
            MessageLookupByLibrary.simpleMessage("Promotion item"),
        "pageOrderDetailsSelection_textPromotionPrice":
            MessageLookupByLibrary.simpleMessage("฿0"),
        "pageOrderDetailsSelection_textRightofcancellation":
            MessageLookupByLibrary.simpleMessage(
                "ผู้บริโภคมีสิทธิเลิกสัญญาโดยการส่งหนังสือแสดงเจตนาภายใน 7 วัน นับแต่วันที่ได้รับสินค้าหรือบริการ ไปยังผู้ประกอบธุรกิจตลาดแบบตรง และ ผู้ประผู้ประกอบธุรกิจ ตลาดแบบตรง จะคืนเงินเต็มจํานวนที่ผู้บริโภคจ่าย ไปเพื่อการซื้อสิ้นค้าหรือบริการนั้น ภายในกําหนดเวลา 15 วัน นับแต่วันที่ได้รับหนังสือแสดงเจตนาเลิกสัญญา"),
        "pageOrderDetailsSelection_textdeliveryDetail":
            MessageLookupByLibrary.simpleMessage("Delivery detail"),
        "pageOrderDetailsSelection_textdiscount_title":
            MessageLookupByLibrary.simpleMessage("offers use"),
        "pageOrderHistory_textCanceledFailed":
            MessageLookupByLibrary.simpleMessage("Canceled/Failed"),
        "pageOrderHistory_textCompleted":
            MessageLookupByLibrary.simpleMessage("Completed"),
        "pageOrderHistory_textError":
            MessageLookupByLibrary.simpleMessage("Error"),
        "pageOrderHistory_textOngoing":
            MessageLookupByLibrary.simpleMessage("Ongoing"),
        "pageOrderHistory_textOrderHistory":
            MessageLookupByLibrary.simpleMessage("Order History"),
        "pageOrderHistory_textTotal":
            MessageLookupByLibrary.simpleMessage("Total"),
        "pageOrder_status_foodArriveddescription":
            MessageLookupByLibrary.simpleMessage("Enjoy your meal 🍴"),
        "pageOrder_status_foodArrivedtitle":
            MessageLookupByLibrary.simpleMessage("Your food has arrived!"),
        "pageOrder_status_orderCancelled":
            MessageLookupByLibrary.simpleMessage("Order canceled"),
        "pageOrder_status_orderCancelleddescription":
            MessageLookupByLibrary.simpleMessage(
                "Sorry your order was canceled."),
        "pageOrder_status_orderConfirmeddescription":
            MessageLookupByLibrary.simpleMessage("Happiness is on the way 🍳"),
        "pageOrder_status_orderConfirmedtitle":
            MessageLookupByLibrary.simpleMessage("Order has been confirmed!"),
        "pageOrder_status_prepareyourorderdescription":
            MessageLookupByLibrary.simpleMessage(
                "Getting your order ready with care! 🎉"),
        "pageOrder_status_prepareyourordertitle":
            MessageLookupByLibrary.simpleMessage(" Prepare your order"),
        "pageOrder_status_riderOnTheWaydescription":
            MessageLookupByLibrary.simpleMessage(
                "Get ready for deliciousness 💨"),
        "pageOrder_status_riderOnTheWaytitle":
            MessageLookupByLibrary.simpleMessage("Your rider is on the way!"),
        "pageOrder_status_waitingforPaymentdescription":
            MessageLookupByLibrary.simpleMessage(
                "Please confirm your payment to proceed."),
        "pageOrder_status_waitingforPaymenttitle":
            MessageLookupByLibrary.simpleMessage("Waiting for Payment"),
        "pageOtpVerification_buttonSendOtpAgain_label": m1,
        "pageOtpVerification_textEnterOtp":
            MessageLookupByLibrary.simpleMessage("Enter the OTP code"),
        "pagePaymentSelection_textCardCvv":
            MessageLookupByLibrary.simpleMessage("CVV"),
        "pagePaymentSelection_textCardCvv_hintText":
            MessageLookupByLibrary.simpleMessage("000"),
        "pagePaymentSelection_textCardExpiryDate":
            MessageLookupByLibrary.simpleMessage("Expiry date"),
        "pagePaymentSelection_textCardExpiryDate_hintText":
            MessageLookupByLibrary.simpleMessage("MM/YY"),
        "pagePaymentSelection_textCardName":
            MessageLookupByLibrary.simpleMessage("Card Name"),
        "pagePaymentSelection_textCardName_hintText":
            MessageLookupByLibrary.simpleMessage("Card name"),
        "pagePaymentSelection_textCardNumber":
            MessageLookupByLibrary.simpleMessage("Card Number"),
        "pagePaymentSelection_textCardNumber_hintText":
            MessageLookupByLibrary.simpleMessage("Card number"),
        "pagePaymentSelection_textCountry":
            MessageLookupByLibrary.simpleMessage("Country/Region"),
        "pagePaymentSelection_textCountry_hintText":
            MessageLookupByLibrary.simpleMessage("Country/Region"),
        "pagePayment_buttonSubmit_label":
            MessageLookupByLibrary.simpleMessage("Confirm"),
        "pagePayment_textTitle_title":
            MessageLookupByLibrary.simpleMessage("Add Card"),
        "pagePreferencesSelection_alertLoadFailure_content":
            MessageLookupByLibrary.simpleMessage("โปรดลองใหม่อีกครั้ง"),
        "pagePreferencesSelection_alertLoadFailure_submitText":
            MessageLookupByLibrary.simpleMessage("Refresh"),
        "pagePreferencesSelection_alertLoadFailure_title":
            MessageLookupByLibrary.simpleMessage(
                "อุ๊ย! มีข้อผิดพลาดบางอย่างเกิดขึ้น"),
        "pagePreferencesSelection_buttonSkip_label":
            MessageLookupByLibrary.simpleMessage("Skip for Now"),
        "pagePreferencesSelection_buttonSubmit_label":
            MessageLookupByLibrary.simpleMessage("Explore Happiness!"),
        "pagePreferencesSelection_textTitleSection1":
            MessageLookupByLibrary.simpleMessage("Let\'s Discover Your "),
        "pagePreferencesSelection_textTitleSection2":
            MessageLookupByLibrary.simpleMessage("Sook"),
        "pageProductDetailSelection_textAdditionRequest":
            MessageLookupByLibrary.simpleMessage("Addition Request"),
        "pageProduct_customization_additionalInput_hintText":
            MessageLookupByLibrary.simpleMessage("Lorem ipsum dolor sit amet."),
        "pageProduct_customization_additionalInput_textInputTitle":
            MessageLookupByLibrary.simpleMessage("Addition Request"),
        "pageProduct_customization_optionalGroup_optional": m3,
        "pageProduct_customization_optionalGroup_priceForm": m4,
        "pageProduct_customization_optionalGroup_required": m5,
        "pageProduct_customization_optionalGroup_requiredSign":
            MessageLookupByLibrary.simpleMessage(" *"),
        "pageProduct_customization_productCustomizationDetails_priceForm": m6,
        "pageProduct_customization_productCustomizationFooter_notSelectRequiredOption_content":
            MessageLookupByLibrary.simpleMessage(
                "กรุณาเลือกตัวเลือกที่จําเป็น"),
        "pageProduct_customization_productCustomizationFooter_notSelectRequiredOption_title":
            MessageLookupByLibrary.simpleMessage("ไม่สามารถเพิ่มสินค้าได้"),
        "pageProduct_customization_productCustomizationFooter_textAddFailure":
            MessageLookupByLibrary.simpleMessage("Failure add to cart"),
        "pageProduct_customization_productCustomizationFooter_textAddSuccess":
            MessageLookupByLibrary.simpleMessage("Item added to cart"),
        "pageProduct_customization_productCustomizationFooter_textAddToCart":
            MessageLookupByLibrary.simpleMessage("Add to cart"),
        "pageProduct_customization_productCustomizationFooter_textDeleteFailure":
            MessageLookupByLibrary.simpleMessage("Failure to Delete item"),
        "pageProduct_customization_productCustomizationFooter_textDeleteFromCart":
            MessageLookupByLibrary.simpleMessage("Delete from cart"),
        "pageProduct_customization_productCustomizationFooter_textDeleteSuccess":
            MessageLookupByLibrary.simpleMessage("Item deleled from cart"),
        "pageProduct_customization_productCustomizationFooter_textUpdateFailure":
            MessageLookupByLibrary.simpleMessage("Failure to update cart"),
        "pageProduct_customization_productCustomizationFooter_textUpdateSuccess":
            MessageLookupByLibrary.simpleMessage("Item in cart updated"),
        "pageProduct_customization_productCustomizationFooter_textUpdateToCart":
            MessageLookupByLibrary.simpleMessage("Update cart"),
        "pageProduct_customization_storeNavigator_routeLable":
            MessageLookupByLibrary.simpleMessage("More products "),
        "pageProduct_customization_storeNavigator_storeLable":
            MessageLookupByLibrary.simpleMessage(
                "You\'re viewing products from "),
        "pageProduct_customization_textOptionalLabel":
            MessageLookupByLibrary.simpleMessage(" (Optional)"),
        "pageProduct_customization_textRequiredLabel":
            MessageLookupByLibrary.simpleMessage(" (Required)"),
        "pageRegistration_buttonSubmit_label":
            MessageLookupByLibrary.simpleMessage("Register"),
        "pageRegistration_textAddress":
            MessageLookupByLibrary.simpleMessage("Address"),
        "pageRegistration_textRegistration":
            MessageLookupByLibrary.simpleMessage("Registration"),
        "pageStore_addAnother_textSection1":
            MessageLookupByLibrary.simpleMessage("เพิ่มอีก"),
        "pageStore_addAnother_textSection2":
            MessageLookupByLibrary.simpleMessage("เพื่อรับส่วนลด"),
        "pageStore_addAnother_textSection3":
            MessageLookupByLibrary.simpleMessage(""),
        "pageStore_addButton_title":
            MessageLookupByLibrary.simpleMessage("เพิ่มรายการใหม่"),
        "pageStore_alertLoadFailure_content":
            MessageLookupByLibrary.simpleMessage("โปรดลองอีกครั้งในภายหลัง"),
        "pageStore_alertLoadFailure_submitText":
            MessageLookupByLibrary.simpleMessage("รีเฟรช"),
        "pageStore_alertLoadFailure_title":
            MessageLookupByLibrary.simpleMessage("บางอย่างผิดพลาด"),
        "pageStore_applyCouponButton_label":
            MessageLookupByLibrary.simpleMessage("ใช้"),
        "pageStore_basketButton_title":
            MessageLookupByLibrary.simpleMessage("ตระกร้าของฉัน"),
        "pageStore_editButton_title":
            MessageLookupByLibrary.simpleMessage("แก้ไข"),
        "pageStore_freeDelivery_textSection1":
            MessageLookupByLibrary.simpleMessage("ส่งฟรี"),
        "pageStore_freeDelivery_textSection2":
            MessageLookupByLibrary.simpleMessage("เมื่อสั่ง"),
        "pageStore_promotion_text":
            MessageLookupByLibrary.simpleMessage("โปรโมชั่น"),
        "pageStore_removeCouponButton_label":
            MessageLookupByLibrary.simpleMessage("ลบ"),
        "pageStore_seeAll_text":
            MessageLookupByLibrary.simpleMessage("ทั้งหมด"),
        "pageStore_specialOffer_text":
            MessageLookupByLibrary.simpleMessage("ข้อเสนอพิเศษ 🔥"),
        "pageStore_storeClosedAlert_content":
            MessageLookupByLibrary.simpleMessage(
                "ไม่ต้องกังวล ยังมีตัวเลือกอร่อย ๆ อีกมากมายให้คุณสำรวจ! ✨"),
        "pageStore_storeClosedAlert_submitText":
            MessageLookupByLibrary.simpleMessage("สำรวจเพิ่มเติม!"),
        "pageStore_storeClosedAlert_title":
            MessageLookupByLibrary.simpleMessage("ร้านค้าปิดให้บริการในขณะนี้"),
        "pageStore_supplierClosed_text":
            MessageLookupByLibrary.simpleMessage("ปิด"),
        "pageStore_supplierFree_text":
            MessageLookupByLibrary.simpleMessage("ฟรี"),
        "pageStore_supplierMinutes_text":
            MessageLookupByLibrary.simpleMessage("นาที"),
        "pageTermsAndConditionsSetting_collection_of_personal_data":
            MessageLookupByLibrary.simpleMessage("Collection of Personal Data"),
        "pageTermsAndConditionsSetting_company_privacy_statement":
            MessageLookupByLibrary.simpleMessage(
                "Our company prioritizes the privacy and protection of your personal data. To comply with Thailand’s Personal Data Protection Act (PDPA), we outline the"),
        "pageTermsAndConditionsSetting_data_usage_text":
            MessageLookupByLibrary.simpleMessage(
                "Providing the services you request Enhancing and developing our website or application Communicating news, promotions, or related benefits Data Retention We will securely store your personal data in a system that complies with standards and prevents unauthorized access."),
        "pageTermsAndConditionsSetting_following_terms":
            MessageLookupByLibrary.simpleMessage("following terms:"),
        "pageTermsAndConditionsSetting_personal_data_collection_text":
            MessageLookupByLibrary.simpleMessage(
                "We collect personal data such as your name, phone number, email address, and other related information for the purposes of providing services, improving service quality, and sharing relevant updates."),
        "pageTermsAndConditionsSetting_personal_data_rights_extended":
            MessageLookupByLibrary.simpleMessage(
                "You have the right to access, request modifications, or delete your personal data. You also have the right to withdraw consent for the use of your data by contacting us through the specified channels. \nDisclosure of Data \nWe will not disclose your personal data to third parties unless with your consent or as required by law. \nPlease check the boxes below to confirm that you have read and accepted these terms and conditions:"),
        "pageTermsAndConditionsSetting_personal_data_usage_purpose":
            MessageLookupByLibrary.simpleMessage(
                "Your personal data will be used for:"),
        "pageTermsAndConditionsSetting_personal_text":
            MessageLookupByLibrary.simpleMessage(
                "Personal Data Protection Policy (PDPA)"),
        "pageTermsAndConditionsSetting_purpose_of_data_usage":
            MessageLookupByLibrary.simpleMessage("Purpose of Data Usage"),
        "pageTermsAndConditionsSetting_rights_of_data_owners":
            MessageLookupByLibrary.simpleMessage("Rights of Data Owners"),
        "pageTermsAndConditionsSetting_terms_and_conditions":
            MessageLookupByLibrary.simpleMessage(
                "Terms and Conditions of Service"),
        "pageTermsAndConditionsSetting_terms_and_service":
            MessageLookupByLibrary.simpleMessage("Terms of Service"),
        "pageUserOfferDetails_text_No_Data":
            MessageLookupByLibrary.simpleMessage("No Data"),
        "pageUserOfferDetails_text_Unexpected_error":
            MessageLookupByLibrary.simpleMessage("Unexpected error occurred"),
        "pageUserOfferDetails_text_contact":
            MessageLookupByLibrary.simpleMessage("Contact Info"),
        "pageUserOfferDetails_text_termdetail":
            MessageLookupByLibrary.simpleMessage(
                "  By using any coupon or promotional code on the Sook App, you agree that promotions are valid for a limited time, subject to specific conditions, and cannot be combined with other offers unless stated otherwise. Each coupon is non-transferable, redeemable once per user, and must be applied before checkout. Misuse or fraudulent activity may result in cancellation of the promotion or suspension of your account. Sook reserves the right to modify, suspend, or cancel promotions at any time without notice. For details or assistance, please contact our support team."),
        "page_orderLocation_addAddress":
            MessageLookupByLibrary.simpleMessage("เพิ่มที่อยู่"),
        "page_orderLocation_bottomSheet_additional":
            MessageLookupByLibrary.simpleMessage("รายละเอียดเพิ่มเติม"),
        "page_orderLocation_bottomSheet_building":
            MessageLookupByLibrary.simpleMessage("อาคาร"),
        "page_orderLocation_bottomSheet_choose_building":
            MessageLookupByLibrary.simpleMessage("เลือกอาคาร"),
        "page_orderLocation_bottomSheet_choose_floor":
            MessageLookupByLibrary.simpleMessage("เลือกชั้น"),
        "page_orderLocation_bottomSheet_company_name":
            MessageLookupByLibrary.simpleMessage("ชื่อบริษัท"),
        "page_orderLocation_bottomSheet_default":
            MessageLookupByLibrary.simpleMessage("ที่อยู่ปัจจุบัน"),
        "page_orderLocation_bottomSheet_error_content":
            MessageLookupByLibrary.simpleMessage("โปรดลองใหม่อีกครั้ง"),
        "page_orderLocation_bottomSheet_error_phone_number_must_be_10_digits":
            MessageLookupByLibrary.simpleMessage("เบอร์โทรศัพท์ต้องมี 10 หลัก"),
        "page_orderLocation_bottomSheet_error_phone_number_required":
            MessageLookupByLibrary.simpleMessage("เบอร์โทรศัพท์ต้องมี"),
        "page_orderLocation_bottomSheet_error_title":
            MessageLookupByLibrary.simpleMessage("ข้อผิดพลาด"),
        "page_orderLocation_bottomSheet_floor":
            MessageLookupByLibrary.simpleMessage("ชั้น"),
        "page_orderLocation_bottomSheet_no_address":
            MessageLookupByLibrary.simpleMessage("ไม่พบที่อยู่"),
        "page_orderLocation_bottomSheet_no_address_search": m2,
        "page_orderLocation_bottomSheet_note":
            MessageLookupByLibrary.simpleMessage("หมายเหตุ"),
        "page_orderLocation_bottomSheet_number":
            MessageLookupByLibrary.simpleMessage("เบอร์โทรศัพท์"),
        "page_orderLocation_bottomSheet_select":
            MessageLookupByLibrary.simpleMessage("เลือก"),
        "page_orderLocation_bottomSheet_set_default":
            MessageLookupByLibrary.simpleMessage("ตั้งเป็นที่อยู่ปัจจุบัน"),
        "page_orderLocation_bottomSheet_title":
            MessageLookupByLibrary.simpleMessage("รายละเอียดที่อยู่"),
        "page_orderLocation_current_location":
            MessageLookupByLibrary.simpleMessage("ที่อยู่ปัจจุบัน"),
        "page_orderLocation_error_404": MessageLookupByLibrary.simpleMessage(
            "000002\nทรัพยากรที่ร้องขอไม่มีอยู่บนเซิร์ฟเวอร์"),
        "page_orderLocation_error_content_try_again":
            MessageLookupByLibrary.simpleMessage("000001\nโปรดลองใหม่อีกครั้ง"),
        "page_orderLocation_recent":
            MessageLookupByLibrary.simpleMessage("รายการที่ดูเมื่อล่าสุด"),
        "page_orderLocation_saved":
            MessageLookupByLibrary.simpleMessage("บันทึก"),
        "page_orderLocation_search":
            MessageLookupByLibrary.simpleMessage("ค้นหาที่อยู่"),
        "page_orderLocation_title":
            MessageLookupByLibrary.simpleMessage("เลือกที่อยู่"),
        "pageuserOfferDetails_button_text_Usenow":
            MessageLookupByLibrary.simpleMessage("Use now"),
        "pageuserOfferDetails_text_term":
            MessageLookupByLibrary.simpleMessage("Terms of Service"),
        "pageuserOfferDetails_title_end":
            MessageLookupByLibrary.simpleMessage("Ends"),
        "pageuserOfferDetails_title_start":
            MessageLookupByLibrary.simpleMessage("Starts"),
        "pageuserOfferPage_hintText_Search":
            MessageLookupByLibrary.simpleMessage("Enter your code"),
        "pageuserOfferpage_CouponsFailurer_text_failed_load":
            MessageLookupByLibrary.simpleMessage("Failed to load coupons"),
        "pageuserOfferpage_appbar_text_UserOffers":
            MessageLookupByLibrary.simpleMessage("User Offers"),
        "pageuserOfferpage_coupons_text_card":
            MessageLookupByLibrary.simpleMessage(" at "),
        "pageuserOfferpage_coupons_text_failed_No_minimum":
            MessageLookupByLibrary.simpleMessage("จำกัดจำนวน"),
        "pageuserOfferpage_coupons_text_failed_No_minimum_spend":
            MessageLookupByLibrary.simpleMessage("No minimum spend"),
            

      };
}
