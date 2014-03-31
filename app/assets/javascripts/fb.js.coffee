((d, s, id) ->
  js = undefined
  fjs = d.getElementsByTagName(s)[0]
  return  if d.getElementById(id)
  js = d.createElement(s)
  js.id = id
  js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1&appId=611590745583107"
  fjs.parentNode.insertBefore js, fjs
  return
) document, "script", "facebook-jssdk"