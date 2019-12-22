<template>
	<span id="blogsidebar">
		<div class="span4">
            <aside class="right-sidebar">
              <div class="widget">
                <form class="form-search">
                  <input placeholder="Type something" type="text" class="input-medium search-query">
                  <button type="submit" class="btn btn-square btn-theme">Search</button>
                </form>
              </div>
              <div class="widget">
                <h5 class="widgetheading">Categories</h5>
                <ul class="cat">
                  <li v-for="category in allcategories"><i class="icon-angle-right"></i><router-link :to="`/categories/${category.id}`">{{ category.title }}</router-link><span> (20)</span></li>
                 
                </ul>
              </div>
              <div class="widget">
                <h5 class="widgetheading">Latest posts</h5>
                <ul class="recent">
                  <li v-for="(post,index) in blogposts" v-if="index<5">
                    <img :src="`assets/postiamges/${post.photo}`" class="pull-left" alt="" style="height:60px;width:80px"/>
                    <h6><router-link :to="`/postdetails/${post.id}`">{{post.title}}</router-link></h6>
                    <p>
                      {{post.short_description | sortlenght(80,"....")}}
                    </p>
                  </li>
                  
                </ul>
              </div>
              
            </aside>
          </div>
	</span>
</template>

<script>
    export default {
      computed:{
         blogposts(){
            return this.$store.getters.getBlogpost
          },
        allcategories(){
          return this.$store.getters.allCat
        }
      },
      mounted() {
      this.$store.dispatch('getallblogpost'),
        this.$store.dispatch('allcategories')
      }
    }
</script>