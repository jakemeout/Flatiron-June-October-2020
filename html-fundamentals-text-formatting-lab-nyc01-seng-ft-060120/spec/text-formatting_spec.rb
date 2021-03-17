require 'pry'

RSpec.describe 'index.html' do
  it 'contains <h1> opening and closing tags' do
    h1 = parsed_html.search('h1').first
    expect(h1).to_not be_nil, "No <h1> tag was found"
    expect(html_file_contents).to include('</h1>'), "Don't forget to include a closing </h1>"
  end

  it 'contains <h2> opening and closing tags' do
    h2 = parsed_html.search('h2').first
    expect(h2).to_not be_nil, "No <h2> tag was found"
    expect(html_file_contents).to include('</h2>'), "Don't forget to include a closing </h2>"
  end

  it 'contains <h3> opening and closing tags' do
    h3 = parsed_html.search('h3').first
    expect(h3).to_not be_nil, "No <h3> tag was found"
    expect(html_file_contents).to include('</h3>'), "Don't forget to include a closing </h3>"
  end

  it 'contains two sets of opening and closing <p> tags' do
    p = parsed_html.search('p')[0]
    expect(p).to_not be_nil, "No <p> tag was found"
    expect(html_file_contents).to include('</p>'), "Don't forget to include a closing </p>"

    p2 = parsed_html.search('p')[1]
    expect(p2).to_not be_nil, "A second <p> tag was not found"
    expect(html_file_contents).to include('</p>'), "Don't forget to include a closing </p>"
  end
end
