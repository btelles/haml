# Haml+ejs

Haml+ejs is a templating engine for client-side HTML templates.
It's are designed to make it both easier and more pleasant
to write HTML documents,
by eliminating redundancy,
reflecting the underlying structure that the document represents,
and providing elegant, easily understandable, and powerful syntax.

## Installing

Add the following to your project's Gemfile

    gem 'haml_ejs'

## Formatting

haml+ejs supports all of haml, plus some special EJS-producing directives.
You can compile Haml+ejs templates to HTML mingled with EJS. For example:

    %p
      ^= my_var
      ^if sunny
        Nice, eh?

compiles to:

    <p>
      <%= my_var %>
      <% if (my_var) { %>
        Nice eh?
      <% } %>
    </p>

The available EJS directives are:

<table>
  <tbody>
    <tr>
      <td><tt>^=</tt></td>
      <td>Interpolate a JavaScript variable</td>
    </tr>
    <tr>
      <td><tt>^if</tt></td>
      <td>Output nested content if JavaScript expression is truthy</td>
    </tr>
    <tr>
      <td><tt>^unless</tt></td>
      <td>Output nested content if JavaScript expression is falsy</td>
    </tr>
    <tr>
      <td><tt>^elsif</tt></td>
      <td>Output nested content if preceding JavaScript expression is falsy, and the provided  expression is truthy</td>
    </tr>
    <tr>
      <td><tt>^else</tt></td>
      <td>Output nested content if precending JavaScript expression is falsy</td>
    </tr>
    <tr>
      <td><tt>^each</tt></td>
      <td>Iterate over the JavaScript collection, outputing the nested content once for each item in the collection</td>
    </tr>
  </tbody>
</table>


See the official [Haml documentation](http://beta.haml-lang.com/docs/yardoc/file.HAML_REFERENCE.html)
for how to use Haml itself.
