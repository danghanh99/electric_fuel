import 'package:flutter/material.dart';

class DialogSetting extends StatelessWidget {
  final String title;
  final Widget body;

  const DialogSetting({
    required this.title,
    required this.body,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: _buildDialogContent(context),
    );
  }

  static const route = 'dialog_setting';

  static void showDialogSetting({
    required BuildContext context,
    required String title,
    required Widget body,
  }) {
    showDialog(
        context: context,
        routeSettings: RouteSettings(name: DialogSetting.route),
        builder: (BuildContext contex) {
          return DialogSetting(
            body: body,
            title: title,
          );
        });
  }

  Widget _buildDialogContent(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTitle(),
                body,
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTitle() {
    // return Text(
    //   title,
    //   textAlign: TextAlign.center,
    //   maxLines: 2,
    //   // style: TextStyles.HEADING_2.apply(
    //   //   color: AppColors.PRIMARY_COLOR,
    //   //   fontStyle: FontStyle.normal,
    //   // ),
    // );
    return Row(children: <Widget>[
      Expanded(
          child: Divider(
        color: Colors.green,
      )),
      Text(
        title,
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
      Expanded(
          child: Divider(
        color: Colors.green,
      )),
    ]);
  }
}
