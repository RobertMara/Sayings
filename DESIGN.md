Other pages:  [README](README.md) | [Versions](VERSIONS.md)

# Design

The goal is to keep this simple.

## Models

Here is the basic entity-relationship diagram (ERD):

```

[Saying] m <-- 1 [Sayer] m <--> m [Source]

```

Which really means this implementation:

```

[Saying] m <-- 1 [Sayer] 1 --> m [SayerSource] m <-- 1 [Source]
  
```

**Saying**: the saying being recorded.  For the purposes of our simple app, 
 each Saying can only be attributed to one Sayer (even though we know full well that in the real world some
 quotes are attributed to multiple people).

**Sayer**: the entity responsible for the saying.  While this is usually a person, it could be an organization, or
 any number of other entities that don't even cross my mind right now.   Each Sayer can have many Sayings, 
 and a Sayer can have quotes in multiple different Sources.  Example: the President of the United States (Sayer)
 is quoted many times (Sayings) by the numerous media outlets (Sources).

**Source**: the source of the saying; where you learned of the saying.  Every saying came from somewhere.
 You either heard it from a person, read it in a book or on a website, heard it in a movie or 
 television show, etc.   A Source can quote many Sayers.  For example, one newspaper typically quotes 
 many people (Sayers).
 
**SayerSource**: Join table for Sayer and Source, including additional information on the Source, such as the 
date of the newspaper and page the quote was on; the page of the book; the book, chapter, and verse of the Bible where
the saying was found; etc. In theory, this could also contain additional information about the Sayer, such as 
where they were and what they were doing.  But I don't think it makes sense to add this yet, if ever.
 

## Examples
### Person quote found in a book
* **Saying**: If you would not be forgotten as soon as you are dead, either write things worth reading or do things worth writing.
* **Sayer**: Benjamin Franklin
* **Source**: Dr. Laurence J. Peter, "Peter's Quotations: Ideas for our Time" (New York: Bantam Books, Inc., 1977). 
* **SayerSource**: Additional source info: "page 184"

### Organizational quote
* **Saying**: Ruby: a programmer's best friend
* **Sayer**: The Ruby community
* **Source**: The official Ruby language English-language home page, https://www.ruby-lang.org/en/
* **SayerSource**: Additional source info: "accessed 29-June-2019"

### Movie quote
* **Saying**: Follow the white rabbit.
* **Sayer**: Trinity
* **Source**: "The Matrix" (movie)
* **SayerSource**: Additional source info: nil

### Bible verse
* **Saying**: Jesus answered, "I am the way and the truth and the life. No one comes to the Father except through me."
* **Sayer**: Jesus
* **Source**: Bible  
* **SayerSource**: Additional source info: "John 14:6 NIV-2011"
