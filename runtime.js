() => {
    const configure = {
        "生成测试": false
    }
    return {
        teaching: {
            seed: () => configure["生成测试"] ? BigInt(new Date().valueOf()) : 0n
        }
    };
};