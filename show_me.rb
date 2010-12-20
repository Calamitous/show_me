$call_count = 0

def show_me(text = 'LOOK AT ME!', title = 'SHOW ME')
  $call_count += 1
  bar = '*' * 80
  title = "* #{$call_count.to_s}: #{title} *"
  puts ['', bar, title, bar, text.inspect, bar, ''].join("\n")
  text
end

