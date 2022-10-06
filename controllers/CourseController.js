import CourseModel from "../models/CourseModel.js";

// mengambil seluruh data courses
export const getAllCourses = async (req, res) => {
  try {
    const courses = await CourseModel.findAll();
    res.json(courses);
  } catch (error) {
    res.json({ message: error.message });
  }
};

// mengambil satu data course berdasarkan id
export const getCourseById = async (req, res) => {
  try {
    const course = await CourseModel.findAll({
      where: {
        id: req.params.id,
      },
    });
    res.json(course[0]);
  } catch (error) {
    res.json({ message: error.message });
  }
};

// membuat data course yang baru
export const createCourse = async (req, res) => {
  try {
    await CourseModel.create(req.body);
    res.json({ message: "Course created" });
  } catch (error) {
    res.json({ message: error.message });
  }
};

// mengubah data course berdasarkan id tertentu
export const updateCourse = async (req, res) => {
  try {
    await CourseModel.update(req.body, {
      where: {
        id: req.params.id,
      },
    });
    res.json({ message: "Course updated" });
  } catch (error) {
    res.json({ message: error.message });
  }
};

// menghapus data course berdasarkan id tertentu
export const deleteCourse = async (req, res) => {
  try {
    await CourseModel.destroy({
      where: {
        id: req.params.id,
      },
    });
    res.json({ message: "Course deleted" });
  } catch (error) {
    res.json({ message: error.message });
  }
};
