module.exports = (grunt) ->
  grunt.initConfig
    serverConf: grunt.file.readJSON("server.json")
    partialPath: 'src/partials/'
    watch:
      options:
        livereload: true
      html:
        files: ['src/**/*.html']
        tasks: ['htmlbuild:main']
      css:
        files: ['scss/*.scss']
        tasks: ['sass']
      scripts:
        files: ['dist/*.js']     
        tasks: ['htmlbuild:main']  
    htmlbuild:
      options:            
        sections:
          component: 
            meta: '<%= partialPath %>component/post_meta.html'
          widget: 
            wp_menu: '<%= partialPath %>widget/wp_menu.html'
            mystyle_contact: '<%= partialPath %>widget/mystyle_contact.html'
            mystyle_social: '<%= partialPath %>widget/mystyle_social.html'
            mystyle_blog: '<%= partialPath %>widget/mystyle_blog.html'
            mystyle_subscribe: '<%= partialPath %>widget/mystyle_subscribe.html'
          layout:
            header: '<%= partialPath %>layout/header.html'
            footer: '<%= partialPath %>layout/footer.html'
        data:
          version: '<%= grunt.template.today("yyyymmddHH") %>'
        relative: true
        beautify: true
      main:
        dest: 'dist/'
        src: ['**/*.html','!partials/*.html']
        expand: true
        cwd: 'src'
    clean:
      build: ['dist/*.html','!css/**','!js/**']    
      options:
        force: true
    copy:
      build:
        dest: 'dist/'
        src: ['**', '!data.json']
        expand: true
        cwd: 'dist/'
    concat:      
      css:
        src: ['src/css/*.css'] 
        dest: 'dist/css/concat.css'         
    connect:
      server:
        options:
          base: 'dist'
          hostname: '<%= serverConf.hostname %>'
          port: '<%= serverConf.port %>'
          livereload: true
    sass:
      options:
        sourceMap: true
      dist:
        files:          
          'dist/css/main.css': 'scss/main.scss'
          'dist/editor-style.css': 'scss/editor-style.scss'
          'dist/css/style-responsive.css': 'scss/style-responsive.scss' 
  require('load-grunt-tasks')(grunt)
  grunt.loadNpmTasks('grunt-contrib-concat')
  grunt.loadNpmTasks('grunt-sass')
  grunt.registerTask 'default', ['connect', 'watch','sass']
  grunt.registerTask 'build', ['clean:build', 'copy:build', 'sass']