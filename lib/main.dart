import 'package:dogbreedapp/Doginfo.dart';
import 'package:dogbreedapp/dog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Dog Breed App!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  List<Dog> dogs = [
    Dog(name: "Star", breed: "Maltese", imageURL: "https://cdn.pixabay.com/photo/2016/01/05/17/51/maltese-1123016__340.jpg", description: "A cold but cute dog. "),
    Dog(name: "Max", breed: "Golden Retriever", imageURL: "https://media.istockphoto.com/photos/golden-retriever-running-and-playing-at-park-with-tennis-ball-picture-id1176429264?b=1&k=20&m=1176429264&s=170667a&w=0&h=xvKY6www-Q-ztgfjVIVyeuYQOOXPWtU0d1sj0H7MYRs=", description: "A large, friendly, and cute dog! "),
    Dog(name: "Luna", breed: "Bulldog", imageURL: "https://cdn.pixabay.com/photo/2019/05/27/19/08/puppy-4233378_1280.jpg", description: "Bulldogs are cute but fierce somtimes!"),
    Dog(name: "Snoopy", breed: "Beagle", imageURL: "https://media.istockphoto.com/photos/cute-beagle-at-park-picture-id157603003?s=612x612", description: "Beagles are kind and proud!"),
    Dog(name: "Scout", breed: "German Shepard", imageURL: "https://media.istockphoto.com/photos/purebred-german-shepherd-puppy-lies-on-the-sidewalk-against-a-wooden-picture-id1358309706?b=1&k=20&m=1358309706&s=170667a&w=0&h=Od8h2xqYTRzjokH8ys8mgrAv_ueMbLbHPvFKdNiqDYM=", description: "Germany shepards are loyal and brave."),
    Dog(name: "Daisy", breed: "Terrier", imageURL: "https://cdn.pixabay.com/photo/2013/11/23/02/17/dog-216282__340.jpg", description: "Small dogs that can grow to be large!"),
    Dog(name: "Cooper", breed: "Dachshund", imageURL: "https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374__480.jpg", description: "Very long and look like sausages! "),
    Dog(name: "Milo", breed: "Husky", imageURL: "https://cdn.pixabay.com/photo/2018/05/07/10/48/husky-3380548__480.jpg", description: "A dog that can stand the harsh winters. "),
    Dog(name: "Lucy", breed: "Corgi", imageURL: "https://media.istockphoto.com/photos/corgi-dog-smile-and-happy-in-summer-sunny-day-picture-id953069774?b=1&k=20&m=953069774&s=170667a&w=0&h=yIHHBcllvoXv6OMAMUJ3dexNMINosquu-4EboYUV1r8=", description: "A gold, small, and cute dog! "),
    Dog(name: "Charlie", breed: "Pomeranian", imageURL: "https://media.istockphoto.com/photos/cute-puppy-pomeranian-mixed-breed-pekingese-dog-run-on-the-grass-with-picture-id1308262580?b=1&k=20&m=1308262580&s=170667a&w=0&h=FMGlz7g2eh9mOYZYT_CjkbzfoyLWtFmt0TQgvDztjnQ=", description: "A small dog that has quite the attitude! "),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: GridView(
                shrinkWrap: true,
                padding: EdgeInsets.all(25.0),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200, 
                  childAspectRatio: 3/2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 15,
                ),
                children: dogs.map((e) { 
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context) => DogInfo(dog: e),));
                    },
                    child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      e.imageURL,
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                          ),
                  );
                }).toList(),
              ),
          ),
    );
  }
}
