[![Choaib ELMADI - FPGA](https://img.shields.io/badge/Choaib_ELMADI-FPGA-8800dd)](https://elmadichoaib.vercel.app) ![Status - Learning](https://img.shields.io/badge/Status-Learning-2bd729)

# FPGA Programming for Beginners - Notes and Insights

This repository contains my notes and insights from reading the book "FPGA Programming for Beginners" by Frank Bruno. The book serves as an introductory guide to FPGA (Field-Programmable Gate Array) programming, and this repository will document my learning journey.

## Contents

- **FPGA-Programming-for-Beginners.pdf**: The original PDF file of the book.
- **Docs**: A directory containing my chapter-by-chapter docs, summaries, and key takeaways.
- **Notes**: A directory containing my notes and key takeaways.
- **Exercises**: Solutions and explanations for the exercises provided in the book.
- **Projects**: Any practical projects or examples I work on while following the book.

## Goals

- To gain a solid understanding of FPGA programming concepts and techniques.

- To create a comprehensive set of notes and resources that can help others who are learning FPGA programming.

- To document my progress and reflections as I go through the book.

## How to Use This Repository

- **Reading the Book**: Start by downloading the PDF file `FPGA-Programming-for-Beginners.pdf` and follow along.

- **Notes and Summaries**: Check the `Notes` directory for detailed notes and summaries of each chapter. These can be used as a quick reference or refresher.

- **Exercises and Projects**: Explore the `Exercises` and `Projects` directories to see practical implementations and examples.

## Feel free to explore each folder to access the resources and projects provided.

<br>

![What is an FPGA?](https://img.shields.io/badge/What_is_an_FPGA%3F-fb151a?style=for-the-badge)

Let's say that you write some code:

```python
def adder(a, b):
    res = a + b
    return res
```

The way this code usually works is that it gets `compiled` into instructions that run on a `processor`.

You can write this code differently and it will get `synthesized` to effectively run on an `FPGA`.

```verilog
module adder (
    input  wire [4:0] a,
    input  wire [4:0] b,
    output wire [4:0] y
);
    assign y = a + b;

endmodule
```

This kind of code is called: `Hardware Description Language (HDL)`.

- **Synthesis** is the process of mapping this code into physical hardware blocks.

- These hardware blocks are comprised completely of registers and logic gates.

- Logic gates can be implemented using `look-up tables (LUT)`. So, using a bunch of programmable LUTs and a routing fabric -that can connect them all together-, and then allow the user to reprogram the LUTs to whatever he wants, you get a single device that can run whatever code we want. We call that device an **`FPGA`**.
