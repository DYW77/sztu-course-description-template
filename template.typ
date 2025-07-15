#import "@preview/tablex:0.0.6": tablex, hlinex
#import "@preview/tablem:0.1.0": tablem
#let three-line-table = tablem.with(
  render: (columns: auto, ..args) => {
    tablex(
      columns: columns,
      auto-lines: false,
      align: center + horizon,
      hlinex(y: 0),
      hlinex(y: 1),
      ..args,
      hlinex(),
    )
  }
)
#let template(
  university: none,
  major: none,
  school: none,
  name: none,
  id: none,
  cover: none,
  watermark: none,
  image_path: none,
  doc,
) = {
  // Cover
  page()[
    #align(center)[
      #image(image_path + cover.logo_path, width: cover.logo_width)
      #if not cover.logo_with_university_name {
        text(weight: "semibold", size: 24pt, rgb("#023692"))[#university]
      }
      #parbreak()
      #text(weight: "bold", size: 30pt, "Course Description") #parbreak()
      #text(weight: "semibold", size: 16pt)[Name: #name] #parbreak()
      #text(weight: "semibold", size: 16pt)[Student No. #id] #parbreak()
      #text(weight: "semibold", size: 16pt)[Major: #major] #parbreak()
      #text(weight: "semibold", size: 16pt)[#school]
      #v(1fr)
      
    ]

    #align(left)[
      #text(weight: "semibold", size: 14pt)[
      // ※1 credit point at Shenzhen Technology University(SZTU) corresponds with approximately 1.5 ECTS.\
      #text(weight: "bold", size: 14pt, "Annotation:") 
      At Shenzhen Technology University (SZTU):
      - Each semester comprises 18 weeks.
      - 1 credit point (1 CP) of lecture or seminar corresponds to 1 class hour per week (additional preparation hours are not included). 
      - Each class hour comprises 45 minutes.
      ]
    ]
    #align(center)[
      #text(weight: "semibold", size: 14pt)[
      #three-line-table[
      | SZTU-CP | 1 SZTU-CP = 1 h class per week full semester + 1.5 h \ additional preparation per week full semester (≈ 18 weeks)\ 1 SZTU-CP = (1 + 1.5) \* 18 = 45 h Workload |
      |--------|------------------------------|
      | ECTS Credit   | 1 ECTS Credit = 30 h Workload   |
      ]
      ]
      #text(weight: "bold", size: 14pt, "※ Equivalence of SZTU-CP and ECTS: 1 SZTU-CP = 1.5 ECTS Credit ※") #parbreak()
    ]
    // #align(right)[
    //   #set text(weight: "medium", size: 14pt)
    //   Name: #name #parbreak()
    //   Student No. #id #parbreak()
    //   Major in #major
    //   #parbreak()
    //   #school
    // ]
    
  ]

  // Page settings
  set page(
    header: [
      Course Description - #name
      #h(1fr)
      #university
    ],
    footer: context [
      #counter(page).display("1 / 1", both: true)
      #h(1fr)
      #datetime.today().display()
    ],
    background: image(
      image_path + watermark.img_path,
      width: watermark.img_width,
    )
  )

  // Table of contents
  page(footer: [#h(1fr)#datetime.today().display()])[
    #outline(
      title: "Table of Contents",
      indent: 2em,
    )
  ]

  // Main body
  counter(page).update(1)
  set par(justify: true)
  set heading(numbering: "1.1.")
  doc
}

#let course(
  name: none,
  id: none,
  course_type:none,
  semester: none,
  credit: none,
  ECTS_credit: none,
  hours: none,
  grade: none,
  preparatory: none,
  prerequisite: none,
  content: none,
  description: none,
  assessment: none,
  literature: none,
) = {
  heading(depth: 2)[#name]
  let cells = (
    // ([*Course Title*], name),
    // ([*Course No.*], id),
    ([*Course Type*], course_type),
    ([*Semester*], semester),
    ([*Credit*], credit),
    ([*ECTS Credit*], ECTS_credit),
    // ([*Course Hours*], hours),
    // ([*Preparatory Course(s)*], preparatory),
    // ([*Prerequisite(s)*], prerequisite),
    ([*Course Description*], description),
    ([*Content*], content),
    ([*Assessment*], assessment),
    ([*Literature List*], literature),
    ([*My Grade*], grade),
  )
  let table_args = ()
  for row in cells {
    if row.at(1) != none {
      table_args.push(row.at(0))
      table_args.push(row.at(1))
    }
  }
  table(
    columns: (auto, 1fr),
    ..table_args,
  )
}
