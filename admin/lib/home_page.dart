import 'package:flutter/material.dart';
import 'package:logic/blocs/admin_home_bloc.dart';
import 'package:provider/provider.dart';
import 'package:ui/export_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => AdminHomeBloc(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const TitleTextView(
            text: adminPanelTitle,
          ),
        ),
        body: Consumer(
          builder: (BuildContext context, AdminHomeBloc bloc, Widget? child) =>
              Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: marginMedium2,
                  vertical: marginXLarge,
                ),
                child: Column(
                  children: [
                    TextFieldView(
                      title: notificationTitle,
                      hint: hintNotificationTitle,
                      onChange: (value) =>
                          bloc.onChangeNotificationTitle(value: value),
                    ),
                    const SizedBox(
                      height: marginMedium3,
                    ),
                    TextFieldView(
                      title: notificationBody,
                      hint: hintNotificationBody,
                      onChange: (value) =>
                          bloc.onChangeNotificationBody(value: value),
                    ),
                    ButtonView(
                      text: sendNotification,
                      icon: Icons.send_rounded,
                      onTap: () => bloc.sendNotification(),
                      margin: const EdgeInsets.only(
                        top: marginMedium3,
                      ),
                    ),
                  ],
                ),
              ),
              LoadingView(
                showLoading: bloc.isLoading,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoadingView extends StatelessWidget {
  final bool showLoading;

  const LoadingView({
    super.key,
    required this.showLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showLoading,
      child: Card(
        color: colorWhite,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: marginMedium2,
            vertical: marginMedium2,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CircularProgressIndicator(),
              SizedBox(
                height: marginMedium3,
              ),
              Text(
                loadingLabel,
                style: TextStyle(
                  fontSize: textRegular3,
                  fontWeight: FontWeight.w600,
                  color: colorPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
