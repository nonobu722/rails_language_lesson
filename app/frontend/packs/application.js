import '../javascripts/application'
import '../stylesheets/application'

require.context('../images', true, /\.(png|jpg|jpeg|svg)$/)

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
