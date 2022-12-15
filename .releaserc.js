module.exports = {
  plugins: [
    "semantic-release-gitmoji",
    [
      "@semantic-release/git",
      {
        assets: ["CHANGELOG.md"],
        message:
          ":bookmark: ${nextRelease.version} [skip ci]\n\n${nextRelease.notes}",
      },
    ],
    "@semantic-release/github",
  ],
};
