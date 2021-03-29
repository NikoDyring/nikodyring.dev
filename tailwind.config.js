module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      backgroundImage: theme => ({
        'light-background': "url('/assets/darkbackground.jpg')",
        'dark-background': "url('/assets/darkbackground.jpg')"
      })
    }
  },
  variants: {
    extend: {}
  },
  plugins: []
}
