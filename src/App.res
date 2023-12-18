@react.component
let make = () => {
  <div className="p-6">
    <Stack>
      <h1 className="text-3xl font-semibold"> {"What is this about?"->React.string} </h1>
    </Stack>
    <p>
      {React.string("This is a simple template for a Vite project using ReScript & Tailwind CSS.")}
    </p>
    <p>
      {React.string("Edit ")}
      <code> {React.string("src/App.res")} </code>
      {React.string(" and save to test Fast Refresh.")}
    </p>
  </div>
}
