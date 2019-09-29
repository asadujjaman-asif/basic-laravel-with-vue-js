export default {
	state:{
		category:"get category"
	},
	getters:{
		getCategory(state){
			return state.category
		}
	},
	actions:{
		allcategory(state,payload){
			axios.get('/category')
			.then((response)=>{
				console.log(response.data)
			})
		}
	},
	mutations:{

	}
}