Other pages:  [README](README.md) | [Design](DESIGN.md) | [Versions](VERSIONS.md)

# TODO List

* Work on root page (sayings#index)
  * Add a "Skip to main content" link, or equivalent. I guess that would go to the list of sayings.
  * Do we add tabs or links to Sources and Sayers index pages?  Or do we add a menu system to not only View but Create?
    Like this:
```
[Skip to main content]
Sayers         Sources
- View All     - View All
- Create New   - Create New

Welcome text

<a href="#main content" />

(List of Sayings, sorted by...saying text?  Last first?)
(I purposely did not add "Categories" up front, so we cannot show a list of sayings categories)

```      
  * Make sure it is accessible via the keyboard only!
  * Does Rails 5 use jQuery?
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
* Work on sayings#create
* Work on sayings#show
* Work on sayings#destroy
  * Make sure this does not destroy the Sayer or Source!