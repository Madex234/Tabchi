do

local function run(msg, matches)
  if matches[1]:lower() == 'help' and is_owner then
      return [[Tabchi Help Text:

/panel
Show Tabchi Stats

/contactlist
View Saved Contacts

/exportlinks
View Saved Links

/markread [on]
Set Markread On

/markread [off]
Set Markread Off

/addmembers
Add All Contacts To Group

/fwd all
Forward Your Message To All

/fwd sgps
Forward Your Message To All SuperGroups

/fwd gps
Forward Your Message To All Groups

/fwd users
Forward Your Message To All Users

/block [ID]
Block Users

/unblock [ID]
Unblock Users

/addsudo [ID]
Add New Sudo

/remsudo [ID]
Remove Sudo

/addedcontact [on]
Set Robot Save Contacts

/addedcontact [off]
Set Robot Don't Save Contacts

/addedmsg [on]
Show Message After Add Contact

/addedmsg [off]
Don't Show Message After Add Contact

/robot
Test Robot

/help
Show Help Message

/echo [Text]
Say Again Your Message
 ]]
  end
  if not is_owner(msg) then
	  return "For Owner Only!"
	  end
end

return {
  description = "Shows bot help",
usage = {
  "نمایش لیست راهنما",
		  "دستور:",
          "/help",
	},  patterns = {
	"^[#!/]([Hh]elp)$"
  },
  run = run
}

end
