<template>
	<div>
		<!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
         
          <!-- /.card -->

          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Post list</h3>
              <div class="card-tools btn btn-primary">

                    <router-link to="/add-post" style="color:#fff"> Add Post </router-link>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>SL</th>
                  <th>User name</th>
                  <th>Category Name</th>
                  <th>Post title</th>
                  <th>Post Description</th>
                  <th>Photo</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <tr v-for="(post,index) in allpost">
                  <td>{{index+1}}</td>
                  <td v-if="post.user">{{post.user.name}}
                  </td>
                  <td>Category name</td>
                  
                  <td >{{post.title}}</td>
                  <td>{{post.long_description | sortlenght(50,'...')}}</td>
                  <td><img :src="post.photo" width="80" height="60"></td>
                  <td>X</td>
                </tr>
                
                </tbody>
                
              </table>
            </div>
            <!-- /.card-body -->
          </div>
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
      name:"PostList",
        mounted() {
           return this.$store.dispatch('getallpost')
        },
        computed:{
          allpost(){
           return this.$store.getters.getAllpost 
          }
        },
        methods:{
          
        }
    }
</script>
