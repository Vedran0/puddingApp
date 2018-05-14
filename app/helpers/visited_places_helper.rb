module VisitedPlacesHelper

  def all_countries
    ["Bhutan", "Democratic Republic of the Congo", "Liechtenstein", "Maldives", "Sudan", "Zimbabwe", "Mauritania", "Mozambique", "Nigeria", "Swaziland", "Tanzania", "Iraq", "Guyana", "Namibia", "Senegal", "Turkmenistan", "Afghanistan", "Andorra", "Fiji", "Gabon", "Uzbekistan", "Cameroon", "Cuba", "Faroe Islands", "El Salvador", "Caribbean", "Ethiopia", "Mongolia", "Puerto Rico", "Samoa", "Myanmar", "Nicaragua", "Seychelles", "Tajikistan", "Dominican Republic", "Guinea", "Barbados", "CI", "Laos", "Libya", "Panama", "Bahrain", "Benin", "Ghana", "Haiti", "Montenegro", "Somalia", "Syria", "Ecuador", "Honduras", "Madagascar", "Papua New Guinea", "Tunisia", "Angola", "Botswana", "Cyprus", "Algeria", "Bahamas", "New Caledonia", "Uganda", "Yemen", "Zambia", "Antarctica", "Paraguay", "Jamaica", "Palestine", "Bolivia", "Bosnia and Herzegovina", "Vietnam", "Kenya", "Luxembourg", "Niger", "Kuwait", "Hawaii", "Scotland", "Cambodia", "Uruguay", "Kyrgyzstan", "Saudi Arabia", "Indonesia", "Azerbaijan", "United Arab Emirates", "Mauritius", "Morocco", "Albania", "South Korea", "Kazakhstan", "Macedonia", "Venezuela", "Taiwan", "Qatar", "Jordan", "Iceland", "Guatemala", "Costa Rica", "Hong Kong", "San Marino", "Colombia", "Moldova", "Armenia", "Malta", "Nepal", "Lebanon", "Malaysia", "Serbia", "Peru", "Trinidad and Tobago", "Lithuania", "Estonia", "Georgia", "Iran", "Chile", "Latvia", "Thailand", "Egypt", "Slovenia", "Mexico", "Belarus", "Slovakia", "Sri Lanka", "Croatia", "Philippines", "Bangladesh", "Turkey", "Romania", "Italy", "South Africa", "Hungary", "Pakistan", "Portugal", "Ukraine", "Greece", "Oman", "Argentina", "Singapore", "Bulgaria", "Japan", "Czech Republic", "Ireland", "China", "Finland", "Brazil", "Norway", "Austria", "Denmark", "Belgium", "New Zealand", "Spain", "Switzerland", "Russia", "Poland", "Israel", "Sweden", "Netherlands", "France", "Australia", "Canada", "India", "Germany", "United Kingdom", "United States", "Greenland"]
  end

  def available_countries
    (all_countries - VisitedPlace.pluck(:name)).sort
  end

  def visited_places
    VisitedPlace.pluck(:name).each_slice(1).to_a
  end

end
