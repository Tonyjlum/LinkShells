User.destroy_all
puts "Destroy all user"

User.create(email: "tonyjlum@gmail.com", password: "greentea", age: 29, username: "Mumbles", profile_img: "https://yt3.ggpht.com/a-/AN66SAxPCaupIFF2bzXdkTMhOgP9G-RyGrwut6nEAw=s900-mo-c-c0xffffffff-rj-k-no")

User.create(email: "spyearwood@yahoo.com", password: "yearwood", age: 29, username: "SeanWhy", profile_img: "https://lh4.googleusercontent.com/-jBslN031COg/AAAAAAAAAAI/AAAAAAAAACM/037Hr2Z_9Uw/photo.jpg")
