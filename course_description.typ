#import "template.typ": template, course

#show: template.with(
  university: "Shenzhen Technology University",
  major: "Data Science and Big Data Technology",
  school: "College of Big Data and Internet",
  name: "DONGYAN WEI",
  id: "202100802142",
  image_path: "images/",
  // The cover image settings
  cover: (
    logo_path: "SZTU_logo.png",
    logo_width: 40%,
    logo_with_university_name: false,
  ),
  // The watermark image settings as the background of the document
  watermark: (
    img_path: "SZTU_logo_translucent.png",
    img_width: 100mm,
  ),
)

= Others


#course(
  name: [Course Name 1],
  course_type: [ww],
  semester: [Semester 1],
  credit: [1],
  ECTS_credit: [1.5],
  grade: [Grade 1],
  // preparatory: [Preparatory Course(s) 1],
  // prerequisite: [Prerequisite(s) 1],
  description: [
  The main body of Course Description 1
  ],
  content: [
    - Chapter 1
    - Chapter 2
    - Chapter 3
  ],
  assessment: [
    Presentation and participation (20%), Assignments (40%), Final Exam (40%).
  ],
  literature: [
    1. BOOK 1
  ],
)


