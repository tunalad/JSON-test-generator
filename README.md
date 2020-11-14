#  JSON test Generator
This is a little test generator software I made in a night to help me with studying for the upcoming exam I had then. I also made it in godot just to warm up a little bit for GMTK Game Jam 2020. 
Is it good? Not really, but it does the job I wanted it to do.

### How it works:
It generates a random value and it searches for a question in the JSON file based on it, and it repeats that action 10 more times. 
Exam also had us to draw some pictures and stuff like that, so I also wrote some code to check how many drawing are there. It first generates 8 questions, then it checks how many drawing questions are generated already. If there are none, throw 3 drawing questions. If there is not enough, throw number of missing questions (this part of code is buggy, it sometimes gives you like 6 of them. I just aproached that problem poorly, will fix that if I want to.)

### JSON question format:
    "number": {
        "Lecture": number,
        "Drawing": true/false,
        "Question": "I do be asking you to do sth"
    },

### To-do list:
* avoid repeating questions
* actually use "Lecture" for something
* ask users for max questions
* ask users for how many drawing they want
* ask users to do a backflip if possible idk xd
