require 'json'

crops = { crops: [
  {
    name: 'Tomato',
    crop_type: 'Fruit',
    plant_family: 'Solanaceae',
    description: 'Tomato is the edible berry of the Solanum lycopersicum plant. The species originated in western South America and Central America. Its wild ancestors were only the size of peas.',
    image_url: 'tomato.png',
    max_days_to_harvest: 90,
    min_days_to_harvest: 55,
    max_hardiness_zone: 12,
    min_hardiness_zone: 5,
    sowing_months: 'March, April',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: true,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Cauliflower',
    crop_type: 'Flower',
    plant_family: 'Brassicaceae',
    description: 'Cauliflower is one of several vegetables in the species Brassica oleracea. Typically, only the head is eaten – the edible white flesh sometimes called the "curd". It was originally grown in Asia around the Mediterranean Sea.',
    image_url: 'cauliflower.png',
    max_days_to_harvest: 65,
    min_days_to_harvest: 50,
    max_hardiness_zone: 12,
    min_hardiness_zone: 5,
    sowing_months: 'July, August',
    spacing_in_cm: 50,
    planting_depth_in_cm: 10,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 4,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Potato',
    crop_type: 'Tuber',
    plant_family: 'Solanaceae',
    description: 'Potato is the starchy tuber of the plant Solanum tuberosum and is a root vegetable native to the Americas. It is staple food in many parts of the world.',
    image_url: 'potato.png',
    max_days_to_harvest: 120,
    min_days_to_harvest: 90,
    max_hardiness_zone: 10,
    min_hardiness_zone: 3,
    sowing_months: 'February, March, April, August, September',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Carrot',
    crop_type: 'Root',
    plant_family: 'Umbelliferae',
    description: 'Carrot is a root vegetable, typically orange in color, though purple, black, red, white, and yellow cultivars exist. All are domesticated forms of the wild carrot, Daucus carota, native to Europe and Southwestern Asia.',
    image_url: 'carrot.png',
    max_days_to_harvest: 80,
    min_days_to_harvest: 60,
    max_hardiness_zone: 10,
    min_hardiness_zone: 3,
    sowing_months: 'March, April, July, August',
    spacing_in_cm: 5,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Bell Pepper',
    crop_type: 'Fruit',
    plant_family: 'Solanaceae',
    description: 'Bell pepper (also known as sweet pepper, pepper, or capsicum) is the fruit of the species Capsicum annuum. They are native to Mexico, Central America, and northern South America.',
    image_url: 'bellpepper.png',
    max_days_to_harvest: 90,
    min_days_to_harvest: 60,
    max_hardiness_zone: 10,
    min_hardiness_zone: 3,
    sowing_months: 'February, March, April, May',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: true,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Cucumber',
    crop_type: 'Fruit',
    plant_family: 'Cucurbitaceae',
    description: 'Cucumber is the cylindrical fruit of the widely-cultivated creeping vine plant Cucumis sativus. The species originates from South Asia.',
    image_url: 'cucumber.png',
    max_days_to_harvest: 70,
    min_days_to_harvest: 50,
    max_hardiness_zone: 12,
    min_hardiness_zone: 4,
    sowing_months: 'April, May, June',
    spacing_in_cm: 25,
    planting_depth_in_cm: 4,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Broad Bean',
    crop_type: 'Fruit',
    plant_family: 'Fabaceae',
    description: 'Broad beans (also known as fava beans, or faba beans) are the seeds of the Vicia faba plant, contained in broad, green leathery pods that mature to a dark blackish-brown. They are widely cultivated as a crop for human consumption, and also as a cover crop. The species originated in the Middle-East.',
    image_url: 'broadbean.png',
    max_days_to_harvest: 100,
    min_days_to_harvest: 80,
    max_hardiness_zone: 10,
    min_hardiness_zone: 2,
    sowing_months: 'January, February, March, October, November',
    spacing_in_cm: 25,
    planting_depth_in_cm: 5,
    climber: true,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Soil Builder'
  },
  {
    name: 'Beetroot',
    crop_type: 'Root',
    plant_family: 'Amaranthaceae',
    description: 'Beetroot is the taproot portion of the Beta vulgaris plant. Beets were domesticated in the ancient Middle East, primarily for their greens, and were grown by the Ancient Egyptians, Greeks and Romans. By the Roman era, it is thought that they were cultivated for their roots as well.',
    image_url: 'beetroot.png',
    max_days_to_harvest: 65,
    min_days_to_harvest: 45,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'March, April, May, August, September, October',
    spacing_in_cm: 10,
    planting_depth_in_cm: 3,
    climber: false,
    sun_exposure: 'Partial Sun',
    water_needs: 4,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Onion',
    crop_type: 'Bulb',
    plant_family: 'Liliaceae',
    description: 'Onion is the most widely cultivated species of the genus Allium. Common onions are normally available in three colour varieties: yellow or brown, red or purple, and white. Its ancestral wild original form is not known.',
    image_url: 'onion.png',
    max_days_to_harvest: 155,
    min_days_to_harvest: 90,
    max_hardiness_zone: 10,
    min_hardiness_zone: 3,
    sowing_months: 'August, September, October',
    spacing_in_cm: 5,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Cabbage',
    crop_type: 'Leafy',
    plant_family: 'Brassicaceae',
    description: 'Cabbage comprises several cultivars of Brassica oleracea, and is a leafy green, purple, red, or white biennial plant grown for its dense-leaved heads. It is descended from the wild cabbage, and was most likely domesticated somewhere in Europe before 1000 BC.',
    image_url: 'cabbage.png',
    max_days_to_harvest: 100,
    min_days_to_harvest: 65,
    max_hardiness_zone: 10,
    min_hardiness_zone: 1,
    sowing_months: 'February, March, June, July, August, October, November',
    spacing_in_cm: 25,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Brussels Sprout',
    crop_type: 'Leafy',
    plant_family: 'Brassicaceae',
    description: 'Brussels sprouts are a member of the cabbage family, grown for its edible buds. It has long been popular in Brussels, Belgium, from which it gained its name.',
    image_url: 'brusselssprout.png',
    max_days_to_harvest: 110,
    min_days_to_harvest: 90,
    max_hardiness_zone: 9,
    min_hardiness_zone: 2,
    sowing_months: 'July, August',
    spacing_in_cm: 50,
    planting_depth_in_cm: 2,
    climber: true,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Broccoli',
    crop_type: 'Flower',
    plant_family: 'Brassicaceae',
    description: 'Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable. It was engineered from a cabbage relative in what is now Tuscany.',
    image_url: 'broccoli.png',
    max_days_to_harvest: 85,
    min_days_to_harvest: 55,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'July, August, September, February, March',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Spinach',
    crop_type: 'Leafy',
    plant_family: 'Amaranthaceae',
    description: 'Spinach is a leafy green flowering plant native to central and western Asia. Its leaves are a common edible vegetable consumed either fresh, or after storage using preservation techniques by canning, freezing, or dehydration.',
    image_url: 'spinach.png',
    max_days_to_harvest: 45,
    min_days_to_harvest: 37,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'March, April, May, July, August, September, October, November',
    spacing_in_cm: 5,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Partial Sun',
    water_needs: 2,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Ginger',
    crop_type: 'Rhizome',
    plant_family: 'Zingiberaceae',
    description: 'Ginger (also known as ginger root) is the rhizome, or root, of the flowering plant Zingiber officinale. It is widely used as a spice and a folk medicine, and originated in Maritime Southeast Asia. It was likely domesticated first by the Austronesian peoples.',
    image_url: 'ginger.png',
    max_days_to_harvest: 365,
    min_days_to_harvest: 300,
    max_hardiness_zone: 12,
    min_hardiness_zone: 8,
    sowing_months: 'April, May',
    spacing_in_cm: 25,
    planting_depth_in_cm: 5,
    climber: false,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Okra',
    crop_type: 'Fruit',
    plant_family: 'Malvaceae',
    description: 'Okra (also known as ladies fingers) are the edible green seed pods of the flowering plant Abelmoschus esculentus. The geographical origin of okra is disputed, with supporters of West African, Ethiopian, and South Asian origins.',
    image_url: 'okra.png',
    max_days_to_harvest: 65,
    min_days_to_harvest: 50,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'April, May, June',
    spacing_in_cm: 10,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Dill',
    crop_type: 'Leafy',
    plant_family: 'Umbelliferae',
    description: 'Dill is grown widely in Eurasia, where its leaves and seeds are used as a herb or spice for flavouring food. It is best when used fresh, as it loses its flavor rapidly if dried.',
    image_url: 'dill.png',
    max_days_to_harvest: 90,
    min_days_to_harvest: 70,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'March, April, May, June, September, October',
    spacing_in_cm: 25,
    planting_depth_in_cm: 3,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Turmeric',
    crop_type: 'Rhizome',
    plant_family: 'Zingiberaceae',
    description: 'Turmeric is a flowering plant, the rhizomes (roots) of which are used in cooking. It is native to the Indian subcontinent and Southeast Asia. It is used fresh or boiled in water and dried, after which it is ground into a deep orange-yellow powder.',
    image_url: 'turmeric.png',
    max_days_to_harvest: 300,
    min_days_to_harvest: 210,
    max_hardiness_zone: 12,
    min_hardiness_zone: 7,
    sowing_months: 'April, May, June',
    spacing_in_cm: 25,
    planting_depth_in_cm: 6,
    climber: false,
    sun_exposure: 'Partial Sun',
    water_needs: 2,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Watermelon',
    crop_type: 'Fruit',
    plant_family: 'Cucurbitaceae',
    description: 'Watermelon is a scrambling and trailing vine-like plant with a large edible berry. The sweet, juicy flesh is usually deep red to pink, with many black seeds, although seedless varieties exist. Watermelons are thought to be native to northeastern Africa.',
    image_url: 'watermelon.png',
    max_days_to_harvest: 90,
    min_days_to_harvest: 70,
    max_hardiness_zone: 11,
    min_hardiness_zone: 3,
    sowing_months: 'March, April, May',
    spacing_in_cm: 100,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 2,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Pea',
    crop_type: 'Fruit',
    plant_family: 'Fabaceae',
    description: 'Peas are the small spherical seeds or the seed-pod of the pod fruit Pisum sativum. Each pod contains several peas, which can be green or yellow. They are descended from the wild pea, which is restricted to the Mediterranean basin.',
    image_url: 'pea.png',
    max_days_to_harvest: 70,
    min_days_to_harvest: 60,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'January, February, March, October, November, December',
    spacing_in_cm: 10,
    planting_depth_in_cm: 5,
    climber: true,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Soil Builder'
  },
  {
    name: 'Pak Choi',
    crop_type: 'Leafy',
    plant_family: 'Brassicaceae',
    description: 'Pak Choi (also known as bok choy, or choi sum) is a type of Chinese cabbage that do not form heads and have green leaf blades with lighter bulbous bottoms instead. It is native to China.',
    image_url: 'pakchoi.png',
    max_days_to_harvest: 50,
    min_days_to_harvest: 40,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'April, May, June, July, August, September, October',
    spacing_in_cm: 5,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Chilli Pepper',
    crop_type: 'Fruit',
    plant_family: 'Solanaceae',
    description: 'Chilli pepper (also spelled chili pepper) is the spicy fruit of the species Capsicum annuum. Capsaicinoids are the substances giving chilli peppers their intensity when ingested or applied topically. They originated in Mexico.',
    image_url: 'chillipepper.png',
    max_days_to_harvest: 150,
    min_days_to_harvest: 75,
    max_hardiness_zone: 11,
    min_hardiness_zone: 8,
    sowing_months: 'February, March, April, May',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: true,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Artichoke',
    crop_type: 'Flower',
    plant_family: 'Asteraceae',
    description: 'Artichoke is the edible portion of the Cynara cardunculus plant, consisting of the flower buds. Once the buds bloom, the structure changes to a coarse, barely edible form. It was domesticated from the wild cardoon, which is native to the Mediterranean area.',
    image_url: 'artichoke.png',
    max_days_to_harvest: 100,
    min_days_to_harvest: 85,
    max_hardiness_zone: 11,
    min_hardiness_zone: 7,
    sowing_months: 'March, April, May, June',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Wasabi',
    crop_type: 'Rhizome',
    plant_family: 'Brassicaceae',
    description: 'Wasabi (also known as Japanese horseradish) is the rhizome of the plant Eutrema japonicum. Once ground into a paste, it is used as a pungent condiment for sushi and other foods. The plant grows naturally along stream beds in mountain river valleys in Japan.',
    image_url: 'wasabi.png',
    max_days_to_harvest: 600,
    min_days_to_harvest: 450,
    max_hardiness_zone: 10,
    min_hardiness_zone: 8,
    sowing_months: 'March, October, November',
    spacing_in_cm: 10,
    planting_depth_in_cm: 5,
    climber: false,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Courgette',
    crop_type: 'Fruit',
    plant_family: 'Cucurbitaceae',
    description: 'Courgettes (also known as zucchini) are the fruit of the vining Cucurbita pepo plant. Like all squash, it has its ancestry in the Americas, specifically Mesoamerica.',
    image_url: 'courgette.png',
    max_days_to_harvest: 60,
    min_days_to_harvest: 40,
    max_hardiness_zone: 9,
    min_hardiness_zone: 3,
    sowing_months: 'March, April, May',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: true,
    sun_exposure: 'Partial Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Garlic',
    crop_type: 'Bulb',
    plant_family: 'Liliaceae',
    description: 'Garlic is the bulb of the Allium sativum plant. Each bulb generally contains 10 to 20 edible cloves. It is native to Central Asia and northeastern Iran and has long been a common seasoning worldwide.',
    image_url: 'garlic.png',
    max_days_to_harvest: 110,
    min_days_to_harvest: 90,
    max_hardiness_zone: 10,
    min_hardiness_zone: 4,
    sowing_months: 'September, October',
    spacing_in_cm: 10,
    planting_depth_in_cm: 5,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Basil',
    crop_type: 'Leafy',
    plant_family: 'Lamiaceae',
    description: 'Basil is a culinary herb of the Ocimum basilicum plant, used for its aromatic leaves. It is native to tropical regions from Central Africa to Southeast Asia.',
    image_url: 'basil.png',
    max_days_to_harvest: 60,
    min_days_to_harvest: 50,
    max_hardiness_zone: 10,
    min_hardiness_zone: 4,
    sowing_months: 'April, May, June',
    spacing_in_cm: 25,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 2,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Currant',
    crop_type: 'Fruit',
    plant_family: 'Grossulariaceae',
    description: 'Currants are a variety of deciduous shrubs in the Ribes genus grown for their edible berries. The three most common vareties are blackcurrant, redcurrant and whitecurrant. They are native native to northern Europe and Asia.',
    image_url: 'currant.png',
    max_days_to_harvest: 60,
    min_days_to_harvest: 50,
    max_hardiness_zone: 9,
    min_hardiness_zone: 3,
    sowing_months: 'December, January, February',
    spacing_in_cm: 10,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Lettuce',
    crop_type: 'Leafy',
    plant_family: 'Asteraceae',
    description: 'Lettuce is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Its native range spreads from the Mediterranean to Siberia.',
    image_url: 'lettuce.png',
    max_days_to_harvest: 55,
    min_days_to_harvest: 45,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'January, February, March, April, July, August, September, November, December',
    spacing_in_cm: 25,
    planting_depth_in_cm: 4,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Turnip',
    crop_type: 'Root',
    plant_family: 'Brassicaceae',
    description: 'Turnip is a root vegetable commonly grown for its fleshy taproot. Small, tender varieties are grown for human consumption, while larger varieties are grown as feed for livestock. Native to western Asia and Europe.',
    image_url: 'turnip.png',
    max_days_to_harvest: 60,
    min_days_to_harvest: 45,
    max_hardiness_zone: 9,
    min_hardiness_zone: 2,
    sowing_months: 'March, April, May, July, August, September, October',
    spacing_in_cm: 10,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Strawberry',
    crop_type: 'Fruit',
    plant_family: 'Rosaceae',
    description: 'Strawberry is a widely grown hybrid species of the genus Fragaria, first bred in France. It is consumed in large quantities, either fresh or in such prepared foods as jam. The wild ancestors of the modern strawberry are native to the Americas.',
    image_url: 'strawberry.png',
    max_days_to_harvest: 90,
    min_days_to_harvest: 80,
    max_hardiness_zone: 10,
    min_hardiness_zone: 5,
    sowing_months: 'March, April, May, June, September, October, November',
    spacing_in_cm: 10,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 2,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Parsnip',
    crop_type: 'Root',
    plant_family: 'Umbelliferae',
    description: 'Parsnip is the long taproot of the Pastinaca sativa plant. It has cream-colored skin and flesh, and, left in the ground to mature, it becomes sweeter in flavor after winter frosts. They are native to Eurasia.',
    image_url: 'parsnip.png',
    max_days_to_harvest: 130,
    min_days_to_harvest: 105,
    max_hardiness_zone: 9,
    min_hardiness_zone: 2,
    sowing_months: 'February, March, April, June, July, August, September',
    spacing_in_cm: 5,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Hakusai',
    crop_type: 'Leafy',
    plant_family: 'Brassicaceae',
    description: 'Hakusai (also known as winter cabbage, or napa cabbage) is a type of Chinese cabbage originating near the Beijing region of China. It grows to an oblong shaped head consisting of tightly arranged crinkly, thick, light-green leaves.',
    image_url: 'hakusai.png',
    max_days_to_harvest: 50,
    min_days_to_harvest: 40,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'March, April, July, August, September',
    spacing_in_cm: 10,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Aubergine',
    crop_type: 'Fruit',
    plant_family: 'Solanaceae',
    description: 'Aubergine (also known as eggplant, or brinjal) is the edible fruit of the Solanum melongena plant. The fruit are egg-shaped, glossy, and purple with spongy, white flesh. It has been described as native to India, where it continues to grow wild, Africa, or South Asia.',
    image_url: 'aubergine.png',
    max_days_to_harvest: 120,
    min_days_to_harvest: 100,
    max_hardiness_zone: 12,
    min_hardiness_zone: 5,
    sowing_months: 'February, March',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Winter Squash',
    crop_type: 'Fruit',
    plant_family: 'Cucurbitaceae',
    description: 'Winter squash (also commonly called pumpkins) are several squash species within the genus Cucurbita. They are eaten in the mature stage when the seeds within have matured fully and the skin has hardened into a tough rind. They are native to the Andes and Mesoamerica.',
    image_url: 'wintersquash.png',
    max_days_to_harvest: 110,
    min_days_to_harvest: 80,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'August, September',
    spacing_in_cm: 100,
    planting_depth_in_cm: 3,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Asparagus',
    crop_type: 'Stem',
    plant_family: 'Asparagaceae',
    description: 'Asparagus are the edible young stems of the plant Asparagus officinalis. Best harvested in their second year and onwards. Its native range covers most of Europe and western Asia.',
    image_url: 'asparagus.png',
    max_days_to_harvest: 440,
    min_days_to_harvest: 400,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'February, March',
    spacing_in_cm: 5,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Mint',
    crop_type: 'Leafy',
    plant_family: 'Lamiaceae',
    description: 'Mint is a variety of aromatic herbs taken from leaves of plant is the Mentha genus. Leaf colors range from dark green and gray-green to purple, blue, and sometimes pale yellow. It has a native distribution across Europe, Africa, Asia, Australia, and North America.',
    image_url: 'mint.png',
    max_days_to_harvest: 90,
    min_days_to_harvest: 80,
    max_hardiness_zone: 8,
    min_hardiness_zone: 3,
    sowing_months: 'March, April, May, June, September, October, November',
    spacing_in_cm: 25,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Sweet Potato',
    crop_type: 'Root',
    plant_family: 'Convolvulaceae',
    description: 'Sweet potato is the large, starchy, sweet-tasting root of the Ipomoea batatas plant. The young shoots and leaves are sometimes eaten as greens. It is native to the tropical regions of the Americas.',
    image_url: 'sweetpotato.png',
    max_days_to_harvest: 120,
    min_days_to_harvest: 95,
    max_hardiness_zone: 12,
    min_hardiness_zone: 7,
    sowing_months: 'May, June',
    spacing_in_cm: 25,
    planting_depth_in_cm: 10,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Daikon',
    crop_type: 'Root',
    plant_family: 'Brassicaceae',
    description: 'Daikon is a mild-flavored winter radish usually characterized by fast-growing leaves and a long, white root. Originally native to continental East Asia.',
    image_url: 'daikon.png',
    max_days_to_harvest: 80,
    min_days_to_harvest: 60,
    max_hardiness_zone: 11,
    min_hardiness_zone: 2,
    sowing_months: 'March, April, August, September, October',
    spacing_in_cm: 25,
    planting_depth_in_cm: 2,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Parsley',
    crop_type: 'Leafy',
    plant_family: 'Umbelliferae',
    description: 'Parsley is the bright green herbaceous leaf of the Petroselinum crispum plant. It is native to the central and eastern Mediterranean region.',
    image_url: 'parsley.png',
    max_days_to_harvest: 90,
    min_days_to_harvest: 70,
    max_hardiness_zone: 9,
    min_hardiness_zone: 4,
    sowing_months: 'March, April, May, September, October',
    spacing_in_cm: 10,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Light Feeder'
  },
  {
    name: 'Tomatillo',
    crop_type: 'Fruit',
    plant_family: 'Solanaceae',
    description: 'Tomatillo (also known as groundcherry) are the fruit of the Physalis philadelphica or Physalis ixocarpa. They are round, green fruit with a papery husk, and originated in Mexico.',
    image_url: 'tomatillo.png',
    max_days_to_harvest: 100,
    min_days_to_harvest: 75,
    max_hardiness_zone: 12,
    min_hardiness_zone: 5,
    sowing_months: 'February, March, April, May',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: true,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Passion Fruit',
    crop_type: 'Fruit',
    plant_family: 'Passifloraceae',
    description: 'Passion fruit is the fruit of the Passiflora plant. They are either yellow or dark purple at maturity, with a juicy interior filled with numerous seeds. They are native to Mexico, Central and South America.',
    image_url: 'passionfruit.png',
    max_days_to_harvest: 400,
    min_days_to_harvest: 360,
    max_hardiness_zone: 12,
    min_hardiness_zone: 9,
    sowing_months: 'May, June, July, August, September',
    spacing_in_cm: 100,
    planting_depth_in_cm: 3,
    climber: true,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  },
  {
    name: 'Blueberry',
    crop_type: 'Fruit',
    plant_family: 'Ericaceae',
    description: 'Blueberries are the blue or purple berries of the Cyanococcus plant. They are native to North America, and commonly divided into wild (lowbush) and cultivated (highbush) varieties.',
    image_url: 'blueberry.png',
    max_days_to_harvest: 450,
    min_days_to_harvest: 400,
    max_hardiness_zone: 8,
    min_hardiness_zone: 3,
    sowing_months: 'February, March, September, October, November, December',
    spacing_in_cm: 50,
    planting_depth_in_cm: 1,
    climber: false,
    sun_exposure: 'Full Sun',
    water_needs: 3,
    nitrogen_needs: 'Heavy Feeder'
  }
] }

File.open('db/crops.json', 'wb') do |file|
  file.write(JSON.generate(crops))
end
