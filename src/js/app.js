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
        getHash: function() {
            var hash = window.location.hash.replace('#', ''),
                arr = hash.split('/'),
                len = arr.length;

            if (hash.indexOf('=') == -1) {
                return hash;
            }

            return arr.splice(0, len - 1).join('/');
        },
        adjustBox: function() {
            var expand = $('.js-toggleMenu').data('expand');
            var calNum = expand ? '220px' : '52px';
            $('.sidebar-content').css('width', calNum);
            $('#main-content').css('paddingLeft', calNum);
            $('.vehicle-box').animate({ 'left': calNum }, 500);
            if ($('.monitorList').size() > 0) {
                $('.monitorList').animate({ 'left': calNum }, 500);
            }
            var mapLeft = '18%';
            if (expand) {
                mapLeft = '25%';
            }
            $('.mapTools').css('left', mapLeft);
        },
        event: function() {
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
                var href = me.getHash();
                // 菜单是否展开
                var expand = $(this).data('expand');
                expand = !!!expand
                $(this).data('expand', expand);
                me.initMenu(href, expand);
                $('#sidebar-menu').toggleClass('sidebar sidebar-min');
                me.adjustBox();
            });
        },
        // 选中菜单项
        selectMenu: function(href) {
            var me = this;
            var expand = $('.js-toggleMenu').data('expand');
            var currTarget = $('a[href="#' + href + '"');
            if (currTarget.size() > 0) {
                var $submenu = $(currTarget).closest('ul.submenu');
                if (!expand) {
                    var li = $(currTarget).parent();
                    var menuLi = $(li).parents('li');
                    $('ul.submenu > li').removeClass('active');
                    $(li).addClass('active');
                    if (!menuLi.hasClass('active')) {
                        menuLi.siblings().removeClass('active');
                        menuLi.addClass('active');
                    }
                } else {
                    $submenu.show();
                    $submenu.parent().addClass('open');
                    $('.accordion .submenu > li > a').removeClass('active');
                    $(currTarget).addClass('active');
                    if (href === 'carMonitor/index') {
                        setTimeout(function() {
                            me.adjustBox();
                        }, 100);
                    }
                }
            }
        },
        // 初始化菜单
        initMenu: function(href, expand) {
            var me = this;
            var data = this.menuData;
            require.async('./../tpl/menu/index', function(tpl) {
                $('#sidebar-menu').empty().html(template.compile(tpl)({ data: data, expand: expand }));
                if (href != 'authorize') {
                    me.selectMenu(href);
                }
                me.setUserName();
                me.event(href);
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
                                        me.initMenu(href, false);
                                    } else {
                                        window.location.hash = '#authorize/index';
                                        return false;
                                    }
                                });
                            });
                        } else {
                            me.setUserName();
                            me.selectMenu(href);
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