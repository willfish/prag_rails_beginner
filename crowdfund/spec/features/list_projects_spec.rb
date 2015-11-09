require 'spec_helper'

describe 'Viewing the list of projects' do
  it 'shows three project names' do
    visit(projects_url)
    expect(page).to have_text("#{Project.count} Projects")
  end
end
