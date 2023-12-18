open Vitest

// Basically, the plugin doesn’t handle good DX for parameter types t<'a>.

// By writing
// expect(1.92)->{{cursor}}
// The plugin should sort the suggestions according to whether Expect.t<'a> is of type t<string>
// or t<array<'item>> or t<float> ...
// In this case, I expect to get the suggestions from the Expect.Float sub-module first:
// + Expect.Float.toBeGreaterThan
// + Expect.Float.toBeLessThan
// + Expect.toBe
// + Expect.toBeNull
// + ...
// And at the end, the others sub-modules:
// + Expect.Array
// + Expect.String
// + ...
// But now the suggestions are generic and not intelligent (see 002.png).
expect(1.92)->Expect.Float.toBeLessThan(12.)
