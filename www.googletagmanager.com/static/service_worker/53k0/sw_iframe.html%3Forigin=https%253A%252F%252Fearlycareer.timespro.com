<!DOCTYPE html>
<html>
<head>
  <link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
</head>
<body>
  <script>
'use strict';class m{constructor(a){this.j=a;this.g={};this.h={};this.i=0;this.id=String(Math.floor(Number.MAX_SAFE_INTEGER*Math.random()))}}function n(a){return a.performance&&a.performance.now()||Date.now()}
var p=function(a,b){class d{constructor(c,g,f){this.failureType=c;this.data=g;this.g=f;this.h=new m(n(f))}s(c,g){const f=c.clientId;if(c.type===0){c.isDead=!0;var e=this.h,h=n(this.g);e.g[f]==null&&(e.g[f]=0,e.h[f]=h,e.i++);e.g[f]++;c.stats={targetId:e.id,clientCount:e.i,totalLifeMs:Math.round(h-e.j),heartbeatCount:e.g[f],clientLifeMs:Math.round(h-e.h[f])}}c.failure={failureType:this.failureType,data:this.data};g(c)}}return new d(5,a,b)};/*

 Copyright Google LLC
 SPDX-License-Identifier: Apache-2.0
*/
let q=globalThis.trustedTypes,r;function t(){let a=null;if(!q)return a;try{const b=d=>d;a=q.createPolicy("goog#html",{createHTML:b,createScript:b,createScriptURL:b})}catch(b){}return a};var u=class{constructor(a){this.g=a}toString(){return this.g+""}};function v(a){const b=a;var d;r===void 0&&(r=t());d=r;return new u(d?d.createScriptURL(b):b)}function w(a){if(a instanceof u)return a.g;throw Error("");};function x(a,...b){if(b.length===0)return v(a[0]);let d=a[0];for(let c=0;c<b.length;c++)d+=encodeURIComponent(b[c])+a[c+1];return v(d)}function y(a){var b=x`sw.js`,d=w(b).toString();const c=d.split(/[?#]/),g=/[?]/.test(d)?"?"+c[1]:"";return z(c[0],g,/[#]/.test(d)?"#"+(g?c[2]:c[1]):"",a)}
function z(a,b,d,c){function g(e,h){e!=null&&(Array.isArray(e)?e.forEach(l=>g(l,h)):(b+=f+encodeURIComponent(h)+"="+encodeURIComponent(e),f="&"))}let f=b.length?"&":"?";c.constructor===Object&&(c=Object.entries(c));Array.isArray(c)?c.forEach(e=>g(e[1],e[0])):c.forEach(g);return v(a+b+d)};const A=/Chrome\/(\d+)/;var C=function(a){const b=a.origin;if(b){var d=a.o?"swe.js":"sw.js",c=a.g?x`/static/service_worker/${a.g}/${d}?origin=${b}`:x`/gtm/static/${d}?origin=${b}`,g=new Map([["origin",b]]);a.h&&g.set("path",a.h);var f=a.l?y(g):c,e=()=>{const k=A.exec(a.window.navigator.userAgent);return k&&Number(k[1])<119},h=a.window.document.location.href;a.g&&(a.l?h=`${a.h}/_/service_worker`:e()||(h="/static/service_worker"));var l={scope:h};a.g&&(l.updateViaCache="all");a.window.navigator.serviceWorker.register(w(f),
l).then(()=>{a.window.navigator.serviceWorker.ready.then(k=>{a.i=k.active;B(a)})},k=>{a.j=p(k==null?void 0:k.toString(),a.window);B(a)});a.window.navigator.serviceWorker.addEventListener("message",k=>{a.window.parent.postMessage(k.data,a.origin)})}},B=function(a){const b=a.m.slice();a.m=[];for(const d of b)a.handleEvent(d)};
(function(a){if((f=>{try{return f!==f.top}catch(e){return!0}})(a.window)){var b=new URL(a.window.document.location.href),d=b.searchParams.get("origin");if(d){a.origin=d;a.l=!!b.searchParams.get("1p");a.o=!!b.searchParams.get("e");a.h=b.searchParams.get("path")||"";var c=b.pathname.match(RegExp(".*/service_worker/(\\w+)/"));c&&c.length&&(a.g=c[1]);var g=a.window.document.location.ancestorOrigins;g&&g[0]!==a.origin||(C(a),a.window.addEventListener("message",f=>{a.handleEvent(f)}))}}})(new class{constructor(a){this.window=
a;this.origin="";this.o=this.l=!1;this.h="";this.j=this.i=null;this.m=[];this.g=""}handleEvent(a){a.origin===this.origin&&(this.i?this.i.postMessage(a.data):this.j?this.j.s(a.data,b=>{this.window.parent.postMessage(b,this.origin)}):this.m.push(a))}}(window));
  </script>
</body>
</html>