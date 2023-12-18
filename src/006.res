let asyncData = Some(AsyncData.NotAsked)

// By writing,
// asyncData->Option.map({{cursor}})
// I except the following suggestion:
// + AsyncData.toBusy
// But the plugin doesn't suggest anything (see 006.png).
let asyncData = asyncData->Option.map(AsyncData.toBusy)

// Same thing for:
// let asyncData = asyncData->Option.map(asyncData => asyncData->{{cursor}})
