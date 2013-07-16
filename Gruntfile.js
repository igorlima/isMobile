module.exports = function(grunt) {
  grunt.initConfig({
    jasmine: {
      isMobile: {
        src: ['isMobile.js'],
        options: {
          specs:   'tests/tmp/*.js',
          version: '1.3.1'
        }
      },
      isMobileMin: {
        src: ['isMobile.min.js'],
        options: {
          specs:   'tests/tmp/*.js',
          version: '1.3.1'
        }
      }
    },

    uglify: {
      my_target: {
        files: {
          'isMobile.min.js': ['isMobile.js']
        }
      }
    },

    jshint: {
      all: ['Gruntfile.js', 'isMobile.js']
    },

    coffee: {
      options: {
        sourceMap: true,
        sourceRoot: './spec'
      },
      glob_to_multiple: {
        expand: true,
        flatten: true,
        cwd: 'tests/spec/',
        src: ['**/*.coffee'],
        dest: 'tests/tmp/',
        ext: '.js'
      }
    },

    watch: {
      coffee: {
        files: ['tests/spec/**/*.coffee'],
        tasks: ['coffee', 'jasmine']
      },
      jasmine: {
        files: ['isMobile.js'],
        tasks: ['jshint', 'uglify', 'jasmine']
      }
    }

  });

  grunt.loadNpmTasks('grunt-contrib-jasmine');
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.registerTask('default', ['jshint', 'uglify', 'coffee', 'jasmine']);

};
