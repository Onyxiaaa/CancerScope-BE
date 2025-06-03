const fs = require('fs');
const path = require('path');

async function storeData(id, data) {
  const filePath = path.join(__dirname, `../data/${id}.json`);
  fs.writeFileSync(filePath, JSON.stringify(data, null, 2));
}
module.exports = storeData;
