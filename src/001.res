@react.component
let make = () =>
  // Auto-completion on polymorphic variants on a React component doesn’t work.
  // Here I'm waiting for the plugin to suggest #center or #end or #start … after
  // writing the following:
  // <Stack align={{cursor}}>
  // But it suggests the "key" and "children" props instead, which is incorrect
  // (see 001.png).
  <Stack>
    <div />
    <div />
  </Stack>
