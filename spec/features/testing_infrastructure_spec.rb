feature 'testing infrastructure' do
  scenario 'checks that page is working' do
  visit '/'
  expect(page).to have_content("Welcome to Battle")
  end
end
