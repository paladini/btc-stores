Category.create!([
  {name: "Electronics", slug: "electronics"},
  {name: "Clothing & Accessories", slug: "clothing-accessories"},
  {name: "Automotive", slug: "automotive"},
  {name: "Software & Games", slug: "software-games"},
  {name: "Music", slug: "music"},
  {name: "Books and Reading", slug: "books-and-reading"},
  {name: "Home and Garden", slug: "home-and-garden"},
  {name: "Toys", slug: "toys"},
  {name: "Sports", slug: "sports"},
  {name: "Health & Personal Care", slug: "health-personal-care"},
  {name: "Miscellaneous", slug: "miscellaneous"},
  {name: "Food", slug: "food"}
])
Country.create!([
  {short_name: "AL", name: "Albania"},
  {short_name: "DZ", name: "Algeria"},
  {short_name: "AS", name: "American Samoa"},
  {short_name: "AD", name: "Andorra"},
  {short_name: "AO", name: "Angola"},
  {short_name: "AI", name: "Anguilla"},
  {short_name: "AQ", name: "Antarctica"},
  {short_name: "AG", name: "Antigua and Barbuda"},
  {short_name: "AR", name: "Argentina"},
  {short_name: "AM", name: "Armenia"},
  {short_name: "AW", name: "Aruba"},
  {short_name: "AU", name: "Australia"},
  {short_name: "AT", name: "Austria"},
  {short_name: "AZ", name: "Azerbaijan"},
  {short_name: "BS", name: "Bahamas"},
  {short_name: "BH", name: "Bahrain"},
  {short_name: "BD", name: "Bangladesh"},
  {short_name: "BB", name: "Barbados"},
  {short_name: "BY", name: "Belarus"},
  {short_name: "BE", name: "Belgium"},
  {short_name: "BZ", name: "Belize"},
  {short_name: "BJ", name: "Benin"},
  {short_name: "BM", name: "Bermuda"},
  {short_name: "BT", name: "Bhutan"},
  {short_name: "BO", name: "Bolivia"},
  {short_name: "BA", name: "Bosnia and Herzegovina"},
  {short_name: "BW", name: "Botswana"},
  {short_name: "BV", name: "Bouvet Island"},
  {short_name: "BR", name: "Brazil"},
  {short_name: "BQ", name: "British Antarctic Territory"},
  {short_name: "IO", name: "British Indian Ocean Territory"},
  {short_name: "VG", name: "British Virgin Islands"},
  {short_name: "BN", name: "Brunei"},
  {short_name: "BG", name: "Bulgaria"},
  {short_name: "BF", name: "Burkina Faso"},
  {short_name: "BI", name: "Burundi"},
  {short_name: "KH", name: "Cambodia"},
  {short_name: "CM", name: "Cameroon"},
  {short_name: "CA", name: "Canada"},
  {short_name: "CT", name: "Canton and Enderbury Islands"},
  {short_name: "CV", name: "Cape Verde"},
  {short_name: "KY", name: "Cayman Islands"},
  {short_name: "CF", name: "Central African Republic"},
  {short_name: "TD", name: "Chad"},
  {short_name: "CL", name: "Chile"},
  {short_name: "CN", name: "China"},
  {short_name: "CX", name: "Christmas Island"},
  {short_name: "CC", name: "Cocos [Keeling] Islands"},
  {short_name: "CO", name: "Colombia"},
  {short_name: "KM", name: "Comoros"},
  {short_name: "CG", name: "Congo - Brazzaville"},
  {short_name: "CD", name: "Congo - Kinshasa"},
  {short_name: "CK", name: "Cook Islands"},
  {short_name: "CR", name: "Costa Rica"},
  {short_name: "HR", name: "Croatia"},
  {short_name: "CU", name: "Cuba"},
  {short_name: "CY", name: "Cyprus"},
  {short_name: "CZ", name: "Czech Republic"},
  {short_name: "CI", name: "Côte d’Ivoire"},
  {short_name: "DK", name: "Denmark"},
  {short_name: "DJ", name: "Djibouti"},
  {short_name: "DM", name: "Dominica"},
  {short_name: "DO", name: "Dominican Republic"},
  {short_name: "NQ", name: "Dronning Maud Land"},
  {short_name: "DD", name: "East Germany"},
  {short_name: "EC", name: "Ecuador"},
  {short_name: "EG", name: "Egypt"},
  {short_name: "SV", name: "El Salvador"},
  {short_name: "GQ", name: "Equatorial Guinea"},
  {short_name: "ER", name: "Eritrea"},
  {short_name: "EE", name: "Estonia"},
  {short_name: "ET", name: "Ethiopia"},
  {short_name: "FK", name: "Falkland Islands"},
  {short_name: "FO", name: "Faroe Islands"},
  {short_name: "FJ", name: "Fiji"},
  {short_name: "FI", name: "Finland"},
  {short_name: "FR", name: "France"},
  {short_name: "GF", name: "French Guiana"},
  {short_name: "PF", name: "French Polynesia"},
  {short_name: "TF", name: "French Southern Territories"},
  {short_name: "FQ", name: "French Southern and Antarctic Territories"},
  {short_name: "GA", name: "Gabon"},
  {short_name: "GM", name: "Gambia"},
  {short_name: "GE", name: "Georgia"},
  {short_name: "DE", name: "Germany"},
  {short_name: "GH", name: "Ghana"},
  {short_name: "GI", name: "Gibraltar"},
  {short_name: "GR", name: "Greece"},
  {short_name: "GL", name: "Greenland"},
  {short_name: "GD", name: "Grenada"},
  {short_name: "GP", name: "Guadeloupe"},
  {short_name: "GU", name: "Guam"},
  {short_name: "GT", name: "Guatemala"},
  {short_name: "GG", name: "Guernsey"},
  {short_name: "GN", name: "Guinea"},
  {short_name: "GW", name: "Guinea-Bissau"},
  {short_name: "GY", name: "Guyana"},
  {short_name: "HT", name: "Haiti"},
  {short_name: "HM", name: "Heard Island and McDonald Islands"},
  {short_name: "HN", name: "Honduras"},
  {short_name: "HK", name: "Hong Kong SAR China"},
  {short_name: "HU", name: "Hungary"},
  {short_name: "IS", name: "Iceland"},
  {short_name: "IN", name: "India"},
  {short_name: "short_name", name: "Indonesia"},
  {short_name: "IR", name: "Iran"},
  {short_name: "IQ", name: "Iraq"},
  {short_name: "IE", name: "Ireland"},
  {short_name: "IM", name: "Isle of Man"},
  {short_name: "IL", name: "Israel"},
  {short_name: "IT", name: "Italy"},
  {short_name: "JM", name: "Jamaica"},
  {short_name: "JP", name: "Japan"},
  {short_name: "JE", name: "Jersey"},
  {short_name: "JT", name: "Johnston Island"},
  {short_name: "JO", name: "Jordan"},
  {short_name: "KZ", name: "Kazakhstan"},
  {short_name: "KE", name: "Kenya"},
  {short_name: "KI", name: "Kiribati"},
  {short_name: "KW", name: "Kuwait"},
  {short_name: "KG", name: "Kyrgyzstan"},
  {short_name: "LA", name: "Laos"},
  {short_name: "LV", name: "Latvia"},
  {short_name: "LB", name: "Lebanon"},
  {short_name: "LS", name: "Lesotho"},
  {short_name: "LR", name: "Liberia"},
  {short_name: "LY", name: "Libya"},
  {short_name: "LI", name: "Liechtenstein"},
  {short_name: "LT", name: "Lithuania"},
  {short_name: "LU", name: "Luxembourg"},
  {short_name: "MO", name: "Macau SAR China"},
  {short_name: "MK", name: "Macedonia"},
  {short_name: "MG", name: "Madagascar"},
  {short_name: "MW", name: "Malawi"},
  {short_name: "MY", name: "Malaysia"},
  {short_name: "MV", name: "Maldives"},
  {short_name: "ML", name: "Mali"},
  {short_name: "MT", name: "Malta"},
  {short_name: "MH", name: "Marshall Islands"},
  {short_name: "MQ", name: "Martinique"},
  {short_name: "MR", name: "Mauritania"},
  {short_name: "MU", name: "Mauritius"},
  {short_name: "YT", name: "Mayotte"},
  {short_name: "FX", name: "Metropolitan France"},
  {short_name: "MX", name: "Mexico"},
  {short_name: "FM", name: "Micronesia"},
  {short_name: "MI", name: "Mshort_nameway Islands"},
  {short_name: "MD", name: "Moldova"},
  {short_name: "MC", name: "Monaco"},
  {short_name: "MN", name: "Mongolia"},
  {short_name: "ME", name: "Montenegro"},
  {short_name: "MS", name: "Montserrat"},
  {short_name: "MA", name: "Morocco"},
  {short_name: "MZ", name: "Mozambique"},
  {short_name: "MM", name: "Myanmar [Burma]"},
  {short_name: "NA", name: "Namibia"},
  {short_name: "NR", name: "Nauru"},
  {short_name: "NP", name: "Nepal"},
  {short_name: "NL", name: "Netherlands"},
  {short_name: "AN", name: "Netherlands Antilles"},
  {short_name: "NT", name: "Neutral Zone"},
  {short_name: "NC", name: "New Caledonia"},
  {short_name: "NZ", name: "New Zealand"},
  {short_name: "NI", name: "Nicaragua"},
  {short_name: "NE", name: "Niger"},
  {short_name: "NG", name: "Nigeria"},
  {short_name: "NU", name: "Niue"},
  {short_name: "NF", name: "Norfolk Island"},
  {short_name: "KP", name: "North Korea"},
  {short_name: "VD", name: "North Vietnam"},
  {short_name: "MP", name: "Northern Mariana Islands"},
  {short_name: "NO", name: "Norway"},
  {short_name: "OM", name: "Oman"},
  {short_name: "PC", name: "Pacific Islands Trust Territory"},
  {short_name: "PK", name: "Pakistan"},
  {short_name: "PW", name: "Palau"},
  {short_name: "PS", name: "Palestinian Territories"},
  {short_name: "PA", name: "Panama"},
  {short_name: "PZ", name: "Panama Canal Zone"},
  {short_name: "PG", name: "Papua New Guinea"},
  {short_name: "PY", name: "Paraguay"},
  {short_name: "YD", name: "Peoples Democratic Republic of Yemen"},
  {short_name: "PE", name: "Peru"},
  {short_name: "PH", name: "Philippines"},
  {short_name: "PN", name: "Pitcairn Islands"},
  {short_name: "PL", name: "Poland"},
  {short_name: "PT", name: "Portugal"},
  {short_name: "PR", name: "Puerto Rico"},
  {short_name: "QA", name: "Qatar"},
  {short_name: "RO", name: "Romania"},
  {short_name: "RU", name: "Russia"},
  {short_name: "RW", name: "Rwanda"},
  {short_name: "RE", name: "Réunion"},
  {short_name: "BL", name: "Saint Barthélemy"},
  {short_name: "SH", name: "Saint Helena"},
  {short_name: "KN", name: "Saint Kitts and Nevis"},
  {short_name: "LC", name: "Saint Lucia"},
  {short_name: "MF", name: "Saint Martin"},
  {short_name: "PM", name: "Saint Pierre and Miquelon"},
  {short_name: "VC", name: "Saint Vincent and the Grenadines"},
  {short_name: "WS", name: "Samoa"},
  {short_name: "SM", name: "San Marino"},
  {short_name: "SA", name: "Saudi Arabia"},
  {short_name: "SN", name: "Senegal"},
  {short_name: "RS", name: "Serbia"},
  {short_name: "CS", name: "Serbia and Montenegro"},
  {short_name: "SC", name: "Seychelles"},
  {short_name: "SL", name: "Sierra Leone"},
  {short_name: "SG", name: "Singapore"},
  {short_name: "SK", name: "Slovakia"},
  {short_name: "SI", name: "Slovenia"},
  {short_name: "SB", name: "Solomon Islands"},
  {short_name: "SO", name: "Somalia"},
  {short_name: "ZA", name: "South Africa"},
  {short_name: "GS", name: "South Georgia and the South Sandwich Islands"},
  {short_name: "KR", name: "South Korea"},
  {short_name: "ES", name: "Spain"},
  {short_name: "LK", name: "Sri Lanka"},
  {short_name: "SD", name: "Sudan"},
  {short_name: "SR", name: "Suriname"},
  {short_name: "SJ", name: "Svalbard and Jan Mayen"},
  {short_name: "SZ", name: "Swaziland"},
  {short_name: "SE", name: "Sweden"},
  {short_name: "CH", name: "Switzerland"},
  {short_name: "SY", name: "Syria"},
  {short_name: "ST", name: "São Tomé and Príncipe"},
  {short_name: "TW", name: "Taiwan"},
  {short_name: "TJ", name: "Tajikistan"},
  {short_name: "TZ", name: "Tanzania"},
  {short_name: "TH", name: "Thailand"},
  {short_name: "TL", name: "Timor-Leste"},
  {short_name: "TG", name: "Togo"},
  {short_name: "TK", name: "Tokelau"},
  {short_name: "TO", name: "Tonga"},
  {short_name: "TT", name: "Trinshort_namead and Tobago"},
  {short_name: "TN", name: "Tunisia"},
  {short_name: "TR", name: "Turkey"},
  {short_name: "TM", name: "Turkmenistan"},
  {short_name: "TC", name: "Turks and Caicos Islands"},
  {short_name: "TV", name: "Tuvalu"},
  {short_name: "UM", name: "U.S. Minor Outlying Islands"},
  {short_name: "PU", name: "U.S. Miscellaneous Pacific Islands"},
  {short_name: "VI", name: "U.S. Virgin Islands"},
  {short_name: "UG", name: "Uganda"},
  {short_name: "UA", name: "Ukraine"},
  {short_name: "SU", name: "Union of Soviet Socialist Republics"},
  {short_name: "AE", name: "United Arab Emirates"},
  {short_name: "GB", name: "United Kingdom"},
  {short_name: "US", name: "United States"},
  {short_name: "ZZ", name: "Unknown or Invalshort_name Region"},
  {short_name: "UY", name: "Uruguay"},
  {short_name: "UZ", name: "Uzbekistan"},
  {short_name: "VU", name: "Vanuatu"},
  {short_name: "VA", name: "Vatican City"},
  {short_name: "VE", name: "Venezuela"},
  {short_name: "VN", name: "Vietnam"},
  {short_name: "WK", name: "Wake Island"},
  {short_name: "WF", name: "Wallis and Futuna"},
  {short_name: "EH", name: "Western Sahara"},
  {short_name: "YE", name: "Yemen"},
  {short_name: "ZM", name: "Zambia"},
  {short_name: "ZW", name: "Zimbabwe"},
  {short_name: "AX", name: "Åland Islands"}
])
Item.create!([
  {name: "BitcoinStore", description: "One of the first bitcoin stores in the Internet - and probably the best.", url_original: "https://www.bitcoinstore.com/", url_shortned: "http://cur.lv/5b806", isActive: 1, country_id: 249, category_id: 1}
])
