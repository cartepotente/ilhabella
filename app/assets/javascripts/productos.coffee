# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# coffee scrip del efecto mansory 
$ ->
	$('#pro').imagesLoaded ->
		$('#pro').masonry
			itemSelector: '.card'
			isFitWidth: true

# jquery de los select dinamicos
jQuery ->
	$('#producto_type_id').hide()# esconde la subcategoria
	categories = $('#producto_type_id').html() #verifica la subcategoria, se puede lanzar un console.log y verificar
	$('#producto_category_id').change ->#si la categoria cambia
		type = $('#producto_category_id :selected').text()#variable que selecciona la categoria en el collect_select
		options = $(categories).filter("optgroup[label='#{type}']").html()#opcion que filtra las caegorias de las subcategorias
		if options
			$('#producto_type_id').html(options)#muestra las subcategorias seleccionadas de la categorias
			$('#producto_type_id').show()#deja de estar escondido, el parent es para mostrar todo el field
		else
			$('#producto_type_id').empty()#si no hay subcategorias de esa categoria
			$('#producto_type_id').hide()#esconde si no hay

$ ->
  $('.oculto').hide()
  $('.show-advanced-search').click ->
    $('.oculto').show() # which removes the hide class
    $(this).hide()

 	$('.close-advanced-search').click ->
    	$('.oculto').hide()
    	$('.show-advanced-search').show()