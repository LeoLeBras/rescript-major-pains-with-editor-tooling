type align = [#center | #end | #start | #spaceBetween | #stretch]
@react.component
let make: (~children: React.element, ~align: align=?) => Jsx.element
