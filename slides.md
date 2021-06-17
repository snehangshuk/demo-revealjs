---
theme: "moon"
overview: true
transition: "slide"
highlightTheme: "monokai"
slideNumber: true
title: "Demo Reveal JS"
author: "Snehangshu Karmakar"
date: "June 14, 2021"
---

# Navigating

Slides can be nested inside of each other.

Use the buttons below for navigating:

&nbsp;<a href="#" onclick="goUp(); return false;"><i class="fa fa-chevron-up"></i></a>&nbsp;<br/>
&nbsp;<a href="#" onclick="goPrev(); return false;"><i class="fa fa-chevron-left"></i></a>&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="goNext(); return false;"><i class="fa fa-chevron-right"></i></a>&nbsp;<br/>
&nbsp;<a href="#" onclick="goDown(); return false;"><i class="fa fa-chevron-down"></i></a>&nbsp;

**Or** press the <kbd>Space</kbd> key to navigate through all slides.

## Navigating...to menu

See the &nbsp;<a href="#" onclick="toggleMenu(); return false;"><i class="fa fa-bars"></i></a>&nbsp; in the corner?

Click it and the menu will open from the side,<br/>
or press the <kbd>M</kbd> key.
<br>
Click anywhere on the slide to return to the presentation,<br />
or use the close button in the menu.

## Take a Moment

::: incremental
- Press `B` or `.` on your keyboard to enter or exit the 'paused' mode.
- Press `O` on your keyboard to enter the 'overview' mode.
- Press `F` on your keyboard to view your presentation in the 'fullscreen' mode.
:::

::: notes

Press `B` or `.` on your keyboard to enter or exit the 'paused' mode. This mode is helpful when you want to take distracting slides off the screen during a presentation.

Press `O` on your keyboard to enter the 'overview' mode. While you're in this mode, you can still navigate between slides, as if you were at 1,000 feet above your presentation.

Press `F` on your keyboard to view your presentation in the 'fullscreen' mode. Once in fullscreen mode, press the `ESC` key to exit.
:::
 
# Agenda

- Presentation Framework
- Features
- Getting started
- Explore to see interesting features

## Presentation on the Web

:::{.element: class="fragment"}
Reveal.js is a framework
:::
:::{.element: class="fragment"}
for easily crafting
:::
:::{.element: class="fragment"}
beautiful presentations
:::
:::{.element: class="fragment"}
in HTML
:::

:::{.element: class="fragment"}
You'll need a browser with support for CSS 3D transforms to see it's full capabilities.
:::

## Key Features

- Slides are created by writing simple HTML
- Presentations are...
  - served as HTML + Javascript pages
  - can be seen in any device: phones, tablets, desktops
- Content can be put under version control
- Git hosting enables collaboration across multiple authors

## What else..?

::: incremental

- nested slides
- markdown support
- auto-animate
- PDF export
- speaker notes
- LaTeX support
- syntax highlighting

:::

## Example Presentations

[https://github.com/hakimel/reveal.js/wiki/Example-Presentations](https://github.com/hakimel/reveal.js/wiki/Example-Presentations)
<br><br>
Their [orginal slide deck sample content](http://lab.hakim.se/reveal-js/) also contains a lot of great example.

# How to use it?

::: incremental
1. Create a new repository.
2. Use the Reveal.js repository as a `git submodule`.
3. Create the `slides.md` markdown file.   
4. Use `pandoc` to generate the `html` file.
5. Use a basic HTTP server to serve the html file.
6. Browse `slides.html`, and then commit the changes.
:::

![](https://media.giphy.com/media/8wbpmeim0LmdW/giphy.gif){style="max-width: 10%; border: 0; background: None; box-shadow: None;"}

## Demo

<iframe data-src="https://drive.google.com/file/d/1wK3HtgA5nnU6kJUshBSqwdzztjs0LjXh/preview" width="640" height="480" data-preload></iframe>

## How to create the markdown file

![](https://media.giphy.com/media/lqFyE7I04jpDci8UzF/giphy.gif){width=1% style="border: 0; background: None; box-shadow: None;"}
<div id='dark_back' style="font-size: 50%;">
If you want the benefits of reveal.js without having to write HTML or Markdown
try [https://slides.com](https://slides.com). It's a fully-featured visual editor and platform for
reveal.js, by the same creator.
</div>

## Code in your slides

Syntax highlighting, including line numbers.
```{.java data-line-numbers="2|3,4|6-8" data-id="code-animation"}
	import java.jdbc.*;
	public class Foo extends Bar {
	  private String a;
	  private final int X = 42;

	  public String toString() {
	    // implement this method
	  }

	  // more stuff here
	}
```

## Transition Styles

:::{.element: class="fragment"}
<p style="font-size: 50%;">Fade in</p>
```
:::{.element: class="fragment"}
Fade in
:::
```
:::

:::{.element: class="fragment fade-out"}
<p style="font-size: 50%;">Fade out</p>
:::

:::{.element: class="fragment highlight-red"}
<p style="font-size: 50%;">Highlight red</p>
```
:::{.element: class="fragment highlight-red"}
Highlight red
:::
```
:::

:::{.element: class="fragment fade-in-then-out"}
<p style="font-size: 50%;">Fade in, then out</p>
:::

:::{.element: class="fragment fade-up"}
<p style="font-size: 50%;">Slide up while fading in</p>
:::


## Speaker Notes

Write speaker notes
```markdown
::: notes

Speaker notes

:::
```

Press <kbd>S</kbd> to see the **Speaker View**.

::: notes

speaker notes

:::

# {data-background="img/questions.jpeg"}

<h1 style="color:#cb4154;">Questions?</h1>

# {data-background="https://media.giphy.com/media/4lpctAAV9Azpm/giphy.gif" data-background-size="contain"}

<script>
toggleMenu = () => {
        let menu = Reveal.getPlugin('menu');
        if (menu) menu.toggle();
      };
goNext = () => {
        Reveal.next();
      };
goPrev = () => {
        Reveal.prev();
      };
goDown = () => {
        Reveal.down();
      };
goUp = () => {
        Reveal.up();
      };
</script>

<style>
.left {
      text-align: left;
}
    
.smallsize {
      font-size: 25px;
}
body {
/* make it totally black */
background-color: black;
}

.container {
display: flex;
}

.col {
flex: 1
}

.dark_back {
  background-color: rgba(0, 0, 0, 0.9);
  color: #fff;
  padding: 5px;
}
</style>
