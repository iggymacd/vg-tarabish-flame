import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vg_tarabish_flame/bloc/tavern_bloc.dart';
import 'package:vg_tarabish_flame/start_game/bloc/start_game_bloc.dart';

class ChooseGameTypeDialog extends StatefulWidget {
  const ChooseGameTypeDialog({Key? key}) : super(key: key);

  @override
  _ChooseGameTypeDialogState createState() => _ChooseGameTypeDialogState();
}

class _ChooseGameTypeDialogState extends State<ChooseGameTypeDialog> {
  bool _showDialog = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Choose a game type",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pop();
                    context.read<StartGameBloc>().add(
                        const StartGameEvent.chooseGameType(
                            gameType: 'Solitaire'));
                  },
                  child: Text("Solitaire"),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    context.read<StartGameBloc>().add(
                        const StartGameEvent.chooseGameType(
                            gameType: 'Tarabish'));
                  },
                  child: const Text("Tarabish"),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          )
        ],
      ),
    )
        // Center(
        //   child: ElevatedButton(
        //     onPressed: () {
        //       setState(() {
        //         _showDialog = true;
        //       });
        //     },
        //     child: Text("New Game"),
        //   ),
        // ),
        // bottomSheet: _showDialog
        //     ? Container(
        //         height: MediaQuery.of(context).size.height * 0.8,
        //         decoration: BoxDecoration(
        //             color: Colors.white, borderRadius: BorderRadius.circular(20)),
        //         padding: EdgeInsets.all(20),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(
        //               "Choose a game type",
        //               style: Theme.of(context).textTheme.headline6,
        //             ),
        //             SizedBox(height: 20),
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               children: [
        //                 Expanded(
        //                   flex: 1,
        //                   child: ElevatedButton(
        //                     onPressed: () {},
        //                     child: Text("Game Type 1"),
        //                   ),
        //                 ),
        //                 SizedBox(width: 20),
        //                 Expanded(
        //                   flex: 1,
        //                   child: ElevatedButton(
        //                     onPressed: () {},
        //                     child: Text("Game Type 2"),
        //                   ),
        //                 )
        //               ],
        //             ),
        //             SizedBox(height: 20),
        //             ElevatedButton(
        //               onPressed: () {
        //                 Navigator.pop(context);
        //               },
        //               child: Text("Cancel"),
        //             )
        //           ],
        //         ),
        //       )
        //     : null,
        );
  }
}
