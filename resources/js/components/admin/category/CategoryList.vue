<template>
	<div>
		<section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Category List</h3>
              <div class="card-tools btn btn-primary">

              <router-link to="/add-category" style="color:#fff"> Add Category </router-link>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>SL</th>
                  <th>Category Name</th>
                  <th>Action</th>
                 
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>01</td>
                  <td>
                  </td>
                  <td>
                  	<a href="">Edit</a>
                  	<a href="">Delete</a>
                  </td>
                  
                </tr>
                <tr>
                  <td>02</td>
                  <td>Category Two
                  </td>
                  <td>
                  	<a href="">Edit</a>
                  	<a href="">Delete</a>
                  </td>
                  
                </tr>
            
                </tbody>
               
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->

          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
	</div>
</template>

<script>
    export default {
      name:"CategoryList",
        mounted() {
            
        },
        computed:{
          getallCategpry(){
            return this.$store.dispatch('allcategory')
          }
        },
        method:{

        }
    }
</script>
<style scoped>
</style>