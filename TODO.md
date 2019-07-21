Other pages:  [README](README.md) | [Design](DESIGN.md) | [Versions](VERSIONS.md)

# TODO List

* Create a new root page.
  * Add Bootstrap.
  * Add Bootstrap navbar widget.
  * Add tabs in order: Sayings, Sayers, Sources.  Sayings would get default focus.
* Work on sources#new
* Work on sources#create
* Work on sources#show
* Work on sources#destroy
  * Make sure this does not destroy the Sayer or Saying!
* Work on sayings#new, especially how we allow the user to:
  * select a source using a dropdown with typeahead
  * create a new source.  Do we allow them to type in a new source description, since that's the only field,
    or do we give them a link to the sources#create page where they create a new one?  Is it a modal dailog or 
    a full page load?
  * Make sure it is accessible via the keyboard only!
