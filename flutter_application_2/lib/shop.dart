
import 'package:flutter/widgets.dart';
//import 'package:flutter_application_2/button.dart';
// import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:modal_side_sheet/modal_side_sheet.dart';
import 'package:flutter/material.dart';
import 'count.dart';
import 'insideshop.dart';
//import 'package:flutter/scheduler.dart';
//import 'package:flutter_animate/flutter_animate.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:provider/provider.dart';

//import 'dashboard07_count_card_copy_model.dart';
//export 'dashboard07_count_card_copy_model.dart';



class shop extends StatefulWidget {


  @override
  State<shop> createState() =>
      _ShopState();
}

class _ShopState extends State<shop>
    with TickerProviderStateMixin {
  //late Dashboard07CountCardCopyModel _model;
/*
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 90),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Dashboard07CountCardCopyModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }
*/
void selected() {
  setState(() {
  selectedState = !selectedState;
});
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
      child: Material(
        color: Colors.transparent,
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), 
        ),
        child: ElevatedButton(
            child: Icon(Icons.shopping_cart_checkout),
            onPressed: () {
              showModalSideSheet(
                width: MediaQuery.sizeOf(context).width * 0.6,
                context: context, 
                body: shopper(),
              );
                } )));
            
            }
        /* child: Container(
          width: MediaQuery.sizeOf(context).width * 0.2,
          height: MediaQuery.sizeOf(context).height * 0.15,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x2B202529),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(6),
            child: ModalBottomSheet(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {selected();},
                isSelected: selectedState,
                icon: Icon(Icons.scatter_plot,
                color: iconColor
                ),
                focusColor: iconColor,
                hoverColor: Colors.brown.withOpacity(0.2),
                splashColor: Color.fromARGB(255, 162, 18, 8),
                highlightColor: Colors.transparent,
                iconSize: 44,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 4),
                  child: Text(
                    seedCount.toString(),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Text(
                  'Seeds',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xFF57636C),
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ),*/
      
  }
    