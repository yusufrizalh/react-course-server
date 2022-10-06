import express from "express";
import db from "./config/database.js";
import courseRouter from "./routes/courseRouter.js";
import cors from "cors";

const app = express();

try {
  db.authenticate();
  console.log("Database connected");
} catch (error) {
  console.error("Database connection error: ", error);
}

app.use(cors());
app.use(express.json());
app.use("/courses", courseRouter);

app.listen(8001, () => console.log("Server running at http://localhost:8001"));
