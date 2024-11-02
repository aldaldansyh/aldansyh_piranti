import 'package:sesi4/model/feed.dart';

class FeedController {
  List<Feed> feeds = [
   Feed(user: User(
    name: 'Jieb', 
    avatar: 'https://images.pexels.com/photos/27411123/pexels-photo-27411123/free-photo-of-man-in-shirt-sitting-on-chair.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', 
    place: 'San Diego'
    ),
    content: Content(
      image: 'https://images.pexels.com/photos/29162953/pexels-photo-29162953/free-photo-of-children-ready-for-surfing-at-the-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', 
      likes: '785 Likes', 
      description: 'Jieb: Vitamin Sea'
      ),

    ),
   Feed(user: User(
    name: 'Jonathan', 
    avatar: 'https://images.pexels.com/photos/16173611/pexels-photo-16173611/free-photo-of-man-in-sunglasses-posing-outdoors-near-pillars.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', 
    place: 'San Franscisco'
    ),
    content: Content(
      image: 'https://images.pexels.com/photos/29181283/pexels-photo-29181283/free-photo-of-nighttime-churros-stand-at-amusement-park.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', 
      likes: '1.230 Likes', 
      description: 'Jonathan: Churros Night'
      ),

    ),
   Feed(user: User(
    name: 'Christie', 
    avatar: 'https://images.pexels.com/photos/28958820/pexels-photo-28958820/free-photo-of-woman-reaching-towards-circular-ceiling-light.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', 
    place: 'Bellingham'
    ),
    content: Content(
      image: 'https://images.pexels.com/photos/14517776/pexels-photo-14517776.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', 
      likes: '785 Likes', 
      description: 'Christie: Brown'
      ),

    ),
   Feed(user: User(
    name: 'itsjessia', 
    avatar: 'https://images.pexels.com/photos/19932536/pexels-photo-19932536/free-photo-of-woman-in-wedding-dress-on-grass.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', 
    place: 'Amsterdam'
    ),
    content: Content(
      image: 'https://images.pexels.com/photos/29032415/pexels-photo-29032415/free-photo-of-red-swedish-house-decorated-for-halloween.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', 
      likes: '785 Likes', 
      description: 'itsjessia: Hometown'
      ),

    ),
  ];
}