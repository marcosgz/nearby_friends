portugal = {lat: 39.3998, lon: -8.2244}
italy    = {lat: 41.8719, lon: 12.5673}
ukraine  = {lat: 49.2412, lon: 31.5517}
finland  = {lat: 61.9241, lon: 25.7481}
mexico   = {lat: 23.6345, lon: -102.5527}
canada   = {lat: 56.1303, lon: -106.3467}
usa      = {lat: 37.0902, lon: -95.7128}
cuba     = {lat: 21.5217, lon: -77.7811}
Friend.find_or_create_by_name("italy", italy)
Friend.find_or_create_by_name('ukraine', ukraine)
Friend.find_or_create_by_name('portugal', portugal)
Friend.find_or_create_by_name('finland', finland)
Friend.find_or_create_by_name('mexico', mexico)
Friend.find_or_create_by_name('canada', canada)
Friend.find_or_create_by_name('usa', usa)
Friend.find_or_create_by_name('cuba', cuba)
