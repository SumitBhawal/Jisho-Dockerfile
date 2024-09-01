const express = require("express");
const kuromoji = require("kuromoji");

const app = express();
const PORT = 3000;

app.use(express.json());

app.post("/tokenize", (req, res) => {
    const text = req.body.text;

    kuromoji.builder({ dicPath: "node_modules/kuromoji/dict/" }).build((err, tokenizer) => {
        if (err) return res.status(500).send(err);

        const tokens = tokenizer.tokenize(text);
        res.json(tokens);
    });
});

app.listen(PORT, () => {
    console.log(`Kuromoji service running on port ${PORT}`);
});
