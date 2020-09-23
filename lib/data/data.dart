import 'package:homework/models/category.dart';
import 'package:homework/models/Job.dart';

List<Job> getJobs() {
  return [
    General,
    Privacy,

  ];
}

// ignore: non_constant_identifier_names
Category General1 = Category(id: "1", name: "هي كل وظيفة يقدمها القطاع العام في البلاد ");
// ignore: non_constant_identifier_names
Category Privacy1 = Category(id: "2", name: "هي كل وظيفة يقدمها القطاع الخاص خارج اراضي الوطن");


 // ignore: non_constant_identifier_names
 Job General = new Job(
    id: "1",
    name: "وظيفة عموميةداخل البلاد",

    iconURL:
    "https://s3-eu-west-1.amazonaws.com/img4.haraj.com.sa/cache4/387x387-1_-xXoxCi0kHzMo3t.jpg",
    isAdd: true,
    rating: 5,
    status: null,
    categories: [
      General1,

    ]);

// ignore: non_constant_identifier_names
Job Privacy = new Job (
    id: "2",
    name: "وظيفة خصوصية خارج البلاد ",

    iconURL:
    "https://www.ammonnews.net/img/big/201111271426RN412.jpeg?medium",
    isAdd: true,
    rating: 4.1,
    status: null,
    categories: [
      Privacy1,
    ]);


