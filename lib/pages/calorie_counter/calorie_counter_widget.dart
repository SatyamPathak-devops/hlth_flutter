import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calorie_counter_model.dart';
export 'calorie_counter_model.dart';

class CalorieCounterWidget extends StatefulWidget {
  const CalorieCounterWidget({Key? key}) : super(key: key);

  @override
  _CalorieCounterWidgetState createState() => _CalorieCounterWidgetState();
}

class _CalorieCounterWidgetState extends State<CalorieCounterWidget> {
  late CalorieCounterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalorieCounterModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.04, -0.94),
              child: Text(
                'Calorie Counter',
                style: FlutterFlowTheme.of(context).displaySmall,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.91),
              child: Container(
                width: 380.4,
                height: 655.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
