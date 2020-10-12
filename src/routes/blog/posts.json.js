import fs from "fs";
import path from "path";
import grayMatter from "gray-matter";


export function get(req, res) {
  res.writeHead(200, {
    "Content-Type": "application/json"
  });
  const data = fs.readdirSync("src/routes/blog").map(fileName => {
    if(fileName.slice(-4) != ".svx")
      return
    const post = fs.readFileSync(path.resolve("src", "routes", "blog", fileName), "utf-8");
    return grayMatter(post).data;
  }).filter(el => el != undefined);
  res.end(JSON.stringify(data));
}