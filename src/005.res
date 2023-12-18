open Vitest

// By writing
// expect(AsyncData.loading())->Expect.toStrictEqual({{cursor}})
// I except the following suggestions:
// + AsyncData.NotAsked
// + AsyncData.Loading
// + AsyncData.Reloading(…)
// + AsyncData.Done(…)
// But the plugin doesn't suggest anything (see 005.png).
expect(AsyncData.loading())->Expect.toStrictEqual(AsyncData.Loading)
