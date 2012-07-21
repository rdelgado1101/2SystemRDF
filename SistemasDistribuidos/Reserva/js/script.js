$(function(){
						
	//Cufon
Cufon.replace('.box-title h2,.desc-room .tit, a.but span, h2.modif, a.price',{ fontFamily: 'Gotham Book'});
Cufon.replace('a#view-engine'/*,{textShadow: '0  -1px 0 #333;'}*/);
/**********************************************/
		var $air_cont = $('.aero-opt');
		var $air_item = $('.aero-item');
		var $num_item = $air_item.length;
		var $a_item = $air_item.width() + 16;
		var $a_width =  $a_item * $num_item;
		$air_cont.css('width', $a_width + 'px');
		
		$('#box-filter').hide();
/***********************************************/	
	/* Slider Aerolineas */
	var sroll = $('#air-slider').slider({
		//animate: true,
		change: handChange,
		slide: handSlide
		
	})
	
	function handChange(e, ui){
		var maxSli = $('.aero-price').attr('scrollWidth') - $('.aero-price').width();
		$('.aero-price').animate({  scrollLeft: ui.value * (maxSli / 100)}, 1000);
	}
	
	function handSlide(e, ui){
		var maxSli = $('.aero-price').attr('scrollWidth') - $('.aero-price').width();
		$('.aero-price').attr({  scrollLeft: ui.value * (maxSli / 100)});
	}
	
	$('.ae-pri').hover(function(){
			$(this).css({ backgroundColor: '#e9e9e9'});
			$(this).parent().find('.ae-lo').css({ backgroundColor: '#e9e9e9'});
	}, function(){
			$(this).css({ backgroundColor: '#fff'});
			$(this).parent().find('.ae-lo').css({ backgroundColor: '#fff'});
	})
	

	
	
	
	/* Slider */
	$('#slider').slider({
					range: true,
					min: 1005.5,
					max: 2225.5,
					values: [1005.5,2225.5],
					slide: function(event, ui) {
					$("#range").val('$ ' + ui.values[0] );
					$("#range2").val('$ ' + ui.values[1]);
					}
	})
	
	
	$("#range").val('$ ' + $("#slider").slider("values", 0));
	$("#range2").val('$ ' + $("#slider").slider("values", 1));
	
	
	
	$('#horaP').slider({
					range: true,
					min: 00,
					max: 24,
					values: [00,24],
					slide: function(event, ui) {
					$("#1horap").val('$ ' + ui.values[0] );
					$("#2horap").val('$ ' + ui.values[1]);
					}
	})
	$("#1horap").val('- ' + $("#horaP").slider("values", 0));
	$("#2horap").val('- ' + $("#horaP").slider("values", 1));
	
	$('#horaR').slider({
					range: true,
					min: 00,
					max: 24,
					values: [00,24],
					slide: function(event, ui) {
					$("#1horar").val('$ ' + ui.values[0] );
					$("#2horar").val('$ ' + ui.values[1]);
					}
	})
	$("#1horar").val('- ' + $("#horaR").slider("values", 0));
	$("#2horar").val('- ' + $("#horaR").slider("values", 1));
	
	
	
	$('#dateOut, #dateIn, .dafe').datepicker({numberOfMonths: 2});
	
	$('#print').live('click',function(){
		window.print(); 
		return false;
	})
	
	$('a.down').live('click', function(){
		var $this = $(this);
		$('a.down').removeClass('clk');
		$('a.up').removeClass('clc')
		$this.addClass('clk');
		return false;
	})
	
	$('a.up').live('click',function(){
		var $this = $(this);
		$('a.down').removeClass('clk');
		$('a.up').removeClass('clc')
		$this.addClass('clc');
		return false;
	})
	
	
	/* Opciones Motor	*/
	var $multic = $('#multi');
	var $single = $('#from-to')
	var $add = $('.add-del');
	var $hide_return = $('#date-return');
	
	$('#go-return').live('click', function(){
			if($(this).is(':checked'))
			{
				$hide_return.show();
				$multic.hide();$add.hide();
				$single.show();
			}							   	
	})
	
	$('#go-to').live('click', function(){
		if($(this).is(':checked'))
			{
				$hide_return.hide();
				$multic.hide();
				$add.hide();
				$single.show();
			}
	})
	
	$('#go-multi').live('click', function(){
			if($(this).is(':checked'))
			{
				//$hide_return.hide();
				$single.hide();
				$multic.show();$add.show();
				
			}							   	
	})
	
	/* Price Nigths */
	$('a.Nprice').click(function(){
			if($('#Nights').is(':visible')){
			$('#Nights').hide();
			$(this).text('ver detalle');}
			else{
			$('#Nights').show();
			$(this).text('ocultar');
			}
			return false;
		
		})
	

	
	
	var $overlay = $('#overlay');
	var $engine = $('#engine');
	var $filter = $('#box-filter');
	
	$('.inactive a').removeAttr('href');
				   
	$('a#view-engine').live('click', function(){
		$overlay.fadeIn(200);
		$engine.animate({ top: 0 },500);
		return false;
	})
	
	$('#hidEngine').live('click', function(){
		$engine.animate({ top: '-800px'}, 500);
		$overlay.fadeOut(100);
		return false;
	})
	
	/*
		Filtros
	*/
	$('a#but-filter').live('click', function(){
		$(this).toggleClass('onBut');
		if($filter.is(':hidden')){	$filter.show();	}else{ $filter.hide(); }
		return false;
	})
	
	
	/*
		Item
	*/
	$('.view-r').live('click', function(){
				var $show_room = $(this).attr('href');
				$(this).toggleClass('hide-r');
				$(this).parents('.item').toggleClass('active');
				$(this).parents('.item').find($show_room).toggle(10);
				return false;
		})
	
	$('.air-detail').live('click',function(){
		var $this = $(this);
		$this.toggleClass('more');
		$this.parents('.item-aero').find('.moredetail').slideToggle(100);
		return false;   
										   
	})
	
	
	
	/*
		Add Multicity	
	*/
	
		
	var addID = $('.fligth').length + 1 ;

	var numCity = 4;
		
	$('.more').click( function(){
				if(numCity > 0){
				
				 $('<div class="fligth"><span class="fnum">Flight #'+ addID +'</span><div class="fix"></div><div class="fli_to"><span>From:</span><input type="text" class="inp-text fli" id="from'+ addID +'"/></div><div class="fli_to"><span>To:</span><input type="text" class="inp-text fli" id="to'+ addID +'"/></div><div class="fli_to dat"><span>Depart:</span><input type="text" class="inp-text dafe dfli hasDatepicker" id="depart'+ addID +'"/></div><div class="fli_to any"><select class="inp-text ati" id="anytim'+ addID +'"><option>Aftermoon</option></select></div><div class="fix"></div></div>').appendTo('#multi');
				 addID++;
				 numCity -= 1; 
				}
				if(numCity == 0){
					//$(this).removeClass('more');
					}
				return false;
				
	})
	
	$('.delet').click( function(){
				 if( addID > 2){
					 $('.fligth:last').remove();
					 $('.more').show()
					 numCity += 1;
					 addID--;
				}
				return false;
				
	})
	
	$('.chkPay').live('click',function(){
		var $this = $(this);
		$('.contPay').slideUp();
		if( $this.is(':checked')){
			$this.parents('li').find('.contPay').slideDown();
			
		}
	})
	
		$('a.veri').click(function(){
								   var $this = $(this).attr('href');
								   var $detail = 'height=402,width=600';
								   window.open($this, 'Visa', $detail);
						  		   return false;
						  })


		$('#airlines').live('click', function(){
											  var $this = $(this);
			if($this.attr('checked')){
				$('ul.air-line').hide();
			}else{$('ul.air-line').show();}
											  
		})
	
	$('#overlay').css({
					  width: $(document).width(),
					  height: $(document).height(),
					  opacity: .6
	})
	
	$('.price').click(function(){
		$('#loader').show();							   
		$('#overlay').show();
		return false;
	})
	
	 
	
	$altura = ($(window).height() - $('#loader').outerHeight())/2;	
	$(window).resize(function(){
		$('#loader').css({
			position:'absolute',
			left:($(window).width() - $('#loader').outerWidth())/2,
			top:$altura
		})
	})
	
	$(window).resize();
	
		var $boxLoader = $("#loader"); 
		function showLoad(){
			$boxLoader.stop().animate({ top:  $altura + parseInt($(document).scrollTop()) + 'px' })
		}
		$(window).scroll(function(){ showLoad(); });
	 
	

	
		   
})