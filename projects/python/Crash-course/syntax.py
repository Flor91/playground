continue_meditating = True
while continue_meditating:
    if True:
        continue
    elif False:
        raise SystemExit("Gah! Paradox!")
        # raise raises exceptions (try and except are used for catching them).
    else:
        continue_meditating = False

share_enlightenment()



# ---

# Data Literals
number_list = [1, 2, 5] # "Three sir!"
number_list.append(3)

# Dictionaries map from keys to values
music = {"Aidan": "Beats", "Justin": "Grunge"}
music['Stephen'] = 'Sarcasm'

birth_year = ('Stephen', 1984) # Tuples are immutable
birth_year[1] = 1341 # Raises an exception


# ---

# Functions
def shout(message="Hi"):
    print "%s!" % message

shout() # Prints "Hi!"
shout("I love python")
shout(message="And keyword arguments")


# ---

# Classes
class LoudTalker(object):
    def say(self, message):
        shout(message)

shaun = LoudTalker()
shaun.say("Herpa derpa")
# ---

# Iteration
beverage = None
for fridge in office:
    if 'Coke' in fridge:
        beverage = fridge.remove('Coke')
        break
if not beverage:
    shout("Where's the @#$%ing Coke?")
# ---

# Dictionaries
for key in mapping:
  print "%s=%s" % (key, mapping[key])

for value in mapping.values():
  print "???=%s" % value

for (k, v) in mapping.items():
  print "%s=%s" % (k, v)
    shout("Where's the @#$%ing Coke?")
# ---

# Splats
def takes_all(required, *args, **kwargs):
    # tuple of all positional (non-keyword) arguments
    print args

    # dictionary of all keyword arguments
    print kwargs
