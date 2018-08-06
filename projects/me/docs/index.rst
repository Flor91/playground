.. sample documentation master file, created by
   sphinx-quickstart on Mon Apr 16 21:22:43 2012.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to sample's documentation!
==================================

Contents:

.. toctree::
   :maxdepth: 2


   Habitica command-line interface.

   Usage: habitica [--version] [--help]
                   <command> [<args>...] [--difficulty=<d>]
                   [--verbose | --debug] [--checklists]

   Options:
     -h --help         Show this screen
     --version         Show version
     --difficulty=<d>  (easy | medium | hard) [default: easy]
     --verbose         Show some logging information
     --debug           Some all logging information
     -c --checklists   Toggle displaying checklists on or off

   The habitica commands are:
     status                  Show HP, XP, GP, and more
     habits                  List habit tasks
     habits up <task-id>     Up (+) habit <task-id>
     habits down <task-id>   Down (-) habit <task-id>
     dailies                 List daily tasks
     dailies done            Mark daily <task-id> complete
     dailies undo            Mark daily <task-id> incomplete
     todos                   List todo tasks
     todos done <task-id>    Mark one or more todo <task-id> completed
     todos add <task>        Add todo with description <task>
     todos delete <task-id>  Delete one or more todo <task-id>
     server                  Show status of Habitica service
     home                    Open tasks page in default browser

   For `habits up|down`, `dailies done|undo`, `todos done`, and `todos
   delete`, you can pass one or more <task-id> parameters, using either
   comma-separated lists or ranges or both. For example, `todos done
   1,3,6-9,11`.

   To show checklists with "todos" and "dailies" permanently, set
   'checklists' in your auth.cfg file to `checklists = true`.



Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
