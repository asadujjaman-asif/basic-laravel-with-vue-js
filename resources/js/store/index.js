export default {
	state:{
		category:[],
		post:[],
		blogpost:[],
	},
	getters:{
		getCategory(state){
			return state.category
		},
		getAllpost(state){
			return state.post
		},
		getBlogpost(state){
			return state.blogpost
		}
	},
	actions:{
		allcategory(context){
			axios.get('/category')
			.then((response)=>{
				context.commit('categories',response.data.categories)
			})
		},
		getallpost(context){
			axios.get('/post')
			.then((response)=>{
				context.commit('allposts',response.data.posts)
			})
		},
		getallblogpost(context){
			axios.get('/blogpost')
			.then((response)=>{
				context.commit('getallblogpost',response.data.posts)
			})
		}
	},
	mutations:{
		categories(state,data){
			return state.category=data
		},
		allposts(state,data){
			return state.post = data
		},
		getallblogpost(state,data){
			return state.blogpost=data
		}
	}
}