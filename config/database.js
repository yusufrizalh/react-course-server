import { Sequelize } from "sequelize";

// membuat koneksi database
const db = new Sequelize("demomysql", "root", "", {
  host: "localhost",
  dialect: "mysql",
});
export default db;
