// This is the main template function that structures the entire document.
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
  // --- Cover Page ---
  // Defines the layout and content for the first page.
  page()[
    #align(center)[
      #image(image_path + cover.logo_path, width: cover.logo_width)
      #if not cover.logo_with_university_name {
        text(weight: "semibold", size: 24pt, rgb("#023692"))[#university]
      }
      #v(1em)
      #text(weight: "bold", size: 28pt, "Course Description")
      #v(1em)
      #text(size: 16pt)[Name: #name] #parbreak()
      #text(size: 16pt)[Major: #major] #parbreak()
      #text(size: 16pt)[Institution: #school]
      #v(1fr) // This pushes the following content to the bottom of the page.
    ]
    #v(0.5em)

    // --- Annotations and Credit Conversion Table on Cover ---
    // This block contains the explanatory notes at the bottom of the cover.
    #block[
      #text(weight: "bold", size: 14pt)[Annotation]
      // #v(1em)
      
      #text(size: 14pt)[
        At Shenzhen Technology University (SZTU):
        - Each semester comprises 18 weeks.
        - 1 credit point (1 CP) of lecture or seminar corresponds to 1 class hour per week (additional preparation hours are not included).
        - Each class hour comprises 45 minutes.
      ]
      #v(0.5em)

      // This "three-line table" is implemented using Typst's native table function
      // to ensure compatibility with Typst v0.13+ and remove external dependencies.
      #align(center, table(
        columns: (auto, 1fr),
        align: (center + horizon, left + horizon),
        stroke: none, // Disables all default cell borders.
        // Manually add horizontal lines to create the "three-line" style.
        table.hline(y: 0, stroke: 0.5pt), // Top line
        table.hline(y: 1, stroke: 0.5pt), // Line after the header row
        table.hline(y: 2, stroke: 0.5pt), // Bottom line

        // Table content
        [SZTU-CP], [1 SZTU-CP $=$ 1 h class per week full semester $+$ 1.5 h additional preparation per week full semester ($≈$ 18 weeks)\ 1 SZTU-CP $=$ (1 $+$ 1.5) $*$ 18 $=$ 45 h Workload],
        [ECTS Credit], [1 ECTS Credit $=$ 30 h Workload],
      ))

      #align(center, text(weight: "bold", size: 14pt)[※ Equivalence of SZTU-CP and ECTS: 1 SZTU-CP $=$ 1.5 ECTS Credits ※])
    ]
  ]

  // --- Page Settings for Subsequent Pages ---
  // Sets the header, footer, and background for all pages after the cover.
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

  // --- Table of Contents Page ---
  page(footer: [#h(1fr)#datetime.today().display()])[
    #outline(
      title: "Table of Contents",
      indent: 2em,
    )
  ]

  // --- Main Document Body Settings ---
  // These settings apply to the main content (the course descriptions).
  counter(page).update(1) // Resets page counter for the main body.
  set par(justify: true)
  set heading(numbering: "1.1.")
  doc
}

// --- Course Information Function ---
// This function takes course details and formats them into a heading and a table.
// It uses the native `table` function and is already compatible with modern Typst.
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
  // Each course gets a level-2 heading.
  heading(depth: 2)[#name]

  // Define the rows for the course details table.
  let cells = (
    ([*Course Type*], course_type),
    ([*Semester*], semester),
    ([*Credit Point(s)*], credit),
    ([*ECTS Credit(s)*], ECTS_credit),
    ([*Course Description*], description),
    ([*Content*], content),
    ([*Assessment*], assessment),
    ([*Literature List*], literature),
    ([*My Grade*], grade),
  )

  // Dynamically build the table arguments, skipping any items that are `none`.
  let table_args = ()
  for row in cells {
    if row.at(1) != none {
      table_args.push(row.at(0))
      table_args.push(row.at(1))
    }
  }

  // Display the course details in a two-column table.
  table(
    columns: (auto, 1fr),
    ..table_args,
  )
}