import express from "express";

const PORT = process.env.PORT;

const app = express();
app.use(express.json());

app.use("/", (req, res) => {
    console.log(req?.query);
    const { name, pass } = req?.query || {};

    if (!name || !pass) {
        return res.status(400).json({ message: "name or pass is empty" });
    }

    return res.status(200).json({ message: `${name} is success auth` });
});

const start = async () => {
    try {
        app.listen(PORT, () => console.log(`Server started on port ${PORT}`));
    } catch (e) {
        console.log(e);
    }
};

start();
