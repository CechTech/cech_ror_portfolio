10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Aenean fermentum risus id tortor. Nullam at arcu a est sollicitudin euismod. Fusce aliquam vestibulum ipsum. Mauris suscipit, ligula sit amet pharetra semper, nibh ante cursus purus, vel sagittis velit mauris vel metus. Mauris dolor felis, sagittis at, luctus sed, aliquam non, tellus. Sed vel lectus. Donec odio tempus molestie, porttitor ut, iaculis quis, sem. Nunc tincidunt ante vitae massa. Quisque porta. Nunc auctor. Maecenas sollicitudin. Aliquam id dolor. Aliquam erat volutpat. Phasellus et lorem id felis nonummy placerat. In dapibus augue non sapien. Sed elit dui, pellentesque a, faucibus vel, interdum nec, diam. In dapibus augue non sapien. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Nunc tincidunt ante vitae massa. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Donec quis nibh at felis congue commodo. Vivamus ac leo pretium faucibus. Ut tempus purus at lorem. Nulla non lectus sed nisl molestie malesuada. Donec iaculis gravida nulla. Aliquam erat volutpat. Pellentesque ipsum. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Maecenas lorem. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo."
  )
end

puts "10 blog post created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My great service",
    body: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla accumsan, elit sit amet varius semper, nulla mauris mollis quam, tempor suscipit diam nulla vel leo. Aenean fermentum risus id tortor. Nullam at arcu a est sollicitudin euismod. Fusce aliquam vestibulum ipsum. Mauris suscipit, ligula sit amet pharetra semper, nibh ante cursus purus, vel sagittis velit mauris vel metus. Mauris dolor felis, sagittis at, luctus sed, aliquam non, tellus. Sed vel lectus. Donec odio tempus molestie, porttitor ut, iaculis quis, sem. Nunc tincidunt ante vitae massa. Quisque porta. Nunc auctor. Maecenas sollicitudin. Aliquam id dolor. Aliquam erat volutpat.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x150"
  )
end

puts "9 portfolio items created"
