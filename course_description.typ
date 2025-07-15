#import "template.typ": template, course

#show: template.with(
  university: "Shenzhen Technology University",
  major: "Your Major Name",
  school: "Your College Name",
  name: "SAN ZHANG",
  id: "Your Student ID",
  image_path: "images/",
  // The cover image settings
  cover: (
    logo_path: "SZTU_logo.png",
    logo_width: 40%,
    logo_with_university_name: false,
  ),
  // The watermark image settings as the background of the document
  watermark: (
    img_path: "SZTU_logo_translucent_1.png",
    img_width: 100mm,
  ),
)

// ===================================================================
//  COURSE CATEGORY 1: e.g., Major Core Courses
//  Replace the title and total ECTS credits for this section.
// ===================================================================
= [Course Category Title, e.g., Programming] ([Total ECTS Credits])

// --- Template for a single course. Copy this block for each course in this category. ---
#course(
  // --- Basic Information ---
  name: "[Course Name 1]",
  course_type: "[Course Type, e.g., Required, Elective]",
  semester: "[Semester Taken, e.g., 2022-2023 Semester 1]",
  credit: "[Number of SZTU Credits]",
  ECTS_credit: "[Number of ECTS Credits]",
  grade: "[Your Grade, e.g., A, B+, Pass]",
  
  // --- Detailed Descriptions ---
  description: [
    // Provide a comprehensive overview of the course. 
    // What are the main goals? What skills will students develop? What key concepts are covered?
    // Example: This course introduces the fundamental principles of... It aims to equip students with the ability to...
  ],
  content: [
    // List the main chapters, topics, or modules covered in the course.
    - Chapter 1: [Topic A]
    - Chapter 2: [Topic B]
    - Chapter 3: [Topic C]
    - ...
  ],
  assessment: [
    // List the assessment methods and their respective weights.
    // Example: Attendance (10%), Homework (20%), Midterm Exam (30%), Final Project (40%).
    [Assessment Method 1] (XX%), [Assessment Method 2] (XX%), ...
  ],
  literature: [
    // List the required or recommended textbooks and reference materials.
    // 1. "Book Title (Edition)" by Author(s), Publisher, Year of Publication.
    // 2. ...
  ],
)

#course(
  // --- Basic Information ---
  name: "[Course Name 2]",
  course_type: "[Course Type, e.g., Required, Elective]",
  semester: "[Semester Taken, e.g., 2022-2023 Semester 1]",
  credit: "[Number of SZTU Credits]",
  ECTS_credit: "[Number of ECTS Credits]",
  grade: "[Your Grade, e.g., A, B+, Pass]",
  
  // --- Detailed Descriptions ---
  description: [
    // Provide a comprehensive overview of the course. 
    // What are the main goals? What skills will students develop? What key concepts are covered?
    // Example: This course introduces the fundamental principles of... It aims to equip students with the ability to...
  ],
  content: [
    // List the main chapters, topics, or modules covered in the course.
    - Chapter 1: [Topic A]
    - Chapter 2: [Topic B]
    - Chapter 3: [Topic C]
    - ...
  ],
  assessment: [
    // List the assessment methods and their respective weights.
    // Example: Attendance (10%), Homework (20%), Midterm Exam (30%), Final Project (40%).
    [Assessment Method 1] (XX%), [Assessment Method 2] (XX%), ...
  ],
  literature: [
    // List the required or recommended textbooks and reference materials.
    // 1. "Book Title (Edition)" by Author(s), Publisher, Year of Publication.
    // 2. ...
  ],
)

#course(
  // --- Basic Information ---
  name: "[Course Name 3]",
  course_type: "[Course Type, e.g., Required, Elective]",
  semester: "[Semester Taken, e.g., 2022-2023 Semester 1]",
  credit: "[Number of SZTU Credits]",
  ECTS_credit: "[Number of ECTS Credits]",
  grade: "[Your Grade, e.g., A, B+, Pass]",
  
  // --- Detailed Descriptions ---
  description: [
    // Provide a comprehensive overview of the course. 
    // What are the main goals? What skills will students develop? What key concepts are covered?
    // Example: This course introduces the fundamental principles of... It aims to equip students with the ability to...
  ],
  content: [
    // List the main chapters, topics, or modules covered in the course.
    - Chapter 1: [Topic A]
    - Chapter 2: [Topic B]
    - Chapter 3: [Topic C]
    - ...
  ],
  assessment: [
    // List the assessment methods and their respective weights.
    // Example: Attendance (10%), Homework (20%), Midterm Exam (30%), Final Project (40%).
    [Assessment Method 1] (XX%), [Assessment Method 2] (XX%), ...
  ],
  literature: [
    // List the required or recommended textbooks and reference materials.
    // 1. "Book Title (Edition)" by Author(s), Publisher, Year of Publication.
    // 2. ...
  ],
)
// --- End of single course template ---


// ===================================================================
//  COURSE CATEGORY 2: e.g., General Education / Others
// ===================================================================
= [Another Category, e.g., Others]

// --- Copy and paste the course block above to add more courses here ---
#course(
  // --- Basic Information ---
  name: "[Course Name 4]",
  course_type: "[Course Type]",
  semester: "[Semester Taken]",
  credit: "[Credits]",
  ECTS_credit: "[ECTS Credits]",
  grade: "[Your Grade]",
  
  // --- Detailed Descriptions ---
  description: [
    A brief description of this course's purpose and content.
  ],
  content: [
    - [Main content or module 1]
    - [Main content or module 2]
    - ...
  ],
  assessment: [
    [Assessment Method, e.g., Online Exam (100%)]
  ],
  // The 'literature' field is optional. If a course has no textbook, you can delete the line or leave it empty.
  // literature: [],
)