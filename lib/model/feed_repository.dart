
import 'package:sesi4/model/feed.dart';

class FeedRepository {
 List<Feed> fetch(){
  return [
   Feed(
    id: 1,
    user: User(
    name: 'Pepen', 
    avatar: 'https://images.pexels.com/photos/29594648/pexels-photo-29594648/free-photo-of-elegant-portrait-of-man-in-outdoor-setting.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', 
    place: 'Sukamenak'
    ),
    content: Content(
      isLike: false,
      image: 'https://images.pexels.com/photos/109919/pexels-photo-109919.jpeg?auto=compress&cs=tinysrgb&w=600', 
      likes: '0,1 Likes', 
      description: 'Kamarana atu gaya, LIBURAN DONGGGGG'
      ),

    ),
   Feed(
    id: 2,
    user: User(
    name: 'Asep (Abi Kasep)', 
    avatar: 'https://images.pexels.com/photos/832998/pexels-photo-832998.jpeg?auto=compress&cs=tinysrgb&w=600', 
    place: 'Caringin'
    ),
    content: Content(
      isLike: false,
      image: 'https://images.pexels.com/photos/18495/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600', 
      likes: '9 Likes', 
      description: 'Ajik gelapp'
      ),

    ),
   Feed(
    id:4,
    user: User(
    name: 'Incess Sorin', 
    avatar: 'https://images.pexels.com/photos/2043590/pexels-photo-2043590.jpeg?auto=compress&cs=tinysrgb&w=600', 
    place: 'Soreang Indah'
    ),
    content: Content(
      isLike: false,
      image: 'https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=600', 
      likes: '9 - 10 Likes', 
      description: 'Gw tunjukin rumah sudah jadi dan siap huni, kali ini rumahnya posisi hook, posisi hook'
      ),

    ),
  ];
 }
}