Welcome to Caedes, ¿? Jones. P -- 
Corrupt data detected.
Please enter missing data:

* Continue
    ->characterCreation
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

So your name is {firstName} Jones. You are {gender == "nb": neither a man or a woman|a {gender}}, and your pronouns are {xe}/{xer}. 
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
=== function is_are(x)
    {
    - LIST_COUNT(x) == 1:
        ~ return "is"
    - x ^ p_he || x ^ p_she || x ^ p_it:
        ~ return "is"
    - else:
        ~ return "are"
    }
    
    
    /* Jones Pronouns */
VAR Xe = "Xe"
VAR xe = "xe"
VAR Xer = "Xer"
VAR xer = "xer"
VAR Xers = "Xers"
VAR xers = "xers"
VAR Xerss = "Xers"
VAR xerss = "xers"

LIST pronouns = p_he, p_she, p_they, p_it
    
    
    
    
    