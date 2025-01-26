# db/seeds.rb
events_data = [
  {
    name: "Tech Innovation Summit",
    description: "Annual conference exploring cutting-edge technologies and digital transformation strategies.",
    date: DateTime.new(2024, 6, 15, 9, 0, 0)
  },
  {
    name: "Startup Founders Networking Gala",
    description: "Exclusive networking event for entrepreneurs and venture capitalists to connect and share insights.",
    date: DateTime.new(2024, 7, 22, 18, 30, 0)
  },
  {
    name: "AI and Machine Learning Workshop",
    description: "Hands-on technical workshop for developers and data scientists to learn advanced AI techniques.",
    date: DateTime.new(2024, 8, 10, 10, 0, 0)
  },
  {
    name: "Sustainable Business Leadership Conference",
    description: "International conference discussing environmental strategies and sustainable business practices.",
    date: DateTime.new(2024, 9, 5, 8, 45, 0)
  },
  {
    name: "Digital Marketing Trends Seminar",
    description: "Comprehensive seminar covering the latest digital marketing strategies and emerging trends.",
    date: DateTime.new(2024, 10, 18, 14, 0, 0)
  },
  {
    name: "Cybersecurity Global Forum",
    description: "Gathering of top cybersecurity experts discussing global threats and innovative protection strategies.",
    date: DateTime.new(2024, 11, 12, 11, 15, 0)
  }
]

events_data.each do |event_attrs|
  Event.create!(
    name: event_attrs[:name],
    description: event_attrs[:description],
    date: event_attrs[:date],
    creator: User.first
  )
end
