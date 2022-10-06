import express from "express";
import {
  getAllCourses,
  getCourseById,
  createCourse,
  updateCourse,
  deleteCourse,
} from "../controllers/CourseController.js";

const courseRouter = express.Router();

courseRouter.get("/", getAllCourses);
courseRouter.get("/:id", getCourseById);
courseRouter.post("/", createCourse);
courseRouter.patch("/:id", updateCourse);
courseRouter.delete("/:id", deleteCourse);

export default courseRouter;
