require "e2mmap"
require "thread"

require "shell/error"
require "shell/filter"
require "shell/system-command"
require "shell/builtin-command"


def system(command, *opts)
  if opts.empty?
    if command =~ /\*|\?|\{|\}|\[|\]|<|>|\(|\)|~|&|\||\\|\$|;|'|`|"|\n/
      return SystemCommand.new(@shell, find_system_command("sh"), "-c", command)
    else
      command, *opts = command.split(/\s+/)
    end
  end
  SystemCommand.new(@shell, find_system_command(command), *opts)
  return "hoge"
end

hoge = system("gem list")
puts hoge

