import 'package:demo/presentation/route/route_name.dart';
import 'package:flutter/material.dart';

import '../ui/auth/biometric-options/view/biometric_options_page.dart';
import '../ui/auth/change-password/view/change_password_page.dart';
import '../ui/auth/code-confirmation/view/code_confirmation_page.dart';
import '../ui/auth/code-confirmation/viewmodel/code_confirmation_view_model.dart';
import '../ui/auth/login/view/login_page.dart';
import '../ui/auth/option/view/auth_option_page.dart';
import '../ui/auth/password-reset/view/password_reset_page.dart';
import '../ui/auth/pin-setting/view/pin_setting_page.dart';
import '../ui/auth/registration/view/registration_page.dart';
import '../ui/main/main/view/main_page.dart';
import '../ui/main/main/viewmodel/main_view_model.dart';
import '../ui/main/notifications/view/notifications_page.dart';
import '../ui/payment/confirm-transaction/view/confitm_transaction_page.dart';
import '../ui/payment/payment-result/view/payment_result_page.dart';
import '../ui/payment/payment-result/viewmodel/payment_result_view_model.dart';
import '../ui/payment/payment/view/payment_page.dart';
import '../ui/side/account-setting/view/account_setting_page.dart';
import '../ui/side/cards/card_info/view/card_info_page.dart';
import '../ui/side/cards/card_info/viewmodel/card_info_view_model.dart';
import '../ui/side/cards/cards-details/view/cards_details_page.dart';
import '../ui/side/cards/user-cards/view/user_cards_page.dart';
import '../ui/side/contact-us/view/contact_us_page.dart';
import '../ui/side/faqs/view/faqs_page.dart';
import '../ui/side/favorite/edit-favorite/view/edit_favorite_page.dart';
import '../ui/side/favorite/favorite/view/favorite_page.dart';
import '../ui/side/renew-password/view/renew_password_page.dart';
import '../ui/side/terms-and-conditions/view/terms_and_conditions_page.dart';
import '../ui/side/transfers/view/transfer_page.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case RouteName.authOptionPage:
        return push(const AuthOptionPage());

      case RouteName.loginPage:
        return push(const LoginPage());

      case RouteName.registrationPage:
        return push(const RegistrationPage());

      case RouteName.passwordResetPage:
        return push(const PasswordResetPage());

      case RouteName.changePasswordPage:
        final model = args as String;
        return push(ChangePasswordPage(token: model));

      case RouteName.biometricOptionsPage:
        return push(const BiometricOptionsPage());

      case RouteName.codeConfirmationPage:
        final pageState = args as PreviousPage;
        return push(CodeConfirmationPage(previousPage: pageState));

      case RouteName.pinSettingPage:
        return push(const PinSettingPage());

      case RouteName.confirmTransactionPage:
        return push(const ConfirmTransactionPage());

      case RouteName.paymentPage:
        return push(const PaymentPage());

      case RouteName.mainPage:
        final entranceState = args as EntranceState;
        return push(MainPage(entranceState: entranceState));

      case RouteName.accountSettingPage:
        return push(const AccountSettingPage());

      case RouteName.renewPasswordPage:
        return push(const RenewPasswordPage());

      case RouteName.faqPage:
        return push(const FaqsPage());

      case RouteName.contactUsPage:
        return push(const ContactUsPage());

      case RouteName.termsAndConditionsPage:
        return push(const TermsAndConditionsPage());

      case RouteName.favoritePage:
        return push(const FavoritePage());

      case RouteName.editFavoritePage:
        return push(const EditFavoritePage());

      case RouteName.notificationsPage:
        return push(const NotificationsPage());

      case RouteName.userCardsPage:
        return push(const UserCardsPage());

      case RouteName.cardsDetailsPage:
        return push(const CardsDetailsPage());

      case RouteName.transfers:
        return push(const TransferPage());

      case RouteName.cardInfo:
        final arguments = args as List;
        final entranceState = arguments[0] as EntranceState;
        final pageState = arguments[1] as CardInfoPageState;
        return push(CardInfoPage(
          entranceState: entranceState,
          pageState: pageState,
        ));

      case RouteName.paymentResultPage:
        final paymentResult = args as PaymentResult;
        return push(PaymentResultPage(paymentResult: paymentResult));

      default:
        return errorRoute();
    }
  }

  static push(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }

  static present(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget, fullscreenDialog: true);
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(title: const Text("ERROR")),
          body: const Center(
            child: Text("PAGE NOT FOUND!!!"),
          ),
        );
      },
    );
  }
}
