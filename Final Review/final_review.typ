#import "@preview/touying:0.5.2": *
#import "@preview/touying-buaa:0.2.0": *
#import "@preview/cetz:0.3.1"

#let remark(content) = box(
  fill: rgb(230, 242, 255),  // Light blue background
  stroke: rgb(51, 102, 204),  // Dark blue border
  inset: 8pt,  // Padding inside the box
  radius: 6pt,  // Rounded corners
)[
    *Remark* \
    #content
  ]

#let warning(content) = box(
  fill: rgb(255, 230, 230),  // Light red background
  stroke: rgb(204, 51, 51),  // Dark red border
  inset: 8pt,  // Padding inside the box
  radius: 6pt,  // Rounded corners
)[
    #text(fill: red, weight: "bold")[Warning] \
    #content
  ]


#let vspace(space) = {
  block(height: space)[]
}

// Specify `lang` and `font` for the theme if needed.
#show: buaa-theme.with(
  font: ("Libertinus Serif"),
  config-info(
    title: [Final Exam Review],
    subtitle: [CS 105 • Fall 2024],
    author: [Jackson Eshbaugh],
    date: datetime.today(),
    institution: [Lafayette College],
    logo: none
  ),
)

#title-slide()

#outline-slide()

= Variables & Functions

== Variables

#slide[
  === #underline[Types of Variables]
  #vspace(.25em)
  - In Java (Processing), each variable has a type that describes the data it holds.
  #only("2-")[
  - Examples include:
    - `int`
    - `float`
    - `String`
    - `char`]
  #only("3")[
    - Any class you create is also a variable type. For example, `String` is a class in Java.
  ]
]

      

#slide[
      === #underline[Declaring & Initializing Variables]
      #vspace(.25em)
      - *Declaring* a variable is the act of allocating space for it in memory. This is like creating an empty box in memory that might be filled later.
      #only("2-")[- *Initializing* a variable is the act of filling this box.]

      #only("3-")[
        #remark[
        Declaring and initializing can be combined into one step:
        ```java int i = 12;``` is equivalent to 
        ```java
        int i;
        i = 12;
        ```
        ]
      ]
]

#slide[

  == #underline[Variable Scope]
  #only("1-3")[#vspace(.25em)]
  #only("1-3")[
    - Variables exist in a context. We refer to this context as *scope*.
  ]
  #only("2-3")[
    - Scope describes where a variable is accessible.
  ]
  #only("3-")[
    - For example, if a variable is declared within a function, it cannot be accessed outside of that function.
  ]

  #only("4")[
    #grid(
    columns: 2,
    rows: 1,
    gutter: 7em,
    [
      *Example Code*
      ```java
      void setup() {
        int i = 13;
        println(i); // Result: 13
      }
      
      void myFunction() {
        int i = 12;
      } ```
    ],
    [
      *Scope Diagram*
      #cetz.canvas({
        import cetz.draw: *
        rect((0, 0), (10, 6), radius: .5)
        content((1.5, 4.5), [```java setup()```

      `i = 13`])
      rect((.5, .5), (9.5, 3.25), radius: .5)
      content((3, 2), [
        ```java myFunction()```

        `i = 12`
      ])
    })
  ]
  )
]
  
]

== Functions

#slide[
  - A *function* is a _reusable_ block of code that performs some task and optionally, _returns_ something.
  #only("2-")[
    - To declare a function:
       
  ]
  #only("3-")[
    1. Function Header
  ]
  #only("4-")[
     2. Algorithm
  ]
  #only("5-")[
    3. Implementation
  ]
]

#slide[
  === #underline[Writing A Function: Example]
  Write a function that raises some integer $x$ to the power of another integer $y$. In other words, this function computes & returns the value $x^y$.

  #only("2-5")[
    1. Function Header
  ]

  #only("3-5")[
    ```java
    int pow(int x, int y)
    ```
  ]

  #only("4-5")[
    2. Algorithm:
  ]

  #only("5")[
    Multiply $x$ by itself $y$ times.
  ]

  #only("6-")[
    3. Implementation
  ]

  #only("7")[
    ```java
    int pow(int x, int y) {

    }
    ```
  ]

  #only("8")[
    ```java
    int pow(int x, int y) {

      while(y > 0) {

      }
    }
    ```
  ]

  #only("9")[
    ```java
    int pow(int x, int y) {

      while(y > 0) {
        x *= x;
      }
    }
    ```
  ]

  #only("10")[
    ```java
    int pow(int x, int y) {

      while(y > 0) {
        x *= x;
      }
      return x;
    }
    ```
  ]
]

#slide[
  === #underline[Function Overloading]
  - Function overloading allows multiple functions to have the same name, but different parameters.
  #only("2")[
    - Example:
    ```java
    int add(int a, int b) {
      return a + b;
    }
    ```
  ]
  #only("3")[
    - Example:
    ```java
    int add(int a, int b) {
      return a + b;
    }

    double add(double a, double b) {
      return a + b;
    }
    ```
  ]
  #only("4")[
    #grid(
      columns: 2,
      rows: 1,
      gutter: 7em,
      [
          - Example:
          ```java
          int add(int a, int b) {
            return a + b;
          }

          double add(double a, double b) {
            return a + b;
          }
          ```
      ],
      [
        #remark[
          Overloading is commonplace in Java and Processing.
        ]
      ]
    )
  ]

  #only("5")[
    #grid(
      columns: 2,
      rows: 1,
      gutter: 7em,
      [
          - Example:
          ```java
          int add(int a, int b) {
            return a + b;
          }

          double add(double a, double b) {
            return a + b;
          }
          ```
      ],
      [
        #warning[
          Note that overloading _is not_ the same concept as overriding.
        ]
      ]
    )
  ]
]

#slide[
  === #underline[Testing Functions]
  - Testing is crucial to ensure that functions work as expected.
  #only("2-")[
    1. Ground truth table
    ]
  #only("3")[
    2. Automated testing
  ] 
]

#slide[
  === #underline[Testing Functions]
  #only("1")[
    Write a test for the function below:
    ```java
    int pow(int x, int y) {
      while(y > 0) {
        x *= x;
      }
      return x;
    }
    ```
  ]
  #only("2")[
    #grid(
      columns: 2,
      rows: 1,
      gutter: 3em,
      [
        Write a test for the function below:
      ```java
      int pow(int x, int y) {
        while(y > 0) {
          x *= x;
        }
        return x;
      }
      ```
      ],
      [
        - Ground truth table:
    #table(
      columns: 2,
      rows: 5,
      table.header(
        [*Input*], [*Expected Output*]
      ),
        [2, 3], [8],
        [3, 2], [9],
        [4, 0], [1],
        [5, 1], [5]
    )
      ]
    )
  ]
  #only("3")[
    #grid(
      columns: 2,
      rows: 1,
      gutter: 3em,
      [
        Write a test for the function below:
    ```java
    int pow(int x, int y) {
      while(y > 0) {
        x *= x;
      }
      return x;
    }
    ```
      ],
      [=== Automated Testing
        ```java
        void testPow() {
          int in1 = 2;
          int in2 = 3;
          int expected = 8;
          int actual = pow(in1, in2);
          if(actual == expected) {
            println("test passed");
          } else {
            println("test failed");
          }
        }
        ```
      ]
    )
  ]
]

== Processing Functions & Variables

#slide[
  === #underline[Processing Functions]
  - Processing provides several built-in functions to handle events and drawing.
  #only("2-")[
    - `void setup()`: Called once when the program starts.
    ```java
    void setup() {
      size(400, 400);
    }
    ```
  ]
  #only("3-")[
    - `void draw()`: Continuously executes the lines of code contained inside its block until the program is stopped.
    ```java
    void draw() {
      background(255);
      ellipse(mouseX, mouseY, 50, 50);
    }
    ```
  ]
]
#slide[
  #only("4-")[
    - `void mousePressed()`: Called once after every time a mouse button is pressed.
    ```java
    void mousePressed() {
      println("Mouse pressed at: " + mouseX + ", " + mouseY);
    }
    ```
  ]
  #only("5-")[
    - `void keyPressed()`: Called once every time a key is pressed.
    ```java
    void keyPressed() {
      println("Key pressed: " + key);
    }
    ```
  ]
]

#slide[
  === #underline[Processing Variables]
  - Processing provides several built-in variables to get information about the environment.
  #only("2-")[
    - `height`: System variable that stores the height of the display window.
    - `width`: System variable that stores the width of the display window.
    - `key`: System variable that stores the value of the last key pressed.
    ```java
    void draw() {
      if (key == 'a') {
        println("The 'a' key was pressed.");
      }
    }
    ```
  ]
]

= Control Flow

#slide[
  === #underline[If Statements]
  - If statements allow you to execute code conditionally.
  #only("2-")[
    - Example:
    ```java
    if (x > 0) {
      println("x is positive");
    } else {
      println("x is not positive");
    }
    ```
  ]
]

#slide[
  === #underline[Loops]
  - Loops allow you to execute code repeatedly.
  #only("2-")[
    - Example:
    ```java
    for (int i = 0; i < 10; i++) {
      println(i);
    }
    ```
  ]
]

= Object Oriented Programming

#slide[
  === #underline[Classes & Objects]
  - A class is a blueprint for creating objects.
  #only("2-")[
    - Example:
    ```java
    class Dog {
      String name;
      int age;

      void bark() {
        println("Woof!");
      }
    }
    ```
  ]
]

#slide[
  === #underline[Inheritance]
  - Inheritance allows a class to inherit properties and methods from another class.
  #only("2-")[
    - Example:
    ```java
    class Animal {
      void eat() {
        println("This animal is eating");
      }
    }

    class Dog extends Animal {
      void bark() {
        println("Woof!");
      }
    }
    ```
  ]
]