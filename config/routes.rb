Rails.application.routes.draw do



  # Routes for the Competition resource:

  # CREATE
  post("/insert_competition", { :controller => "competitions", :action => "create" })
          
  # READ
  get("/competitions", { :controller => "competitions", :action => "index" })
  
  get("/competitions/:path_id", { :controller => "competitions", :action => "show" })
  
  # UPDATE
  
  post("/modify_competition/:path_id", { :controller => "competitions", :action => "update" })
  
  # DELETE
  get("/delete_competition/:path_id", { :controller => "competitions", :action => "destroy" })

  #------------------------------

  # Routes for the League resource:

  # CREATE
  post("/insert_league", { :controller => "leagues", :action => "create" })
          
  # READ
  get("/leagues", { :controller => "leagues", :action => "index" })
  
  get("/leagues/:path_id", { :controller => "leagues", :action => "show" })
  
  # UPDATE
  
  post("/modify_league/:path_id", { :controller => "leagues", :action => "update" })
  
  # DELETE
  get("/delete_league/:path_id", { :controller => "leagues", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
