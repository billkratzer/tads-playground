#include <adv3.h>
#include <en_us.h>

gameMain: GameMainDef
  initialPlayerChar = me
;

versionInfo: GameID
  name = 'My First Game'
  byline = 'by Bill Kratzer'
  authorEmail = 'Bill Kratzer <bill@thekratzers.com>'
  desc = 'My first TADS game.'
  version = '1'
  IFID = 'a8287b8c-a051-4c5f-be86-0f2cf0a973ea'
;

office: Room 'Your Office'
  "You in your office.  It looks pretty much like an office.  There is an open archway to the east, which opens into an inviting room."
  east = livingRoom
;

me: Actor
  location = livingRoom
;

desk: Surface, Fixture
  name = 'desk'
  noun = 'desk'
  location = office
;

coffeeCup: Thing
  name = 'coffee cup'
  desc = 'The coffee cup is filled with delicious coffee.'
  noun = 'cup'
  adjective = 'coffee'
  location = desk
  actionDobjTake()
  {
    "As you pick up the coffee, a screaming McMommy thunders into
    the room, angry that you are taking her precious beverage.
    <.p>
    McMommy impails you with a spear.   So, you definitely won't be taking
    her coffee again";

    finishGameMsg(ftDeath, [finishOptionUndo]);
  }
;

livingRoom: Room 'Living Room'
  "This is the living room.  It looks like a comfortable place to hang out.   There is an archy to west, which opens into a rather boring room."
  west = office
;
