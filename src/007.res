open TestingLibrary

// By writing,
// screen->Screen.queryByRole({{cursor}})
// I expect that if I type b, I get the suggestions :
// + #banner
// + #blockquote
// + #button
// but I'm not getting any suggestions (see 007.png).
// To keep the suggestions, I have to start by writing "#b"".
screen->Screen.queryByRole(#banner)->ignore
