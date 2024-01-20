import 'package:flutter/material.dart';
import 'package:telly/presentation/notification_screen/notification_screen.dart';
import 'package:telly/presentation/appointment_detail_screen/appointment_detail_screen.dart';
import 'package:telly/presentation/payment_form_screen/payment_form_screen.dart';
import 'package:telly/presentation/appointments_cancelled_tab_container_screen/appointments_cancelled_tab_container_screen.dart';
import 'package:telly/presentation/transactions_paid_screen/transactions_paid_screen.dart';
import 'package:telly/presentation/reschedule_appointment_confirmed_screen/reschedule_appointment_confirmed_screen.dart';
import 'package:telly/presentation/home_container_screen/home_container_screen.dart';
import 'package:telly/presentation/appointments_upcoming_screen/appointments_upcoming_screen.dart';
import 'package:telly/presentation/reschedule_check_time_slots_screen/reschedule_check_time_slots_screen.dart';
import 'package:telly/presentation/reschedule_select_day_screen/reschedule_select_day_screen.dart';
import 'package:telly/presentation/appointments_upcoming_no_appointment_screen/appointments_upcoming_no_appointment_screen.dart';
import 'package:telly/presentation/appointment_detail_initial_load_screen/appointment_detail_initial_load_screen.dart';
import 'package:telly/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String notificationScreen = '/notification_screen';

  static const String appointmentDetailScreen = '/appointment_detail_screen';

  static const String transactionsCancelledPage =
      '/transactions_cancelled_page';

  static const String transactionsCancelledTabContainerPage =
      '/transactions_cancelled_tab_container_page';

  static const String paymentFormScreen = '/payment_form_screen';

  static const String appointmentsCancelledPage =
      '/appointments_cancelled_page';

  static const String appointmentsCancelledTabContainerScreen =
      '/appointments_cancelled_tab_container_screen';

  static const String appointmentsIncomingPage = '/appointments_incoming_page';

  static const String transactionsPaidScreen = '/transactions_paid_screen';

  static const String appointmentsCompletedPage =
      '/appointments_completed_page';

  static const String rescheduleAppointmentConfirmedScreen =
      '/reschedule_appointment_confirmed_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String appointmentsUpcomingScreen =
      '/appointments_upcoming_screen';

  static const String rescheduleCheckTimeSlotsScreen =
      '/reschedule_check_time_slots_screen';

  static const String rescheduleSelectDayScreen =
      '/reschedule_select_day_screen';

  static const String appointmentsUpcomingNoAppointmentScreen =
      '/appointments_upcoming_no_appointment_screen';

  static const String appointmentsUpcomingOnePage =
      '/appointments_upcoming_one_page';

  static const String transactionsIncomingPage = '/transactions_incoming_page';

  static const String appointmentDetailInitialLoadScreen =
      '/appointment_detail_initial_load_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        notificationScreen: NotificationScreen.builder,
        appointmentDetailScreen: AppointmentDetailScreen.builder,
        paymentFormScreen: PaymentFormScreen.builder,
        appointmentsCancelledTabContainerScreen:
            AppointmentsCancelledTabContainerScreen.builder,
        transactionsPaidScreen: TransactionsPaidScreen.builder,
        rescheduleAppointmentConfirmedScreen:
            RescheduleAppointmentConfirmedScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        appointmentsUpcomingScreen: AppointmentsUpcomingScreen.builder,
        rescheduleCheckTimeSlotsScreen: RescheduleCheckTimeSlotsScreen.builder,
        rescheduleSelectDayScreen: RescheduleSelectDayScreen.builder,
        appointmentsUpcomingNoAppointmentScreen:
            AppointmentsUpcomingNoAppointmentScreen.builder,
        appointmentDetailInitialLoadScreen:
            AppointmentDetailInitialLoadScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: NotificationScreen.builder
      };
}
