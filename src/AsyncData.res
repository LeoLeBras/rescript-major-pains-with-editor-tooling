type t<'a> =
  | NotAsked
  | Loading
  | Reloading('a)
  | Done('a)

let notAsked = () => NotAsked
let loading = () => Loading
let reloading = value => Reloading(value)
let done = value => Done(value)

let toBusy = value =>
  switch value {
  | Loading | Reloading(_) => value
  | NotAsked => Loading
  | Done(done) => Reloading(done)
  }
