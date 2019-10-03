<template>
	<div>
		<section class="content">
      <div class="container-fluid">
        <div class="row justify-content-around">
          <!-- left column -->
          <div class="col-md-6">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add new category</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" @submit.prevent="updateCategory()">
                <div class="card-body">
                  <div class="form-group">
                    <label for="addcategory">Edit category</label>
                    <input type="text" class="form-control" id="addcategory" placeholder="add new category" v-model="form.title" name="title" :class="{ 'is-invalid': form.errors.has('title') }">
                    <has-error :form="form" field="title"></has-error>
                  </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Update</button>
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
            name:"NewCategory",
            mounted(){
            	axios.get(`/edit-category/${this.$route.params.categoryid}`)
            	.then((response)=>{
            		this.form.fill(response.data.category)
            	})
            },
            data(){
            return {
                form: new Form({
                    title:''
                })
            }
        	},
            methods:{
            	updateCategory(){
            		this.form.post(`/update-category/${this.$route.params.categoryid}`)
            			.then((response)=>{
            				this.$router.push('/category-list')
							Toast.fire({
							  type: 'success',
							  title: 'Category updated successfully'
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