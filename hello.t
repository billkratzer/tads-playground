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

firstRoom: Room 'Starting Room'
  "This is the boring starting room.   This is a test."
;

+me: Actor
;
