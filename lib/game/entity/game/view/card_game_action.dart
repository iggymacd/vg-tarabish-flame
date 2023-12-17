// // Create a new class representing the cardGame view.
// import 'package:vg_tarabish_flame/game/entity/game/card_game.dart';

// class CardGameView {
//   // A constructor that takes a CardGame record and a currentCommand.
//   CardGameView(
//     this.cardGame, {
//     required this.commands,
//     this.currentCommand = 0,
//   }) {
//     // Initialize the commands list.
//     // commands = [];
//   }

//   // List<CardGameCommand> emptyCommandList() => List.empty();
//   // A reference to a CardGame record.
//   late CardGame cardGame;

//   // A reference to a currentCommand of type int.
//   int currentCommand;

//   // A list of card game commands.
//   final List<CardGameCommand> commands;

//   // A method to execute a command.
//   void executeCommand(CardGameCommand command) {
//     // Add the command to the commands list.
//     commands.add(command);

//     // Execute the command on the current view.
//     // command.execute(this);
//   }

//   // A method to get the current command.
//   CardGameCommand getCurrentCommand() {
//     return commands[currentCommand];
//   }

//   // A method to get the previous command.
//   CardGameCommand getPreviousCommand() {
//     return commands[currentCommand - 1];
//   }

//   // A method to get the next command.
//   CardGameCommand getNextCommand() {
//     return commands[currentCommand + 1];
//   }

//   // A method to get the first command.
//   CardGameCommand getFirstCommand() {
//     return commands[0];
//   }

//   // A method to get the last command.
//   CardGameCommand getLastCommand() {
//     return commands[commands.length - 1];
//   }
// }

// class CardGameCommand {
//   // void execute(CardGameView cardGameView) {}
// }
// import 'package:freezed/freezed.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_game_action.freezed.dart';

@freezed
sealed class CardGameAction with _$CardGameAction {
  const factory CardGameAction.play() = Play;
  const factory CardGameAction.draw(
    int count,
    int? from,
  ) = Draw;
  const factory CardGameAction.discard() = Discard;
  const factory CardGameAction.pass() = Pass;
  const factory CardGameAction.shuffle() = Shuffle;
  const factory CardGameAction.deal() = Deal;
}
