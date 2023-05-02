class Post{
  String title;
  String body;
  int id;

  Post({required this.title,required this.body,required this.id});


  factory Post.fromJson(Map<String,dynamic>data){
    return Post(title: data["title"], body: data["body"], id:data["id"]);
  }
}