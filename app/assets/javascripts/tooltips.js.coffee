$ ->
  $("[data-tooltip]").each (id, element)->
    $(element).qtip
      content: $(element).attr "data-tooltip"
      position: {corner: {target:"center", tooltip:"topLeft"}}
      show: "mouseover"
      hide: "mouseout"
