module ProjectFrontmatterPlugin
  class ProjectFrontmatterGenerator < Jekyll::Generator
    safe true

    def generate(site)
      site.pages.each do |page|
        if !page.data['image']
            if page.data['project'] && page.data['project']['image']
                page.data['image'] = page.data['project']['image']
            end
        end
        if !page.data['description']
            if page.data['project'] && page.data['project']['description']
                page.data['description'] = page.data['project']['description']
            end
        end
      end
    end
  end
end