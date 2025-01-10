#author: ambrolen
#title: Caedes

INCLUDE Stats.ink
INCLUDE Functions.ink
INCLUDE cc.ink
INCLUDE Introduction.ink

VAR currentRoll = false
TODO Add a start screen with credits. Options?
->start

== start ==
TODO national guard letterhead maybe? make it look more like a letter
~ typical(jonesExpert)
{ currentRoll:
    ~ alter(jonesSuspicious_Brigid, 1)
    <stat>Expert<end> - {chance(jonesExpert)} <inc>Success
    [info side = highlight]Something seems <mark>off</mark>...[/info]
    You think you smell something like burning hair, but you quickly forget about it as you help the person <>
    - else:
    <stat>Expert<end> - {chance(jonesExpert)} <dec>Failure
    You help them <>
}
straighten up, and your face breaks into a wide grin. "Brigid?"

Ms. Olivia Jones, we at the Army National Guard are pleased to report you have passed your initial eligibility asessment. We have scheduled your appointment to sign the necessary paperwork at 14:00 this upcoming Tuesday, in accordance with the class schedule you provided us.
We would request you fill out one final evaluation at least 24 hours before that appointment. This evaluation will not affect your eligibility, merely help us understand your unique strengths and how best to utilize them.

* [➔]
    ->psychEval
    /*
* Test Dice
    ~jonesExpert++
    -> testDice
    
== testDice
-(opts)
~typical(jonesExpert)

{currentRoll:
    True!
    -else:
    False!
    }

+retry
    ->opts
+second location
->test2
*end
    -> END


== test2
~typical(jonesExpert)
{currentRoll:
    True!
    -else:
    False!
    }
+retry
->testDice
*/