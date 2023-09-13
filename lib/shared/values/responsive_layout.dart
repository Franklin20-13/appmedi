part of values;

class ResponsiveShowBottomShet extends StatelessWidget {
  final Widget child;
  final double? height;
  const ResponsiveShowBottomShet(
      {super.key, required this.child, this.height});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        switch (sizingInformation.deviceScreenType) {
          case DeviceScreenType.mobile:
            return SizedBox(
              height:
                  height == 0 ? MediaQuery.of(context).size.height / 2 : height,
              child: child,
            );
          case DeviceScreenType.tablet:
            return Container(
              height: MediaQuery.of(context).size.height / 2,
              padding: EdgeInsets.symmetric(
                horizontal: getValueForScreenType<double>(
                  context: context,
                  mobile: double.infinity,
                  tablet: 100,
                ),
              ),
              child: child,
            );
          default:
            return Container();
        }
      },
    );
  }
}
