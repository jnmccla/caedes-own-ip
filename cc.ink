== characterCreation ==
= name
EXTERNAL prompt(message, default)
~firstName = prompt("What is your first name?", "Olivia")
Thank you, {firstName} Jones.
Next is some demographic information.

* {gender == "default"}Continue
    -> genderChoice
+ {gender != "default"}Change gender
    -> genderChoice
+ {gender != "default"}Skip to change pronouns
    ->pronounChoice
+ {gender != "default"}Skip to retaking the psychological evaluation
    ->psychEval
+ {gender != "default"} I'm done.
    ->results



= genderChoice
What is your gender? You will select pronouns separately.

+ Woman
    ~gender = "woman"
+ Man
    ~gender = "man"
+ Nonbinary/other
    ~gender = "nb"

-
{Next you will choose your pronouns.|Do you want to change your pronouns as well?}
+ {xe == "xe"}Continue
    -> pronounChoice
+ {xe != "xe"}Change name
    -> name
+ {gender != "default"}Change pronouns
    ->pronounChoice
+ {gender != "default"}Skip to retaking the psychological evaluation
    ->psychEval
+ {gender != "default"} I'm done.
    ->results
= pronounChoice
What pronouns do you use?

+ She/her
    ~Xe="She"
    ~xe="she"
    ~Xer="Her"
    ~xer="her"
    ~Xers="Her"
    ~xers="her"
    ~Xerss="Hers"
    ~xerss="hers"
    ~pronouns += p_she
+ He/him
    ~Xe="He"
    ~xe="he"
    ~Xer="Him"
    ~xer="him"
    ~Xers="His"
    ~xers="his"
    ~Xerss="His"
    ~xerss="his"
    ~pronouns += p_he
+ They/them
    ~Xe="They"
    ~xe="they"
    ~Xer="Them"
    ~xer="them"
    ~Xers="Their"
    ~xers="their"
    ~Xerss="Theirs"
    ~xerss="theirs"
    ~pronouns += p_they

+ It/its
    ~Xe="It"
    ~xe="it"
    ~Xer="It"
    ~xer="it"
    ~Xers="Its"
    ~xers="its"
    ~Xerss="Its"
    ~xerss="its"
    ~pronouns += p_it
-
Data restored. Next is a brief psychological evaluation.
* {totalStats == 0}Continue to the psychological evaluation
    -> psychEval
+ {totalStats != 0}Change name
    -> name
+ {totalStats != 0}Change gender
    ->genderChoice
+ {totalStats != 0}Change pronouns
    ->pronounChoice
+ {totalStats != 0}Continue to the psychological evaluation
    ->psychEval
+ {totalStats != 0} I'm done.
    ->results
->psychEval
= psychEval 
~ jonesFace = 0
~ jonesExpert = 0
~ jonesMuscle = 0
~ jonesFixer = 0
~ jonesDistraction = 0
{|Very well, let's try this again.}

*Continue
-

1. Why do you want to join Caedes?
    + [For the love of adventure]
        ~alter(jonesDistraction,1)
    + [To test yourself mentally.]
        ~alter(jonesFixer,1)
    + [To test yourself phyiscally.]
        ~alter(jonesMuscle,1)
    + [For the knowledge and resources.]
        ~alter(jonesExpert,1)
    + [To expand you network of friends and connections.]
        ~alter(jonesFace,1)
    * You don't have a choice. #locked

-
#CLEAR
2. You have been sent on a mission to gather intelligence on an enemy base. How do you handle it?

    + [Stake out the location for a few days to get as much of the lay of the land as possible.]
        ~alter(jonesExpert,1)
    + [Size up the security. Even in the best laid plan, you might need to incapacitate them.]
        ~alter(jonesMuscle,1)
    + [Infiltrate their ranks. Fake ID, stolen uniform, act like you belong. In and out.]
        ~alter(jonesFace,1)
    + [You have backup plans upon backup plans and a gut that's never steered you wrong.]
        ~alter(jonesFixer,1)
    + [Create a commotion elsewhere. Fire alarm. Actual fire. Whatever gets the job done.]
        ~alter(jonesDistraction,1)
-
#CLEAR
3. Your team is having a party to celebrate a successful operation. What are you doing?
    + {jonesFace < 2}[Socializing, never staying with one group for too long.]  
        ~alter(jonesFace,1)
    + {jonesExpert < 2}[People watching is more entertaining than participating.]
        ~alter(jonesExpert,1)
    + [Competing, whether it's pool, darts, arm wrestling -- something you can win from skill or strength.]
        ~alter(jonesMuscle,1)
    + [Placing bets, taking dares, smuggling in firecrackers. You know, the fun stuff.]
        ~alter(jonesDistraction,1)
    + {jonesFixer < 2}[Keeping the party going. New playlists, fresh drinks, getting the wallflowers to the right group, you name it, you've got it covered.]
        ~alter(jonesFixer,1)
- 
#CLEAR
4. You have a free day. How do you spend it?
    + {jonesDistraction < 3}[Finding something new to do, like an arcade you haven't been to, or a hobby you haven't tried.]
        ~alter(jonesDistraction,1)
    + {jonesFixer < 2}[Something to challenge myself, whether it's beating a video game high score, timing your emergency evacuation plan, entering a bowling tournament, or anything in between.]
        ~alter(jonesFixer,1)
    + {jonesExpert < 2}[Reviewing mission reports, reading, or any other work, professional or personal, you're in the middle of.]
        ~alter(jonesExpert,1)
    + {jonesFace < 2}[Hanging out with friends, or finding new friends to meet.]
        ~alter(jonesFace,1)
    + {jonesMuscle < 3}[Playing a sport, working out, maybe even a little Dance Dance Revolution with some friends.]
        ~alter(jonesMuscle,1)
-
#CLEAR
5. You have an important mission in the morning, and you're not prepared at all. How do you handle this? 
    + {jonesFixer < 2}[No sweat. You perform your best under pressure.]
        ~alter(jonesFixer,1)
    + {jonesDistraction < 3}[No sweat. You perform your best with no plan and a whole lot of smoke bombs. Metaphorically speaking.]
        ~alter(jonesDistraction,1)
    + {jonesExpert < 2}[You figure out the most important things to go over and focus on those, and make sure to get plenty of rest so you'll be at peak performance in the morning.]
        ~alter(jonesExpert,1)
    + {jonesMuscle < 3}[Push through the night preparing. You can rest later.]
        ~alter(jonesMuscle,1) 
    + {jonesFace < 2}[Get your team together to prepare. They can help you with some things, and maybe you're better prepared than them on others.]
        ~alter(jonesFace, 1)
-
#CLEAR
6. The operation went south. It was your fault. Why?
    + {jonesMuscle < 3}[You were ready for a fight, but were outmaneuvered before the first blow.]
        ~alter(jonesMuscle,1)
    + {jonesFixer < 2}[All of your back up plans failed, and you couldn't adapt.]
        ~alter(jonesFixer,1)
    + {jonesFace < 2}[You got into a situation you couldn't talk your way out of.]
        ~alter(jonesFace,1)
    + {jonesDistraction < 3}[You didn't take the plans seriously enough, and your improvisations failed.]
        ~alter(jonesDistraction,1)
    + {jonesExpert < 2}[You were so sure in your intel, you were blindsided by last minute changes in the enemy base.]
        ~alter(jonesExpert,1)
-
#CLEAR
7. Pick an object for your next mission.
    + {jonesMuscle < 3}[A knife.]
        ~alter(jonesMuscle,1)
    + {jonesExpert < 2}[Binoculars.]
        ~alter(jonesExpert,1)
    + {jonesFixer < 2}[A screwdriver.]
        ~alter(jonesFixer,1)
    + {jonesFace < 2}[An exclusive invitation.]
        ~alter(jonesFace,1)
    + {jonesDistraction < 3}[A lucky coin.]
        ~alter(jonesDistraction,1)
-
#CLEAR
8. Finally, what do you value most in yourself?
    + [My mind.]
        ~alter(jonesExpert,2)
    + [My approachability.]
        ~alter(jonesFace,2)
    + [My individuality.]
        ~alter(jonesDistraction,2)
    + [My fortitude.]
        ~alter(jonesMuscle,2)
    + [My levelheadedness]
        ~alter(jonesFixer,2)

- 
#CLEAR
{jonesExpert > 3:
    ~jonesExpert=3
    }
{jonesMuscle > 3:
    ~jonesMuscle=3
    }
{jonesFace > 3:
    ~jonesFace=3
    }
{jonesFixer > 3:
    ~jonesFixer=3
    }
{jonesDistraction > 3:
    ~jonesDistraction=3
    }

~jonesExpert --
~jonesMuscle --
~jonesFace --
~jonesFixer --
~jonesDistraction --

~addStats(0)

{ totalStats < 3 && jonesMuscle == 2 && jonesDistraction == 2 && jonesFixer <= 0:
    ~jonesFixer++
    }
    
~addStats(0)

{ totalStats < 3 && jonesMuscle == 2 && jonesDistraction == 2 && jonesFace <= 0:
    ~jonesFace++
    }
    
~addStats(0)

{totalStats > 3 && jonesFace == 0:
    ~jonesFace--
    }
    
~addStats(0)

{totalStats > 3 && jonesExpert == 0:
    ~jonesExpert--
    }
    
~addStats(0)

{totalStats > 3 && jonesFixer == 0:
    ~jonesExpert--
    }
~addStats(0)

/**
Expert {jonesExpert}
Muscle {jonesMuscle}
Face {jonesFace}
Fixer {jonesFixer}
Distraction {jonesDistraction}
Total {totalStats}
**/
->results
= results
So your name is {firstName} Jones. You are {gender == "nb": neither a man or a woman|a {gender}}, and your pronouns are {xe}/{xer}. According to your evaluation, you  are {jonesFace > 0:charming... }{jonesExpert > 0:intelligent... }{jonesMuscle > 0:hardy... }{jonesFixer > 0:unflappable... }{jonesDistraction > 0: unique... }Just what we're looking for in our new recruits.
Is this accurate?
* [Yes] 
#CLEAR
-> letsBegin
+ [No]
    What is incorrect?
    ++ Name
        #CLEAR
        ->name
    ++ Gender
        #CLEAR
        ->genderChoice
    ++ Pronouns
        #CLEAR 
        ->pronounChoice
    ++ Psychological evaluation results
        #CLEAR 
        -> psychEval

== letsBegin
Perfect. We look forward to your imminent enrollment.
*[Begin.]
#CLEAR
    -> intro
    
    
    
    