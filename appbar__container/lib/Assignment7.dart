import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Assignment 7"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAVFBMVEX////yUCJ/ugAApO//uQDxOgBytADyShT2j3v/+/T/tAAAnO74+/R7uACpz3T0+f50wPTxMgD1hW//rgDwHABnrwDxQwD4s6ejzGgAle0Amu5ovPNVGgEPAAABAklEQVR4nO3biQnCQBRF0bhkceKWxGjU/vsUHKzgMyDh3AIenAJeVUmSJEmSJEmSJEmSJEmSpH/tVocaxu/KcW5CzQWF9SZU22Vhsw3VEBISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhKuSDi0oe4/4SlUSeHYxXpk4XIOtRQUSlL5LtHyzCFYQeGzD/V6Z+CUQk0Fhf0u1jUL0z5UIiQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCRckXD97zxJkiRJkiRJkiRJkiRJkhTrA29gzkcc3y0uAAAAAElFTkSuQmCC",
                      width: 300,
                      height: 150,
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://pbs.twimg.com/profile_images/1717013664954499072/2dcJ0Unw_400x400.png",
                      width: 150,
                      height: 300,
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://c8.alamy.com/comp/2CBC2KP/amazon-logo-2CBC2KP.jpg",
                      width: 150,
                      height: 300,
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "data:image/png;base64,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",
                      width: 150,
                      height: 300,
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip",
                      width: 150,
                      height: 300,
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
