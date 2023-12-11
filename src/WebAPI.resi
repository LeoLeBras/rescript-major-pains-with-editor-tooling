module DomElement: {
  type t = Dom.element
  let blur: t => unit
  let offsetWidth: t => float
  let offsetHeight: t => float
}
