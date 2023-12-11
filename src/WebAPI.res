module DomElement = {
  type t = Dom.element

  @send external blur: t => unit = "blur"
  @get external offsetWidth: t => float = "offsetWidth"
  @get external offsetHeight: t => float = "offsetHeight"
}
