import AdminHome from './components/admin/AdminHome.vue'
import CategoryList from './components/admin/category/CategoryList.vue'
import AddCategory from './components/admin/category/NewCategory.vue'
import EditCategory from './components/admin/category/EditeCategory.vue'
//Post Component
import PostList from './components/admin/post/PostList.vue'
import AddPost from './components/admin/post/NewPost.vue'
import EditPost from './components/admin/post/EditPost.vue'
//Start here frontend component 
import PublicHome from './components/public/PublicHome.vue'
import BlogPost from './components/public/blog/BlogPost.vue'
export const routes = [
  { 
  	path: '/home', 
  	component: AdminHome 
  },
  { 
  	path: '/category-list', 
  	component: CategoryList 
  },
  {
        path:'/add-category',
        component:AddCategory
  },
  {
        path:'/edit-category/:categoryid',
        component:EditCategory
  },
  //Post Component
  { 
    path: '/post-list', 
    component: PostList 
  },
  {
        path:'/add-post',
        component:AddPost
  },
  {
        path:'/edit-post/:postid',
        component:EditPost
  },
  //Start here frontend router
  {
        path:'/',
        component:PublicHome
  },
  {
        path:'/blog',
        component:BlogPost
  },
];
