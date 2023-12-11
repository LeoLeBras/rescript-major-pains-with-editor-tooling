@val external it: (string, @uncurry (unit => unit)) => unit = "it"

module Expect = {
  type t<'a>

  @send external toBe: (t<'a>, 'a) => unit = "toBe"
  @send external toUnsafeStrictEqual: (t<'a>, 'any) => unit = "toStrictEqual"
  @send external toBeNull: t<Nullable.t<'a>> => unit = "toBeNull"
  @send external toStrictEqual: (t<'a>, 'a) => unit = "toStrictEqual"

  module Array = {
    @send external toHaveLength: (t<array<'item>>, int) => unit = "toHaveLength"
    @send external toContain: (t<array<'item>>, array<'item>) => unit = "toContain"
  }

  module Float = {
    @send external toBeLessThan: (t<float>, float) => unit = "toBeLessThan"
    @send external toBeGreaterThan: (t<float>, float) => unit = "toBeGreaterThan"
  }

  module String = {
    @send external toMatch: (t<string>, string) => unit = "toMatch"
  }

  /**
   It provides a set of custom matchers that you can use to extend standard
   matchers. These will make your tests more declarative, clear to read and to maintain.
   > https://github.com/testing-library/jest-dom
   */
  module DomElement = {
    @send external toBeVisible: t<Dom.element> => unit = "toBeVisible"
    @send external toBeDisabled: t<Dom.element> => unit = "toBeDisabled"
    @send external toHaveFocus: t<Dom.element> => unit = "toHaveFocus"
    @send external toHaveValue: (t<Dom.element>, string) => unit = "toHaveValue"
    @send external toHaveTextContent: (t<Dom.element>, string) => unit = "toHaveTextContent"
    @send external toBeInTheDocument: t<Dom.element> => unit = "toBeInTheDocument"
    @send external toHaveAttribute: (t<'a>, string) => unit = "toHaveAttribute"
    @send external toHaveAttributeValue: (t<'a>, string, 'value) => unit = "toHaveAttribute"
    @send external toHaveDisplayValue: (t<'a>, string) => unit = "toHaveDisplayValue"
  }
}

@val external expect: 'a => Expect.t<'a> = "expect"
