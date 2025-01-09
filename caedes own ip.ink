#author: ambrolen
#title: Caedes

INCLUDE Stats.ink
INCLUDE Functions.ink
INCLUDE cc.ink
INCLUDE Introduction.ink

VAR currentRoll = false

->start

== start ==
Welcome to Caedes, ¿? Jones. P -- 
Corrupt data detected.
Please enter missing data:

* Continue
    ->characterCreation
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