User.create!(
  email: "t@t.t",
  password: "tttttt",
  password_confirmation: "tttttt",
  name: "Admin",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "user@example.com",
  password: "tttttt",
  password_confirmation: "tttttt",
  name: "Regular User"
)

puts "1 Regular user created"

Topic.create!(
  title: "Ruby on Rails"
)

Topic.create!(
  title: "GSAP"
)

Topic.create!(
  title: "CSS"
)

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Aenean fermentum risus id tortor. Nullam at arcu a est sollicitudin euismod. Fusce aliquam vestibulum ipsum. Mauris suscipit, ligula sit amet pharetra semper, nibh ante cursus purus, vel sagittis velit mauris vel metus. Mauris dolor felis, sagittis at, luctus sed, aliquam non, tellus. Sed vel lectus. Donec odio tempus molestie, porttitor ut, iaculis quis, sem. Nunc tincidunt ante vitae massa. Quisque porta. Nunc auctor. Maecenas sollicitudin. Aliquam id dolor. Aliquam erat volutpat. Phasellus et lorem id felis nonummy placerat. In dapibus augue non sapien. Sed elit dui, pellentesque a, faucibus vel, interdum nec, diam. In dapibus augue non sapien. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Nunc tincidunt ante vitae massa. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Donec quis nibh at felis congue commodo. Vivamus ac leo pretium faucibus. Ut tempus purus at lorem. Nulla non lectus sed nisl molestie malesuada. Donec iaculis gravida nulla. Aliquam erat volutpat. Pellentesque ipsum. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Maecenas lorem. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
    topic_id: Topic.last.id,
    status: 1
  )
end

puts "10 blog post created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Aenean fermentum risus id tortor. Nullam at arcu a est sollicitudin euismod. Fusce aliquam vestibulum ipsum. Mauris suscipit, ligula sit amet pharetra semper, nibh ante cursus purus, vel sagittis velit mauris vel metus. Mauris dolor felis, sagittis at, luctus sed, aliquam non, tellus. Sed vel lectus. Donec odio tempus molestie, porttitor ut, iaculis quis, sem. Nunc tincidunt ante vitae massa. Quisque porta. Nunc auctor. Maecenas sollicitudin. Aliquam id dolor. Aliquam erat volutpat.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x150"
  )
end

puts "8 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created"
