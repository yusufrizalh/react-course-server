import { Sequelize } from "sequelize";
import db from "../config/database.js";
const { DataTypes } = Sequelize;

const CategoryModel = db.define(
  "categories",
  {
    name: {
      type: DataTypes.STRING,
    },
    description: {
      type: DataTypes.STRING,
    },
  },
  {
    freezeTableName: true,
  }
);

CategoryModel.associate = (model) => {
  CategoryModel.hasMany(model.course, {
    foreignKey: "category_id",
  });
};

export default CategoryModel;
