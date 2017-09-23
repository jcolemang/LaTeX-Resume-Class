# LaTeX Resume Class

A basic resume class file for a three column resume layout. This is a pretty
basic resume class. The layout and formatting is
in [the cls file](./resumeclass.cls) and an example of the usage is
in [the tex file](./resume.tex). I would encourage anyone to modify the layout
to fit their own needs, but really if you would like it to be anything but a
basic three column layout I you should probably write your own `.cls` file and
use this as inspiration.

## Usage

### `\resumeheader`

Instead the main document you need to define two things, the `resumeheader` and
the `resumebody`. In the `resumeheader`, you define `\name`, `\profiles`,
`\email`, `\website`, and `\phonenumber`. These don't need to be defined in a
particular order, and you should be able to leave out any of them that you don't
want. An example is given below.

```
\begin{document}

\begin{resumeheader}
  \name{James Coleman Gibson}
  \profiles{GitHub/StackOverflow: jcolemang}
  \email{gibsonjc@rose-hulman.edu}
  \website{http://jcolemang.me}
  \phonenumber{269--254--7340}
\end{resumeheader}

...
```

### `\resumebody`

`\resumebody` is the main body of the resume. This is an environment which
defines the main table layout for the resume, and centers it on the page. Inside
you define the following.

#### `\sectiontitle`

This is a left justified section title for the resume. This is where you might
put something like an "Experience" or "Education" header. An example is given below.

```
\sectiontitle{Education}

...
```

#### `\rightcolumn`

The rightmost column of the resume. This is where things like dates should be
placed. An example usage is given below

```
...

\rightcolumn{May 2017 - January 2020}

...
```

#### `\centercolumn`

This is the center column of the resume where the bulk of the content should be.
This can be used for things like experience where you wish to give content in
the center and dates of the experience to the right. `\bigcolumn` should be used
if there is nothing to add to the right. Otherwise, you will likely break the
table layout. Within a `\centercolumn` you can place `\experiencetitle`,
`\experiencelocation`, and `\experiencenotes`. Each of these is just an
individual command, except for `\experiencenotes`. `\experiencenotes` is an
environment which takes multiple individual `\experiencenote`'s. These are
formatted as bulleted lists. An example `\centercolumn` usage is given below.

```
\centercolumn{%
  \experiencetitle{\LaTeX Resume}
  \experiencelocation{At Home}
  \begin{experiencenotes}
    \experiencenote{%
      Did some stuff
    }
    \experiencenote{%
      Did some other stuff
    }
  \end{experiencenotes}
}
\rightcolumn{3016 -- 3017}
```

#### `\bigcolumn`

This is a column which has no date attached to it. As an example, if you have a
skills section you probably don't have anything to add but a single list. To
keep the table layout happy within `\resumebody` you use this to take up two
columns within the table. An example usage is given below.
```
\bigcolumn{%
  What I am writing here has nothing to the right, and I don't want to break table formatting.
}
```
