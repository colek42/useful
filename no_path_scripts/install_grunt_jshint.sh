#!/bin/bash

VIDEX=$GOPATH/src/github.com/Novetta/VideoEnterprise
VIDEXWEB=$VIDEX/videx2/videxweb

cd $VIDEXWEB
npm install grunt-sencha-dependencies --save-dev
npm install grunt --save-dev
npm install grunt-contrib-jshint --save-dev

echo "If you do not have a gruntfile open this script and follow the intructions in the comments"


################
#Un-comment the code below and paste it into a file named "gruntfile.js" in videx2/videxweb
#Then install your favorite jshint plugin for your editor, for atom use atom.jshint

#https://github.com/mattgoldspink/grunt-sencha-dependencies
###Grunt File###


module.exports = function(grunt) {
    grunt.initConfig({
        sencha_dependencies: {
            dist: {
                options: {
                    appJs: './js/app.js',
                    pageToProcess: 'index.html'
                }
            }
        },
        jshint: {
            dist: '<%= sencha_dependencies_dist_app %>'
        }
    });

    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-sencha-dependencies');

    grunt.registerTask('hint', ['sencha_dependencies:dist', 'jshint:dist']);

};
