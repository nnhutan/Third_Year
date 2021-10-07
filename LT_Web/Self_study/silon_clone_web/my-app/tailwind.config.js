module.exports = {
  purge: ['./src/**/*.{js,jsx,ts,tsx}', './public/index.html'],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      backgroundColor: {
        'primary': '#ff5353',
        'header_info_color': '#fef7f6',
        'primary_bg_color': '#eae2d8',
      },
      textColor: {
        'primary': '#ff5353'
      },
      backgroundImage: {
        'banner': 'url("https://demo.themeies.com/silon/images/bg-1.jpg")'
      },
      fontFamily: {
        'saleOff': ['Dancing Script', 'cursive']
      },
      animation: {
        fadeInUp_200: 'fadeInUp 0.2s ease-in-out',
        fadeInUp_400: 'fadeInUp 0.4s ease-in-out',
        fadeInUp_600: 'fadeInUp 0.6s ease-in-out',
      },
      keyframes: {
        fadeInUp: {
          '0%': {
            transform: 'translateY(30px)'
          },
          '100%': {
            transform: 'translateY(0)'
          }
        }
      },
      screens: {
        'phone': {
          'max': '767px'
        }
      }
    },
  },
  variants: {
    extend: {},
  },

  corePlugins: {
    container: false
  },
  plugins: [
    function ({ addComponents }) {
      addComponents({
        '.container': {
          maxWidth: '100%',
          '@screen sm': {
            maxWidth: '640px',
          },
          '@screen md': {
            maxWidth: '768px',
          },
          '@screen lg': {
            maxWidth: '1024px',
          },
          '@screen xl': {
            maxWidth: '1140px',
          },
          '@screen 2xl': {
            maxWidth: '1536px',
          },
        }
      })
    }
  ]
}
