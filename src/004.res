@val external myDomElement: Dom.element = "fake"
@val external myWebAPIDomElement: WebAPI.DomElement.t = "fake"

// By writing
// myDomElement->{{cursor}}
// I expect to receive the same suggestions as if I write
// myWebAPIDomElement->{{cursor}}
// But there's no suggestion (see 004.png).
// The plugin should understand that I alias the type Dom.Element
// to WebAPI.DomElement.t.
myDomElement->WebAPI.DomElement.offsetHeight->ignore
