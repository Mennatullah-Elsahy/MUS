import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListAnimator extends StatefulWidget {
  final List<Widget>? data;
  final int? durationMilli;
  final double? verticalOffset;
  final double? horizontalOffset;
  final ScrollController? controller;
  final direction;
  final addPadding;
  final bool scroll;
  final customPadding;
  final Stream<int>? scrollControllerStream;

  const ListAnimator({
    this.controller,
    Key? key,
    this.data,
    this.durationMilli,
    this.verticalOffset,
    this.horizontalOffset,
    this.direction,
    this.addPadding = true,
    this.customPadding,
    this.scrollControllerStream,
    this.scroll = true,
  }) : super(key: key);

  @override
  _ListAnimatorState createState() => _ListAnimatorState();
}

class _ListAnimatorState extends State<ListAnimator> {

 
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
        stream: widget.scrollControllerStream,
        builder: (context, snapshot) {
          // if(snapshot.hasData){
          //   autoScroll.scrollToIndex(snapshot.data ,preferPosition: AutoScrollPosition.middle );
          // }
          return AnimationLimiter(
            child: ListView.builder(
              controller: widget.controller,
                padding: widget.customPadding ??
                    EdgeInsets.only(top: widget.addPadding ? 0 : 0),
                physics: widget.scroll
                    ? const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics())
                    : const NeverScrollableScrollPhysics(),
                  // controller: autoScroll,
                shrinkWrap: true,
                scrollDirection: widget.direction ?? Axis.vertical,
                itemBuilder:(BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                        position: index,
                        duration:
                            Duration(milliseconds: widget.durationMilli ?? 375),
                        child: SlideAnimation(
                            verticalOffset: widget.verticalOffset ?? 0.0,
                            child:
                                FadeInAnimation(child: widget.data![index])));},
              itemCount: widget.data!.length,
                 ),
          );
        });
  }
}