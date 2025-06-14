const predictClassification = require('../services/inferenceServices');
const crypto = require('crypto');
const storeData = require('../services/storeData');
 
async function postPredictHandler(request, h) {
  const { image } = request.payload;
  const { model } = request.server.app;
 
  const { confidenceScore, label, explanation, suggestion } = await predictClassification(model, image);
  const id = crypto.randomUUID();
  const createdAt = new Date().toISOString();
 
  const data = {
    "id": id,
    "result": label,
    "explanation": explanation,
    "suggestion": suggestion,
    "confidenceScore": confidenceScore,
    "createdAt": createdAt
  }
 
  const response = h.response({
    status: 'success',
    message: 'Model is predicted successfully.',
    data
  })
  response.code(201);
  return response;
}
 
module.exports = postPredictHandler;