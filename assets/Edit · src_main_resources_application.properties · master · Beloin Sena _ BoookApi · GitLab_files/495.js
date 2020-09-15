(this.webpackJsonp=this.webpackJsonp||[]).push([[495],{Htnb:function(e,t,r){"use strict";r.d(t,"a",(function(){return c}));r("GzNv"),r("QifN"),r("l9AF"),r("pBsb");var n=r("PxiM"),s=r.n(n),a=r("jsvc");function c(e){let t=arguments.length>1&&void 0!==arguments[1]?arguments[1]:"",r=arguments.length>2&&void 0!==arguments[2]?arguments[2]:"<b>",n=arguments.length>3&&void 0!==arguments[3]?arguments[3]:"</b>";if(!e)return"";if(!t)return e;const c=Object(a.sanitize)(e.toString(),{ALLOWED_TAGS:[]}),i=s.a.match(c,t.toString());return c.split("").map((function(e,t){return i.includes(t)?"".concat(r).concat(e).concat(n):e})).join("")}},KZHv:function(e,t,r){"use strict";r.r(t);var n={};r.r(n),r.d(n,"setNamespace",(function(){return m})),r.d(n,"setStorageKey",(function(){return d})),r.d(n,"requestFrequentItems",(function(){return h})),r.d(n,"receiveFrequentItemsSuccess",(function(){return f})),r.d(n,"receiveFrequentItemsError",(function(){return g})),r.d(n,"fetchFrequentItems",(function(){return y})),r.d(n,"requestSearchedItems",(function(){return O})),r.d(n,"receiveSearchedItemsSuccess",(function(){return E})),r.d(n,"receiveSearchedItemsError",(function(){return b})),r.d(n,"fetchSearchedItems",(function(){return S})),r.d(n,"setSearchQuery",(function(){return j}));var s={};r.r(s),r.d(s,"hasSearchQuery",(function(){return v}));var a=r("yi8e"),c=r("FkSe"),i=r("n7CP"),o=r("N79w"),u=r("jB52"),l=r("qPgm");var p=r("Tzzi");const m=function(e,t){let{commit:r}=e;r("SET_NAMESPACE",t)},d=function(e,t){let{commit:r}=e;r("SET_STORAGE_KEY",t)},h=function(e){let{commit:t}=e;t("REQUEST_FREQUENT_ITEMS")},f=function(e,t){let{commit:r}=e;r("RECEIVE_FREQUENT_ITEMS_SUCCESS",t)},g=function(e){let{commit:t}=e;t("RECEIVE_FREQUENT_ITEMS_ERROR")},y=function(e){let{state:t,dispatch:r}=e;if(r("requestFrequentItems"),i.a.isLocalStorageAccessSafe()){const e=JSON.parse(localStorage.getItem(t.storageKey));r("receiveFrequentItemsSuccess",e?Object(p.a)(e):[])}else r("receiveFrequentItemsError")},O=function(e){let{commit:t}=e;t("REQUEST_SEARCHED_ITEMS")},E=function(e,t){let{commit:r}=e;r("RECEIVE_SEARCHED_ITEMS_SUCCESS",t)},b=function(e){let{commit:t}=e;t("RECEIVE_SEARCHED_ITEMS_ERROR")},S=function(e,t){let{state:r,dispatch:n}=e;n("requestSearchedItems");const s={simple:!0,per_page:20,membership:Boolean(gon.current_user_id)};return"projects"===r.namespace&&(s.order_by="last_activity_at"),l.a[r.namespace](t,s).then((function(e){n("receiveSearchedItemsSuccess",e)})).catch((function(){n("receiveSearchedItemsError")}))},j=function(e,t){let{commit:r,dispatch:n}=e;r("SET_SEARCH_QUERY",t),t?n("fetchSearchedItems",t):n("fetchFrequentItems")},v=function(e){return""!==e.searchQuery};r("EWC9");var I={SET_NAMESPACE(e,t){Object.assign(e,{namespace:t})},SET_STORAGE_KEY(e,t){Object.assign(e,{storageKey:t})},SET_SEARCH_QUERY(e,t){const r=""!==t;Object.assign(e,{searchQuery:t,isLoadingItems:!0,hasSearchQuery:r})},REQUEST_FREQUENT_ITEMS(e){Object.assign(e,{isLoadingItems:!0,hasSearchQuery:!1})},RECEIVE_FREQUENT_ITEMS_SUCCESS(e,t){Object.assign(e,{items:t,isLoadingItems:!1,hasSearchQuery:!1,isFetchFailed:!1})},RECEIVE_FREQUENT_ITEMS_ERROR(e){Object.assign(e,{isLoadingItems:!1,hasSearchQuery:!1,isFetchFailed:!0})},REQUEST_SEARCHED_ITEMS(e){Object.assign(e,{isLoadingItems:!0,hasSearchQuery:!0})},RECEIVE_SEARCHED_ITEMS_SUCCESS(e,t){const r=t.data?t.data:t;Object.assign(e,{items:r.map((function(e){return{id:e.id,name:e.name,namespace:e.name_with_namespace||e.full_name,webUrl:e.web_url,avatarUrl:e.avatar_url}})),isLoadingItems:!1,hasSearchQuery:!0,isFetchFailed:!1})},RECEIVE_SEARCHED_ITEMS_ERROR(e){Object.assign(e,{isLoadingItems:!1,hasSearchQuery:!0,isFetchFailed:!0})}};u.default.use(a.b);var _=r("pRET"),w=(r("TZoF"),r("Tmea")),q=r.n(w),T=r("s1D3");function C(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function P(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?C(Object(r),!0).forEach((function(t){L(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):C(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function L(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}var F={props:{namespace:{type:String,required:!0}},methods:{getTranslations(e){var t=this;return e.reduce((function(e,r){return P(P({},e),{},{[r]:_.d[t.namespace][r]})}),{})}}};function R(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function D(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?R(Object(r),!0).forEach((function(t){Q(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):R(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function Q(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}var M={components:{GlIcon:T.a},mixins:[F],data:()=>({searchQuery:""}),computed:{translations(){return this.getTranslations(["searchInputPlaceholder"])}},watch:{searchQuery:q()((function(){this.setSearchQuery(this.searchQuery)}),500)},mounted(){o.a.$on("".concat(this.namespace,"-dropdownOpen"),this.setFocus)},beforeDestroy(){o.a.$off("".concat(this.namespace,"-dropdownOpen"),this.setFocus)},methods:D(D({},Object(a.c)(["setSearchQuery"])),{},{setFocus(){this.$refs.search.focus()}})},N=r("tBpV"),A=Object(N.a)(M,(function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"search-input-container d-none d-sm-block"},[r("input",{directives:[{name:"model",rawName:"v-model",value:e.searchQuery,expression:"searchQuery"}],ref:"search",staticClass:"form-control",attrs:{placeholder:e.translations.searchInputPlaceholder,type:"search"},domProps:{value:e.searchQuery},on:{input:function(t){t.target.composing||(e.searchQuery=t.target.value)}}}),e._v(" "),e.searchQuery?e._e():r("gl-icon",{staticClass:"search-icon",attrs:{name:"search"}})],1)}),[],!1,null,null,null).exports,U=r("nBaz"),z=r("Htnb"),G=r("0AwG"),x={components:{Identicon:U.a},props:{matcher:{type:String,required:!1},itemId:{type:Number,required:!0},itemName:{type:String,required:!0},namespace:{type:String,required:!1},webUrl:{type:String,required:!0},avatarUrl:{required:!0,validator:e=>null===e||"string"==typeof e}},computed:{truncatedNamespace(){return Object(G.q)(this.namespace)},highlightedItemName(){return Object(z.a)(this.itemName,this.matcher)}}},B={components:{FrequentItemsListItem:Object(N.a)(x,(function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("li",{staticClass:"frequent-items-list-item-container"},[r("a",{staticClass:"clearfix",attrs:{href:e.webUrl}},[r("div",{ref:"frequentItemsItemAvatarContainer",staticClass:"frequent-items-item-avatar-container avatar-container rect-avatar s32"},[e.avatarUrl?r("img",{ref:"frequentItemsItemAvatar",staticClass:"avatar s32",attrs:{src:e.avatarUrl}}):r("identicon",{staticClass:"rect-avatar",attrs:{"entity-id":e.itemId,"entity-name":e.itemName,"size-class":"s32"}})],1),e._v(" "),r("div",{ref:"frequentItemsItemMetadataContainer",staticClass:"frequent-items-item-metadata-container"},[r("div",{ref:"frequentItemsItemTitle",staticClass:"frequent-items-item-title",attrs:{title:e.itemName},domProps:{innerHTML:e._s(e.highlightedItemName)}}),e._v(" "),e.namespace?r("div",{ref:"frequentItemsItemNamespace",staticClass:"frequent-items-item-namespace",attrs:{title:e.namespace}},[e._v("\n        "+e._s(e.truncatedNamespace)+"\n      ")]):e._e()])])])}),[],!1,null,null,null).exports},mixins:[F],props:{items:{type:Array,required:!0},hasSearchQuery:{type:Boolean,required:!0},isFetchFailed:{type:Boolean,required:!0},matcher:{type:String,required:!0}},computed:{translations(){return this.getTranslations(["itemListEmptyMessage","itemListErrorMessage","searchListEmptyMessage","searchListErrorMessage"])},isListEmpty(){return 0===this.items.length},listEmptyMessage(){return this.hasSearchQuery?this.isFetchFailed?this.translations.searchListErrorMessage:this.translations.searchListEmptyMessage:this.isFetchFailed?this.translations.itemListErrorMessage:this.translations.itemListEmptyMessage},sanitizedItems(){return this.items.map(p.c)}}};function H(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function k(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?H(Object(r),!0).forEach((function(t){V(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):H(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function V(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}var K={store:function(){return new a.b.Store({actions:n,getters:s,mutations:I,state:{namespace:"",storageKey:"",searchQuery:"",isLoadingItems:!1,isFetchFailed:!1,items:[]}})},components:{FrequentItemsSearchInput:A,FrequentItemsList:Object(N.a)(B,(function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"frequent-items-list-container"},[r("ul",{ref:"frequentItemsList",staticClass:"list-unstyled"},[e.isListEmpty?r("li",{staticClass:"section-empty",class:{"section-failure":e.isFetchFailed}},[e._v("\n      "+e._s(e.listEmptyMessage)+"\n    ")]):e._l(e.sanitizedItems,(function(t){return r("frequent-items-list-item",{key:t.id,attrs:{"item-id":t.id,"item-name":t.name,namespace:t.namespace,"web-url":t.webUrl,"avatar-url":t.avatarUrl,matcher:e.matcher}})}))],2)])}),[],!1,null,null,null).exports,GlLoadingIcon:c.a},mixins:[F],props:{currentUserName:{type:String,required:!0},currentItem:{type:Object,required:!0}},computed:k(k(k({},Object(a.e)(["searchQuery","isLoadingItems","isFetchFailed","items"])),Object(a.d)(["hasSearchQuery"])),{},{translations(){return this.getTranslations(["loadingMessage","header"])}}),created(){const{namespace:e,currentUserName:t,currentItem:r}=this,n="".concat(t,"/").concat(_.c[e]);this.setNamespace(e),this.setStorageKey(n),r.id&&this.logItemAccess(n,r),o.a.$on("".concat(this.namespace,"-dropdownOpen"),this.dropdownOpenHandler);const s=document.getElementById("nav-".concat(this.namespace,"-dropdown"));s&&s.classList.contains("show")&&this.dropdownOpenHandler()},beforeDestroy(){o.a.$off("".concat(this.namespace,"-dropdownOpen"),this.dropdownOpenHandler)},methods:k(k({},Object(a.c)(["setNamespace","setStorageKey","fetchFrequentItems"])),{},{dropdownOpenHandler(){(""===this.searchQuery||Object(p.b)())&&this.fetchFrequentItems()},logItemAccess(e,t){const r=Object(p.c)(t);if(!i.a.isLocalStorageAccessSafe())return!1;const n=localStorage.getItem(e),s=n?JSON.parse(n):[k(k({},r),{},{frequency:1})],a=s.findIndex((function(e){return e.id===r.id}));return a>-1?s[a]=Object(p.d)(s[a],r):(s.length===_.a.MAX_COUNT&&s.shift(),s.push(k(k({},r),{},{frequency:1}))),localStorage.setItem(e,JSON.stringify(s))}})},$=Object(N.a)(K,(function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",[r("frequent-items-search-input",{attrs:{namespace:e.namespace}}),e._v(" "),e.isLoadingItems?r("gl-loading-icon",{staticClass:"loading-animation prepend-top-20",attrs:{label:e.translations.loadingMessage,size:"lg"}}):e._e(),e._v(" "),e.isLoadingItems||e.hasSearchQuery?e._e():r("div",{staticClass:"section-header"},[e._v("\n    "+e._s(e.translations.header)+"\n  ")]),e._v(" "),e.isLoadingItems?e._e():r("frequent-items-list",{attrs:{items:e.items,namespace:e.namespace,"has-search-query":e.hasSearchQuery,"is-fetch-failed":e.isFetchFailed,matcher:e.searchQuery}})],1)}),[],!1,null,null,null);t.default=$.exports},Tzzi:function(e,t,r){"use strict";r.d(t,"b",(function(){return p})),r.d(t,"a",(function(){return m})),r.d(t,"d",(function(){return d})),r.d(t,"c",(function(){return h}));r("GzNv");var n=r("mA6J"),s=r.n(n),a=r("eVUo"),c=r("jsvc"),i=r("pRET");function o(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function u(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?o(Object(r),!0).forEach((function(t){l(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):o(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function l(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}const p=function(){return["md","sm","xs"].includes(a.b.getBreakpointSize())},m=function(e){if(!e)return[];const t=p()?i.a.LIST_COUNT_MOBILE:i.a.LIST_COUNT_DESKTOP,r=e.filter((function(e){return e.frequency>=i.a.ELIGIBLE_FREQUENCY}));return r&&0!==r.length?(r.sort((function(e,t){return e.frequency!==t.frequency?t.frequency-e.frequency:e.lastAccessedOn!==t.lastAccessedOn?t.lastAccessedOn-e.lastAccessedOn:0})),s()(r,t)):[]},d=function(e,t){const r=Math.abs(t.lastAccessedOn-e.lastAccessedOn)/i.b>1;return u(u({},t),{},{frequency:r?e.frequency+1:e.frequency,lastAccessedOn:r?Date.now():e.lastAccessedOn})},h=function(e){const t=function(t){return Object.prototype.hasOwnProperty.call(e,t)?{[t]:Object(c.sanitize)(e[t].toString(),{ALLOWED_TAGS:[]})}:{}};return u(u(u({},e),t("name")),t("namespace"))}},mA6J:function(e,t,r){var n=r("zx4+"),s=r("NDsS");e.exports=function(e,t,r){return e&&e.length?(t=r||void 0===t?1:s(t),n(e,0,t<0?0:t)):[]}},nBaz:function(e,t,r){"use strict";var n=r("FqZL"),s={props:{entityId:{type:[Number,String],required:!0},entityName:{type:String,required:!0},sizeClass:{type:String,required:!1,default:"s40"}},computed:{identiconBackgroundClass(){return Object(n.a)(this.entityId)},identiconTitle(){return Object(n.b)(this.entityName)}}},a=r("tBpV"),c=Object(a.a)(s,(function(){var e=this.$createElement;return(this._self._c||e)("div",{ref:"identicon",staticClass:"avatar identicon",class:[this.sizeClass,this.identiconBackgroundClass]},[this._v("\n  "+this._s(this.identiconTitle)+"\n")])}),[],!1,null,null,null);t.a=c.exports},pRET:function(e,t,r){"use strict";r.d(t,"a",(function(){return s})),r.d(t,"b",(function(){return a})),r.d(t,"c",(function(){return c})),r.d(t,"d",(function(){return i}));var n=r("/lV4");const s={MAX_COUNT:20,LIST_COUNT_DESKTOP:5,LIST_COUNT_MOBILE:3,ELIGIBLE_FREQUENCY:3},a=36e5,c={projects:"frequent-projects",groups:"frequent-groups"},i={projects:{loadingMessage:Object(n.d)("ProjectsDropdown|Loading projects"),header:Object(n.d)("ProjectsDropdown|Frequently visited"),itemListErrorMessage:Object(n.d)("ProjectsDropdown|This feature requires browser localStorage support"),itemListEmptyMessage:Object(n.d)("ProjectsDropdown|Projects you visit often will appear here"),searchListErrorMessage:Object(n.d)("ProjectsDropdown|Something went wrong on our end."),searchListEmptyMessage:Object(n.d)("ProjectsDropdown|Sorry, no projects matched your search"),searchInputPlaceholder:Object(n.d)("ProjectsDropdown|Search your projects")},groups:{loadingMessage:Object(n.d)("GroupsDropdown|Loading groups"),header:Object(n.d)("GroupsDropdown|Frequently visited"),itemListErrorMessage:Object(n.d)("GroupsDropdown|This feature requires browser localStorage support"),itemListEmptyMessage:Object(n.d)("GroupsDropdown|Groups you visit often will appear here"),searchListErrorMessage:Object(n.d)("GroupsDropdown|Something went wrong on our end."),searchListEmptyMessage:Object(n.d)("GroupsDropdown|Sorry, no groups matched your search"),searchInputPlaceholder:Object(n.d)("GroupsDropdown|Search your groups")}}},"zx4+":function(e,t){e.exports=function(e,t,r){var n=-1,s=e.length;t<0&&(t=-t>s?0:s+t),(r=r>s?s:r)<0&&(r+=s),s=t>r?0:r-t>>>0,t>>>=0;for(var a=Array(s);++n<s;)a[n]=e[n+t];return a}}}]);
//# sourceMappingURL=495.82c5c40f.chunk.js.map