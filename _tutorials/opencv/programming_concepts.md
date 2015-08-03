---
layout: post
title: "Basic Programming Concepts"
categories:
  - opencv
redirect_from: "/tutorials/category/opencv/programming_concepts/"
---

#### Introduction

**FOR C Users:**  
**It is assumed for this tutorial that the reader has a working knowledge about the fundamentals of computer programming in the C language – data types, variables, functions and the like. If that is not the case however, readers may please refer to any commonly referred book on programming in C, particularly 'The C Programming Language' authored by the founders of the language, Kernighan and Ritchie.**

Here we will be discussing slightly more involved topics, and how we use them for Image Processing with OpenCV. We will be covering macros, structures and pointers

**FOR C++ Users: ***

It is assumed that the reader has working knowledge of computer programming in C/C++ - data types, variables, functions, loop constructs, etc. If not , then readers may refer to any commonly referred book on programming in C++, like "The C++ Programming Language", authored by the founder of the language, Bjarne Strousoup. 

Here we'll give a little insight to more advanced topics and C++ specific topics like Classes, Objects and the STL library, and how we'll be using them for Image Processing with OpenCV.

#### Macros

**When we write a program we are essentially typing words with text which are then interpreted by the compiler accordingly. This processing is all done after we write the program and wish it to be compiled. However, there exists something called pre-processing which is done through the use of macro substitutions.**

Macros are defined at the top of a source file, in the following manner:

`#define ``token replacement`

What this means is that for the rest of the program in the file, wherever the token is encountered in the text, it will be textually replaced by the replacement. For example if a definition is given as:

`#define AGE 30`

In the program, wherever the word AGE is written, it will be taken by the compiler to be 30.  
For example:

i = age will be interpreted as i = 30, and so on.

`#define INFINITE_LOOP while(1)`

This means that whenever the term INFINITE_LOOP is typed in the program, it will refer to exactly that, a while loop that is always 1, i.e true.

N.B – This does not apply to text inside double quotes, however. So if we wish to assign the string "age" to a string variable then it will not be assigned as 30.

Why are macros useful? Well, in many programs, we repeatedly use some numerical quantity, like, say, the value of pi (3.142) for geometry-related programs, or, say, a particular tax percentage for financial programs. With macros, we can give these numbers an actual name in the text, like pi or tax_rate which makes the program easier to understand, and also make changes to, as instead of changing the number at all locations we can just change it at the original definition. Now, all of this could also have been done using a variable of course, but in that case there would be a need to allocate memory for that variable, while in macros there is only a textual substitution.

Another very useful feature of macros is to call them with arguments, which means we can have different substitutions for different values of the arguments provided. For example:

`#define product(a,b) a*b`

It resembles a function call but ultimately results in substitution into the written code. So a line which goes:

`x = product(5,4);`  
will become exactly the same as

`x = 5*4;`

However caution is quite advisable here, as the next example indicates:

`x = product(a+b,c+d);`  
will, by pure textual substitution give

`x = a+b*c+d;`  
which is certainly not what was desired.

While this may have been difficult to predict beforehand, having seen it now, it does make sense why this would occur. So it is necessary that one carefully observes what it is one wants to replace and how to go about that. The correct form of referring to the macro in this particular case:

`x = product((a+b),(c+d));`  
which will give

`x = (a+b)*(c+d);`

Despite shortcomings like these, macros are very commonly used in general because of their various advantages, and we will be utilizing them in both forms, with or without arguments, in several of the Image Processing modules we encounter.

#### Pointers

**As you must have seen while studying variables, they have two things primarily associated with them – the value stored by the variable, and the address in memory of the variable. Now the values can be accessed and manipulated by the variable directly, but for the addresses, we use something called pointers to that data-type. For example, a pointer of integer data-type can store addresses of integer variables in memory. The concept of pointers is one of the definitive aspects of the C programming language, and they will be used extensively in Image Processing.**

Pointers are declared in the following manner:

`int *p;`

This declares a pointer to the integer data-type with the name p. The operator * is called the direction operator in this case. A pointer can store the address of a variable. To access the address of a variable, we use the ampersand operator (&) before the variable name. So, to assign the address of a variable, say age, to the pointer p, we will do this:

`p = &age;`

Note that we can assign only addresses of existing variables to pointers. Addresses of constant values are invalid, and also yet undeclared variables. In this case, say the address of the variable age in memory is some hexadecimal number that represents where it is stored. Then that hexadecimal number is the value stored in p. So, when we type something like this:

`p++;`

The above statement will increment the memory stored in p, not by 1, but by 1 memory space where the memory space is the size of the data-type that p refers to. For example, if p is a pointer to an integer , which is of 4 bytes, then executing p++ will increment the value of the memory by 4 bits. Similarly, a statement like p+=i, will increase the memory by (i*no_of_bits).

There is another important concept, that of the other use of the indirection operator *. If in the above case, we use an expression with the variable p, it will be using the address of the variable age in memory. But when we know that p points to an integer variable, and we want to access not the address, but the actual value stored in the variable to which p points, we may do so using the * operator before p, in expressions. For example,

`int age = 30;`  
`int *p = &age;`  
`printf("%d",*p);`

The above set of statements will print 30. We can also make changes to the value stored in age by changing *p. Therefore, effectively, *p is equivalent to age.

Pointers are useful in several ways. Apart from accessing the address of variables, they also allow a greater degree of flexibility. When pointers are passed as arguments to a function, they allow us to change the values of the original variables themselves, thus, in a sense, allowing the same function to return multiple values. Also, they allow the creation of linked data structures, where one instance of a structure is connected to the next. We will see more of this in the section under structures.

Pointers and arrays are very closely related in C. When we refer to an array by a name, say a, that name is actually a constant value; the address of the first element of the array, or element number zero a[0]. So if we make the following statement:

`int *p = a; `  OR    `int *p = &a[0];`

Then p is now a substitute for the array variable in a way. Now p[0] or p[1] can be used instead of a[0] or a[1]. Also a term like *(p+i) will refer to the value stored in p[i] (or a[i]) and so on and so forth. We will use pointers to refer to array in many places in the further modules.

#### Structures

**What we have seen of variables so far is that they are single entities and not collections. Even in arrays, all the elements must be of the same data-type. Structures, however, are collections of one or more variables of different types, joined together under a single name for easier and more convenient representation. By allowing multiple variables like integers, floating point numbers, strings and arrays, among others, to be grouped together, structures make large programs much simpler to handle. After a structure is created, we can then create instances of the structure to refer to different entities of that type.**

For example, a program involving maintaining records of a student in a school would need a structure to refer to each student, with some possible member variables being the student's name, class, roll number, date of birth and address, among other things. It is also important to note that structures can also contain other structures within themselves. In this case, the structure for student could contain within it a structure referring to the marks of the student, where the member variables would be the marks in various subjects.

The keyword struct is used to declare structures. The definition that uses this is generally specified at the top, before the start of the program. The struct keyword, followed by the name for the structure, say, struct_name defines a data-type, a user-defined data-type. Thereafter, to create variables of this data-type, we must use the phrase struct struct_name followed by the name of the variable we wish to create.

For example, let us consider a structure to represent a point in a 2-D Cartesian co-ordinate system:

`struct point {`  
        double x;  
        double y;  
};  
Now, inside the program, if we wish to create a variable called, say, origin, to refer to the origin of the system, we would have the declaration like this:

`struct point origin;`

This declares a variable of the structure point, called origin.

For the purpose of initializing and utilizing values to the member variables of a structure variable, we need to be able to access the member variables of that structure instance. We do this by using the dot operator (.) The general syntax to access a variable var of a structure struct_name is struct_name.var

So if we wanted to set the value of the origin to, say, (3.4,6.7), from what it was prior to that then we would do this:

`origin.x = 3.4;`  
origin.y = 6.7;

 

**POINTERS TO STRUCTURES**

**We have already discussed the topic of pointers. In addition to referring to fundamental data-types, pointers can also refer to user-defined data-types like structures. And the concept of pointers to structures will be a pivotal one in OpenCV. The method of definition is the same as for fundamental data-types. The major distinctive point, is the accessing of member variables of a structure. To take the above example, if we declare a pointer:**

`struct point *p = &origin;`

This will define a pointer called p to the variable origin of the structure point. In order to refer to the member variables of origin, we use the -> operator. So:

`p->x = 5.5`  
`p->y = 5.5`

The above two statements will set the values of the member variables of origin to 5.5 each.

Another important concept is of self-referential structures. We had mentioned how structures can have other structures of the same or different type as one of their member variables. What can also happen is that it can have a pointer to the same structure as one of the member variables. This makes it a self-referential structure, i.e one that refers to itself. This is particularly important for making connected lists, where each member of the list, a structure, is linked to the address of another one. This is also needed when the structure is such that it needs as one of its sub-units, a smaller representation of itself.

**THE IPLIMAGE STRUCTURE  
This is a very important self-referential structure data-type of OpenCV, which is used to refer to images. Each variable of this data type contains the information of a particular image. Now, this structure has several member variables associated with it, each of which defines one aspect of the image. We will not be requiring all of these member variables for our purposes, so here we shall discuss only a few important ones.**

width – This stores the width of the image in pixels as an integer  
height – This stores the height of the image in pixels as an integer  
depth – This is the number of bits of memory that each pixel contains  
nChannels – The number of channels of the image  
origin – This is an integer which has one of two values, the macros IPL_ORIGIN_TL or IPL_ORIGIN_BL, corresponding to the origin being located in either the upper-left or lower-left corner.  
widthStep – This variable contains the number of bytes between pixels in the same column and successive rows. It is important for the purpose of accessing the data.

N.B – While using the IplImage structure in programs, we do so through pointers to this structure, rather than variables of the structure itself. We will see how to use the IplImage structure in the tutorial on introductory programs.

#### Classes

C++ is a bunch of small additions to C, with a few major additions. One major addition is the object-oriented approach. As the name object-oriented programming suggests, this approach deals with objects. Of course, these are not real-life objects themselves. Instead, these objects are the essential definitions of real world objects. Classes are collections of data related to a single object type. Classes not only include information regarding the real world object, but also functions to access the data, and classes possess the ability to inherit from other classes.

If a class is a house, then the functions will be the doors and the variables will be the items inside the house. The functions usually will be the only way to modify the variables in this structure, and they are usually the only way even to access the variables in this structure. This might seem silly at first, but the idea to make programs more modular - the principle itself is called "encapsulation". The key idea is that the outside world doesn't need to know exactly what data is stored inside the class--it just needs to know which functions it can use to access that data. This allows the implementation to change more easily because nobody should have to rely on it except the class itself.

The syntax for these classes is simple. First, you put the keyword '**class**' then the name of the class. Our example will use the name Computer. Then you put an open bracket. Before putting down the different variables, it is necessary to put the degree of restriction on the variable. There are three levels of restriction. The first is **public**, the second **protected**, and the third** private**. For now, all you need to know is that the public restriction allows any part of the program, including parts outside the class, to access the functions and variables specified as public. The  // See above note.  
protected restriction prevents functions outside the class to access the variable. The private restriction is similar to protected (we'll see the difference later when we look at inheritance. The syntax for declaring these access restrictions is merely the restriction keyword (public, private, protected) and then a colon. Finally, you put the different variables and functions (You usually will only put the function prototype[s]) you want to be part of the class. Then you put a closing bracket and semicolon. Keep in mind that you still must end the function prototype(s) with a semi-colon.

The code for a C++ program involving class is given here: