(function(){var h={},mt={},c={id:"a788d689e488723284a45ad1fb1d6dcf",dm:["duanliang920.com"],js:"tongji.baidu.com/hm-web/js/",etrk:[],icon:'',ctrk:true,align:1,nv:-1,vdur:1800000,age:31536000000,rec:1,rp:[[35192, 2]],trust:0,vcard:0,qiao:0,lxb:0,conv:0,med:0,cvcc:'',cvcf:[],apps:''};var r=void 0,s=!0,t=null,u=!1;mt.cookie={};mt.cookie.set=function(a,b,d){var k;d.K&&(k=new Date,k.setTime(k.getTime()+d.K));document.cookie=a+"="+b+(d.domain?"; domain="+d.domain:"")+(d.path?"; path="+d.path:"")+(k?"; expires="+k.toGMTString():"")+(d.rb?"; secure":"")};mt.cookie.get=function(a){return(a=RegExp("(^| )"+a+"=([^;]*)(;|$)").exec(document.cookie))?a[2]:t};mt.f={};mt.f.Y=function(a){return document.getElementById(a)};
mt.f.M=function(a,b){var d=[],k=[];if(!a)return k;for(;a.parentNode!=t;){for(var f=0,n=0,m=a.parentNode.childNodes.length,e=0;e<m;e++){var l=a.parentNode.childNodes[e];if(l.nodeName===a.nodeName&&(f++,l===a&&(n=f),0<n&&1<f))break}if((m=""!==a.id)&&b){d.unshift("#"+encodeURIComponent(a.id));break}else m&&(m="#"+encodeURIComponent(a.id),m=0<d.length?m+">"+d.join(">"):m,k.push(m)),d.unshift(encodeURIComponent(String(a.nodeName).toLowerCase())+(1<f?"["+n+"]":""));a=a.parentNode}k.push(d.join(">"));return k};
mt.f.Ga=function(a){return(a=mt.f.M(a,s))&&a.length?String(a[0]):""};mt.f.lb=function(a){return mt.f.M(a,u)};mt.f.ya=function(a){var b;for(b="A";(a=a.parentNode)&&1==a.nodeType;)if(a.tagName==b)return a;return t};mt.f.Aa=function(a){return 9===a.nodeType?a:a.ownerDocument||a.document};
mt.f.Ea=function(a){var b=mt.f.Aa(a),d={top:0,left:0};if(a)return b=b.documentElement,"undefined"!==typeof a.getBoundingClientRect&&(d=a.getBoundingClientRect()),{top:d.top+(window.pageYOffset||b.scrollTop)-(b.clientTop||0),left:d.left+(window.pageXOffset||b.scrollLeft)-(b.clientLeft||0)}};
(mt.f.R=function(){function a(){if(!a.D){a.D=s;for(var b=0,d=k.length;b<d;b++)k[b]()}}function b(){try{document.documentElement.doScroll("left")}catch(d){setTimeout(b,1);return}a()}var d=u,k=[],f;document.addEventListener?f=function(){document.removeEventListener("DOMContentLoaded",f,u);a()}:document.attachEvent&&(f=function(){"complete"===document.readyState&&(document.detachEvent("onreadystatechange",f),a())});(function(){if(!d)if(d=s,"complete"===document.readyState)a.D=s;else if(document.addEventListener)document.addEventListener("DOMContentLoaded",
f,u),window.addEventListener("load",a,u);else if(document.attachEvent){document.attachEvent("onreadystatechange",f);window.attachEvent("onload",a);var k=u;try{k=window.frameElement==t}catch(m){}document.documentElement.doScroll&&k&&b()}})();return function(b){a.D?b():k.push(b)}}()).D=u;mt.event={};mt.event.c=function(a,b,d){a.attachEvent?a.attachEvent("on"+b,function(b){d.call(a,b)}):a.addEventListener&&a.addEventListener(b,d,u)};
mt.event.preventDefault=function(a){a.preventDefault?a.preventDefault():a.returnValue=u};
(function(){var a=mt.event;mt.j={};mt.j.ba=/msie (\d+\.\d+)/i.test(navigator.userAgent);mt.j.Qa=/msie (\d+\.\d+)/i.test(navigator.userAgent)?document.documentMode||+RegExp.$1:r;mt.j.cookieEnabled=navigator.cookieEnabled;mt.j.javaEnabled=navigator.javaEnabled();mt.j.language=navigator.language||navigator.browserLanguage||navigator.systemLanguage||navigator.userLanguage||"";mt.j.Xa=(window.screen.width||0)+"x"+(window.screen.height||0);mt.j.colorDepth=window.screen.colorDepth||0;mt.j.orientation=0;
(function(){function b(){var a=0;window.orientation!==r&&(a=window.orientation);screen&&(screen.orientation&&screen.orientation.angle!==r)&&(a=screen.orientation.angle);mt.j.orientation=a}b();a.c(window,"orientationchange",b)})();return mt.j})();mt.l={};mt.l.parse=function(){return(new Function('return (" + source + ")'))()};
mt.l.stringify=function(){function a(a){/["\\\x00-\x1f]/.test(a)&&(a=a.replace(/["\\\x00-\x1f]/g,function(a){var b=d[a];if(b)return b;b=a.charCodeAt();return"\\u00"+Math.floor(b/16).toString(16)+(b%16).toString(16)}));return'"'+a+'"'}function b(a){return 10>a?"0"+a:a}var d={"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"};return function(d){switch(typeof d){case "undefined":return"undefined";case "number":return isFinite(d)?String(d):"null";case "string":return a(d);case "boolean":return String(d);
default:if(d===t)return"null";if(d instanceof Array){var f=["["],n=d.length,m,e,l;for(e=0;e<n;e++)switch(l=d[e],typeof l){case "undefined":case "function":case "unknown":break;default:m&&f.push(","),f.push(mt.l.stringify(l)),m=1}f.push("]");return f.join("")}if(d instanceof Date)return'"'+d.getFullYear()+"-"+b(d.getMonth()+1)+"-"+b(d.getDate())+"T"+b(d.getHours())+":"+b(d.getMinutes())+":"+b(d.getSeconds())+'"';m=["{"];e=mt.l.stringify;for(n in d)if(Object.prototype.hasOwnProperty.call(d,n))switch(l=
d[n],typeof l){case "undefined":case "unknown":case "function":break;default:f&&m.push(","),f=1,m.push(e(n)+":"+e(l))}m.push("}");return m.join("")}}}();mt.lang={};mt.lang.d=function(a,b){return"[object "+b+"]"==={}.toString.call(a)};mt.lang.ob=function(a){return mt.lang.d(a,"Number")&&isFinite(a)};mt.lang.qb=function(a){return mt.lang.d(a,"String")};mt.lang.h=function(a){return a.replace?a.replace(/'/g,"'0").replace(/\*/g,"'1").replace(/!/g,"'2"):a};mt.localStorage={};
mt.localStorage.I=function(){if(!mt.localStorage.i)try{mt.localStorage.i=document.createElement("input"),mt.localStorage.i.type="hidden",mt.localStorage.i.style.display="none",mt.localStorage.i.addBehavior("#default#userData"),document.getElementsByTagName("head")[0].appendChild(mt.localStorage.i)}catch(a){return u}return s};
mt.localStorage.set=function(a,b,d){var k=new Date;k.setTime(k.getTime()+d||31536E6);try{window.localStorage?(b=k.getTime()+"|"+b,window.localStorage.setItem(a,b)):mt.localStorage.I()&&(mt.localStorage.i.expires=k.toUTCString(),mt.localStorage.i.load(document.location.hostname),mt.localStorage.i.setAttribute(a,b),mt.localStorage.i.save(document.location.hostname))}catch(f){}};
mt.localStorage.get=function(a){if(window.localStorage){if(a=window.localStorage.getItem(a)){var b=a.indexOf("|"),d=a.substring(0,b)-0;if(d&&d>(new Date).getTime())return a.substring(b+1)}}else if(mt.localStorage.I())try{return mt.localStorage.i.load(document.location.hostname),mt.localStorage.i.getAttribute(a)}catch(k){}return t};
mt.localStorage.remove=function(a){if(window.localStorage)window.localStorage.removeItem(a);else if(mt.localStorage.I())try{mt.localStorage.i.load(document.location.hostname),mt.localStorage.i.removeAttribute(a),mt.localStorage.i.save(document.location.hostname)}catch(b){}};mt.sessionStorage={};mt.sessionStorage.set=function(a,b){if(window.sessionStorage)try{window.sessionStorage.setItem(a,b)}catch(d){}};
mt.sessionStorage.get=function(a){return window.sessionStorage?window.sessionStorage.getItem(a):t};mt.sessionStorage.remove=function(a){window.sessionStorage&&window.sessionStorage.removeItem(a)};mt.fa={};mt.fa.log=function(a,b){var d=new Image,k="mini_tangram_log_"+Math.floor(2147483648*Math.random()).toString(36);window[k]=d;d.onload=d.onerror=d.onabort=function(){d.onload=d.onerror=d.onabort=t;d=window[k]=t;b&&b(a)};d.src=a};mt.T={};
mt.T.Ia=function(){var a="";if(navigator.plugins&&navigator.mimeTypes.length){var b=navigator.plugins["Shockwave Flash"];b&&b.description&&(a=b.description.replace(/^.*\s+(\S+)\s+\S+$/,"$1"))}else if(window.ActiveXObject)try{if(b=new ActiveXObject("ShockwaveFlash.ShockwaveFlash"))(a=b.GetVariable("$version"))&&(a=a.replace(/^.*\s+(\d+),(\d+).*$/,"$1.$2"))}catch(d){}return a};
mt.T.jb=function(a,b,d,k,f){return'<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="'+a+'" width="'+d+'" height="'+k+'"><param name="movie" value="'+b+'" /><param name="flashvars" value="'+(f||"")+'" /><param name="allowscriptaccess" value="always" /><embed type="application/x-shockwave-flash" name="'+a+'" width="'+d+'" height="'+k+'" src="'+b+'" flashvars="'+(f||"")+'" allowscriptaccess="always" /></object>'};mt.url={};
mt.url.g=function(a,b){var d=a.match(RegExp("(^|&|\\?|#)("+b+")=([^&#]*)(&|$|#)",""));return d?d[3]:t};mt.url.mb=function(a){return(a=a.match(/^(https?:)\/\//))?a[1]:t};mt.url.Ca=function(a){return(a=a.match(/^(https?:\/\/)?([^\/\?#]*)/))?a[2].replace(/.*@/,""):t};mt.url.$=function(a){return(a=mt.url.Ca(a))?a.replace(/:\d+$/,""):a};mt.url.M=function(a){return(a=a.match(/^(https?:\/\/)?[^\/]*(.*)/))?a[2].replace(/[\?#].*/,"").replace(/^$/,"/"):t};
(function(){function a(){for(var a=u,d=document.getElementsByTagName("script"),k=d.length,k=100<k?100:k,f=0;f<k;f++){var n=d[f].src;if(n&&0===n.indexOf("https://hm.baidu.com/h")){a=s;break}}return a}return h.xa=a})();var A=h.xa;
h.s={nb:"http://tongji.baidu.com/hm-web/welcome/ico",Q:"hm.baidu.com/hm.gif",la:"baidu.com",Na:"hmmd",Oa:"hmpl",fb:"utm_medium",Ma:"hmkw",hb:"utm_term",Ka:"hmci",eb:"utm_content",Pa:"hmsr",gb:"utm_source",La:"hmcu",cb:"utm_campaign",z:0,m:Math.round(+new Date/1E3),W:Math.round(+new Date/1E3)%65535,protocol:"https:"===document.location.protocol?"https:":"http:",F:A()||"https:"===document.location.protocol?"https:":"http:",pb:0,qa:6E5,ra:5,V:1024,pa:1,r:2147483647,ga:"cc cf ci ck cl cm cp cu cw ds ep et fl ja ln lo lt rnd si su v cv lv api sn ct u tt".split(" ")};
(function(){var a={p:{},c:function(a,d){this.p[a]=this.p[a]||[];this.p[a].push(d)},B:function(a,d){this.p[a]=this.p[a]||[];for(var k=this.p[a].length,f=0;f<k;f++)this.p[a][f](d)}};return h.w=a})();
(function(){function a(a,k){var f=document.createElement("script");f.charset="utf-8";b.d(k,"Function")&&(f.readyState?f.onreadystatechange=function(){if("loaded"===f.readyState||"complete"===f.readyState)f.onreadystatechange=t,k()}:f.onload=function(){k()});f.src=a;var n=document.getElementsByTagName("script")[0];n.parentNode.insertBefore(f,n)}var b=mt.lang;return h.load=a})();
(function(){function a(){var a="";h.b.a.nv?(a=encodeURIComponent(document.referrer),window.sessionStorage?d.set("Hm_from_"+c.id,a):b.set("Hm_from_"+c.id,a,864E5)):a=(window.sessionStorage?d.get("Hm_from_"+c.id):b.get("Hm_from_"+c.id))||"";return a}var b=mt.localStorage,d=mt.sessionStorage;return h.X=a})();
(function(){var a=mt.f,b=mt.lang,d=mt.event,k=mt.j,f=h.s,n=[],m={ha:function(){c.ctrk&&(d.c(document,"mouseup",m.oa()),d.c(window,"unload",function(){m.G()}),setInterval(function(){m.G()},f.qa))},oa:function(){return function(a){a=m.za(a);if(""!==a){var l=(f.F+"//"+f.Q+"?"+h.b.ea().replace(/ep=[^&]*/,"ep="+encodeURIComponent(a))).length;l+(f.r+"").length>f.V||(l+encodeURIComponent(n.join("!")+(n.length?"!":"")).length+(f.r+"").length>f.V&&m.G(),n.push(a),(n.length>=f.ra||/\*a\*/.test(a))&&m.G())}}},
za:function(d){var l=d.target||d.srcElement;if(0===f.pa){var g=(l.tagName||"").toLowerCase();if("embed"==g||"object"==g)return""}var v;k.ba?(v=Math.max(document.documentElement.scrollTop,document.body.scrollTop),g=Math.max(document.documentElement.scrollLeft,document.body.scrollLeft),g=d.clientX+g,v=d.clientY+v):(g=d.pageX,v=d.pageY);d=m.Da(d,l,g,v);var p=window.innerWidth||document.documentElement.clientWidth||document.body.offsetWidth;switch(c.align){case 1:g-=p/2;break;case 2:g-=p}p=[];p.push(g);
p.push(v);p.push(d.Sa);p.push(d.Ta);p.push(d.Va);p.push(b.h(d.Ua));p.push(d.ib);p.push(d.Ja);(l="a"===(l.tagName||"").toLowerCase()?l:a.ya(l))?(p.push("a"),p.push(b.h(encodeURIComponent(l.href)))):p.push("b");return p.join("*")},Da:function(d,l,g,b){d=a.Ga(l);var p=0,q=0,f=0,w=0;if(l&&(p=l.offsetWidth||l.clientWidth,q=l.offsetHeight||l.clientHeight,w=a.Ea(l),f=w.left,w=w.top,"html"===(l.tagName||"").toLowerCase()))p=Math.max(p,l.clientWidth),q=Math.max(q,l.clientHeight);return{Sa:Math.round(100*((g-
f)/p)),Ta:Math.round(100*((b-w)/q)),Va:k.orientation,Ua:d,ib:p,Ja:q}},G:function(){0!==n.length&&(h.b.a.et=2,h.b.a.ep=n.join("!"),h.b.k(),n=[])}};h.w.c("pv-b",m.ha);return m})();
(function(){var a=mt.f,b=h.s,d=h.load,k=h.X;h.w.c("pv-b",function(){var f=b.protocol+"//crs.baidu.com/";c.rec&&a.R(function(){for(var n=0,m=c.rp.length;n<m;n++){var e=c.rp[n][0],l=c.rp[n][1],g=a.Y("hm_t_"+e);if(l&&!(2==l&&!g||g&&""!==g.innerHTML))g="",g=Math.round(Math.random()*b.r),g=4==l?f+"hl.js?"+["siteId="+c.id,"planId="+e,"rnd="+g].join("&"):f+"t.js?"+["siteId="+c.id,"planId="+e,"from="+k(),"referer="+encodeURIComponent(document.referrer),"title="+encodeURIComponent(document.title),"rnd="+g].join("&"),
d(g)}})})})();(function(){var a=h.s,b=h.load,d=h.X;h.w.c("pv-b",function(){if(c.trust&&c.vcard){var k="https://tag.baidu.com/vcard/v.js?"+["siteid="+c.vcard,"url="+encodeURIComponent(document.location.href),"source="+d(),"rnd="+Math.round(Math.random()*a.r),"hm=1"].join("&");b(k)}})})();
(function(){function a(){return function(){h.b.a.nv=0;h.b.a.st=4;h.b.a.et=3;h.b.a.ep=h.J.Fa()+","+h.J.Ba();h.b.k()}}function b(){clearTimeout(y);var a;w&&(a="visible"==document[w]);z&&(a=!document[z]);e="undefined"==typeof a?s:a;if((!m||!l)&&e&&g)x=s,p=+new Date;else if(m&&l&&(!e||!g))x=u,q+=+new Date-p;m=e;l=g;y=setTimeout(b,100)}function d(a){var l=document,p="";if(a in l)p=a;else for(var d=["webkit","ms","moz","o"],g=0;g<d.length;g++){var b=d[g]+a.charAt(0).toUpperCase()+a.slice(1);if(b in l){p=
b;break}}return p}function k(a){if(!("focus"==a.type||"blur"==a.type)||!(a.target&&a.target!=window))g="focus"==a.type||"focusin"==a.type?s:u,b()}var f=mt.event,n=h.w,m=s,e=s,l=s,g=s,v=+new Date,p=v,q=0,x=s,w=d("visibilityState"),z=d("hidden"),y;b();(function(){var a=w.replace(/[vV]isibilityState/,"visibilitychange");f.c(document,a,b);f.c(window,"pageshow",b);f.c(window,"pagehide",b);"object"==typeof document.onfocusin?(f.c(document,"focusin",k),f.c(document,"focusout",k)):(f.c(window,"focus",k),
f.c(window,"blur",k))})();h.J={Fa:function(){return+new Date-v},Ba:function(){return x?+new Date-p+q:q}};n.c("pv-b",function(){f.c(window,"unload",a())});return h.J})();
(function(){var a=mt.lang,b=h.s,d=h.load,k={Ra:function(f){if((window._dxt===r||a.d(window._dxt,"Array"))&&"undefined"!==typeof h.b){var k=h.b.L();d([b.protocol,"//datax.baidu.com/x.js?si=",c.id,"&dm=",encodeURIComponent(k)].join(""),f)}},bb:function(d){if(a.d(d,"String")||a.d(d,"Number"))window._dxt=window._dxt||[],window._dxt.push(["_setUserId",d])}};return h.sa=k})();
(function(){function a(a,d,b,p){if(!(a===r||d===r||p===r)){if(""===a)return[d,b,p].join("*");a=String(a).split("!");for(var q,f=u,e=0;e<a.length;e++)if(q=a[e].split("*"),String(d)===q[0]){q[1]=b;q[2]=p;a[e]=q.join("*");f=s;break}f||a.push([d,b,p].join("*"));return a.join("!")}}function b(a){for(var g in a)if({}.hasOwnProperty.call(a,g)){var e=a[g];d.d(e,"Object")||d.d(e,"Array")?b(e):a[g]=String(e)}}var d=mt.lang,k=mt.l,f=h.s,n=h.w,m=h.sa,e={A:[],H:0,ca:u,o:{U:"",page:""},init:function(){e.e=0;n.c("pv-b",
function(){e.ta();e.va()});n.c("pv-d",function(){e.wa();e.o.page=""});n.c("stag-b",function(){h.b.a.api=e.e||e.H?e.e+"_"+e.H:"";h.b.a.ct=[decodeURIComponent(h.b.getData("Hm_ct_"+c.id)||""),e.o.U,e.o.page].join("!")});n.c("stag-d",function(){h.b.a.api=0;e.e=0;e.H=0})},ta:function(){var a=window._hmt||[];if(!a||d.d(a,"Array"))window._hmt={id:c.id,cmd:{},push:function(){for(var a=window._hmt,l=0;l<arguments.length;l++){var p=arguments[l];d.d(p,"Array")&&(a.cmd[a.id].push(p),"_setAccount"===p[0]&&(1<
p.length&&/^[0-9a-f]{32}$/.test(p[1]))&&(p=p[1],a.id=p,a.cmd[p]=a.cmd[p]||[]))}}},window._hmt.cmd[c.id]=[],window._hmt.push.apply(window._hmt,a)},va:function(){var a=window._hmt;if(a&&a.cmd&&a.cmd[c.id])for(var d=a.cmd[c.id],b=/^_track(Event|MobConv|Order|RTEvent)$/,p=0,q=d.length;p<q;p++){var f=d[p];b.test(f[0])?e.A.push(f):e.P(f)}a.cmd[c.id]={push:e.P}},wa:function(){if(0<e.A.length)for(var a=0,d=e.A.length;a<d;a++)e.P(e.A[a]);e.A=t},P:function(a){var b=a[0];if(e.hasOwnProperty(b)&&d.d(e[b],"Function"))e[b](a)},
_setAccount:function(a){1<a.length&&/^[0-9a-f]{32}$/.test(a[1])&&(e.e|=1)},_setAutoPageview:function(a){if(1<a.length&&(a=a[1],u===a||s===a))e.e|=2,h.b.aa=a},_trackPageview:function(a){if(1<a.length&&a[1].charAt&&"/"===a[1].charAt(0)){e.e|=4;h.b.a.et=0;h.b.a.ep="";h.b.N?(h.b.a.nv=0,h.b.a.st=4):h.b.N=s;var d=h.b.a.u,b=h.b.a.su;h.b.a.u=f.protocol+"//"+document.location.host+a[1];e.ca||(h.b.a.su=document.location.href);h.b.k();h.b.a.u=d;h.b.a.su=b}},_trackEvent:function(a){2<a.length&&(e.e|=8,h.b.a.nv=
0,h.b.a.st=4,h.b.a.et=4,h.b.a.ep=d.h(a[1])+"*"+d.h(a[2])+(a[3]?"*"+d.h(a[3]):"")+(a[4]?"*"+d.h(a[4]):""),h.b.k())},_setCustomVar:function(a){if(!(4>a.length)){var b=a[1],f=a[4]||3;if(0<b&&6>b&&0<f&&4>f){e.H++;for(var p=(h.b.a.cv||"*").split("!"),q=p.length;q<b-1;q++)p.push("*");p[b-1]=f+"*"+d.h(a[2])+"*"+d.h(a[3]);h.b.a.cv=p.join("!");a=h.b.a.cv.replace(/[^1](\*[^!]*){2}/g,"*").replace(/((^|!)\*)+$/g,"");""!==a?h.b.setData("Hm_cv_"+c.id,encodeURIComponent(a),c.age):h.b.Wa("Hm_cv_"+c.id)}}},_setUserTag:function(b){if(!(3>
b.length)){var g=d.h(b[1]);b=d.h(b[2]);if(g!==r&&b!==r){var f=decodeURIComponent(h.b.getData("Hm_ct_"+c.id)||""),f=a(f,g,1,b);h.b.setData("Hm_ct_"+c.id,encodeURIComponent(f),c.age)}}},_setVisitTag:function(b){if(!(3>b.length)){var g=d.h(b[1]);b=d.h(b[2]);if(g!==r&&b!==r){var f=e.o.U,f=a(f,g,2,b);e.o.U=f}}},_setPageTag:function(b){if(!(3>b.length)){var g=d.h(b[1]);b=d.h(b[2]);if(g!==r&&b!==r){var f=e.o.page,f=a(f,g,3,b);e.o.page=f}}},_setReferrerOverride:function(a){1<a.length&&(h.b.a.su=a[1].charAt&&
"/"===a[1].charAt(0)?f.protocol+"//"+window.location.host+a[1]:a[1],e.ca=s)},_trackOrder:function(a){a=a[1];d.d(a,"Object")&&(b(a),e.e|=16,h.b.a.nv=0,h.b.a.st=4,h.b.a.et=94,h.b.a.ep=k.stringify(a),h.b.k())},_trackMobConv:function(a){if(a={webim:1,tel:2,map:3,sms:4,callback:5,share:6}[a[1]])e.e|=32,h.b.a.et=93,h.b.a.ep=a,h.b.k()},_trackRTPageview:function(a){a=a[1];d.d(a,"Object")&&(b(a),a=k.stringify(a),512>=encodeURIComponent(a).length&&(e.e|=64,h.b.a.rt=a))},_trackRTEvent:function(a){a=a[1];if(d.d(a,
"Object")){b(a);a=encodeURIComponent(k.stringify(a));var g=function(a){var p=h.b.a.rt;e.e|=128;h.b.a.et=90;h.b.a.rt=a;h.b.k();h.b.a.rt=p},m=a.length;if(900>=m)g.call(this,a);else for(var m=Math.ceil(m/900),p="block|"+Math.round(Math.random()*f.r).toString(16)+"|"+m+"|",q=[],n=0;n<m;n++)q.push(n),q.push(a.substring(900*n,900*n+900)),g.call(this,p+q.join("|")),q=[]}},_setUserId:function(a){a=a[1];m.Ra();m.bb(a)}};e.init();h.ma=e;return h.ma})();
(function(){function a(){"undefined"===typeof window["_bdhm_loaded_"+c.id]&&(window["_bdhm_loaded_"+c.id]=s,this.a={},this.aa=s,this.N=u,this.init())}var b=mt.url,d=mt.fa,k=mt.T,f=mt.lang,n=mt.cookie,m=mt.j,e=mt.localStorage,l=mt.sessionStorage,g=h.s,v=h.w;a.prototype={O:function(a,b){a="."+a.replace(/:\d+/,"");b="."+b.replace(/:\d+/,"");var d=a.indexOf(b);return-1<d&&d+b.length===a.length},da:function(a,b){a=a.replace(/^https?:\/\//,"");return 0===a.indexOf(b)},C:function(a){for(var d=0;d<c.dm.length;d++)if(-1<
c.dm[d].indexOf("/")){if(this.da(a,c.dm[d]))return s}else{var f=b.$(a);if(f&&this.O(f,c.dm[d]))return s}return u},L:function(){for(var a=document.location.hostname,b=0,d=c.dm.length;b<d;b++)if(this.O(a,c.dm[b]))return c.dm[b].replace(/(:\d+)?[\/\?#].*/,"");return a},Z:function(){for(var a=0,b=c.dm.length;a<b;a++){var d=c.dm[a];if(-1<d.indexOf("/")&&this.da(document.location.href,d))return d.replace(/^[^\/]+(\/.*)/,"$1")+"/"}return"/"},Ha:function(){if(!document.referrer)return g.m-g.z>c.vdur?1:4;
var a=u;this.C(document.referrer)&&this.C(document.location.href)?a=s:(a=b.$(document.referrer),a=this.O(a||"",document.location.hostname));return a?g.m-g.z>c.vdur?1:4:3},getData:function(a){try{return n.get(a)||l.get(a)||e.get(a)}catch(b){}},setData:function(a,b,d){try{n.set(a,b,{domain:this.L(),path:this.Z(),K:d}),d?e.set(a,b,d):l.set(a,b)}catch(f){}},Wa:function(a){try{n.set(a,"",{domain:this.L(),path:this.Z(),K:-1}),l.remove(a),e.remove(a)}catch(b){}},$a:function(){var a,b,d,f,e;g.z=this.getData("Hm_lpvt_"+
c.id)||0;13===g.z.length&&(g.z=Math.round(g.z/1E3));b=this.Ha();a=4!==b?1:0;if(d=this.getData("Hm_lvt_"+c.id)){f=d.split(",");for(e=f.length-1;0<=e;e--)13===f[e].length&&(f[e]=""+Math.round(f[e]/1E3));for(;2592E3<g.m-f[0];)f.shift();e=4>f.length?2:3;for(1===a&&f.push(g.m);4<f.length;)f.shift();d=f.join(",");f=f[f.length-1]}else d=g.m,f="",e=1;this.setData("Hm_lvt_"+c.id,d,c.age);this.setData("Hm_lpvt_"+c.id,g.m);d=g.m===this.getData("Hm_lpvt_"+c.id)?"1":"0";if(0===c.nv&&this.C(document.location.href)&&
(""===document.referrer||this.C(document.referrer)))a=0,b=4;this.a.nv=a;this.a.st=b;this.a.cc=d;this.a.lt=f;this.a.lv=e},ea:function(){for(var a=[],b=this.a.et,d=0,f=g.ga.length;d<f;d++){var e=g.ga[d],k=this.a[e];"undefined"!==typeof k&&""!==k&&("tt"!==e||"tt"===e&&0===b)&&("ct"!==e||"ct"===e&&0===b)&&a.push(e+"="+encodeURIComponent(k))}switch(b){case 0:a.push("sn="+g.W);this.a.rt&&a.push("rt="+encodeURIComponent(this.a.rt));break;case 3:a.push("sn="+g.W);break;case 90:this.a.rt&&a.push("rt="+this.a.rt)}return a.join("&")},
ab:function(){this.$a();this.a.si=c.id;this.a.su=document.referrer;this.a.ds=m.Xa;this.a.cl=m.colorDepth+"-bit";this.a.ln=String(m.language).toLowerCase();this.a.ja=m.javaEnabled?1:0;this.a.ck=m.cookieEnabled?1:0;this.a.lo="number"===typeof _bdhm_top?1:0;this.a.fl=k.Ia();this.a.v="1.2.24";this.a.cv=decodeURIComponent(this.getData("Hm_cv_"+c.id)||"");this.a.tt=document.title||"";var a=document.location.href;this.a.cm=b.g(a,g.Na)||"";this.a.cp=b.g(a,g.Oa)||b.g(a,g.fb)||"";this.a.cw=b.g(a,g.Ma)||b.g(a,
g.hb)||"";this.a.ci=b.g(a,g.Ka)||b.g(a,g.eb)||"";this.a.cf=b.g(a,g.Pa)||b.g(a,g.gb)||"";this.a.cu=b.g(a,g.La)||b.g(a,g.cb)||""},init:function(){try{this.ab(),0===this.a.nv?this.Za():this.S(".*"),h.b=this,this.na(),v.B("pv-b"),this.Ya()}catch(a){var b=[];b.push("si="+c.id);b.push("n="+encodeURIComponent(a.name));b.push("m="+encodeURIComponent(a.message));b.push("r="+encodeURIComponent(document.referrer));d.log(g.F+"//"+g.Q+"?"+b.join("&"))}},Ya:function(){function a(){v.B("pv-d")}this.aa?(this.N=s,
this.a.et=0,this.a.ep="",this.k(a)):a()},k:function(a){var b=this;b.a.rnd=Math.round(Math.random()*g.r);v.B("stag-b");var e=g.F+"//"+g.Q+"?"+b.ea();v.B("stag-d");b.ka(e);d.log(e,function(d){b.S(d);f.d(a,"Function")&&a.call(b)})},na:function(){var a=document.location.hash.substring(1),d=RegExp(c.id),f=-1<document.referrer.indexOf(g.la),e=b.g(a,"jn"),k=/^heatlink$|^select$|^pageclick$/.test(e);a&&(d.test(a)&&f&&k)&&(this.a.rnd=Math.round(Math.random()*g.r),a=document.createElement("script"),a.setAttribute("type",
"text/javascript"),a.setAttribute("charset","utf-8"),a.setAttribute("src",g.protocol+"//"+c.js+e+".js?"+this.a.rnd),e=document.getElementsByTagName("script")[0],e.parentNode.insertBefore(a,e))},ka:function(a){var b=l.get("Hm_unsent_"+c.id)||"",d=this.a.u?"":"&u="+encodeURIComponent(document.location.href),b=encodeURIComponent(a.replace(/^https?:\/\//,"")+d)+(b?","+b:"");l.set("Hm_unsent_"+c.id,b)},S:function(a){var b=l.get("Hm_unsent_"+c.id)||"";b&&(a=encodeURIComponent(a.replace(/^https?:\/\//,"")),
a=RegExp(a.replace(/([\*\(\)])/g,"\\$1")+"(%26u%3D[^,]*)?,?","g"),(b=b.replace(a,"").replace(/,$/,""))?l.set("Hm_unsent_"+c.id,b):l.remove("Hm_unsent_"+c.id))},Za:function(){var a=this,b=l.get("Hm_unsent_"+c.id);if(b)for(var b=b.split(","),f=function(b){d.log(g.F+"//"+decodeURIComponent(b),function(b){a.S(b)})},e=0,k=b.length;e<k;e++)f(b[e])}};return new a})();
(function(){var a=mt.f,b=mt.event,d=mt.url,k=mt.l;try{if(window.performance&&performance.timing&&"undefined"!==typeof h.b){var f=+new Date,n=function(a){var b=performance.timing,d=b[a+"Start"]?b[a+"Start"]:0;a=b[a+"End"]?b[a+"End"]:0;return{start:d,end:a,value:0<a-d?a-d:0}},m=t;a.R(function(){m=+new Date});var e=function(){var a,b,e;e=n("navigation");b=n("request");e={netAll:b.start-e.start,netDns:n("domainLookup").value,netTcp:n("connect").value,srv:n("response").start-b.start,dom:performance.timing.domInteractive-
performance.timing.fetchStart,loadEvent:n("loadEvent").end-e.start};a=document.referrer;var l=a.match(/^(http[s]?:\/\/)?([^\/]+)(.*)/)||[],x=t;b=t;if("www.baidu.com"===l[2]||"m.baidu.com"===l[2])x=d.g(a,"qid"),b=d.g(a,"click_t");a=x;e.qid=a!=t?a:"";b!=t?(e.bdDom=m?m-b:0,e.bdRun=f-b,e.bdDef=n("navigation").start-b):(e.bdDom=0,e.bdRun=0,e.bdDef=0);h.b.a.et=87;h.b.a.ep=k.stringify(e);h.b.k()};b.c(window,"load",function(){setTimeout(e,500)})}}catch(l){}})();
(function(){var a=mt.j,b=mt.lang,d=mt.event,k=mt.l;if("undefined"!==typeof h.b&&(c.med||(!a.ba||7<a.Qa)&&c.cvcc)){var f,n,m,e,l=function(a){if(a.item){for(var b=a.length,d=Array(b);b--;)d[b]=a[b];return d}return[].slice.call(a)},g=function(a,b){for(var d in a)if(a.hasOwnProperty(d)&&b.call(a,d,a[d])===u)return u},v=function(a,d){var e={};e.n=f;e.t="clk";e.v=a;if(d){var g=d.getAttribute("href"),l=d.getAttribute("onclick")?""+d.getAttribute("onclick"):t,n=d.getAttribute("id")||"";m.test(g)?(e.sn="mediate",
e.snv=g):b.d(l,"String")&&m.test(l)&&(e.sn="wrap",e.snv=l);e.id=n}h.b.a.et=86;h.b.a.ep=k.stringify(e);h.b.k();for(e=+new Date;400>=+new Date-e;);};if(c.med)n="/zoosnet",f="swt",m=/swt|zixun|call|chat|zoos|business|talk|kefu|openkf|online|\/LR\/Chatpre\.aspx/i,e={click:function(){for(var a=[],b=l(document.getElementsByTagName("a")),b=[].concat.apply(b,l(document.getElementsByTagName("area"))),b=[].concat.apply(b,l(document.getElementsByTagName("img"))),d,e,f=0,g=b.length;f<g;f++)d=b[f],e=d.getAttribute("onclick"),
d=d.getAttribute("href"),(m.test(e)||m.test(d))&&a.push(b[f]);return a}};else if(c.cvcc){n="/other-comm";f="other";m=c.cvcc.q||r;var p=c.cvcc.id||r;e={click:function(){for(var a=[],b=l(document.getElementsByTagName("a")),b=[].concat.apply(b,l(document.getElementsByTagName("area"))),b=[].concat.apply(b,l(document.getElementsByTagName("img"))),d,e,f,g=0,k=b.length;g<k;g++)d=b[g],m!==r?(e=d.getAttribute("onclick"),f=d.getAttribute("href"),p?(d=d.getAttribute("id"),(m.test(e)||m.test(f)||p.test(d))&&
a.push(b[g])):(m.test(e)||m.test(f))&&a.push(b[g])):p!==r&&(d=d.getAttribute("id"),p.test(d)&&a.push(b[g]));return a}}}if("undefined"!==typeof e&&"undefined"!==typeof m){var q;n+=/\/$/.test(n)?"":"/";var x=function(a,d){if(q===d)return v(n+a,d),u;if(b.d(d,"Array")||b.d(d,"NodeList"))for(var e=0,f=d.length;e<f;e++)if(q===d[e])return v(n+a+"/"+(e+1),d[e]),u};d.c(document,"mousedown",function(a){a=a||window.event;q=a.target||a.srcElement;var d={};for(g(e,function(a,e){d[a]=b.d(e,"Function")?e():document.getElementById(e)});q&&
q!==document&&g(d,x)!==u;)q=q.parentNode})}}})();(function(){var a=mt.f,b=mt.lang,d=mt.event,k=mt.l;if("undefined"!==typeof h.b&&b.d(c.cvcf,"Array")&&0<c.cvcf.length){var f={ia:function(){for(var b=c.cvcf.length,k,e=0;e<b;e++)(k=a.Y(decodeURIComponent(c.cvcf[e])))&&d.c(k,"click",f.ua())},ua:function(){return function(){h.b.a.et=86;var a={n:"form",t:"clk"};a.id=this.id;h.b.a.ep=k.stringify(a);h.b.k()}}};a.R(function(){f.ia()})}})();
(function(){var a=mt.event,b=mt.l;if(c.med&&"undefined"!==typeof h.b){var d=+new Date,k={n:"anti",sb:0,kb:0,clk:0},f=function(){h.b.a.et=86;h.b.a.ep=b.stringify(k);h.b.k()};a.c(document,"click",function(){k.clk++});a.c(document,"keyup",function(){k.kb=1});a.c(window,"scroll",function(){k.sb++});a.c(window,"unload",function(){k.t=+new Date-d;f()});a.c(window,"load",function(){setTimeout(f,5E3)})}})();})();
