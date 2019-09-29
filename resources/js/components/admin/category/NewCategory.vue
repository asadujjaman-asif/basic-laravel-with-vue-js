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
              <form role="form" @click.prevent="addCategory()">
                <div class="card-body">
                  <div class="form-group">
                    <label for="addcategory">Add new category</label>
                    <input type="email" class="form-control" id="addcategory" placeholder="add new category" v-model="form.cat_name" name="cat_name" :class="{ 'is-invalid': form.errors.has('cat_name') }">
                    <has-error :form="form" field="cat_name"></has-error>
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
            name:"NewCategory",
            data(){
            return {
                form: new Form({
                    cat_name:''
                })
            }
        	},
            methods:{
            	addCategory(){
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