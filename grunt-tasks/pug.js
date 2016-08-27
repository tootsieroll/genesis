module.exports = {
  default: {
    options: {
      pretty: true
    },
    files: [{
      expand: true,
      cwd: "assets",
      src: ["*.pug"],
      dest: "public/",
      ext: ".html"
    },
    {
      expand: true,
      cwd: "assets/templates/",
      src: ["**/*.template.pug"],
      dest: "public/templates",
      ext: ".template.html"
    }]
  }
};