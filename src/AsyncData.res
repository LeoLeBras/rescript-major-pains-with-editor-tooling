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
  | Reloading(_) as reloading => reloading
  | NotAsked | Loading => Loading
  | Done(done) => Reloading(done)
  }

let toIdle = value =>
  switch value {
  | Reloading(reloading) => Done(reloading)
  | NotAsked | Loading => NotAsked
  | Done(_) as done => done
  }
