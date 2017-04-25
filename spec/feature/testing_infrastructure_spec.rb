feature 'Testing infrastructure' do
  scenario 'Can fill in forms' do
    visit('/')
    fill_in :player_1_name, with: 'Unai'
    fill_in :player_2_name, with: 'Sulaiman'
    click_button 'Submit'
    expect(page).to have_content 'Unai vs. Sulaiman'
  end

  scenario "Can see Hit Points" do
    visit('/')
    fill_in :player_1_name, with: 'Unai'
    fill_in :player_2_name, with: 'Sulaiman'
    click_button 'Submit'
    expect(page).to have_content 'Sulaiman: 100/100HP'
  end
end
