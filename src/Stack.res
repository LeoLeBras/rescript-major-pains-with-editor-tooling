type align = [#center | #end | #start | #spaceBetween | #stretch]

@react.component
let make = (~children, ~align=#stretch) => {
  align->ignore
  <div> {children} </div>
}
