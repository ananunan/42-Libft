# Libft

**Libft** is a project from the **42 Network** that challenges students to create their own custom library in C. This library reimplements basic C functions and adds new utilities that can be used in future projects.

This project is a cornerstone in learning programming at **42**, introducing key concepts such as:  
- Code organization and modularity.  
- Data structure implementation.  
- Memory management best practices.

## 🛠️ Features

The **Libft** library is divided into several categories of functions:

### 1. **Libft Functions**
Reimplementation of basic functions from the standard C library:
- `ft_memset`
- `ft_bzero`
- `ft_memcpy`
- `ft_strlen`
- `ft_strchr`
- And more.

### 2. **Additional Functions**
New functions to simplify common operations:
- `ft_substr`: Returns a substring of a string.
- `ft_strjoin`: Concatenates two strings.
- `ft_split`: Splits a string into substrings based on a delimiter.

### 3. **Linked List Functions**
Implementation of a **linked list** to handle dynamic data:
- `ft_lstnew`: Creates a new node.
- `ft_lstadd_front`: Adds a node to the beginning of the list.
- `ft_lstiter`: Iterates through the list and applies a function.

## 🚀 Compilation
To compile the library, run:

`make`

This will generate a `libft.a` file that can be linked to other projects.

**Cleaning compiled files:**
- `make clean`: Removes object files (.o).
- `make fclean`: Removes object files and the library (libft.a).
- `make re`: Runs fclean and recompiles everything from scratch.

## 📋 Requirements

CC compiler.

Familiarity with norminette, which ensures compliance with the 42 coding standards.

## 🏆 Learning Objectives

Implement standard and custom functions.

Work with pointers, dynamic memory allocation, and linked lists.

Ensure code modularity and reusability.

Master the use of Makefile to automate compilation.
