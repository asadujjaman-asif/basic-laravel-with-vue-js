import AdminHome from './components/admin/AdminHome.vue'
import CategoryList from './components/admin/category/CategoryList.vue'
import AddCategory from './components/admin/category/NewCategory.vue'
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
];