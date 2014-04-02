xml.instruct!
#(
#      "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9",
#      "xmlns:xsi" => "http://www.w3.org/2001/XMLSchema-instance",
#      "xsi:schemaLocation"=>"http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd"
xml.urlset do
  xml.url do
    xml.loc 'http://tinycodefactory.com/'
    xml.changefreq "daily"
  end
  xml.url do
    xml.loc 'http://tinycodefactory.com/about'
    xml.changefreq "daily"
  end
  xml.url do
    xml.loc 'http://tinycodefactory.com/contact'
    xml.changefreq "daily"
  end
  xml.url do
    xml.loc 'http://tinycodefactory.com/expertise'
    xml.changefreq "daily"
  end
  xml.url do
    xml.loc 'http://tinycodefactory.com/work'
    xml.changefreq "daily"
  end

  xml.url do
    xml.loc 'http://tinycodefactory.com/projects/commentarybox'
    xml.changefreq "daily"
  end
  xml.url do
    xml.loc 'http://tinycodefactory.com/projects/qavs'
    xml.changefreq "daily"
  end
  xml.url do
    xml.loc 'http://tinycodefactory.com/projects/chefnote'
    xml.changefreq "daily"
  end
  xml.url do
    xml.loc 'http://tinycodefactory.com/projects/boxedup'
    xml.changefreq "daily"
  end
  xml.url do
    xml.loc 'http://tinycodefactory.com/projects/sayt'
    xml.changefreq "daily"
  end
end
