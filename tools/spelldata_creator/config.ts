interface IConfig
{
    expansion: "CLASSIC" | "WOTLK",
    dataDir: string,
    outputDir: string,
}

const cfg: IConfig = {
    expansion: "CLASSIC",
    dataDir: "data/classic/",
    outputDir: __dirname + "/../../../data/classic/"
}

export { cfg }