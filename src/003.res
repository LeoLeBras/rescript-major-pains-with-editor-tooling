open Vitest

// Basically, the plugin doesn’t handle good DX for parameter types t<'a>.

// By writing
// expect([])->toHaveL{{cursor}}
// it should provide me "Expect.Array.toHaveLength" suggestion
// and not "toHaveLength".
expect([])->Expect.Array.toHaveLength(0)
