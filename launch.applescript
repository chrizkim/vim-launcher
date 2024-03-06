on launchVim(filepaths)
  set vimCommand to " vim -p"

  repeat with filepath in filepaths
    set vimCommand to vimCommand & " " & quoted form of POSIX path of filepath
  end repeat

  set vimCommand to vimCommand & " && exit"

  set itermRunning to application "iTerm" is running
  tell application "iTerm"
    activate

    if itermRunning then
      create window with default profile
    end if

    tell current session of current tab of current window to write text vimCommand
  end tell
end launchVim


on open filepaths
  launchVim(filepaths)
end open

on run
  launchVim({})
end run
