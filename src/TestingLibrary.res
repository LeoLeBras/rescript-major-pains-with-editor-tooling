// NOTE — Please note that testing libray deps are not installed.
// Executing this code will create a runtime error.
// > https://testing-library.com/docs/react-testing-library/intro/

module Screen = {
  type t

  type role = [
    | #application
    | #article
    | #banner
    | #blockquote
    | #button
    | #caption
    | #cell
    | #checkbox
    | #columnheader
    | #combobox
    | #command
    | #complementary
    | #composite
    | #contentinfo
    | #definition
    | #deletion
    | #dialog
    | #directory
    | #document
    | #emphasis
    | #feed
    | #figure
    | #form
    | #generic
    | #grid
    | #gridcell
    | #group
    | #heading
    | #img
    | #input
    | #insertion
    | #landmark
    | #link
    | #list
    | #listbox
    | #listitem
    | #main
    | #math
    | #menu
    | #menubar
    | #menuitem
    | #menuitemcheckbox
    | #menuitemradio
    | #meter
    | #navigation
    | #none
    | #note
    | #paragraph
    | #presentation
    | #progressbar
    | #option
    | #radio
    | #radiogroup
    | #range
    | #region
    | #roletype
    | #row
    | #rowgroup
    | #rowheader
    | #scrollbar
    | #search
    | #searchbox
    | #section
    | #sectionhead
    | #select
    | #separator
    | #slider
    | #spinbutton
    | #strong
    | #structure
    | #subscript
    | #superscript
    | #tab
    | #table
    | #tablist
    | #tabpanel
    | #term
    | #textbox
    | #time
    | #tion
    | #toolbar
    | #tooltip
    | #tree
    | #treegrid
    | #treeitem
    | #widget
    | #window
  ]
  type roleValueOption = {text?: string}
  type withRoleOptions = {
    name?: string,
    description?: string,
    hidden?: bool,
    expanded?: bool,
    value?: roleValueOption,
  }

  /** Find by element text content */
  @return(nullable)
  @send
  external queryByText: (t, string) => option<Dom.element> = "queryByText"

  /** Find by aria role */
  @return(nullable)
  @send
  external queryByRole: (t, role) => option<Dom.element> = "queryByRole"

  /** Find by aria role */
  @return(nullable)
  @send
  external queryByRoleWithOptions: (t, role, withRoleOptions) => option<Dom.element> = "queryByRole"
}

@module("@testing-library/react") @val external screen: Screen.t = "screen"
