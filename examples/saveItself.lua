local sanghost = require "Sanghost":new()

local simple = {name = "It's a test"}
simple.next = simple
sanghost:save(simple, "simple")
sanghost:save(sanghost, "itself")

print(sanghost:load("itself"):load("simple").name)

local newSimple = sanghost:load("itself"):load("simple").next
for count = 1, 4 do
	print(newSimple)
	newSimple = newSimple.next
end