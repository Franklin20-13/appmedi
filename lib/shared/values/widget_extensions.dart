part of values;

void launchScreenWithNewTask(context, String tag) {
  Navigator.pushNamedAndRemoveUntil(context, tag, (r) => false);
}

finish(context) {
  Navigator.pop(context);
}

void launchScreen(context, String tag, {Object? arguments}) {
  if (arguments == null) {
    Navigator.pushNamed(context, tag);
  } else {
    Navigator.pushNamed(context, tag, arguments: arguments);
  }
}



void showInSnackBar(BuildContext context, String value,
    {Color color = AppColors.primaryColor}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: color,
    duration: const Duration(milliseconds: 9000),
    content: Text(
      value,
      style: const TextStyle(color: Colors.white),
    ),
  ));
}

void message(BuildContext context, String message, {double fontSize = 16.0}) {
  alertManpan(
    context,
    isVisibleCancel: false,
    title: Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(3),
          topRight: Radius.circular(3),
        ),
      ),
      child: Center(
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: fontSize,
          ),
        ),
      ),
    ),
    confirm: (() => Navigator.pop(context)),
    onCloseModal: () {},
  );
}

void alert(BuildContext context,
    {String text = '', VoidCallback? confirm, VoidCallback? cancel}) {
  showDialog(
    context: context,
    builder: (buildcontext) {
      return CupertinoAlertDialog(
        title: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text(
              'Aceptar',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onPressed: () => confirm!(),
          ),
          CupertinoDialogAction(
            child: Text(
              'Cancelar',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onPressed: () => cancel!(),
          ),
        ],
      );
    },
  );
}

Future<void> alertManpan(BuildContext context,
    {required Widget title,
    Widget? content,
    VoidCallback? confirm,
    VoidCallback? cancel,
    required VoidCallback onCloseModal,
    String textAcepted = "Aceptar",
    bool isVisibleCancel = true}) {
  return showDialog<void>(
    context: context,
    useSafeArea: true,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        scrollable: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(MyAsstes.logo),fit: BoxFit.fill)
              ),
            ).paddingTop(10),
            
          ],
        ),
        content: title,
        contentPadding: EdgeInsets.zero,
        titlePadding: const EdgeInsets.symmetric(horizontal: 0),
        actionsAlignment: MainAxisAlignment.center,
        actionsPadding: const EdgeInsets.only(bottom: 15),
        actions: <Widget>[
          InkWell(
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text(
                  textAcepted,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            onTap: () => confirm!(),
          ).paddingRight(20),
          if (isVisibleCancel)
            InkWell(
              child: Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: const Center(
                  child: Text(
                    "Cancelar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onTap: () => cancel!(),
            )
        ],
      );
    },
  ).then((value) {
    onCloseModal();
    return;
  });
}

class ProgressDialog {
  final BuildContext context;
  ProgressDialog(this.context);
  void show() {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white.withOpacity(0.7),
        child: const CupertinoActivityIndicator(
          radius: 15,
        ),
      ),
    );
  }

  void dismiss() {
    Navigator.pop(context);
  }
}

extension WidgetExtension on Widget {
  Padding paddingBottom(double bottom) {
    return Padding(padding: EdgeInsets.only(bottom: bottom), child: this);
  }

  Padding paddingTop(double top) {
    return Padding(padding: EdgeInsets.only(top: top), child: this);
  }

  Container containerForm(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        padding: const EdgeInsets.only(left: 10),
        child: this);
  }

  SizedBox sizedBox(double widht, double height) {
    return SizedBox(
      width: widht,
      height: height,
    );
  }

  SizedBox withSize({double width = 0.0, double height = 0.0}) {
    return SizedBox(height: height, width: width, child: this);
  }

  SizedBox withWidth(double width) {
    return SizedBox(width: width, child: this);
  }

  SizedBox withHeight(double height) {
    return SizedBox(height: height, child: this);
  }

  ClipRRect cornerRadiusWithClipRRect(double radius) {
    return ClipRRect(borderRadius: BorderRadius.circular(radius), child: this);
  }

  Padding paddingSymmetric({double vertical = 0.0, double horizontal = 0.0}) {
    return Padding(
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this);
  }

  Padding paddingLeft(double left) {
    return Padding(padding: EdgeInsets.only(left: left), child: this);
  }

  Padding paddingRight(double right) {
    return Padding(padding: EdgeInsets.only(right: right), child: this);
  }

  Padding paddingOnly(
      {double top = 0.0,
      double left = 0.0,
      double bottom = 0.0,
      double right = 0.0}) {
    return Padding(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom), child: this);
  }

  Padding paddingConstOnly() {
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 10), child: this);
  }

  Padding paddingAll(double padding) {
    return Padding(padding: EdgeInsets.all(padding), child: this);
  }

  double sizeContext(BuildContext context, {bool isWidth = true}) {
    return isWidth
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.height;
  }

  Widget visible(bool visible) {
    return visible ? this : const SizedBox();
  }

  Widget containerCard({Color color = Colors.grey, double radius = 30}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: this,
      ),
    );
  }

  Visibility withVisibility(
    bool visible, {
    Widget? replacement,
    bool maintainAnimation = false,
    bool maintainState = false,
    bool maintainSize = false,
    bool maintainSemantics = false,
    bool maintainInteractivity = false,
  }) {
    return Visibility(
      visible: visible,
      maintainAnimation: maintainAnimation,
      maintainInteractivity: maintainInteractivity,
      maintainSemantics: maintainSemantics,
      maintainSize: maintainSize,
      maintainState: maintainState,
      key: key,
      replacement: replacement ?? Container(),
      child: this,
    );
  }

  Widget opacity({required double opacity, durationInSecond = 3}) {
    return AnimatedOpacity(
        opacity: opacity,
        duration: Duration(seconds: durationInSecond),
        child: this);
  }

  Widget rotate(
      {required double angle, bool transformHitTests = true, Offset? origin}) {
    return Transform.rotate(
        origin: origin,
        angle: angle,
        transformHitTests: transformHitTests,
        child: this);
  }

  Widget center({double? heightFactor, double? widthFactor}) {
    return Center(
        heightFactor: heightFactor, widthFactor: widthFactor, child: this);
  }

  Widget onTap(Function function,
      {BorderRadius borderRadius =
          const BorderRadius.all(Radius.circular(0))}) {
    return InkWell(
      onTap: function(),
      borderRadius: borderRadius,
      child: this,
    );
  }

  launch<T>(context) {
    if (this is StatelessWidget || this is StatefulWidget) {
      Navigator.of(context).push(MaterialPageRoute<T>(builder: (_) => this));
    } else {
      throw Exception(
          'Error: Widget should be StatelessWidget or StatefulWidget');
    }
  }
}
