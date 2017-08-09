JADE Yahtzee
============

I developed this way back in 1998. Readme from back then:

---

About
-----

This is a JADE implimentation of the fun (?) dice game Yahtzee.  I
had to make the internal classes for an assignment in COSC 121 
(Computer Science 1A) at the University of Canterbury this year (1998),
and when I had completed that, I wondered if I could apply the same 
techniques and principles to JADE, and make the same sort of thing - 
but including the GUI.  So I did.  Here it is.

How to play
-----------

I'm too lazy to write how to play - just, the little checkboxes under
the dice are the "hold" feature - ie - check the dice you don't want
to roll.  Just click on the score categories (not the cells, but the
buttons on which the category names are in) to place the dice in
that score category.

Ummm, scoring works as follows.
1 thru 6 - total of all of that number dice...  You'll see what I mean.
Three of a Kind - self explanatory I think.
Four of a Kind - kinda like above.
Full House - 3 of a kind and 2 of a kind
Low Straight - a run of 4 numbers, ie 1,2,3,4 or 2,3,4,5 or 3,4,5,6
High Straight - a run of 5 numbers ie 1,2,3,4,5 or 2,3,4,5,6
Chance - total of all dice
Yahtzee - 5 of a kind
Yahtzee Bonus - if you already have a Yahtzee, and you get another, 
	this automatically goes up by 100.

The various values associated to these scores escape me right now.  I
hate documentation, so I'm not going to find out right now.  Something
gives you 30, another 40, Yahtzee is worth 50, blah blah blah.

Difficulties
------------

The main problem was creating a 2-D array for the scoreSheet - but
that was overcome easy enough.  You'll see how I've subclassed the
array class when you look @ the source...
