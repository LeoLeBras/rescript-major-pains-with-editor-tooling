open TestingLibrary

// By writing,
// screen->Screen.queryByRoleWithOptions(#banner, {{cursor}})
// I except the following suggestions:
// + {name?: string}
// + {description?: string}
// + {hidden?: string}
// + {expanded?: bool}
// + {value?: roleValueOption}
// to help me fill the record
// But I'm not getting any suggestions (see 008.png).
screen->Screen.queryByRoleWithOptions(#banner, {name: "banner"})->ignore
