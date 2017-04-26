feature 'entering_names' do
  scenario 'Can fill in forms' do
    sign_in_and_play
    expect(page).to have_content 'Unai vs. Sulaiman'
  end
end
