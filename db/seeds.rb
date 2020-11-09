shade = User.create(username: "The Shade2430", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTeA7QIh9gwG8WFjRzlrAAJQRUEEqoVaSw7Kg&usqp=CAU", bio: "There's only one shot", password: "shade2430")

kid = User.create(username: "Kid0330", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQHeEnfbSTCxfTi6eymvPheJFERdc97nAAYSw&usqp=CAU", bio: "This is the way", password: "kid0330")

comic = User.create(username: "Comickid", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRths9Wbsgy4VopucBy1BVIOV8UeI2uC0RiGw&usqp=CAU", bio: "Comics are not for kids", password: "comickid")

Comic.create(title: "A brother's tale", image_url: "https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_limit,w_695/v1497210988/dvttplxqxrdtgy4i7fxz.png" , blurb:"Three brothers hide a serect from the wolrd and each other, but for how long will there secret reamin.", user_id: shade.id)

Comic.create(title: "A brother's tale 2", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR-CpWrhTwuf7c9s6YyrVzP6qVa5yESwGzLdQ&usqp=CAU" , blurb:"A brother secret comes to light. Will this be the end of their family bond.", user_id: shade.id)

Comic.create(title: "The Blonde", image_url:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1519892007l/38890617._SY475_.jpg" , blurb:"When the new gilr in the office shows up things seem to start going well a little too well for some. Will this group be able to hold it together or is there more than meets the eye.", user_id: kid.id)

Comic.create(title: "Dark Light", image_url:"https://img.pngio.com/dark-light-png-5-png-image-dark-light-png-1920_1080.png" , blurb:"Are some secret better left in the dark? This new reporters about to find out not every stroy is worth telling", user_id: comic.id)






