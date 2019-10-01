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
                <tr v-for="(category,index) in getallCategory" :key="category.id">
                  <td>{{index+1}}</td>
                  <td>{{category.title}}
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
           return this.$store.dispatch('allcategory') 
        },
        computed:{
          getallCategory(){
           return this.$store.getters.getCategory 
          }
        },
        methods:{

        }
    }
</script>
<style scoped>
</style>