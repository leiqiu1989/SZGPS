define(function(require, exports, module) {
    var router = require('router');
    var docEvent = require('docEvent');
    var common = require('common');

    var app = {
        menuData: null,
        setUserName: function() {
            // 显示当前登录名
            $('.ja_userName').text(common.getCookie('username'));
        },
        changeMenu: function(href, isReload) {
            var me = this;
            // 菜单toggle
            $(".accordion .link").off().on('click', function() {
                $this = $(this), $next = $this.next();
                $next.slideToggle();
                $this.parent().toggleClass('open');
                $('.accordion').find('.submenu').not($next).slideUp().parent().removeClass('open');
            });
            // 菜单隐藏显示
            $('.js-toggleMenu').off().on('click', function() {
                var status = $(this).data('open');
                var property = {

                    calNum: ''
                };
                if (status) {
                    property.calNum = "220px";
                    status = false;
                } else {
                    property.calNum = "52px";
                    status = true;
                }
                $(this).data('open', status);
                $('.sidebar-content').animate({ width: property.calNum }, 1000);
                $('#main-content').animate({ 'paddingLeft': property.calNum }, 1000);
                if (status) {
                    me.initMenu(href, true);
                } else {
                    me.initMenu(href, false);
                }
                $('#sidebar-menu').toggleClass('sidebar sidebar-min')
                    // $('.vehicle-box').animate({ 'left': property.calNum }, 1000);
                    // if ($('.monitorList').size() > 0) {
                    //     $('.monitorList').animate({ 'left': property.calNum }, 1000);
                    // }
            });
            // 选中当前菜单项
            var currTarget = $('a[href="#' + href + '"');
            if (currTarget.size() > 0) {
                var $a = $(currTarget);
                if (isReload) {
                    $a.addClass('active');
                    $a.closest('.submenu').prev().click();
                } else {
                    $('.accordion .submenu > li > a').removeClass('active');
                    $a.addClass('active');
                }
            }
        },
        initMenu: function(href, expand) {
            var me = this;
            var data = this.menuData;
            require.async('./../tpl/menu/index', function(tpl) {
                $('#sidebar-menu').empty().html(template.compile(tpl)({ data: data, expand: expand || false }));
                if (href != 'authorize') {
                    me.changeMenu(href, true);
                }
                me.setUserName();
            });
        },
        _init: function() {
            var me = this;
            router.init({
                beforeLoad: function(mod, href) {
                    //登录页和其他页面的切换
                    if (mod !== 'login') {
                        var username = common.getCookie('username') || '';
                        if (!username) {
                            common.clearData();
                            window.location.hash = '#login/login';
                            return false;
                        }
                        if ($('#sidebar-menu > ul').length < 1) {
                            require.async('./../tpl/index/index', function(tpl) {
                                $('#contentBody').empty().html(template.compile(tpl)());
                                // 获取用户配置权限，初始化菜单
                                common.getUserMenu(function(data) {
                                    if (data.length > 0) {
                                        me.menuData = data;
                                        me.initMenu(href);
                                    } else {
                                        window.location.hash = '#authorize/index';
                                        return false;
                                    }
                                });
                            });
                        } else {
                            me.setUserName();
                            me.changeMenu(href, false);
                        }
                        // 清除监控
                        if (mod !== 'carMonitor') {
                            common.stopMonitorTimer();
                        }
                        // 清除历史位置查询参数
                        if (mod !== 'historyLocation' && mod !== 'carMonitor') {
                            common.removeLocationStorage('historyLocationParams');
                        }
                    }
                    return true;
                }
            }).run();
            // 监听document事件
            this._docEvent();
        },
        _docEvent: function() {
            docEvent.init();
        }
    };
    module.exports = app;
});