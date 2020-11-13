const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
environment.plugins.prepend('Provide',
<<<<<<< HEAD
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
=======
new webpack.ProvidePlugin({
$: 'jquery/src/jquery',
jQuery: 'jquery/src/jquery'
})
>>>>>>> c35eae8f26b2a23c15768207484c6d26bdbc482a
)
module.exports = environment
