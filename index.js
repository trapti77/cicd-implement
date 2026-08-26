import express from "express";

const app = express();

const PORT = 8080;

app.get("/", (req, res) => {
  return res.json({ msg: "Hello from trapti" });
});

app.listen(PORT, () => {
    console.log("server started at port 8080")
})

