print "- STRING VARIABLES -"

my_name = 'Flor Silvestre'
my_age = 26
my_height = 162
my_weight = 63
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Blonde'

print "Let's talk about %s." % my_name
print "She's %d centimeters tall." % my_height
print "She's %d kilograms heavy." % my_weight
print "Actually that is heavy :("
print "She's got %s eyes and %s hair." % (my_eyes, my_hair)
print "Her teeth are usually %s depending on the coffee." % my_teeth

#This line is tricky
print "If I add %d, %d and %d I get %d." % (my_age, my_height, my_weight,
my_age + my_height + my_weight)
