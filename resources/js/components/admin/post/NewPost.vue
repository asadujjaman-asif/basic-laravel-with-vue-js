<template>
	<div>
		<section class="content">
      <div class="container-fluid">
        <div class="row justify-content-around">
          <!-- left column -->
          <div class="col-md-10">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add new post</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" @click.prevent="addNewPost()">
                <div class="card-body">
                  <div class="form-group">
                    <label for="posttitle">Add new post</label>
                    <input type="text" class="form-control" id="posttitle" placeholder="add new post" v-model="form.title" name="title" :class="{ 'is-invalid': form.errors.has('title') }">
                    <has-error :form="form" field="title"></has-error>
                  </div>
                  <div class="form-group">
                    <label for="shortdesc">Post short description</label>
                    <textarea rows="5" class="form-control" id="shortdesc" placeholder="short description" v-model="form.short_description" name="short_description" :class="{ 'is-invalid': form.errors.has('short_description') }"></textarea>
                    <has-error :form="form" field="short_description"></has-error>
                  </div>
                  <div class="form-group">
                    <label for="longdesc">Post long description</label>
                    <textarea rows="7" class="form-control" id="longdesc" placeholder="long description" v-model="form.long_description" name="long_description" :class="{ 'is-invalid': form.errors.has('long_description') }"></textarea>
                    <has-error :form="form" field="long_description"></has-error>
                  </div>
                  <div class="form-group">
                    <label for="longdesc">Select category</label>
                    	<select class="form-control" :class="{ 'is-invalid': form.errors.has('category_id') }" name="category_id" v-model="form.category_id">
                    		<option disabled value=""> Select one </option>
                    		<option v-for="category in getallCategory" :value="category.id">{{category.title}}</option>
                    	</select>
                    <has-error :form="form" field="category_id"></has-error>
                  </div>
                  <div class="form-group">
                    <input type="file"  name="photo" :class="{ 'is-invalid': form.errors.has('photo') }">
                    <has-error :form="form" field="photo"></has-error>
                  </div>
       
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            <!-- /.card -->

            <!-- /.card -->

            

          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
	</div>
</template>

<script>
    export default {
            name:"NewPost",
            data(){
            return {
                form: new Form({
                    title:'',
                    short_description:'',
                    long_description:'',
                    category_id:'',
                    photo:'',
                })
            	}
        	},
        	mounted(){
        		return this.$store.dispatch('allcategory') 
        	},
        	computed:{
	          getallCategory(){
	           return this.$store.getters.getCategory 
	          }
	        },
            methods:{
            	addNewPost(){
            		this.form.post('add-category')
            			.then((response)=>{
            				this.$router.push('/category-list')
							Toast.fire({
							  type: 'success',
							  title: 'Category added successfully'
							})
            			})
            			.catch(()=>{

            			})
            	}
            }
    }
</script>
<style scoped>
</style>