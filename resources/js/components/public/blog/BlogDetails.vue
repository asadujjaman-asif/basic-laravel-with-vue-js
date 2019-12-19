<template>
	<div id="singlepost">
		<section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Post right sidebar</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">Blog</a><i class="icon-angle-right"></i></li>
              <li class="active">Blog post right sidebar</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span8">
            <article>
              <div class="row">
                <div class="span8">
                  <div class="post-image">
                    <div class="post-heading">
                      <h3><a href="#">{{singlepost.title}}</a></h3>
                    </div>
                    <img :src="`assets/postiamges/${singlepost.photo}`" alt="" />
                  </div>
                  <p>{{singlepost.long_description}}
                  </p>
                  <div class="bottom-article">
                    <ul class="meta-post">
                      <li v-if="singlepost.user"><i class="icon-user"></i><a href="#"> {{singlepost.user.name}}</a></li>
                      <li v-if="singlepost.category"><i class="icon-folder-open"></i><a href="#"> {{singlepost.category.title}}</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </article>
            
          </div>
          <BlogSidebar/>
        </div>
      </div>
    </section>
	</div>
</template>

<script>
	import BlogSidebar from "./BlogSidebar.vue"
    export default {
    	components:{
    		BlogSidebar
    	},
    	computed:{
    		singlepost(){
    			return this.$store.getters.singlePost
    		}
    	},
    	methods:{

    	},
        mounted() {
        		this.$store.dispatch('postdetails',this.$route.params.pid)
            console.log('Component mounted.')
        }
    }
</script>