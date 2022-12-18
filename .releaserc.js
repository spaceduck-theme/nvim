module.exports = {
  plugins: [
    "semantic-release-gitmoji",
    "@semantic-release/changelog",
    [
      "@semantic-release/git",
      {
        message:
          ":bookmark: ${nextRelease.version} [skip ci]\n\n${nextRelease.notes}",
      },
    ],
    "@semantic-release/github",
  ],
};
