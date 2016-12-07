module EventsHelper
  def cause
    # TODO: Move to database!!!
    causes = []
    causes.push(['Advocacy & Humanities', 'advocacy.png'])
    causes.push(['Animals', 'animal.png'])
    causes.push(['Arts & Culture', 'art.png'])
    causes.push(['Children & Youth', 'children_youth.png'])
    causes.push(['Community', 'community.png'])
    causes.push(['Computer & Technology', 'computer and tech.png'])
    causes.push(['Crisis Support', 'crisisr.png'])
    causes.push(['Disaster Relief', 'disaster.png'])
    causes.push(['Education & Literacy', 'education.png'])
    causes.push(['Emergency & Safety', 'emergency1.png'])
    causes.push(['Employment', 'employment.png'])
    causes.push(['Environment', 'environment.png'])
    causes.push(['Health & Medicine', 'health and medicine.png'])
    causes.push(['Homeless & Housing', 'homeless.png'])
    causes.push(['Hunger', 'hunger.png'])
    causes.push(['Immigrants', 'immigrant.png'])
    causes.push(['International', 'international.png'])
    causes.push(['Justice & Legal', 'justice.png'])
    causes.push(['LGBT', 'lgbt.png'])
    causes.push(['Media & Broadcasting', 'media.png'])
    causes.push(['People with Disabilities', 'peoplewithdisabilities.png'])
    causes.push(['Politics', 'politics.png'])
    causes.push(['Race & Ethnicity', 'raceethnicity.png'])
    causes.push(['Sports', 'sports.png'])
    causes.push(['Veterans', 'veteran.png'])
    causes.push(['Women', 'women.png'])
  end

  def get_pictures(arr)
    a = []
    arr.each do |x|
      b = x.tr('-', ' ')
      a.push("#{b}.png")
    end
    a
  end

  def get_cause_from_pic(p)
    b = ''
    cause.each do |x|
      b = x[0] if x[1] == p
    end
    b
  end
end
