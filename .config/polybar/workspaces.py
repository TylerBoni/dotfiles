from i3ipc import Connection

i3 = Connection()

focused = i3.get_tree().find_focused().workspace().num
workspaces = i3.get_tree().workspaces()
num_list = [w.num for w in workspaces]

out = " "

for i in range(1, 10):
    if i == focused:
        # out += "%{F#569CD6}"
        # out += "%{F#6a9955}"
        # make the focused workspace stand out more with a blue background
        out += "%{F#569CD6}%{B#4b44af}"
    elif i in num_list:
        # out += "%{F#6a9955}"
        out += "%{F#569CD6}"
    out += " "

    out += str(i) + " %{F-}%{B-}"
out += ""
print(out)
