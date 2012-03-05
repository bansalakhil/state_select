# encoding: utf-8

module ActionView::Helpers::FormOptionsHelper

  # Return select and option tags for the given object and method, using state_options_for_select to generate the list of option tags.
  def state_select(object, method, country='US', options = {}, html_options = {})
    ActionView::Helpers::InstanceTag.new(object, method, self, options.delete(:object)).to_state_select_tag(country, options, html_options)
  end

  # Returns a string of option tags for states in a country. Supply a state name as +selected+ to
  # have it marked as the selected option tag.
  #
  # NOTE: Only the option tags are returned, you have to wrap this call in a regular HTML select tag.

  def state_options_for_select(selected = nil, country = 'US')
    state_options = "".html_safe
    if country
      state_options += options_for_select(eval(country.upcase+'_STATES'), selected)
    end
    return state_options
  end

  private

  US_STATES = [
    "Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado",
    "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho",
    "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana",
    "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota",
    "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada",
    "New Hampshire", "New Jersey", "New Mexico", "New York",
    "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon",
    "Pennsylvania", "Puerto Rico", "Rhode Island", "South Carolina",
    "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia",
    "Washington", "Washington D.C.", "West Virginia", "Wisconsin", "Wyoming"
  ] unless const_defined?("US_STATES")

  UK_STATES = [
    "Avon", "Bedfordshire", "Berkshire", "Borders", "Buckinghamshire",
    "Cambridgeshire", "Central", "Cheshire", "Cleveland", "Clwyd",
    "Cornwall", "County Antrim", "County Armagh", "County Down",
    "County Fermanagh", "County Londonderry", "County Tyrone", "Cumbria",
    "Derbyshire", "Devon", "Dorset", "Dumfries and Galloway", "Durham",
    "Dyfed", "East Sussex", "Essex", "Fife", "Gloucestershire", "Grampian",
    "Greater Manchester", "Gwent", "Gwynedd County", "Hampshire",
    "Herefordshire", "Hertfordshire", "Highlands and Islands",
    "Humberside", "Isle of Wight", "Kent", "Lancashire", "Leicestershire",
    "Lincolnshire", "Lothian", "Merseyside", "Mid Glamorgan", "Norfolk",
    "North Yorkshire", "Northamptonshire", "Northumberland",
    "Nottinghamshire", "Oxfordshire", "Powys", "Rutland", "Shropshire",
    "Somerset", "South Glamorgan", "South Yorkshire", "Staffordshire",
    "Strathclyde", "Suffolk", "Surrey", "Tayside", "Tyne and Wear",
    "Warwickshire", "West Glamorgan", "West Midlands", "West Sussex",
    "West Yorkshire", "Wiltshire", "Worcestershire"
  ] unless const_defined?("UK_STATES")

  INDIA_STATES = [
    "Andhra Pradesh",  "Arunachal Pradesh",  "Assam", "Bihar",
    "Chhattisgarh", "New Delhi", "Goa", "Gujarat", "Haryana",
    "Himachal Pradesh", "Jammu and Kashmir", "Jharkhand", "Karnataka",
    "Kerala", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya",
    "Mizoram", "Nagaland", "Orissa", "Punjab", "Rajasthan", "Sikkim",
    "Tamil Nadu", "Tripura", "Uttaranchal", "Uttar Pradesh", "West Bengal"
  ] unless const_defined?("INDIA_STATES")

  CANADA_STATES = [
    "Alberta", "British Columbia", "Manitoba", "New Brunswick",
    "Newfoundland", "Northwest Territories", "Nova Scotia", "Nunavut",
    "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan", "Yukon"
  ] unless const_defined?("CANADA_STATES")

  AUSTRALIA_STATES = [
    "Australian Capital Territory", "New South Wales", "Northern Territory",
    "Queensland", "South Australia", "Tasmania", "Victoria",
    "Western Australia"
  ] unless const_defined?("AUSTRALIA_STATES")

  SPAIN_STATES = [
      "Alava", "Albacete", "Alicante", "Almeria", "Asturias", "Avila",
      "Badajoz", "Barcelona", "Burgos", "Caceres", "Cadiz", "Cantrabria",
      "Castellon", "Ceuta", "Ciudad Real", "Cordoba", "Cuenca", "Girona",
      "Granada", "Guadalajara", "Guipuzcoa", "Huelva", "Huesca",
      "Islas Baleares", "Jaen", "La Coruna", "Leon", "Lleida", "Lugo",
      "Madrid", "Malaga", "Melilla", "Murcia", "Navarra", "Ourense",
      "Palencia", "Palmas, Las", "Pontevedra", "Rioja, La", "Salamanda",
      "Santa Cruz de Tenerife", "Segovia", "Sevila", "Soria", "Tarragona",
      "Teruel", "Toledo", "Valencia", "Valladolid", "Vizcaya", "Zamora",
      "Zaragoza"
    ] unless const_defined?("SPAIN_STATES")

  UGANDA_STATES = [
    "Abim", "Adjumani", "Amolatar", "Amuria", "Apac", "Arua", "Budaka",
    "Bugiri", "Bukwa", "Bulisa", "Bundibugyo", "Bushenyi", "Busia", "Busiki",
    "Butaleja", "Dokolo", "Gulu", "Hoima", "Ibanda", "Iganga", "Jinja",
    "Kaabong", "Kabale", "Kabarole", "Kaberamaido", "Kabingo", "Kalangala",
    "Kaliro", "Kampala", "Kamuli", "Kamwenge", "Kanungu", "Kapchorwa",
    "Kasese", "Katakwi", "Kayunga", "Kibale", "Kiboga", "Kilak", "Kiruhura",
    "Kisoro", "Kitgum", "Koboko", "Kotido", "Kumi", "Kyenjojo", "Lira",
    "Luwero", "Manafwa", "Maracha", "Masaka", "Masindi", "Mayuge", "Mbale",
    "Mbarara", "Mityana", "Moroto", "Moyo", "Mpigi", "Mubende", "Mukono",
    "Nakapiripirit", "Nakaseke", "Nakasongola", "Nebbi", "Ntungamo", "Oyam",
    "Pader", "Pallisa", "Rakai", "Rukungiri", "Sembabule", "Sironko",
    "Soroti", "Tororo", "Wakiso", "Yumbe"
  ] unless const_defined?("UGANDA_STATES")

  FRANCE_STATES = [
    "Alsace", "Aquitaine", "Auvergne", "Bourgogne", "Bretagne", "Centre",
    "Champagne-Ardenne", "Corse", "Franche-Comte", "Ile-de-France",
    "Languedoc-Roussillon", "Limousin", "Lorraine", "Midi-Pyrenees",
    "Nord-Pas-de-Calais", "Basse-Normandie", "Haute-Normandie",
    "Pays de la Loire", "Picardie", "Poitou-Charentes",
    "Provence-Alpes-Cote d'Azur", "Rhone-Alpes"
  ] unless const_defined?("FRANCE_STATES")

  GERMANY_STATES = [
    "Baden-Wurttemberg", "Bayern", "Berlin", "Brandenburg", "Bremen",
    "Hamburg", "Hessen", "Mecklenburg-Vorpommern", "Niedersachsen",
    "Nordrhein-Westfalen", "Rhineland-Pflaz", "Saarland", "Sachsen",
    "Sachsen-Anhalt", "Schleswig-Holstein", "Thuringen"
  ]  unless const_defined?("GERMANY_STATES")

  NETHERLANDS_STATES = [
    "Drenthe", "Flevoland", "Friesland", "Gelderland", "Groningen",
    "Limburg", "Noord-Brabant", "Noord-Holland", "Overijssel", "Utrecht",
    "Zeeland", "Zuid-Holland"
  ] unless const_defined?("NETHERLANDS_STATES")

  MEXICO_STATES = [
    "Aguascalientes", "Baja Californi", "Baja California Sur",
    "Campeche", "Chiapas", "Chihuahua", "Coahuila", "Colima", "Durango",
    "Guanajuato", "Guerrero", "Hidalgo", "Jalisco", "México", "Michoacán",
    "Morelos", "Nayarit", "Nuevo León", "Oaxaca", "Puebla", "Querétaro",
    "Quintana Roo", "San Luis Potosí", "Sinaloa", "Sonora", "Tabasco",
    "Tamaulipas", "Tlaxcala", "Veracruz", "Yucatán", "Zacatecas"
  ] unless const_defined?("MEXICO_STATES")

  POLAND_STATES = [
    "dolnośląskie", "kujawsko-pomorskie", "lubelskie", "lubuskie", "łódzkie",
    "małopolskie", "mazowieckie", "opolskie", "podkarpackie", "podlaskie",
    "pomorskie", "śląskie", "świętokrzyskie", "warmińsko-mazurskie",
    "wielkopolskie", "zachodniopomorskie"
  ] unless const_defined?("POLAND_STATES")
end

class ActionView::Helpers::InstanceTag


  def to_state_select_tag(country, options, html_options)
    html_options = html_options.stringify_keys
    add_default_name_and_id(html_options)
    value = value(object)
    selected_value = options.has_key?(:selected) ? options[:selected] : value
    content_tag("select", add_options(state_options_for_select(selected_value, country), options, value), html_options)
  end
end


class ActionView::Helpers::FormBuilder
  def state_select(method, country = 'US', options = {}, html_options = {})
    @template.state_select(@object_name, method, country, options.merge(:object => @object), html_options)
  end
end

