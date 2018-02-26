// https://iprog.com/posting/2017/11/replacing-rails-51-asset-pipeline-with-webpacker-3

const {environment} = require('@rails/webpacker');

const webpack = require('webpack');
environment.plugins.set(
    'Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        'window.jQuery': 'jquery',
        Popper: ['popper.js', 'default'],
    })
);

module.exports = environment;
