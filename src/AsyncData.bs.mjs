// Generated by ReScript, PLEASE EDIT WITH CARE


function notAsked(param) {
  return /* NotAsked */0;
}

function loading(param) {
  return /* Loading */1;
}

function reloading(value) {
  return {
          TAG: /* Reloading */0,
          _0: value
        };
}

function done(value) {
  return {
          TAG: /* Done */1,
          _0: value
        };
}

function toBusy(value) {
  if (typeof value === "number") {
    return /* Loading */1;
  } else if (value.TAG === /* Reloading */0) {
    return value;
  } else {
    return {
            TAG: /* Reloading */0,
            _0: value._0
          };
  }
}

function toIdle(value) {
  if (typeof value === "number") {
    return /* NotAsked */0;
  } else if (value.TAG === /* Reloading */0) {
    return {
            TAG: /* Done */1,
            _0: value._0
          };
  } else {
    return value;
  }
}

export {
  notAsked ,
  loading ,
  reloading ,
  done ,
  toBusy ,
  toIdle ,
}
/* No side effect */
