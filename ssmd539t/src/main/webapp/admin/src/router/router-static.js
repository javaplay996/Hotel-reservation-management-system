import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import kefangxinxi from '@/views/modules/kefangxinxi/list'
    import fangjianfenlei from '@/views/modules/fangjianfenlei/list'
    import kefangdingcan from '@/views/modules/kefangdingcan/list'
    import ruzhuxinxi from '@/views/modules/ruzhuxinxi/list'
    import yudingfangjiandingdan from '@/views/modules/yudingfangjiandingdan/list'
    import jiudiankefu from '@/views/modules/jiudiankefu/list'
    import yonghu from '@/views/modules/yonghu/list'
    import chat from '@/views/modules/chat/list'
    import kefangxuzu from '@/views/modules/kefangxuzu/list'
    import messages from '@/views/modules/messages/list'
    import config from '@/views/modules/config/list'
    import tuidingxinxi from '@/views/modules/tuidingxinxi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '酒店新闻',
        component: news
      }
      ,{
	path: '/kefangxinxi',
        name: '客房信息',
        component: kefangxinxi
      }
      ,{
	path: '/fangjianfenlei',
        name: '房间分类',
        component: fangjianfenlei
      }
      ,{
	path: '/kefangdingcan',
        name: '客房订餐',
        component: kefangdingcan
      }
      ,{
	path: '/ruzhuxinxi',
        name: '入住信息',
        component: ruzhuxinxi
      }
      ,{
	path: '/yudingfangjiandingdan',
        name: '预订房间订单',
        component: yudingfangjiandingdan
      }
      ,{
	path: '/jiudiankefu',
        name: '酒店客服',
        component: jiudiankefu
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/chat',
        name: '酒店客服',
        component: chat
      }
      ,{
	path: '/kefangxuzu',
        name: '客房续租',
        component: kefangxuzu
      }
      ,{
	path: '/messages',
        name: '留言板管理',
        component: messages
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/tuidingxinxi',
        name: '退订信息',
        component: tuidingxinxi
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
