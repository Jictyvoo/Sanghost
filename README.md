# Sanghost

A game state library to save your tables objects, to help in checkpoints confecction. This library is able to detect circle list and table loops, and clone this perfectly to use very fast and simple.

## Methods

Here will be a description about the methods that can be used

### save(object, objectName)

Use this method to save your tables into the sanghost object. The "object" parameter needs to be the required table/object to save. When you save it, you need to give a name, so use the "objectName" parameter.

### load(objectName)

Use this method to load your saved tables. To use it, just give the saved object name into parameter, and this function will return the clone of the object.

### Example

<pre>
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
</pre>
