type t<'a> = NotAsked | Loading | Reloading('a) | Done('a)

let notAsked: unit => t<'a>
let loading: unit => t<'a>
let reloading: 'a => t<'a>
let done: 'a => t<'a>

let toBusy: t<'a> => t<'a>
