var protocol = window.location.protocol;
var hostname = window.location.hostname;
var port = window.location.port ? ':' + window.location.port : ''; // 如果端口号不是默认，则添加':'和端口号
var baseUrl = protocol + '//' + hostname + port;
window._VBEN_ADMIN_PRO_APP_CONF_={"VITE_GLOB_API_URL":baseUrl,"VITE_GLOB_WEB_TITLE":"m3u8DL_console"};Object.freeze(window._VBEN_ADMIN_PRO_APP_CONF_);Object.defineProperty(window,"_VBEN_ADMIN_PRO_APP_CONF_",{configurable:false,writable:false,});