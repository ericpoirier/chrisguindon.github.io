module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON('package.json')
        'gh-pages':
            options:
                base: 'dist'
            src: ['**']
             
        
        watch:
            options:
                atBegin: true
                livereload: true
            hugo:
                files: ['site/**']
                tasks: 'hugo:dev'
            all:
                files: ['Gruntfile.coffee']
                tasks: 'dev'
        connect:
            mysite:
                options:
                    hostname: '127.0.0.1'
                    port: 8080
                    protocol: 'http'
                    base: 'dev'
                    livereload: true
                    
        copy: main: files: [
            {
                cwd: './bower_components/hugo-cactus-theme/'
                src: '**'
                dest: './site/themes/hugo-cactus-theme/'
                expand: true
            }
        ]


    grunt.registerTask 'hugo', (target) ->
        done = @async()
        args = ['--source=site', "--destination=../#{target}"]
        if target == 'dev'
            args.push '--baseUrl=http://127.0.0.1:8080'
            args.push '--buildDrafts=true'
            args.push '--buildFuture=true'
        hugo = require('child_process').spawn 'hugo', args, stdio: 'inherit'
        (hugo.on e, -> done(true)) for e in ['exit', 'error']

    grunt.loadNpmTasks plugin for plugin in [
        'grunt-contrib-watch'
        'grunt-contrib-connect'
        'grunt-contrib-copy'
        'grunt-gh-pages'
    ]
    
    grunt.registerTask 'dev', ['copy', 'hugo:dev']
    grunt.registerTask 'default', ['copy', 'hugo:dist', 'gh-pages']
    grunt.registerTask 'edit', ['connect', 'watch']
