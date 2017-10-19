> This API allows practically any programming language (we’ll focus on python)
> (Key,Value) pairs fed as a continuous stream of text with sorted keys.
> Data flows into mapper/reducer via *NIX pipes behind the scenes.
> the Developer must:
o read data from STDIN (standard input)
o define key,value separator
o split and parse key and value strings to the correct data type
o identify when keys change in the stream
o emit by writing to STDOUT (standard output)
