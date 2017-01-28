do

local function run(msg, matches)
  if matches[1]:lower() == 'robot' and is_owner(msg) then
      return "Tabchi Is Online ✅"
	  end
  if not is_owner(msg) then
	  return "For Owner Only!"
  end
  end
return {
  description = "Test Robot Online",
usage = {
  "نمایش وضعیت ربات",
		  "دستور:",
          "/robot",
	},  patterns = {
	"^[#!/]([Rr]obot)$"
  },
  run = run
}

end
