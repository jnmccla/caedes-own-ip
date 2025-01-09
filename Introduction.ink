VAR know_names = false
== intro == 
In a different world, maybe it wouldn't have been you.
Maybe it wouldn't have been your dad -- your family.
Maybe it would have been someone who actually wanted this, or at least was good at it.
Or, maybe, in every world, every timeline, you are always Jones, freshman animation student, staring at an email on your phone reminding you of the quickly approaching deadline to pay for your first semester of school.
Your phone vibrates and a caller ID takes up the screen.
* [ ]


-
<b>NATIONAL GUARD - PECULIAR RECRUITMENT OFFICE</b>
And there's the potential paycheck now.
What do you do?
* [Ignore it.]
    ~alter(jonesRelationship_Thomas,-1)
    [info side = highlight]You can feel your recruiter's <mark>disappointment</mark> through the phone. [/info]
     You ignore it. It's probably <>
* [Answer it quickly.]
    ~alter(jonesRelationship_Thomas,1)
    [info side = highlight] Surely your recruiter will <mark>appreciate</mark> your promptness. [/info]
    You answer it before the first ring ends, but it's <>
* [Let it ring for a bit before answering.]
    You don't want to seem too eager, but it probably wouldn't look good to ignore it completely. When you do pick up, it's <>

- just a robocaller reminding you about your appointment this afternoon, pretty soon after your next (and last) class of the day. You don't have a car yet, but you're sure your trusty scooter will do the job of getting you there well enough. 
The trusty scooter that you almost lose complete control over as someone tumbles into you. You recover quickly, though, and end up saving your accidental aggressor from falling face first onto the brick walkway.
* [Whoops]
#CLEAR
-

#AUDIO: dice.mp3
~ typical(jonesExpert)
{ currentRoll:
    ~ alter(jonesSuspicious_Brigid, 1)
    [info side = highlight]Smarts: Success [/info]
    [info side = highlight]Something seems <mark>off</mark>...[/info]
    You think you smell something like burning hair, but you quickly forget about it as you help the person <>
    - else:
    [info side = highlight]Smarts: Failure [/info]
    You help them <>
}
straighten up, and your face breaks into a wide grin. "Brigid?"

Brigid looks at you through long strands of hair that she quickly pulls out of her face and ties into a loose ponytail. Her expression goes from worried to confused to surprised as she looks you up and down. "Jones? I didn't expect to see you on this side of campus!"
 * [Joke]"I can tell, since you ran right into me."
    She rolls her eyes, but can't help but smile. "I see a post-graduation summer didn't improve your sense of humor."
    "Maybe it didn't improve <i>yours</i>!" you tease back.
* "What does <i>that</i> mean?"
    [info side = highlight]Brigid <mark>Disapproves</mark>[/info]
    ~ alter(jonesRelationship_Brigid, -1)
    She looks a little crestfallen. "I just meant I thought all your classes would be in the art building, rather than over here where it's mostly literature and history and... stuff."
    You feel a bit sheepish. "Yeah, I guess I just -- sorry."
* "It must be fate!"[] you say with a grin.
    [info side = highlight]Brigid <mark>Approves</mark>[/info]
    ~alter(jonesRelationship_Brigid, 1)
    She laughs, smiling like you're the first good thing to happen to her today.

- 
* [ ]
#CLEAR
-
"So what <i>are</i> you doing on this side of campus?" Brigid asks.
"Just heading to my last class of the day. Some weird elective that seemed like the perfect intersection of not too boring but not too hard to fill a general ed req, you know?" It wasn't <i>technically</i> a lie.
Brigid nods. "S-same for me, really."
* [ ]
-
You perk up. Brigid was always more serious in her studies than you, and that, on top of different majors, made you worried the two of you would drift apart as friends. But she's taking a blow-off class, too? "Oh yeah? What class?"
"Oh. Um." Brigid turns a bit red. "It-it's a class about the paranormal?" She looks at you sheepishly, as though expecting you to laugh at her.
What a coincidence, you're <i>also</i> headeded to a class on the paranormal!

* [Laugh]
    ~ alter(jonesRelationship_Brigid, -1)
    [info side = highlight]Brigid <mark>Disapproves</mark>[/info]
    You laugh. You can't help it! You did <i>not</i> expect Brigid to say <i>that</i>!
    You realize your mistake almost immediately as Brigid flushes even redder and fixes her eyes on the groun.
    "Oh, no! I just mean --" You stumble over your words trying to walk it back. "I'm in that class, too! Probably. Third floor of the Reede and Quill building? I was just surprised, is all."
    Brigid looks up, still looking apprehensive, but manages a smile. "Oh, okay then."
    You're not sure why she was so weird about taking that class, anyway. It's not like <i>she</i> has some vague family secret that led her to consider some absolutely bonkers conspiracy theories that couldn't possibly be true. No, you're probably in a unique position there.
* [Reassure]
    "Hey, nothing weird about that! I'm in that class, too, actually," you say, laying a comforting hand on her shoulder.
    She still looks a little embarrassed, but mostly relieved.
    Yep, definitely not weird to be in that class. No one could have any ulterier motives at all. Definitely nothing like some vague family secret that could hint at some deeper conspiracy. Not at all!
* [Ignore the sheepishness]
    ~ alter(jonesRelationship_Brigid, 1)
    [info side = highlight]Brigid <mark>Approves</mark>[/info]
    "Oh, me, too!" you say excitedly. "Unless this school is weirder than I thought and there's more than one paranormal class."
    Brigid manages a chuckle and looks relieved. She's always been too self-conscious for her own good. It's not like <i>she</i> has some vague family secret that led her to consider some absolutely bonkers conspiracy theories that couldn't possibly be true. No, you're probably in a unique position there.

- {jonesRelationship_Brigid >= 2:
    You feel like there's something she's not quite telling you, but you're sure she'll get to it in her own time.
    - else:
        She seems really distant, though. Did the two of you grow apart that much during the summer?
    }
    * [Head to class] 
    #CLEAR
    -> first_class
   
   
   /* ---------------------------------

   First Class 

 ----------------------------------*/
== first_class ==
It was a quick walk to the building and up a couple flights of stairs and to room 313. You were almost ten minutes early, much earlier than you would have been if you hadn't run into Brigid (ADHD is a hell of a drug). To your surprise, not only was the classroom open, a student was already sitting in the front row of the room, writing furiously in his notebook, not sparing either you or Brigid a glance as you enter. Normally that wouldn't bug you, but something about him seems familiar. If only you could get a better look at his face...
    "Welcome Brigid and Jones," the professor (a middle-aged man who looked like the poster child for the profession) greets, smiling widely and jarring you out of your musings.
    
    * "How'd you know our names?"
        ~ alter(jonesSuspicious_Osbourne, 1)
        ~know_names = true
         [info side = highlight]Something seems <mark>off</mark>...[/info]
        His smile doesn't drop as he raises an eyebrow and taps a piece of paper on his desk. "Class roster. They <i>do</i> let me know who signs up for my course."
        Is he laughing at you? "But how did you know to use my last name?" Most professors called you by your first until you corrected them, and even then it would probably be hit or miss, if high school teachers were any indication.
        He taps the paper again. "Other teachers can add relevant notes. Nicknames, pronouns, the like. I printed this off just a few minutes ago to make sure the information was up to date."
        ** [ ]
            --
        #CLEAR
        It sounds reasonable enough, but you definitely feel like he's laughing at you. Like there's some joke he's in on and you're not. Whatever. You grab a befuddled Brigid and lead her to a pair of desks in the back of the room.
        The professor eventually stops staring at the two of you, and instead leans forward in his chair, his elbows on the table, his chin in his and, and closes his eyes as though lost in thought. That odd smile is still on his face, though.
    * ["Hi."]
        "Uh. Hi," you say, eyes already on a pair of desks in the back of the room.
        The professor doesn't so much as blink at your less-than-enthusiastic response, just turns his smile expectantly to Brigid, who mutters who own greeting, then quickly follows you to the desks you're zone in on.
        He eventually stops staring at the two of you and instead leans forward in his chair, his elbows on the desk, his chin in his and, and his eyes closed as though lost in thought. He still smiles, however, like someone who knows something you don't and thinks it's funny.
    -
    *[Wait for the bell to ring.]
    #CLEAR
    -
Only a handful more students wander in by the time the school's clock tower chimes out the new hour, and you don't think you recognize any of them. You expect the professor to give them the same greeting he gave you, but he merely glances at them and nods politely as they take their seats, most of them toward the back like you and Brigid, and none joining the man in the front row.
It feels weird calling a college student a man, but he definitely looks older than any of your other classmates by a few years at least. How in the world do you know him?

* [ ]
#CLEAR
-
 After the last chime rings out, the professor stands up, leisurely walks to the door and closes it with an uncomfortably loud click, then to the whiteboard behind his desk.
  
"My name is Professor Osbourne, and this is Paranormal 101," Osbourne says. He writes as much on the board with a bright red marker. "As this is a class that is neither required nor recommended for any major, and is also open to unenrolled students, I assume you are all here because of your love for the occult and the stories we have made about them through the millennia." He turns around and smiles at the class. You see the man in the front nod absently, but no one else reacts.
 #AUDIO: dice.mp3
    ~ typical(jonesExpert)
    {currentRoll:
        ~ alter(jonesSuspicious_Brigid, 1)
        [info side = highlight]Smarts: Success[/info]
        [info side = highlight]Something seems <mark>off</mark>...[/info]
        Except Brigid, who is winding her hair around her finger -- one of her tell-tale nervous habits.
        ~jonesKnows += brigidNervous
       - else:
        [info side = highlight]Smarts: Failure[/info]
    }
Unphased, Professor Osbourne continues, "I am required to provide a syllabus, but rest assured I will be more than flexible should there be any extenuating circumstances that requires the lesson plan be shuffled around." With this, he begins passing out the small stack of single-page syllabi. You get the impression he's resisting a wink when he hands yours to you. Why is this guy so weird?
    *   [Read syllabus]
        #CLEAR
        ->read_Syllabus
    *   [Ignore the syllabus]
        ~ alter(jonesChange_Expert, -1)
          Yeah, you're not reading that. Even if you have your own reasons for being here, it's <i>still</i> a blow-off class, and you doubt the syllabus has anything important on it.
          [info side = highlight]You feel yourself grow less <mark>Intelligent</mark>.[/info]
          -> continue_Class 

= read_Syllabus
~ jonesKnows += syllabus
You may be new to college, but you thought syllabi generally had... more. This has one class date listed for each week with vague things like "Q&A" and "Hands on" listed next to them. What does "hands on" even mean for an occult studies class? You're not sure you want to know. There are also only a few tests listed, which doesn't seem like enough, even for a blow-off class.
The only other thing of note is a list of relevant topics:
<ul>
    <li>Blood and Sacrifice</li>
    <li>Changelings and Imposters</li>
    <li>Destruction and Loss</li>
    <li>What is lurking in the dark?</li>
    <li>Cults and Their Ilk</li>
    <li>TBA</li>
</ul>
* That's weird, right?
    ~alter(jonesSuspicious_Osbourne,1)
    [info side = highlight][Something seems <mark>off</mark>...][/info]
    You guess the subjects make sense, but you've never heard of a professor having a "TBA" on a syllabus. Does the school not approve these? Does Professor Osbourne not have a full class planned? How hard is it to fill out more paranormal topics? Like bigfoot, vampires, ghosts, aliens, you could go on, and you're not the one teaching! 
    You try to subtly look at the professor as he hands out the last few syllabi, but he manages to catch your eye and smiles for a moment before focusing back on the other students.
* You guess it's fine?
    You're a freshman and this is your first day of school. You don't exactly know what the average college class is like outside of what you've seen on TV, much less a blow off class on the paranormal. Maybe <i>lots</i> of tiny classes have a "TBA" on their syllabus!
    -
* [Look to see Brigid's reaction.]
    ~alter(jonesSuspicious_Brigid,1)
    ~alter(jonesRelationship_Brigid,1)
     [info side = highlight]Something seems <mark>off</mark>...[/info]
    You look over at Brigid, who seems to be studying the paper pretty hard, flipping it over to the back like she hopes there's more. A lock of hair is wound tight around one finger<>
    {jonesKnows != brigidNervous:
        , a classic tell that Brigid's nervous.
        ~jonesKnows += brigidNervous
        - else:
        .
        }
    [info side = highlight]You think you <mark>understand Brigid</mark> a bit better. [/info]
* [Look to see the guy at the front's reaction.]
    ~alter(jonesSuspicious_Felixe,1)
    ~alter(jonesRelationship_Felixe,1)
     [info side = highlight]Something seems <mark>off</mark>...[/info]
    You try to subtly crane your neck to see if the guy's reaction will give you any clue to how you know him, but he was one of the first to get the syllabus, so you don't even see it on his desk, he's just writing furiously in his notebook. You <i>do</i> see a balled up piece of paper in his open backpack that you don't think was there before.
    [info side = highlight][You think you're starting to <mark>figure him out</mark>.][/info]
 
- 
*[Continue class]
#CLEAR
-> continue_Class
= continue_Class

When the professor finishes, he walks back to his desk and stands next to it, facing the students. "Now," he says, eyes sweeping meaningfully across the room, "who would like to give a shot at answering why they think the study of the unnatural still intrigues and excites us, even in this modern day of science?"
    The man in the front row raises his hand almost immediately.
"Ah, yes, Felixe..." Professor Osbourne's smile fades slightly, and he tilts his head, brow ever so slightly wrinkled. "What was your last name again?"
    
    *{know_names}[Maybe he should check his fancy piece of paper.]
    * [ ]
 -   
 "Felixe is fine," the man says dismissively. "We, as a species, have an interest in the paranormal because we are desparate to explain the unexplainable. Since science will never be able to fully explain everything, paranormal explanations and intrigue will reamin."
    The professor's smile is broad and more genuine than it seemed before. "As expected of our local fantasy author."
    * We have a local fantasy author? [] Well, Brigid seems to recognize him, at least. <>
    * Is that why you recognize him? [] Maybe it's as simple as seeing him around bookstores or something. Brigid seems to recognize him, too. <>
    -
You hear her make a startled, "Oh!" You catch her eye and she signals that she'll explain after class. You think. Really that hand wave could have technically meant several things. Nah, she'll definitely tell you after class.
    * [ ]
    #CLEAR
-
"However," Osbourne continues, "you did not take it all the way back to the source."
    Felixe, who had gone back to his writing, pauses, but doesn't look back up.
Apparently the professor takes this as his signal to continue. "Why are we so obsessed with explaining the unexplainable?"
"Natural human curiosity," Felixe answers swiftly.
Professor Osbourne tuts, but his smile remains. "A common error in thought. It is <i>fear</i> that drives us. Fear of the unknown. Fear of the strange. Fear of the other. We give those fears a name, an explanation, and sometimes even create wards or rituals to pretend we have some control over what we can't see or understand."
    * [Wards?]
-
#AUDIO: dice.mp3
    ~ typical(jonesExpert)
{currentRoll:
    [info side = highlight]Smarts: Success[/info]
        That rings a bell to you, but you can't put your finger on why. Something related to how you know Felixe? You'll think about it more after class.
    - else:
    [info side = highlight]Smarts: Failure[/info]
        The thought is gone as soon as you try to grasp it. Probably nothing.
    }
Felixe snorts and resumes writing in his notebook.
The professor's smile freezes in place and his eyes narrow. "You disagree?"
Felixe sighs heavily and puts his pencil down with a deliberateness you've seen your teachers use when they're making a point of being done with whatever shenanigans you've been up to. He looks at the professor silently for a moment. "Yes," he finally says, then shrugs, "but it's your class, not mine."
* [ ]
#CLEAR
-
VAR interrupt = false
Is this... how people talked to teachers in college? Professor Osbourne seems content with the answer, but maybe that's only because Felixe is an adult.
    Well, <i>you're</i> an adult, too, but, like, a <i>real</i> adult. A published author, apparently.
    * [Interrupt] 

        -> i_aint_scared_of_no_monsters
    * [Let them keep going] 
    Professor Osbourne spreads his arms graciously, "If you have a critique, by all means, don't hold back." His smile feels like a trap, and you catch Brigid fidgeting nervously out the corner of your eye.
        "I think I've made my critiques pretty clear already, and despite the impression I seem to be making, I <i>am</i> here to learn, even if I don't agree with everything being said. You have all semester to convince me."
        Trap averted?
        "That seems reasonable enough. Though I doubt it will take me all semester to do so."
        Felixe just snorts and goes back to his writing, and the professor doesn't pursue it any further.
        ** [Make it through the rest of class]  
        -> totallyNotBoring
        #CLEAR
    = i_aint_scared_of_no_monsters
    ~interrupt = true
    "I'm not scared of monsters," you say abruptly, barely realizing you had the thought before it left your mouth.
    Felixe glances back at you for a second, but Brigid and the other students turn to look between you and the professor expectantly.
    Osbourne's first smile is back, the one where it seems like he's laughing at you. "Ms. Jones, yes?" he asks, as though he didn't greet you by name when you first came in. "Would you care to elaborate?"
    
    *[Answer seriously.]
        ~alter(jonesChange_Muscle, 1)
        ~alter(jonesRelationship_Felixe, -1)
        "I mean, monsters aren't real, right?" There's an awkward silence as they all look at you. "And, I mean, even if they were, I know how to use a gun, so, blam! blam! You know." You mime shooting a shotgun, like the one your dad started teaching you how to use when you were young. No one says anything, still, and you shrug. "Not afraid of what I can defend myself against, I guess."
        [info side = highlight]Felixe <mark>Disapproves</mark>[/info]
        [info side = highlight]You feel yourself grow more <mark>Hardier.</mark>[/info]
    *[Give a goofy answer]
        ~alter(jonesChange_Face,1)
        ~alter(jonesRelationship_Felixe, 1)
        ~alter(jonesRelationship_Brigid, 1)
        [info side = highlight][Brigid <mark>Approves</mark>][/info]
        [info side = highlight][Felixe <mark>Approves</mark>][/info] 
        "I will simply smooch them," you say matter-of-factly. Brigid giggles with most of the rest of the class, and you think you even hear Felixe let out a snort.
        [info side = highlight][You feel yourself growing more <mark>Charming.</mark>][/info]
    *[Cause a distraction]
        ~alter(jonesChange_Distraction,1)
        ~alter(jonesRelationship_Brigid,1)
        ~alter(jonesRelationship_Felixe,1)
        [info side = highlight]Brigid <mark>Approves</mark>[/info]
        [info side = highlight]Felixe <mark>Approves</mark>[/info] 
        Just as you didn't think before saying that, you don't think before grabbing the piece of paper you've been idly doodling on, balling it up, and tossing it all the way across the classroom and into the trashcan. Where it burst into flames?? Fire shoots out the top of the trashcan before putting itself out just as quickly. Before you have a chance to figure out how the hell that happened, all eyes turn to you.
        "Tada!" You stand and give a bow, as though that was all completely intentional. Some students clap, while the others just turn back to the front. You see Felixe shake his head. But in a good way. You think. You look at Brigid, who just smiles and gives you a thumbs up.
    - 
    You can't read Osbourne's expression at all this time, and it makes you uncomfortable. He breaks his gaze away and looks to the other students. "Anyone else have any insight? No? Then we'll move on."
    * [Make it through the rest of class]
        #CLEAR
        -> totallyNotBoring
    
    = totallyNotBoring 
You weren't expecting him to start a real lecture on the first day of class -- you thought this was more to get an introduction of expectations, so you are already mostly tuned out and {~half asleep|busy doodling} when you realize he was already talking about the first bullet point on his extremely short list of topics.
"Jung discussed the fear of death as inherent in every person, though his emphasis on the collective unconsciousness overcomplicates the explanation. The rat fears to die as much as the fly or the fish or the human. Fear is self-centered, and what is more center of self than our life? Early humans discovered quickly that blood fueled our very being, and so, of course, we treasured it, and feared its loss. But our fear also empowers its target. Blood gave us life, we feared its loss, thus it must have power. Blood sacrifices to obtain power for ourselves. Blood oaths to obtain power over others."
Your stomach twists into knots, and you're not sure why. No one else seems bothered by it. Brigid and Felixe are busy jotting down notes like this is a normal lecture.
Well, this <i>is</i> a paranormal class, so you suppose it makes sense. {jonesSuspicious_Osbourne > 1:Even if the professor seems weirder than necessary.}
    *[Focus more on the lecture.]
        ~alter(jonesChange_Expert,1)
        [info side = highlight]You feel yourself grow more <mark>Intelligent</mark>.[/info]
    *[Keep spacing out.]
 -
 "Well, that's all the time we have for today," Professor Osbourne says rather abruptly.
 Or, it seemed to be out of nowhere, but a second later, the bell chimes for the end of the class period, and just about everyone immediately starts gathering their things and heading out the door.
 You almost dash out the door yourself, like you do for most of your classes, but you remember your looming appointment, and, well, it looks like Brigid is dawdling behind so you hang back with her.
She's standing a few feet behind Felixe's desk, twirling her hair around her finger, <>
 {jonesKnows != brigidNervous:
         a classic tell that Brigid's nervous, <>
        ~jonesKnows += brigidNervous
        }
 while he stays sitting, writing, as though he didn't hear the bell or notice most of the other students rush out around him.
Professor Osbourne notices this, too. "Did you have a question, Felixe?"
Felixe doesn't answer for a few moments, still writing, then puts down his pencil and starts packing away his things into his messenger bag. When he's finished, he finally looks up at the professor and says, "No, I was just finishing some thoughts."
"Oh?"
Felixe ignores the prompt and instead gestures to you and Brigid. "They might, though."
The professor looks expectantly to the two of you, and you look expectantly at Brigid.
Brigid glaces between the three of you. "I-it's nothing. Uh, Jones? Did you have something?"
    * [No.]
        ~alter(jonesRelationship_Brigid, -1)
        [info side = highlight]Brigid <mark>Disapproves</mark>[/info]
        You look at Brigid in confusion. "No? It looked like you wanted to talk to --"
        "It was nothing!" Brigid says, quickly cutting you off.
        "Oh." Guess you were wrong.
    * [Make something up to cover for Brigid.]
        ~alter(jonesRelationship_Brigid,1)
         [info side = highlight]Brigid <mark>Approves</mark>[/info]
        {jonesKnows ? syllabus:
            ~alter(jonesRelationship_Osbourne, 1)
            [info side = highlight][Professor Osbourne <mark>Approves</mark>][/info]
            "Oh. Yeah. Totally," you say, brain racing. "I, uh, was just wondering if those fears you mentioned were what's listed on the syllabus?"
            - else:
            "Oh. Yeah. Totally," you say, brain racing. "I, uh, was just wondering if we'll be having any tests in this class?"
            }
        -
     
"Hey, wait, I know you," Felixe says before Osbourne can respond.
You stare at him blankly for a moment. Then you remember.
        * [Wards!]
"Oh, yeah! The crest-thingy!" you exclaim, happy to have the pieces click into place. Back when you were in one of your "I hate that military enlistment is my best financial option" moods, you saw a Craigslist ad looking for a handful of wartime relics that were apparently used to ward off the evil eye or something. You're pretty sure Lt. Col. Thomas never realized it was missing. "Has it been... working?" Not that you believed magic wards were real. Probably.
Felixe snorts. "Not the way I think you mean, but it's been useful to study. Thanks again, by the way."
* [ ]
-
#CLEAR
"I e-mailed you," Brigid adds, and looks sheepish when you look surprised. "Once. I mean. You have me some, er, writing advice? About, you know, f-fire magic?"
Felixe's disinterested but polite smile he wore when she first started talking turned into the genuine article. "Oh, it's you! Yeah, how's your book going?"
    * Brigid was writing a book?
    -
Brigid tucks her hair behind her ears, subtly tugging at the strands as she does so. "Um, it's a work in progress, you know. Your advice helped, but it's... never so easy." She sighs and her shoulders slump.
Felixe stands up, slings his bag over one shoulder, and looks like he's about to reach for Brigid before changing his mind, instead gripping his bag's strap. "There's no one right way to do things. If my advice isn't cutting it, keep looking around and experimenting on your own. Just keep at it and you'll get there, okay?"
Brigid smiles half-heartedly. "Thanks."
She must be <i>really</i> into this book. You'll have to ask her about it later.
* [ ]
-
#CLEAR
Professor Osbourne clears his throat. "So none of you require my assistance...?"
You check your watch. Shit. You need to leave ASAP if you want to  get to your appointment in time.
"Something the matter, Ms. Jones?" the professor inquires.
"I'm just running a little late, is all," you admit. "Gotta get to the mall in twenty minutes, which will be pretty tight on my scooter."
"You're not trying to ride your scooter all the way to the mall, are you? In that short of time?" Felixe asks incredulously.
        
    * [Be defensive.]
        I've done it before!" you say, trying not to sound too much like a stubborn kid.
    * [Laugh it off.]
        ~alter(jonesRelationship_Felixe,1)
        [info side = highlight]Felixe <mark>Approves</mark>[/info]
        "Well, my Lamborghini is in the shop. You know how it is," you joke.
        
    -
Felixe rolls his eyes. "Just let me give you a ride. As a thanks for the ward, if you need to view it as that. That way your friend can come with you for emotional support, since whatever this appointment is seems pretty important."
You look at your watch again. You really can't afford to miss this appointment. "Yeah, alright," you relent. "Do you actually want to come, Brigid?"
{jonesRelationship_Brigid > 3:
    Brigid nods enthusiastically. "Yes, of course! I didn't know you had anything important going on today, but if you need moral support, I'm there!"
    - else:
        Brigid hesitates for a moment, and even though you hadn't planned on asking her to come along in the first place, you're suddenly worried she won't. She eventually nods, "Yeah, I mean, I don't know what's going on, but if you need support, I'll be there."    
        }
    * [ ]
-
#CLEAR
"Okay, well, it's a car, not a teleporter, so let's get going, yeah?" Felixe says, heading for the door, ushering the two of you in front of him. He stops in the doorway, then turns back to Osbourne. "See you Wednesday, professor."
You look back, too, and see Osbourne frowning just a little. "Yes, I will see you three Wednesday." With that, he shuts the door behind you.
{jonesSuspicious_Osbourne > 1:
    "What a weird guy," you say as you turn to walk down the hall toward the stairs.
    Felixe and Brigid murmur their agreement, neither seeming to want to talk more about him.
    -else:
        You pay him no more mind as you walk down the hall toward the stairs.
        }
You can worry about Wednesday Wednesday. Right now, you need to steel yourself for your appointment with Lieutenant Colonel Thomas.
        
        
        * [Let's go to the mall.] -> recruitment_time
        #CLEAR

== recruitment_time
There's a sort of silent expectation when you're all loaded in the car and on the road, and you realize they're waiting on you to explain with no further prompting.
        
    * {(jonesRelationship_Brigid > 1) && (jonesRelationship_Felixe > 1)}[Tell them everything, even the weird stuff.]
        -> tell_weird
    * [Tell them what they need to know.]
        -> tell_basic
       
= tell_basic
    #CLEAR
"My dad was in the National Guard." You think. "Apparently, in order to get some retirement... bonus? Or exemption. Or something. Well, he needed to refer a replacement. And I'm not exactly swimming in college scholarships," you explain.
Felixe lets out a whistle of surprise. "They're dropping the facade and just flat out working as an MLM scheme now, huh?"
Brigid plays with her hair, clearly thinking things over.
What you're leaving out is your dad heavily implied he <i>can't</i> retire until someone takes over for him. Which seems wild. There's no way that's legal, right? You've gotta be wrong; your dad can't be in some weird military cult thing. So you keep that to yourself.
    * [ ]
        -> are_you_sure
= tell_weird
    #CLEAR
~brigidKnows += brigidKnows.dadCult
~felixeKnows += felixeKnows.dadCult
"I think my dad's in some sort of cult," you say.
The car swerves and Felixe curses.
"<i>What</i>?" Brigid asks shrilly.
"I mean, uh--."
"Nope, no walking that one back," Felixe interrupts. "What the fuck do you mean your dad's in a cult and what does that have to do with where you're going? Do I need to turn around?"
"I said I <i>think</i> he's in a cult!" you say defensively. "All I know is he was in the National Guard or something and he's retiring, but he is heavily implying he <i>can't</i> retire until he finds a replacement, and, well, I don't know how else I'm going to get money for college anyway, so..."
"So you're going to take over for him," Felixe finishes.
"Yeah, I mean, probably? Maybe I'm reading too much into things! Like there's no way he <i>actually</i> can't retire until someone takes his place, right?" You laugh nervously, but Brigid and Felixe remain silent.
    *[ ]
        -> are_you_sure
= are_you_sure
#CLEAR
Felixe pulls up to the mall and parks. It's not really a mall, not like in cities. It's a one story muted grey building, which looks less imposing than you feel it should.
"Are... are you really okay with this?" Brigid asks. She looks at you with all the Brigid-concern she can muster (which is quite a lot), and even though Felixe keeps his eyes on the road, you can tell he's waiting for your response.
    * "Honestly, it could be fun[!"]<>
        ~alter(jonesChange_Muscle, 1)
        ~alter(jonesRelationship_Felixe,-1)
        , you know?" you put on a smile that's maybe not as forced as you thought it would be. "I mean, there hasn't been much of a need for the local National Guard to ship out," as far as you know, "and in the mean time I get to get ripped and shoot guns better, you know?"
        "Whatever floats your boat, I guess," Felixe says, tone flat.
        [info side = highlight]Felixe <mark>Disapproves<mark>[/info]
        [info side = highlight]You feel yourself becoming <mark>Hardier<mark>[/info]
    * You shrug. "It'll be fine[."]<>
        ~alter(jonesChange_Fixer,1)
        , you say. "I don't think I've seen my dad go on any missions or whatever for a while, so maybe I just won't do a a lot after training? I'll probably just sign a four year contract and be out once I'm done with school." You hope.
        [info side = highlight]You feel yourself becoming more <mark>Cool</mark>[/info]
    * "I am thinking of loopholes as we speak[."]<>
        ~alter(jonesRelationship_Felixe,1)
        ~alter(jonesRelationship_Brigid,1)
        , you say with a forced laugh. "But I don't think there's a way out of this.
        [info side = highlight]Brigid <mark>Approves</mark>[/info]
        [info side = highlight]Felixe <mark>Approves</mark>[/info]
        "I'm sure you'll think of something," Brigid says encouragingly.    
    - 
    
    * [ ]
-
You take a deep breath and get out of the car. Then Felixe shuts off the engine and does the same; Brigid is already out and waiting on the sidewalk as soon as the car quiets. They both follow you to the entrance where you pause and look back at them. "You know you can't, like, come in with me, right?"
   * [Continue]
   -
   #CLEAR
   Felixe raises his eyebrows. "They've blocked off the whole mall for you to sign paperwork? {felixeKnows == felixeKnows.dadCult: Maybe this <i>is</i> a cult thing.}" His tone is so flate you almost don't catch the sarcasm.
   Brigid glances at him, as though she also had to second guess his sincerity, then adds, "We can just wait in a store nearby. For, you know, moral support?" She smiles at you, though it wavers slightly.
   
    * [Be genuine.]
   ~alter(jonesRelationship_Brigid,1)
    You smile and put a reassuring hand on Brigid's shoulder. "Thanks, really. I'll be fine, but it'll be nice to know you're nearby."
    Brigid smiles back and puts her hand on top of yours.
    [Brigid Approves] #CLASS: approve
   * [Be sarcastic.]
    ~alter(jonesRelationship_Brigid,-1)
    ~alter(jonesRelationship_Felixe,1)
    You roll your eyes. "I'm not dying, you know."
    Brigid looks embarrassed, and Felixe snorts.
    "But thanks. I'll see you once I'm done."
    [info side = highlight]Brigid <mark>Disapproves</mark>[/info]
        [info side = highlight]Felixe <mark>Approves</mark>[/info]
    
    -
    You ruffle your hair, smooth it back out, and head into the mall.
    * [ ]
-
#CLEAR
    You don't notice where Brigid and Felixe end up going. In fact, you don't notice much at all until suddenly you're in front of the recruitment office, not even the small arcade that often threatens to distract you from whatever goal you walked in with.
    The lighting in the reception area somehow feels more unnatural than the flickering flourescents that line the rest of the mall, but you chalk that up to your nerves. The woman at the front desk smiles placidly at you. She must recognize you from your previous visits (mostly with your dad), because, before you can say anything, she presses a button on her desk phone and says, "Lt. Col. Thomas, Ms. Jones is here to see you."
    
    * [Take a seat while you wait.]
    * [Remain standing while you wait.]
    
    - 
    Before you can decide whether to sit in one of the provided chairs or stay standing, an almost gaunt looking man in the standard crisp dark blue uniform walks into the reception from a back door and smiles warmly at you.
    "Ms. Jones! Pleasure to see you again. Follow me to my office?" He gestures to the door he just came through, and you follow wordlessly, still haven't not gotten quite used to the slight British lilt to his voice.
    
    * [ ]
    
    -
    He leads you to the back, and quickly to the first door on the right before you can get a better look at the long sprawling hallway. This time you manage to get a glimpse of a sign pointing to an elevator. You've been to this mall a lot, and you can't make sense of how there's enough space here to have that long of a hallway, nevermind any <i>elevator</i>. If only you had taken the chance to explore the one time you broke in.
    
    * [ ]
    -> in_office
    = in_office
    #CLEAR
The office is as cramped and dingy as you remember; Thomas's large desk and worn but comfortable looking chair taking up most of the room, leaving just a small wooden chair on the other side for the guest to sit. The walls are lined with frames and shelves full of old military books, relics, certificates, and the like. You note with a little bit of glee the empty space where the crest you stole for Felixe used to be.
"You may sit," the lieutenant colonel says, gesturing to the wooden chair from his own seat.
    *[ ]
    -
    
    {jonesMuscle > 0:
        [info]Muscle[/info]
        You almost decide to stand in protest, but honestly there's not a lot of space to do that without standing weirdly off to the side.
        }
   
   The chair is as uncomfortable as it looks, and squirming to find a better position only makes it worse.
   "Now, then, to business. I assume you're ready to take my offer, yes?" Lt. Col. Thomas smiles and slides a stack of documents and a fountain pen over to your side of the desk.
   
   -> receive_contract
    
   = receive_contract
   
   - (opts)
   
    + [Sign.]
        -> sign_your_life_away ->
    * [Read the contract.]
        -> read_contract ->
 
 - -> opts       


= read_contract
~ jonesKnows += contract
You skim through the documents. You've had the chance to read them before, but they don't make any more sense than any of the other terms you've had to agree to for college, or to open a bank account, or to play a phone game. You tried to ask your dad about it, but he just shrugged sheepishly saying he never understood the fine print, either.
{jonesExpert > 0:
    [info]SHARP[/info]
    [info side = highlight]Something seems off...[/info]
    ~alter(jonesSuspicious_Thomas,1)
    Some phrases catch your attention this time, though. Things that don't make sense, but maybe that's just because you're not a lawyer. But it looks like the whole "provide your replacement before you can leave" thing your dad was doing <i>was</i> legally enforceable.
    }
->->
   = sign_your_life_away
{ jonesKnows has contract : ->-> sign_for_real }  
 ~alter(jonesRelationship_Thomas,1)
 [info side = highlight]Thomas <mark>Approves</mark>[/info]
 No point in delaying the inevitable. You slide the last page out from the pile.
 "Eager, are we?" Thomas asks, smiling. "Just sign there." He points to the only blank line on the page.
 
   -> sign_for_real 
 = sign_for_real           
 #CLEAR
You pick up the pen and try to sign, but it only scratches the paper. You look at Thomas in confusion. "It needs ink."
Thomas's smile doesn't waver. "You've heard of signing a contract in blood, yes? Well, we take that sort of thing quite literally here."
You look back down at the fountain pen and realize just how sharp it is.
This is your last chance to back out.
     * [Sign]
     * [Don't sign.] #UNCLICKABLE
-  
You take a deep breath in, then let it out, and try not to flinch as the pen slices into your fingertip.
    #AUDIO: dice.mp3
    ~ temp diceRoll = typical(jonesMuscle)
    ~ temp diceRoll2 = typical(jonesFixer)
    {(diceRoll > 7) || (diceRoll2 > 7):
        {diceRoll > 6:
        [info side = highlight]Muscle: {diceRoll}[/info]
        - else:
        [info side = highlight]Fixer: {diceRoll2}[/info]
        }
        It didn't hurt as bad as you thought it would. You've had worse papercuts.
    - else:
        
    {diceRoll > diceRoll2:
        [info side = highlight]Muscle: {diceRoll}[/info
        -else:
        [info side = highlight]Fixer: {diceRoll2}[/info]
        }
    You can't help it. Your body naturally does not <i>want</i> to be injured, so your finger jerks a little as you cut it. You pretend nothing happened, and don't let yourself look at Lt. Col. Thomas to see his reaction.
    }
    Blood quickly beads at the wound, and you try to keep your expression steady as you reach your hand out and press your fingertip to the line on the paper.
    * [ ]
    -
    #CLEAR
When you remove your finger, all you see is a deep red blotch bleeding into the lines of the parchment. You're not sure what you expected -- it to magically turn into your name or something? -- but you almost laugh at how mundane it is.
    "Excellent!" Thomas exclaims with a clap of his hands that almost makes you jump.
    You look up in time to see a wide grin that sets you on edge before it settles into something more business-like as he pulls a folder from one of his drawers and hand it to you.
    You wipe the last specks of blood on your pants, then grab the folder and start flipping through it.
    *[ ]
-
     VAR askedAboutPapers = false
    The folder is titled <b>Project Caedes</b>, which doesn't mean anything to you, and the files inside mostly have headings you'd expect.
    <b>Training Schedule</b>, <b>Dress Code</b>, <b>Code of Conduct</b>, but then it starts to get... weird.
    
    * [Ask Thomas about it.]
        ~alter(jonesSuspicious_Thomas,1)
        ~alter(jonesChange_Expert,1)
        ~askedAboutPapers = true
        [info side = highlight]Something seems off...[/info]
        "Uh, is this talking about monsters? Like, <i>monsters</i> monsters?" you ask, pointing at a list under the header <b>Situation Management</b>, which seemed to be code for "<b>How to Kill or Silence Anything Inconvenient</b>."
        Thomas just smiles and says, "You'll see."
        {jonesKnows has syllabus:
            Some of it seems similar to the syllabus for your paranormal class. Well, the paranormal deals with monsters and apparently <i>this</i> deals with fighting monsters (????), but you notice changelings as a category, and a break down of cults in the area, and, well, now that you think of it, you <i>did</i> just sign a contract in blood...
            You brush it off as just a coincidence. If it's not, you'll deal with it later.
            }
        [info side = highlight]You feel yourself growing more Intelligent[/info]
            ** [ ]
            
    * [Stay quiet.]
        Whatever. You'll figure it out as you go. You don't want to delay getting the heck outta here.
    
-
"I'm sure you understand all of this is confidential..."
You reflexively roll your eyes. You're not an idiot.
Thomas doesn't miss the gesture and tuts. "I'm not finished, Ms.-- or should I say <i>Private</i> Jones. This is confidential, <i>however</i> I'm giving you leave to tell your two friends."
You stare at him for a second. You never talked to him about any friends, much less <i>two</i> of them. It was kinda you and Brigid against the world in the tail end of high school. "What?"
*[ ]
    -
He smiles. "Don't play coy, Jones. The two who arrived with you today. Brigid Flint and Felixe..." He pauses and glances at one of the papers on his desk. For a split second, you think you see his brow furrow. "They're the ones waiting for you, correct?" he finishes, as though the pause was intentional.
"How did you --"
"We are the military," Thomas interrupts. "It is our buisness to know. What I was trying to say," he continues, "is most of the information you need will only be obtainable here, but that will be gone over more during your first training session. Tomorrow, correct?"
*[ ]
    -
You flip to your schedule and nod. Looks like you're scheduled Wednesdays and Saturdays. For the next few weeks, at least. It doesn't seem too bad, all things considered. Some of your other classmates have mentioned working more days than that.
"Good. That will be all, then, Private Jones. Give Major Jones my best."
With that clear dismissal, you clutch your folder to your chest and head out, barely registering the receptionist's, "See you soon, Private Jones!" as you leave.
    
*[Find Brigid and Felixe.]
-
    #CLEAR
You find Brigid and Felixe loitering outside the Hot Topic, and you can't tell if it's funnier if they've been out here the whole time, or if you've found them after an unproductive shopping trip inside. Either way, you laugh as you approach, which gets both of their attention.
    {jonesRelationship_Brigid > 2:
        Brigid smiles a little sheepishly as you approach.
        - else:
        Brigid frowns self-consciously as you approach.
        }
    {jonesRelationship_Felixe > 0:
        "So? How'd it go? Felixe asks with a touch of concern.
        - else:
        Felixe barely glances up from his phone. "That was quick. They didn't demand <i>too</i> much blood for the sacrifice then, I take it?"
        You ignore him, even if the blood sacrifice comment hits unnervingly close to home, but Brigid looks uncomfortable.
        {brigidKnows has brigidKnows.dadCult:
            "Maybe we shouldn't joke about that. You know, with what Jones already said?"
            Felixe just shrugs, but frowns to himself.
            - else:
            "I'm sure it wasn't as bad as all that, right?"
        }
    }
    * [ ]
    -
    You wave your folder. "Well, I'm on a pretty strict training schedule while they get me up to speed, but I was given explicit permission to share some of the juicy details with y'all."
    Felixe raises his eyebrows. "With us? <i>Both</i> of us?"
    You nod. "Both of you explicitly by name. Weird, right? Anyway, do you want highly classified military secrets or not?"
    Brigid looks around anxiously. "Maybe... In the car? If that's okay with you, Felixe," she adds quickly.
    Felixe shrugs. "Yeah, sure, why not?"
    * [ ]
    -
    #CLEAR
The three of you pile back into Felixe's car, but remain parked as you flip open the folder. You thumb through the first few pages to get to the juicy stuff.
"<b>Situation Management</b> doesn't sound foreboding at all," Felixe remarks dryly.
"Um.. What does it mean by <i>monsters</i>?" Brigid asks with a nervous laugh.

{askedAboutPapers:
        You shrug. "I asked, but he just said 'you'll see.' I guess it's some code for something?"
        
        - else:
        "I have no idea. By the time I got to this, I just wanted to get the hell out of there, you know?" you admit. "It's gotta be code for something, though, right?"
    }
    {brigidKnows has brigidKnows.dadCult:
            "Sounds like some cult business to me," Felixe chimes in.
            "Not helping!" Brigid says.
        }
    "Well, there's not much to go off of now, anyway. We'll have to wait until Jones starts her training to see if it's code or literal," Felixe says.
    *{jonesKnows has syllabus}[Mention the similarities to the syllabus]
        -> syllabusSimilar
    *{jonesKnows has syllabus}[Don't mention the syllabus.]
        The similarities between the syllabus and some monster categories are pretty superficial. No need to alarm them {brigidKnows.dadCult:anymore than they already are after telling them about your dad maybe being in a cult|.}
        ->convoContinue
    * [ ]  
     ->convoContinue
     
= syllabusSimilar
"Okay, there was something else I wanted to mention, but don't freak out," you say.
"Always a good way to start things off," Felixe says.
{jonesRelationship_Felixe < 0:You roll your eyes, but otherwise ignore him.|"Yeah, I guess we're kind of past that point anyway," you say with a laugh.} "What I mean is, it's probably a coincidence, but you guys read the syllabus right?"
Brigid and Felixe both look at you, confused.
"You know, the paranormal class?"
"I figured, but I don't remember anything about slaying monsters as a day job on it," Felixe says.
"But it did talk about blood sacrifices," Brigid counters. {brigidKnows has brigidKnows.dadCult:"And cults." She looks at you, worry evident on her face.}
"And changelings!" you add. "They call them shapeshifters in the files, but that's basically the same thing, right?"
Felixe snorts.
Brigid shoots him a glare. "Do you have anything useful to add?"
Felixe shrugs{jonesRelationship_Felixe > 1: a little sheepishly}. "I just think it's too early to be jumping to conclusions."
   
    * [Express concern.]
        ~alter(jonesSuspicious_Osbourne,1)
        ~alter(jonesSuspicious_Thomas,1)
        [info]Something seems off...[/info]
        You chew your lip. "Maybe, but the whole thing just feels off."
        {brigidKnows has brigidKnows.dadCult:
            "Especially with what you said about your Dad," Brigid says, a lock of hair tight around her finger.
        }
    * [Make light of it.]
    ~alter(jonesRelationship_Brigid,-1)
    ~alter(jonesRelationship_Felixe,1)
    [info side = highlight]Brigid <mark>Disapproves</mark>[/info]
    [info side = highlight]Felixe <mark>Approves</mark>[/info]
    You shrug. "You're probably right, Felixe. Or maybe this is an elaborate ruse on Osbourne's part to get me to do my homework."
    Brigid frowns. "He didn't give us any homework."
    "Not yet," Felixe says.
    -
    *[ ]
    ->convoContinue
  
=convoContinue
  #CLEAR
 You slap the folder shut. "Felixe was right. Whatever's going on, we're not going to figure it out today. My first day of training is tomorrow, then we have class again Thrusday, so how about I'll just let you both know then?"
    Felixe shrugs. "Sounds good enough to me."
    But Brigid doesn't look as convinced.
    "<i>Obviously</i> I'll text you first if something crazy happens," you say. "Best friends get priority, right?" You hold out your fist.
    {jonesRelationship_Brigid > 1:
        She sighs with a smile and bumps your fist with hers. "I guess that works," she says with faux exasperation.
        - else:
        "Fine," she says, clutching her arms to herself, and leaving you hanging.
    }
    Felixe clears his throat and starts the car.
    "Back to school, then?"
    *[ ]
    -> end_Day
    
== end_Day ==
    #CLEAR
    You don't have any more classes today, so when Felixe drops you off at school, you head to where you left your scooter.
    {jonesRelationship_Brigid > 0:
        *[Talk to Brigid]
        -> talk_to_brigid
    - else:
        Brigid apparently has another class, so she rushes off before you have a chance to say more than "See you tomorrow."
        *[Head home.]
        -> head_home
    }

=talk_to_brigid
Brigid tags along. Her next class isn't for another hour, and she's in no rush to get to it.
It's a good chance to talk if you have anything on your mind.

{jonesSuspicious_Felixe > 0:
    Maybe even a safer time to talk without Felixe here. 
    {jonesRelationship_Felixe > 0:
        You don't hate the guy, but you're getting some weird vibes from him. Having private conversations before you figure him out won't hurt.
        - else:
        You're getting bad vibes from the guy. He hasn't done anything to warrant them yet, you guess, but it's nice to have a chance to talk to Brigid without him around.
    }
}

*[ ]
- (opts)
What do you want to talk about?
{jonesSuspicious_Brigid > 0:
    * "Is everything... Okay?"
    ->brigid_okay
    }
* "You're writing a book?" <>
    ->book
* "What do you think of Felixe?"
    ->felixe
* "What do you think of Professor Osbourne?" <>
    ->osbourne
* [Wait for Brigid to say something.]
    -> wait
+ [Enough talking. Time to head home.]
   You say your goodbyes, hop on your scooter, and head home. 
    -> head_home
- -> opts

= keep_talking
#CLEAR
->opts

= felixe
    "He seems nice enough," she says. "Class seems like it's going to be a little... weird with him?"
    You laugh. "Yeah, that back and forth with Osbourne was wild. I think my other professors would kill me if I talked to them like that."
    "Exactly! {interrupt:I can't <i>believe</i> you managed to get in the middle of that. I wonder how long it would have gone otherwise. If |Felixe seemed to put an end to it, but if} he's that opinionated on the first day of class, I wonder what the rest of the semester will be like."
    "For real! Maybe it'll be more exciting than a normal blow off class."
    Brigid giggles. "What about you?"
    
    * "He seems fun[."]," you say. "I think we vibe on some of the same frequencies."
        "Should I be worried?"
        "What? No! You're my bestie for life!" you insist.
        Brigid rolls her eyes with a smile. "I was more meaning on if you've found a potential partner in chaos."
        You laugh. "We'll see!"
        ~alter(jonesRelationship_Felixe,1)
        {
        - jonesRelationship_Felixe > 2:
            You realize you genuinely mean it. You haven't known the guy for long, but you think you're going to have a pretty good semester in the same class.
        - jonesRelationship_Felixe > 0:
            You're not quite as sure as you seem about how you vibe, but you'd like to think you will more in the future
        - else:
            Honsetly, your vibe so far hasn't really matched with what you're saying. Maybe you're hopeful for a better relationship? Or maybe you just want to put a good spin on it for Brigid.
        }
        [You feel yourself growing closer to Felixe.] #CLASS approve
    * "He seems alright.["] Still figuring out his vibe, I guess."
        "I'm sure you'll get along great. I mean, he did volunteer to drive you to the mall and back."
        "True! I just need to get to know him better."
         {
        - jonesRelationship_Felixe > 1:
           It seemed like you got on a little better than you're letting on, but maybe that was all just a coincidence. Like you said, you're still figuring out his vibe.
        - jonesRelationship_Felixe == 1||jonesRelationship_Felixe==0:
            Brigid likes to put a positive spin on things, and you don't mind, but you're also not super invested in getting to know the guy more.
        - else:
            That's putting it lightly, really. He really seems to rub you the wrong way. Or you him. Maybe that's just a coincidence, or maybe you're trying not to be so negative about it to Brigid.
        }
    * "I don't think we really get along[."]," you admit.
        "Oh, no! I thought since he offered to drive you, you might have a better opinion of him. Not that you have to like everyone who does something nice for you, of course!" she quickly adds. "Or that doing something nice means they like <i>you</i>, or, well." She sighs. "You know what I mean."
        "I know what you mean," you agree with a smile. "But we've only known each other for what, a couple hours tops? Plenty of time for things to change, one way or the other."
       ~alter(jonesRelationship_Felixe,-1)
         {
        - jonesRelationship_Felixe > 0:
           Looking back on the day, it <i>did</i> seem like you were getting along, but appearances can be deceiving. Just because you agreed on a few things or shared a sense of humor doesn't mean you like the guy, or he you.
        - jonesRelationship_Felixe==0:
            It didn't seem like you got on that poorly, but not actively being antagonistic doesn't mean positive or even neutral feelings. Hopefully you won't have to see him much more after class, even if you did appreciate the ride.
        - else:
            Yeah, you really didn't vibe with the guy. The ride was fine, but you probably would have been fine on your scooter anyway. The less you have to interact with him from now on, the better.
        }
        [You feel yourself growing more distant from Felixe] #CLASS disapprove
    
   -
    {jonesSuspicious_Felixe > 0:
        * [Share suspicions.]
        You hesitate for a second. It's not like you have a lot to go on by now, just a balled up piece of paper in his backpack.
        Brigid notices your pause. "Is there something else?"
        "Well..." You rub the back of your head. "It's probably nothing, but after reading the syllabus, I was kinda looking around the room to see how other people reacted, because it was weird, right?"
        "Yes, especially with what we know now, the syllabus is <i>extremely</i> weird," Brigid agrees.
        "Right! So I looked at Felixe, because at the time I couldn't remember why I recognized him, but the syllabus wasn't on his desk. It was crumpled into a ball in his bag." 
        "And that's... weird?" Brigid asks doubtfully.
        Now that you say it out loud, maybe it really <i>isn't</i> that weird.
            ** [Stick to your guns.]
                "Yeah! I mean, does that guy give off the impression of someone who'd just toss something important for class?"
                "Maybe?"
                "After his back and forth with the professor? And all the notes he was taking?"
                "I'm not sure they were notes, but... I get your point.
                 ***[Talk about something else]
                ->keep_talking
            ** [Back down.]
              You laugh. "You're right, it's not. I think I was all in my head at the time with the looming appointment. The guy's allowed to toss his syllabus without me making a big deal out of it."
              "It was a pretty stressful appointment. I think you're allowed some paranoia," Brigid says.
               ***[Talk about something else]
              ->keep_talking
        }
    *[Talk about something else]
            ->keep_talking
    
= osbourne
 you ask.
 "He's... interesting?" Brigid says with a shrug.
 "That's one way to put it," you say with a laugh. <> {jonesSuspicious_Osbourne > 0:
    "I think maybe there's something shady going on with him."
    "Like with the syllabus?"
    "Yeah, that, but also... I mean, he kept looking at us weird? You, me and Felixe. He barely glanced at anyone else. <> 
    {know_names:
        Not to mention he knew our names, he knew <i>my</i> name preference. No one knows that."
        Brigid considers this. "He said it was on the student information sheets."
        "Yeah, but I've thought about that since then, and all my other professors have call me Olivia before I correct them."
        }
        Brigid twists a strand of hair around her finger. "I guess I've gotten some weird vibes from him, too. I just don't think it's anything substantial, outside of the syllabus, of course."
        You shrug. "It's not like there's anything to do about it. He's still our teacher and all. Just thought I'd mention it."
        Brigid gives you a reassuring pat on the shoulder. "We have all semester to figure him out."
        - else:
        "The syllabus thing is weird, but like we said before, that could be a wild coincidence."
        Brigid shrugs. "Maybe. I guess we have the semester to figure that out."
        }
    "What about you? Do you like him? Or think he'll be a good teacher, at least."
    
    * "Yeah, it seems like it will be a fun class[."]," you say with a grin.
    ~alter(jonesRelationship_Osbourne,1)
        {jonesSuspicious_Osbourne > 0:
            "Even with your suspicions?" Brigid asks.
            "Yeah, I mean, weird things are weird, but I still gotta take the class, you know? Might as well enjoy it.
        }
       [You feel yourself growing closer to Osbourne]  #CLASS approve
    * "I'm really dreading this semester[."]," you admit. "The guy seems like a weirdo, and the syllabus stuff doesn't help.<>
    {jonesSuspicious_Osbourne > 0: 
        Not to mention the other stuff."
            - else:
            "
            }
        Brigid frowns. "I hope the semester doesn't end up being too miserable for you. This was supposed to be an easy class for you, and you have enough on your plate as it is."
        You rub your eyes with a sigh. "Yeah, but what can you do?"
        ~alter(jonesRelationship_Osbourne,-1)
        [You feel yourself growing more distant from Osbourne] #CLASS disapprove
    * "A class is a class[."]," you say with a shrug.
        "Fair enough," Brigid says.
    -
  * [Talk about something else.]
    ->keep_talking
= wait
    You walk together in silence for a moment, then Brigid says, "Are you really okay, Jones? About everything?"
    * "Not at all[."] <>
        ," you say. "But what can I do about it? I signed the paperwork. {jonesKnows has contract:It all looked pretty legally binding to me. }The decision's been made."
    * "It is what it is[."]<>
        ," you say with a shrug. "No use dwelling on it, you know?"
    * "Actually, yeah!"
        ~alter(jonesRelationship_Brigid,-1)
        
        [Brigid Disapproves] #CLASS: disapprove
        Brigid looks surprised at your enthusiasm. "Really?"
        "Really, really," you say. "It could be exciting. I mean, tell me you don't want to figure out what they mean about monsters and stuff." You grin and nudge her with your elbow.
        She clutches her arms to her chest. "I guess..." She shrugs with a frown. "If this is what makes you happy, then I guess that's good?"
        "It'll be fine," you assure her.
    
    -
     *[Talk about something else]
    ->keep_talking

= book
    you ask, trying to sound casual.
    "A book?" she looks confused.
    
    * "The one you emailed Felixe about?"
        "Oh, that!" she says. "Yeah, it's -- it's complicated." She looks a little flustered.
        ** "Do you wanna tell me about it?"
            Brigid fidgets with her hair. "Not right now, Jones. Soon, maybe?"
            "Yeah, okay."
            "I'm sorry. I'm just not ready."
            ***[Talk about something else]
            ->keep_talking
        ** [Drop it.]
            What do <i>you</i> know about writing books? It sounds like it would be complicated. "Okay. Well, good luck," you say.
             ***[Talk about something else]
            ->keep_talking
    * [Drop it.]
        ~alter(jonesRelationship_Brigid,-1)
        [You feel yourself growing more distant from Brigid.] #CLASS: disapprove
        Maybe it wasn't that important, or maybe she's lying. Either way, you guess it isn't your business. "Nevermind," you say.
        "O-okay."
         **[Talk about something else]
        ->keep_talking
    
  = brigid_okay
    ~alter(jonesRelationship_Brigid,1)
    [Brigid Approves] #CLASS: approve
    Brigid freezes for a second. "O-Of course! Why do you ask?"
    * [Push her.]
        ->push
            
    * [Let it drop.]
        You shrug. "No reason, I guess. Just making sure. We haven't talked most of the summer, you know?"
        She looks a little relieved, and smiles. "I know, but now we're in the same class, so we'll have plenty of time to catch up!"
         **[Talk about something else]
        ->keep_talking

= tell_brigid_cult
        ~alter(jonesRelationship_Brigid,1)
        [Brigid Approves] #CLASS: approve
    ~brigidKnows += brigidKnows.dadCult
            "Here, as a sign of good will..." You sigh. This is harder to say than you thought. "I wasn't completely honest before. About my dad and the recruitment thing. He always kinda hinted that me joining wasn't just some bonus thing, but that he <i>can't</i> retire until he gets a replacement. <>
                {jonesKnows has contract:
                    It said as much in the contract I signed, too.
                }
            It's all just... really weird."
            "What the shit!" Brigid exclaims. "Jones, are you serious?"
            You laugh a little. "Completely."
            She thinks it over for a bit.
               "I wan't to tell you Jones, I do. I'm just... not ready."
        ~jonesKnows += brigidHints
        "Well, I'm here when you're ready, then."
        *[Talk about something else]
         ->keep_talking
      
= push
    You shrug. "Something seems off, is all. You know you can talk to me about anything, right? <>
        {brigidKnows has brigidKnows.dadCult:
            I mean, I told you about the weird cult-thing my dad and I guess <i>I</i> might be in."
              "I wan't to tell you Jones, I do. I'm just... not ready."
        ~jonesKnows += brigidHints
        "Well, I'm here when you're ready, then."
            - else:
            I always have your back."
            "I know," she says.
            ** [Tell her about the potential cult.]
            -> tell_brigid_cult
        }
            ** [Let it drop.]
            "Well, I guess if there is ever anything, I'm here for you."
            She smiles. "I know, Jones."
             ***[Talk about something else]
            ->keep_talking



->head_home
=head_home
#CLEAR
    You take your scooter the rest of the way home.
    Your dad's truck is in the driveway. You're sure he's going to want to talk about your appointment today. How are you going to handle it?
        * [Approach him head on. You have some questions for him, actually.]
            Why do you want to know more?
            ** [He owes you an explanation after all of this. You signed a contract in blood!]
                ~alter(jonesChange_Muscle,1)
                [You feel yourself becoming more Tough] #CLASS: change
            ** [You're missing pieces of the puzzle. A whole lot of them. This is the first of many threads to pull on.]
                ~alter(jonesChange_Expert,1)
                [You feel yourself becoming more Sharp] #CLASS: change
            ** [You need to figure out if you've put Brigid and Felixe in danger.] 
                ~alter(jonesChange_Face,1)
                [You feel yourself becoming more Charming] #CLASS: change
            ** [You've lost control of what you thought was a much simpler situation. You need to figure out what you've gotten yourself into.]
                ~alter(jonesChange_Fixer,1)
                [You feel yourself becoming more Cool] #CLASS: change
            -
       
            You decisively throw open the door, but before you have a chance to look for your dad, he appears out of the hallway, presumably from his study. Or den. Or man cave. He likes to change how he refers to it based on what he's using it for at any point in time.
                He smiles when he sees you. "I thought I heard the door open. How'd the appointment go?" There's an edge to his voice.
                *** [Talk to your dad.]
        * [Keep it simple and vague. Maybe you can avoid getting too into it.]
            You softly turn the knob, and open the door, but the creak of the hinges betray you and you hear your dad coming down the hall from his study or man cave or whatever he decided to call it this week. You abruptly remember he had asked you to clean and oil the hinges a few weeks ago. Hoisted on your own petard. You stop yourself from going down the rabbit hole of wondering what a petard is or if you even used that phrase right to listen to your dad speak.
            "I thought I heard the door open. How'd the appointment go?" He's smiling, but there's a tightness around his eyes that betrays the very anxiety you do not want to deal with right now.
        * [Avoid him entirely. Maybe you can sneak through the back?]
            Your dad is either in the living room, which is right next to the front door, or his study (or den or whatever he decided to call it this week), which is close enough to the front door that the back door is the safer option.
            The thing is, neither you nor your dad really uses the back door that often, so maintenance of it hasn't been a top priority. You're going to have to yank it both open and closed, which might cause a lot of noise.
            - opts
            ** [You're going to risk it.]
                You approach the back door and give it an experimental tug. There's a little give, but you're going to have to pull a lot harder to actually open it, though closing it will be the noisiest part.
                
 
            ** [Maybe you can climb through a window.]
-
Temp end
->END














