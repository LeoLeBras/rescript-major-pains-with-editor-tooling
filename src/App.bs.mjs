// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Stack from "./Stack.bs.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function App(props) {
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx(Stack.make, {
                      children: JsxRuntime.jsx("h1", {
                            children: "What is this about?",
                            className: "text-3xl font-semibold"
                          })
                    }),
                JsxRuntime.jsx("p", {
                      children: "This is a simple template for a Vite project using ReScript & Tailwind CSS."
                    }),
                JsxRuntime.jsxs("p", {
                      children: [
                        "Edit ",
                        JsxRuntime.jsx("code", {
                              children: "src/App.res"
                            }),
                        " and save to test Fast Refresh."
                      ]
                    })
              ],
              className: "p-6"
            });
}

var make = App;

export {
  make ,
}
/* Stack Not a pure module */
