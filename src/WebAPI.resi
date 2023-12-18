// NOTE — It’s oftentimes easier maintaining our own Web bindings and copy paste
// the relevant bits from projects like rescript-webapi. Very easy to adapt the code
// to our actual needs without hidden runtime code (= cleaner JS output).
// It’s also easier to navigate / find the code you are interested in.
// The only thing ReScript officially provides are some abstract Dom types
// to allow bindings to align on the same base types at least. It's probably
// a good thing that it stays that way, unlike the ts universe.

module DomElement: {
  type t = Dom.element

  let blur: t => unit
  let offsetWidth: t => float
  let offsetHeight: t => float
}
