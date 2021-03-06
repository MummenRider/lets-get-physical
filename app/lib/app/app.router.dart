// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../models/user_account.dart';
import '../screens/add_post/add_post_view.dart';
import '../screens/home/home_view.dart';
import '../screens/news_feed/news_feed_view.dart';
import '../screens/profile/user_profile_view.dart';
import '../screens/profile_edit/user_profile_edit_view.dart';
import '../screens/sign_in/sign_in_view.dart';
import '../screens/sign_up/sign_up_view.dart';
import '../screens/splash/splash_view.dart';
import '../screens/welcome/welcome_view.dart';

class Routes {
  static const String splashView = '/';
  static const String welcomeView = '/welcome-view';
  static const String homeView = '/home-view';
  static const String newsFeedView = '/news-feed-view';
  static const String addPostView = '/add-post-view';
  static const String signInView = '/sign-in-view';
  static const String signUpView = '/sign-up-view';
  static const String userProfileView = '/user-profile-view';
  static const String userProfileEditView = '/user-profile-edit-view';
  static const all = <String>{
    splashView,
    welcomeView,
    homeView,
    newsFeedView,
    addPostView,
    signInView,
    signUpView,
    userProfileView,
    userProfileEditView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.welcomeView, page: WelcomeView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.newsFeedView, page: NewsFeedView),
    RouteDef(Routes.addPostView, page: AddPostView),
    RouteDef(Routes.signInView, page: SignInView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.userProfileView, page: UserProfileView),
    RouteDef(Routes.userProfileEditView, page: UserProfileEditView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashView(),
        settings: data,
      );
    },
    WelcomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomeView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    NewsFeedView: (data) {
      var args = data.getArgs<NewsFeedViewArguments>(
        orElse: () => NewsFeedViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewsFeedView(key: args.key),
        settings: data,
      );
    },
    AddPostView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddPostView(),
        settings: data,
      );
    },
    SignInView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignInView(),
        settings: data,
      );
    },
    SignUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignUpView(),
        settings: data,
      );
    },
    UserProfileView: (data) {
      var args = data.getArgs<UserProfileViewArguments>(
        orElse: () => UserProfileViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserProfileView(key: args.key),
        settings: data,
      );
    },
    UserProfileEditView: (data) {
      var args = data.getArgs<UserProfileEditViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserProfileEditView(account: args.account),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// NewsFeedView arguments holder class
class NewsFeedViewArguments {
  final Key key;
  NewsFeedViewArguments({this.key});
}

/// UserProfileView arguments holder class
class UserProfileViewArguments {
  final Key key;
  UserProfileViewArguments({this.key});
}

/// UserProfileEditView arguments holder class
class UserProfileEditViewArguments {
  final UserAccount account;
  UserProfileEditViewArguments({@required this.account});
}
