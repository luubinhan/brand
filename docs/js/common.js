// charming
!function(e){if("object"==typeof exports&&"undefined"!=typeof module)module.exports=e();else if("function"==typeof define&&define.amd)define([],e);else{var n;n="undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self?self:this,n.charming=e()}}(function(){return function e(n,r,o){function t(i,u){if(!r[i]){if(!n[i]){var d="function"==typeof require&&require;if(!u&&d)return d(i,!0);if(f)return f(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var l=r[i]={exports:{}};n[i][0].call(l.exports,function(e){var r=n[i][1][e];return t(r?r:e)},l,l.exports,e,n,r,o)}return r[i].exports}for(var f="function"==typeof require&&require,i=0;i<o.length;i++)t(o[i]);return t}({1:[function(e,n,r){n.exports=function(e,n){function r(e){for(var n=e.parentNode,r=e.nodeValue,i=r.length,u=-1;++u<i;){var d=document.createElement(o);t&&(d.className=t+f,f++),d.appendChild(document.createTextNode(r[u])),n.insertBefore(d,e)}n.removeChild(e)}n=n||{};var o=n.tagName||"span",t=null!=n.classPrefix?n.classPrefix:"char",f=1;!function e(n){if(n.nodeType===Node.TEXT_NODE)return r(n);var o=Array.prototype.slice.call(n.childNodes),t=o.length;if(1===t&&o[0].nodeType===Node.TEXT_NODE)return r(o[0]);for(var f=-1;++f<t;)e(o[f])}(e)}},{}]},{},[1])(1)});