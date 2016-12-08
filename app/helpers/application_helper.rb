module ApplicationHelper
  def faqs
    f = []
    f.push([1, 'What is Pennvolvement?', 'Pennvolvement is a web platform for companies and organizations to post volunteer opportunities for University of Pennsylvania students.'])
    f.push([2, 'I am an organization. How do I use Pennvolvement?', 'Go to the home page and fill out your information to sign up. Then go to \'Create a Post\' to post your opportunity. To edit or delete your listing, vist my profile, where you can also update your information.'])
    f.push([3, 'I am a student. How do I use Pennvolvement?', 'There is no need to make an account. Simply browse using the opportunities tab. You may also search using the search bar or filter opportunities based on category.'])
    f.push([4, 'How can I have students sign up for my event?', 'Currently, we are just a matching service. So, it is important that you provide a relevant link when creating your event.'])
    f.push([5, 'Can I edit my event?', 'Yes, from the \'My Profile\' Page.'])
    f.push([6, 'Do I have to delete my own events after they have passed?', 'No, our system deletes them for you.'])
    f.push([7, 'Who runs this service?', 'PennLabs (http://www.pennlabs.org) developed this platform which was sponsored by the University of Pennsylvania Undergraduate Assembly.'])
  end
end
