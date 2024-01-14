

State Vector Elements:
- Flag: Is Active player (1)
- Bids in this trick (4 elements)
- Trump suit ( 4 elements) ([-1,-1,1,0] would mean player before me chose trump suit, and I didn't have to bid)
- Number of the round (1 element)
- Number of the trick (1 element)
- Current score for the player's team (3 elements, representing hundreds, tens, and units)
- Current score for the opponent team (3 elements, representing hundreds, tens, and units)
- Cards in hand of the active player (36 elements)
- Cards on table for the current trick (36 elements)
- Combination of all cards in other players’ hands (36 elements)
- Combination of all cards in other teams won tricks (36 elements)
- Combination of all cards in other teams won tricks (36 elements)
- First suit played (4 elements)
- Order of the current player in trick (4 elements)
- Order of the player who showed and announced bonus combination (4 elements)
- Flag: Player announced 'twenty' (1 element)
- Flag: Player announced 'fifty' (1 element)
- Flag: Player showed 'twenty' (1 element)
- Flag: Player showed 'fifty' (1 element)
- Number of 'twenty' combinations announced and shown (1 element)
- Number of 'fifty' combinations announced and shown (1 element)
- Flag: Order of player who announced and showed the King (K) and Queen (Q) of the trump suit ('bella') (4 element)

from bridge
    '''
    ## input
      0:32  player hand
     32:64  seen hand (dummy, or declarer if we create data for dummy)
     64:96  last trick card 0
     96:128 last trick card 1
    128:160 last trick card 2
    160:192 last trick card 3
    192:224 this trick lho card
    224:256 this trick pard card
    256:288 this trick rho card
    288:292 last trick lead player index one-hot
        292 level
    293:298 strain one hot N, S, H, D, C

    ## output
    0:32 card to play in current trick
    '''