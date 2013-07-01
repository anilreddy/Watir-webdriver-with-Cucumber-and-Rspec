class HomePage
  include PageObject

  page_url 'http://puppies.herokuapp.com'

  divs(:puppy_name, :class => 'name')
  buttons(:view_details, :value => 'View Details')

  def adopt(name = "Brook")
    index = puppy_names.index(name)
    view_details_elements[index].click
  end

  private

  def puppy_names
    puppy_name_elements.map(&:text)
  end

end
