# SZTU Course Description Template

This template is based on the [typst-course-description-template](https://github.com/dsyislearning/typst-course-description-template) by [dsyislearning](https://github.com/dsyislearning). It has been modified to better suit the specific requirements of SZTU.```

This repository contains a template for creating Course Description using [Typst](https://typst.app/). It is designed to assist in generating clear and professional course summaries, especially useful for students at Shenzhen Technology University (SZTU) who need to present course details in a standardized and visually appealing format when applying to universities.

## Preview

| ![main_page-0001](./assets/main_page-0001.jpg) | ![main_page-0002](./assets/main_page-0002.jpg) |
| ---------------------------------------------- | ---------------------------------------------- |
| ![main_page-0003](./assets/main_page-0003.jpg) | ![main_page-0004](./assets/main_page-0004.jpg) |

## Installation

To use this template, you need a local Typst environment. For a detailed Chinese tutorial on setting up the environment, please refer to this **[Zhihu article](https://zhuanlan.zhihu.com/p/644816041)**.

## Usage

In the `main.typ` file, you just need to fill in the information of your university, major, school, name, student ID, and the details of each course. The template will automatically generate a PDF file with the course descriptions.

### Metadata

Please begin your `main.typ` file with the following metadata:

```typst
#import "template.typ": template, course

#show: template.with(
  university: "The name of your University",
  major: "The name of your major",
  school: "The name of your School / Department",
  name: "Your Name",
  id: "Your Student ID",
  // The cover image settings
  cover: (
    logo_path: "logo_bupt2.png",
    logo_width: 100%,
    logo_with_university_name: true,
  ),
  // The watermark image settings as the background of the document
  watermark: (
    img_path: "logo_bupt_translucent.png",
    img_width: 160mm,
  ),
)
```

### Course Categories

Just use `= Course Category Name` to create a new category. For example, if you want to create a category named 'Major Courses', you can write

```typst

= Major Courses

#course(...)

#course(...)

```

### Course Description Items

The `#course` function's parameters are all named parameters. If you don't want to fill in some of the parameters, you can just don't use them. For example, if you don't need 'Pre-requisites', you can just write

```typst
#course(
  name: [Course Name 1],
  id: [Course ID 1],
  semester: [Semester 1],
  credit: [Credit 1],
  hours: [Hours 1],
  grade: [Grade 1],
  preparatory: [Preparatory Course(s) 1],
  content: [
    - Chapter 1
    - Chapter 2
    - Chapter 3
  ],
  description: [
    The main body of Course Description 1 \
    #lorem(100)
  ],
  assessment: [
    - Assignment 1
    - Assignment 2
    - Assignment 3
    - Exam 1
    - Exam 2
  ],
)
```

and the 'Pre-requisites' part will not be shown in this course description table.
