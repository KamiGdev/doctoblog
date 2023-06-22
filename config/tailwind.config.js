const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],

  theme: {

    extend: {
      colors: {
        'federalblue': '#07004D',
        'azul': '#016FB9',
        'beige': '#E9EDDE'
      },

      fontFamily: {
        sans: ['Yantramanav', 'Inter var', ...defaultTheme.fontFamily.sans],
        'Yantramanav' : ['Yantramanav', 'sans-serif' ],
        'Titillium Web' : ['Titillium Web', 'sans-serif']
      },
    },

  },



  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
