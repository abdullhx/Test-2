const express = require("express");
const fetch = (...args) =>
  import("node-fetch").then(({default: fetch}) => fetch(...args));

const app = express();
app.use(express.json());

const OPENAI_KEY = "PUT_YOUR_OPENAI_KEY_HERE";

app.post("/chat", async (req, res) => {
  try {
    const userMsg = req.body.message;

    const response = await fetch(
      "https://api.openai.com/v1/chat/completions",
      {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "Authorization": `Bearer ${OPENAI_KEY}`
        },
        body: JSON.stringify({
          model: "gpt-3.5-turbo",
          messages: [{ role: "user", content: userMsg }]
        })
      }
    );

    const data = await response.json();
    res.json({ reply: data.choices[0].message.content });
  } catch {
    res.json({ reply: "خطأ في السيرفر" });
  }
});

app.listen(3000, () => console.log("AI Proxy Running"));
