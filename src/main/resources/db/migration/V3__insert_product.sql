
INSERT INTO product (id, name, description, available_quantity, price, category_id,img) 
    VALUES 
        (nextval('product_seq'), 'Everlane The Organic Cotton Crewneck T-Shirt', 'A classic and comfortable t-shirt made from organic cotton.', 25, 24.00, 1001,null),
        (nextval('product_seq'), 'Levis 501 Original Fit Jeans', 'The iconic Levis 501 jeans in a timeless straight-leg cut.', 18, 69.99, 1001,null),
        (nextval('product_seq'), ' Reformation Alia Puff Sleeve Minidress', 'A flattering and feminine dress with puff sleeves and a shirred bodice.', 12, 128.00, 1001,null),
        (nextval('product_seq'), 'Adidas Ultraboost 22 Running Shoes', 'Ultra-cushioned running shoes for maximum comfort and performance.', 15, 189.99, 1001,null),
        (nextval('product_seq'), 'Birkenstock Arizona Sandals', 'A comfortable and stylish sandal with a cork footbed and adjustable straps.', 20, 99.99, 1001,null),
        (nextval('product_seq'), 'The North Face Recycled Class V Triclimate Hat', 'A versatile hat with a waterproof outer shell and a removable fleece liner.', 10, 34.99, 1001,null),
        (nextval('product_seq'), 'Ray-Ban Wayfarer Classic Sunglasses', 'A timeless and iconic sunglasses style with a variety of lens colors.', 30, 159.99, 1001,null),
        (nextval('product_seq'), 'Casio G-Shock Classic Digital Watch', 'A durable and water-resistant digital watch with a variety of functions.', 12, 69.99, 1001,null),
        (nextval('product_seq'), 'Bellroy Leather Wallet', 'A slim and stylish leather wallet with multiple compartments for cards and cash.', 8, 75.00, 1001,null),
        (nextval('product_seq'), 'Herschel Supply Co. Settlement Backpack', 'A stylish and functional backpack for everyday use or travel.', 22, 59.99, 1001,null);

INSERT INTO product (id, name, description, available_quantity, price, category_id, img)
VALUES (nextval('product_seq'), 'Dell XPS 13 Laptop', 'A powerful and portable laptop with a stunning display.', 10, 1299.00, 1051, 'https://www.dell.com/en-us/shop/dell-laptops/xps-13-laptop/spd/xps-13-9315-laptop'),
        (nextval('product_seq'), 'Samsung Galaxy S23 Ultra', 'The latest flagship phone with a powerful camera system.', 15, 1099.00, 1051, 'https://www.samsung.com/global/galaxy/galaxy-s23-ultra/gallery/'),
        (nextval('product_seq'), 'Sony WH-1000XM5 Wireless Headphones', 'Industry-leading noise cancellation and exceptional sound quality.', 8, 399.00, 1051, 'https://electronics.sony.com/audio/headphones/headband/p/wh1000xm5-s'),
        (nextval('product_seq'), 'Apple Watch Series 8', 'The next generation of health and fitness tracking with a sleek design.', 20, 429.00, 1051, 'https://www.gsmarena.com/apple_watch_series_8-pictures-11866.php'),
        (nextval('product_seq'), 'LG 65 inch OLED TV', 'Experience stunning picture quality and immersive viewing with this large OLED TV.', 5, 1999.00, 1051, 'https://www.lg.com/us/oled-tvs'),
        (nextval('product_seq'), 'Sony PlayStation 5', 'The ultimate gaming console with powerful graphics and immersive gameplay.', 3, 499.00, 1051, 'https://unsplash.com/s/photos/ps5'),
        (nextval('product_seq'), 'Ultimate Ears MEGABOOM 3 Portable Speaker', 'A powerful and waterproof speaker for all your outdoor adventures.', 12, 199.00, 1051, 'https://us.ultimateears.com/products/megaboom-3'),
        (nextval('product_seq'), 'Epson Home Cinema 2250 Projector', 'Enjoy a cinematic experience at home with this high-definition projector.', 2, 599.00, 1051, 'https://epson.com/For-Home/Projectors/Streaming-Entertainment/Home-Cinema-2250-3LCD-Full-HD-1080p-Projector/p/V11HA87020'),
        (nextval('product_seq'), 'Arlo Pro 4 Wireless Security Camera System', 'Keep your home secure with this weatherproof wireless camera system.', 7, 299.00, 1051, 'https://www.arlo.com/asia/cameras/pro/arlo-pro-4.html'),
        (nextval('product_seq'), 'DJI Mavic Mini 3 Pro Drone', 'A compact and easy-to-fly drone with stunning aerial photography capabilities.', 4, 699.00, 1051, 'https://www.dpreview.com/sample-galleries/2271796398/dji-mini-3-pro-sample-gallery'),
        (nextval('product_seq'), 'LG OLED C2 Series TV', 'Stunning OLED display with vibrant colors and deep blacks.', 5, 1999.00, 1051, 'https://www.lg.com/us/tvs/lg-oled42c2pua-oled-4k-tv'),
        (nextval('product_seq'), 'Meta Quest 2 VR Headset', 'Explore virtual worlds with this standalone VR headset.', 6, 399.00, 1051, 'https://www.alamy.com/stock-photo/oculus-quest-2.html'),
        (nextval('product_seq'), 'Bose QuietComfort 45 Headphones', 'Superior noise cancellation and comfortable design for long listening sessions.', 11, 329.00, 1051, 'https://www.bose.com/us/en/products/headphones/noise-cancelling/quietcomfort-45-headphones.html'),
        (nextval('product_seq'), 'Fitbit Charge 5 Fitness Tracker', 'Track your activity, sleep, and heart rate with this stylish fitness tracker.', 14, 179.00, 1051, 'https://www.fitbit.com/global/us/products/devices/charge/charge-5'),
        (nextval('product_seq'), 'Samsung HW-Q900A Soundbar System', 'Experience immersive surround sound for your home theater.', 4, 799.00, 1051, 'https://www.samsung.com/us/audio/soundbars/hw-q900a-zx/'),
        (nextval('product_seq'), 'ASUS ROG Strix XG27UQ Monitor', 'High-refresh rate and fast response time for a smooth gaming experience.', 3, 449.00, 1051, 'https://www.asus.com/us/Displays-Desktops/Monitors/TUF-Gaming/TUF-Gaming-VG27AQ1A'),
        (nextval('product_seq'), 'Anker PowerCore 10000mAh Portable Charger', 'Keep your devices charged on the go with this high-capacity power bank.', 17, 29.99, 1051, 'https://www.anker.com/products/a1222'),
        (nextval('product_seq'), 'Apple AirPods Pro', 'Active noise cancellation and a comfortable fit for all-day listening.', 10, 249.00, 1051, 'https://www.apple.com/airpods-pro/'),
        (nextval('product_seq'), 'Amazon Echo Show 10 (3rd Gen)', 'Control your smart home devices and enjoy video calls with this smart display.', 8, 249.99, 1051, 'https://www.amazon.com/echo-show-10-3rd-gen/dp/B085C29L5D'),
        (nextval('product_seq'), 'Oral-B Genius X Limited Edition Electric Toothbrush', 'Advanced cleaning technology for a healthier smile.', 13, 149.00, 1051, 'https://www.oralb.com/en-us/products/electric-toothbrushes/genius-x-limited-edition-electric-toothbrush');

INSERT INTO product (id, name, description, available_quantity, price, category_id, img) 
    VALUES 
        (nextval('product_seq'), 'Snake Plant (Sansevieria)', 'Low-maintenance and air-purifying houseplant.', 18, 19.99, 1101, 'https://www.thespruce.com/thmb/04yXgF7zLfQ3yXEeXEhqZuwB23M=/1500x1000/filters:fill(auto,1)/snake-plant-sansevieria-587012375_THUMB.jpg'),
        (nextval('product_seq'), 'Cozy Knit Throw Blanket', 'Soft and warm throw blanket for added comfort on the couch.', 12, 39.99, 1101, 'https://www.west elm.com/products/chunky-knit-throw-w600'),
        (nextval('product_seq'), 'Expandable Garden Hose', 'Lightweight and easy-to-store hose for watering your garden.', 20, 24.99, 1101, 'https://www.gardena.com/com/products/watering/hoses/expandable-hoses/classic-expandable-hose-18500-20/'),
        (nextval('product_seq'), 'Outdoor Composting Bin', 'Turn your food scraps into nutrient-rich compost for your garden.', 7, 59.99, 1101, 'https://www.homedepot.com/p/YETI-Compost-Bin-14-Gallon-Black/317233870'),
        (nextval('product_seq'), 'Basic Power Tool Set', 'Essential tools for DIY projects around the house.', 15, 99.99, 1101, 'https://www.lowes.com/pd/BLACK+DECKER-3-Tool-20-Volt-MAX-Lithium-Ion-Combo-Kit/1002920250'),
        (nextval('product_seq'), 'String Lights with Solar Panel', 'Decorative and eco-friendly lighting for your patio or garden.', 10, 19.99, 1101, 'https://www.amazon.com/Solar-String-Lights/s?k=Solar+String+Lights'),
        (nextval('product_seq'), 'Wall-Mounted Tool Organizer', 'Keep your tools organized and easily accessible in your garage or workshop.', 9, 29.99, 1101, 'https://www.walmart.com/ip/HART-Wall-Mount-Tool-Organizer-Set-22-Piece/478227720'),
        (nextval('product_seq'), 'Indoor Herb Garden Kit', 'Grow fresh herbs all year round with this easy-to-use kit.', 16, 24.99, 1101, 'https://www.aerogarden.com/indoor-herb-garden-kits'),
        (nextval('product_seq'), 'Galvanized Steel Watering Can', 'Durable and stylish watering can for your gardening needs.', 14, 14.99, 1101, 'https://www.gardeningknowhow.com/wp-content/uploads/2017/06/watering-can.jpg'),
        (nextval('product_seq'), 'Portable Wood Burning Fire Pit', 'Enjoy cozy evenings outdoors with this portable fire pit.', 5, 79.99, 1101, 'https://www.wayfair.com/outdoor/pdp/solitude-outdoor-corbin-30-w-steel-wood-burning-fire-pit-w006284657.html'),
        (nextval('product_seq'), '3-Piece Patio Conversation Set', 'Relax and entertain outdoors with this comfortable conversation set.', 3, 199.99, 1101, 'https://www.target.com/p/3-piece-wicker-patio-conversation-set-threshold-signature/-/17812888'),
        (nextval('product_seq'), 'Solar-Powered Dancing Flame Torch', 'Add a whimsical touch to your garden with this solar-powered torch.', 8, 29.99, 1101, 'https://www.lowes.com/pd/Hampton-Bay-Solar-Dancing-Flame-Torch-Bronze/3874851'),
        (nextval('product_seq'), 'Double Hammock with Stand', 'Relax and unwind in the comfort of this double hammock with stand.', 2, 99.99, 1101, 'https://www.amazon.com/Hammock-Stand/s?k=Hammock+Stand'),
        (nextval('product_seq'), 'Heavy-Duty Grill Cover', 'Protect your grill from the elements with this durable cover.', 11, 34.99, 1101, 'https://www.walmart.com/ip/Weber-7120-Spirit-II-E-210-Liquid-Propane-Gas-Grill-Cover/10242432'),
        (nextval('product_seq'), 'Seed Starting Kit with Trays and Heat Mat', 'Get your seedlings off to a strong start with this complete kit.', 6, 19.99, 1101, 'https://www.burpee.com/seed-starting-kits'),
        (nextval('product_seq'), '50-Gallon Rain Barrel', 'Collect rainwater for watering your plants and conserve water.', 4, 59.99, 1101, 'https://www.homedepot.com/p/RainMaker-Solutions-Rain-Barrel-Diverter-Kit-with-50-Gal-Barrel-RM-BARREL-KIT/313222290'),
        (nextval('product_seq'), 'Electric Lawn Mower', 'Quiet and easy-to-use electric lawn mower for maintaining a neat yard.', 1, 199.99, 1101, 'https://www.toro.com/en/ homeowner/lawn-mowers/electric-lawn-mowers'),
        (nextval('product_seq'), 'Corded Leaf Blower', 'Clear leaves and debris from your yard quickly and efficiently.', 3, 79.99, 1101, 'https://www.blackanddecker.com/en-us/products/lawn-garden/leaf-blowers/electric-leaf-blowers/bv5600'),
        (nextval('product_seq'), 'Squirrel-Proof Bird Feeder', 'Attract beautiful birds to your yard with this squirrel-proof feeder.', 9, 24.99, 1101, 'https://www.wildbirdsunlimited.com/bird-feeders/squirrel-proof-bird-feeders');

INSERT INTO product (id, name, description, available_quantity, price, category_id, img) 
    VALUES 
        (nextval('product_seq'), 'Cetaphil Daily Facial Moisturizer', 'Lightweight and fragrance-free moisturizer for all skin types.', 15, 19.99, 1151, 'https://www.cetaphil.com/us/moisturizers/daily-facial-moisturizer'),
        (nextval('product_seq'), 'EltaMD UV Clear Broad-Spectrum SPF 46 Sunscreen', 'Broad-spectrum sunscreen for daily sun protection.', 12, 34.99, 1151, 'https://www.eltamd.com/product/uv-clear-broad-spectrum-spf-46'),
        (nextval('product_seq'), 'Olaplex No. 4 & 5 Bond Maintenance Shampoo & Conditioner', 'Nourishing shampoo and conditioner for damaged hair.', 8, 59.99, 1151, 'https://www.olaplex.com/haircare/no.4-bond-maintenance-shampoo.html'),
        (nextval('product_seq'), 'Sensodyne Pronamel Sensitivity Toothpaste', 'Toothpaste formulated to relieve tooth sensitivity.', 10, 5.99, 1151, 'https://www.sensodyne.com/us/en/products/pronamel-sensitivity-toothpaste'),
        (nextval('product_seq'), 'Real Techniques Essential Collection Brush Set', 'Essential brushes for flawless makeup application.', 7, 19.99, 1151, 'https://www.realtechniques.com/essential-collection'),
        (nextval('product_seq'), 'Jergens Ultra Healing Body Lotion', 'Hydrating body lotion for dry skin.', 18, 9.99, 1151, 'https://www.jergens.com/us/en/products/ultra-healing-body-lotion'),
        (nextval('product_seq'), 'Revlon One-Step Hair Dryer and Volumizer Hot Air Brush', 'Multifunctional tool for drying and styling hair.', 5, 39.99, 1151, 'https://www.revlon.com/en-us/hair-dryers/one-step-hair-dryer-and-volumizer-hot-air-brush'),
        (nextval('product_seq'), 'Harry''s Starter Shave Kit', 'Complete shaving kit with razor, blades, and shaving cream.', 9, 24.99, 1151, 'https://www.harrys.com/shave-kits'),
        (nextval('product_seq'), 'The Ordinary Hyaluronic Acid Serum', 'Hydrating serum for plumper and smoother skin.', 14, 14.99, 1151, 'https://www.theordinary.com/product/hyaluronic-acid-2b5-hydrators+ha'),
        (nextval('product_seq'), 'Oral-B Pro 7000 Electric Toothbrush', 'Electric toothbrush with multiple brushing modes for a clean and healthy smile.', 11, 79.99, 1151, 'https://www.oralb.com/us/en/products/electric-toothbrushes/pro-7000-electric-toothbrush'),
        (nextval('product_seq'), 'Lush Bath Bombs (various scents)', 'Relaxing and moisturizing bath bombs for a luxurious bathing experience.', 16, 6.99, 1151, 'https://www.lushusa.com/bath/bath-bombs/shop-all'),
        (nextval('product_seq'), 'Sally Hansen Complete Salon Manicure Nail Polish Set', 'Long-lasting nail polish set in various colors.', 13, 19.99, 1151, 'https://www. sallyhansen.com/us/en/nail-color/complete-salon-manicure/complete-salon-manicure-nail-color.html'),
        (nextval('product_seq'), 'Old Spice Deodorant (various scents)', 'Long-lasting deodorant stick for all-day odor protection.', 20, 5.99, 1151, 'https://www.oldspice.com/en-us/products/deodorants'),
        (nextval('product_seq'), 'OLAPLEX No. 8 Bond Intense Moisture Mask', 'Deep conditioning hair mask for damaged hair.', 6, 28.99, 1151, 'https://www.olaplex.com/haircare/no.8-bond-intense-moisture-mask.html'),
        (nextval('product_seq'), 'Revlon Perfect Heat Ceramic Straightener', 'Straightener with adjustable heat settings for different hair types.', 3, 34.99, 1151, 'https://www.revlon.com/en-us/hair-straighteners/perfect-heat-ceramic-straightener'),
        (nextval('product_seq'), 'Venus ComfortGlide Breeze Women''s Razor', 'Razor with five blades and soothing aloe vera for a close and comfortable shave.', 12, 9.99, 1151, 'https://www. GilletteVenus.com/en-us/products/razors/comfortglide-breeze-womens-razor'),
        (nextval('product_seq'), 'One A Day Multivitamin', 'Daily multivitamin for overall health and well-being.', 18, 14.99, 1151, 'https://www.oneaday.com/vitamins/adult-multivitamins/one-a-day-men'),
        (nextval('product_seq'), 'Calvin Klein Eternity Eau de Parfum', 'Classic and timeless fragrance for men or women.', 8, 79.99, 1151, 'https://www.macys.com/shop/product/calvin-klein-eternity-eau-de-parfum-spray?ID=1030637'),
        (nextval('product_seq'), 'Maybelline Micellar Water Makeup Remover', 'Gentle and effective makeup remover for all skin types.', 15, 9.99, 1151, 'https://www.maybelline.com/en-US/face-makeup/makeup-remover/micellar-water-makeup-remover-liquid/maybelline-micellar-water-all-in-one-makeup-remover-100ml'),
        (nextval('product_seq'), 'Honest Amish Classic Beard Oil', 'Conditions and softens beard hair for a healthy and groomed look.', 10, 19.99, 1151, 'https://www.amazon.com/Honest-Amish-Classic-Beard-Oil/dp/B00HRPB12O');

INSERT INTO product (id, name, description, available_quantity, price, category_id,img) 
    VALUES 
        (nextval('product_seq'), 'Osprey Farpoint 40L Travel Backpack', 'A versatile backpack for hiking and travel.', 10, 149.99, 1201, 'https://www.osprey.com/farpoint-40-travel-pack-farpont40f22-296'),
        (nextval('product_seq'), 'Brooks Ghost 14 Running Shoes', 'Lightweight and cushioned shoes for a smooth run.', 15, 129.95, 1201, 'https://www.dickssportinggoods.com/f/brooks-ghost-14-running-shoes'),
        (nextval('product_seq'), 'Kelty Trail Ridge Tent', 'A durable and spacious tent for camping adventures.', 8, 199.99, 1201, 'https://www.backcountry.com/kelty-trail-ridge-4-tent-4-person-3-season-kel0769'),
        (nextval('product_seq'), 'Manduka PRO Yoga Mat', 'A thick and supportive mat for comfortable yoga practice.', 20, 79.99, 1201, 'https://www.manduka.com/products/manduka-pro-yoga-mat'),
        (nextval('product_seq'), 'Giro Chronicle MIPS Helmet', 'A lightweight and protective helmet for cycling.', 12, 69.99, 1201, 'https://www.outdoorgearlab.com/reviews/biking/mountain-bike-helmet/giro-chronicle-mips'),
        (nextval('product_seq'), 'Black Diamond Static Rope', 'A strong and reliable rope for rock climbing.', 5, 179.99, 1201, 'https://www.blackdiamondequipment.com/en_US/product/9-0-static-rope/'),
        (nextval('product_seq'), 'Shimano Stradic Spinning Rod', 'A versatile rod for freshwater and saltwater fishing.', 7, 99.99, 1201, 'https://fish.shimano.com/en-GB/product/rods/freshwaterpredator/versatilespinning/p-stradic-spinning.html'),
        (nextval('product_seq'), 'Werner Paddles Kalliste Paddle', 'A lightweight and adjustable paddle for kayaking.', 18, 119.99, 1201, 'https://wernerpaddles.com/products/kalliste-2-piece-straight-shaft'),
        (nextval('product_seq'), 'Arcteryx Sabre Jacket', 'A waterproof & breathable jacket for winter sports.', 3, 399.99, 1201, 'https://arcteryx.com/us/en/shop/mens/sabre-jacket'),
        (nextval('product_seq'), 'Adidas Telstar World Cup Soccer Ball', 'The official ball used for the FIFA World Cup.', 15, 29.99, 1201, 'https://www.ebay.com/itm/186009025868');

INSERT INTO product (id, name, description, available_quantity, price, category_id, img) 
    VALUES 
        (nextval('product_seq'), 'Wooden Building Blocks Set', 'Develop creativity and motor skills with these natural wood blocks.', 50, 35.99, 1251, 'https://www.walmart.com/browse/toys/wooden-blocks/4171_4186_5750443'),
        (nextval('product_seq'), 'Adorable Plush Stuffed Animal', 'A cuddly companion for playtime and bedtime.', 100, 19.99, 1251, 'https://www.target.com/c/stuffed-animals-plush-toys/-/N-5xtat'),
        (nextval('product_seq'), 'High-Speed Remote Control Car', 'Race and perform stunts with this exciting RC car.', 20, 79.99, 1251, 'https://www.amazon.com/Hobby-RC-Cars/b?ie=UTF8&node=166588011'),
        (nextval('product_seq'), 'Interactive Learning Board Game', 'Make learning fun with this engaging board game.', 30, 29.95, 1251, 'https://www.weareteachers.com/educational-board-games/'),
        (nextval('product_seq'), 'Deluxe Arts and Crafts Set', 'Spark creativity with this all-inclusive arts and crafts set.', 75, 24.50, 1251, 'https://www.amazon.com/Craft-Kits/b?ie=UTF8&node=166064011'),
        (nextval('product_seq'), 'Challenging Building Block Puzzle', 'Test problem-solving skills with this brainteasing puzzle.', 40, 17.99, 1251, 'https://www.buildingblockpuzzle.com/'),
        (nextval('product_seq'), 'Fashionable Doll and Accessories Set', 'Spark imaginative play with this stylish doll set.', 60, 39.99, 1251, 'https://www.amazon.com/Doll-Accessories/b?ie=UTF8&node=166119011'),
        (nextval('product_seq'), 'Set of Superhero Action Figures', 'Recreate epic adventures with these action figures.', 25, 22.50, 1251, 'https://www.entertainmentearth.com/s/action-figures/p'),
        (nextval('product_seq'), 'Classic Strategy Games Collection', 'Enjoy timeless games with this convenient collection.', 15, 14.99, 1251, 'https://www.rd.com/list/classic-board-games/'),
        (nextval('product_seq'), 'Cozy Play Tent for Kids', 'Create a fun and imaginative play space for children.', 45, 45.99, 1251, 'https://www.target.com/c/kids-tents-teepees-tunnels-dress-up-pretend-play-toys/-/N-5xt92');

INSERT INTO product (id, name, description, available_quantity, price, category_id, img)
    VALUES 
        (nextval('product_seq'), 'Organic Brown Rice', 'A healthy and nutritious whole grain rice.', 50, 3.99, 1301, 'https://www.istockphoto.com/photos/organic-rice'),
        (nextval('product_seq'), 'Fresh Green Apples', 'Crisp and sweet apples, perfect for snacking or baking.', 100, 1.99, 1301, 'https://www.pinterest.com/pin/fresh-and-juicy-green-apple--142778250678857935/'),
        (nextval('product_seq'), 'Whole Milk', 'Rich and creamy milk, a source of calcium and Vitamin D.', 20, 2.79, 1301, 'https://www.alamy.com/stock-photo/whole-milk-carton.html'),
        (nextval('product_seq'), 'Orange Juice', '100% pure squeezed orange juice, a great source of Vitamin C.', 30, 3.49, 1301, 'https://www.istockphoto.com/photos/orange-juice-carton'),
        (nextval('product_seq'), 'Coffee Beans', 'Freshly roasted coffee beans for a delicious cup of coffee.', 25, 7.99, 1301, 'https://www.istockphoto.com/photos/coffee-bean-bag'),
        (nextval('product_seq'), 'Pasta (Whole Wheat)', 'A healthy and filling alternative to regular pasta.', 40, 2.49, 1301, 'https://www.istockphoto.com/photos/whole-wheat-pasta'),
        (nextval('product_seq'), 'Olive Oil', 'Extra virgin olive oil, perfect for cooking and salad dressings.', 15, 6.99, 1301, 'https://www.istockphoto.com/photos/olive-oil-bottle'),
        (nextval('product_seq'), 'Oatmeal', 'A warm and comforting breakfast option, high in fiber.', 35, 2.99, 1301, 'https://www.alamy.com/stock-photo/quaker-oats-container.html'),
        (nextval('product_seq'), 'Green Tea', 'A healthy and refreshing beverage, rich in antioxidants.', 20, 4.49, 1301, 'https://www.shutterstock.com/search/green-tea-box-template');

INSERT INTO product (id, name, description, available_quantity, price, category_id, img) 
    VALUES 
        (nextval('product_seq'), 'Project Hail Mary', 'A thrilling sci-fi novel by Andy Weir.', 10, 18.99, 1351, 'https://www.planetary.org/space-images/project-hail-mary-art'),
        (nextval('product_seq'), 'Sapiens: A Brief History of Humankind', 'A captivating exploration of human history by Yuval Noah Harari.', 15, 22.50, 1351, 'https://www.pinterest.com/pin/354306695685263343/'),
        (nextval('product_seq'), 'The Very Hungry Caterpillar', 'A colorful and engaging story by Eric Carle.', 20, 9.99, 1351, 'https://www.alamy.com/stock-photo/the-very-hungry-caterpillar.html'),
        (nextval('product_seq'), 'Fearless (Taylor''s Version)', 'Re-recorded version of Taylor Swift''s iconic album.', 12, 15.99, 1351, 'https://www.last.fm/music/Taylor+Swift/Fearless+%28Taylor%27s+Version%29/+images'),
        (nextval('product_seq'), 'What''s Going On - Marvin Gaye', 'Classic Motown album on vinyl.', 5, 29.99, 1351, 'https://www.pinterest.com/pin/whats-going-on-when-marvin-gaye-unveiled-a-masterpiece--741545894864230937/'),
        (nextval('product_seq'), 'Guardians of the Galaxy: Vol. 2 (Original Score)', 'Music from the hit superhero movie.', 8, 17.99, 1351, 'https://en.wikipedia.org/wiki/Guardians_of_the_Galaxy_%28soundtrack%29'),
        (nextval('product_seq'), 'The Lord of the Rings Trilogy', 'Epic fantasy by J.R.R. Tolkien (ebook).', 1, 9.99, 1351, null),
        (nextval('product_seq'), 'Pride and Prejudice by Jane Austen', 'Narrated by [narrator name] (Audiobook).', 1, 19.99, 1351, null),
        (nextval('product_seq'), 'The Beatles - Stereo Box Set', 'Collection of remastered Beatles albums.', 3, 99.99, 1351, 'https://www.ebay.com/itm/254817679263'),
        (nextval('product_seq'), 'Can''t Stop the Feeling! (Justin Timberlake)', 'Upbeat pop song.', 1, 1.29, 1351, 'https://www.filmaffinity.com/en/movieimage.php?imageId=170003770');

INSERT INTO product (id, name, description, available_quantity, price, category_id, img) 
    VALUES 
        (nextval('product_seq'), 'Purina Pro Plan FOCUS Adult Shredded Chicken & Rice Formula Dry Dog Food', 'High-protein dog food for active adults', 50, 32.99, 1401, 'https://www.purina.com/pro-plan/products/dog-food'),
        (nextval('product_seq'), 'SmartyKat Crinkle Critters Catnip Toy', 'Filled with catnip for hours of fun', 20, 5.99, 1401, 'https://www.chewy.com/f/crinkle-cat-plush-mice-toys_c328_f58v370694'),
        (nextval('product_seq'), 'Marineland Emperor Bio-Wheel Aquarium Filter', 'Keeps your fish tank clean and healthy', 15, 49.99, 1401, 'https://www.petco.com/shop/en/petcostore/brand/marineland/fish/fish-tank-filtration'),
        (nextval('product_seq'), 'Drollery Squirrel Buster Classic Finch Feeder', 'Attract beautiful finches to your yard', 10, 19.99, 1401, 'https://store.bromebirdcare.com/products/squirrel-buster-finch'),
        (nextval('product_seq'), 'Kaytee Soft Comfort Aspen Bedding for Small Animals', 'Soft and absorbent bedding for your furry friend', 30, 8.99, 1401, 'https://www.chewy.com/kaytee-aspen-small-animal-bedding/dp/122960'),
        (nextval('product_seq'), 'Blueberry Pet Classic Leather Leash', 'Stylish and durable leather leash for your pup', 8, 39.99, 1401, 'https://www.blueberrypet.com/collections/leashes'),
        (nextval('product_seq'), 'Armarkat Cat Scratching Post with Hammock', 'Save your furniture with this attractive scratching post', 25, 29.99, 1401, 'https://www.amazon.com/stores/page/1653BF40-2E21-405F-AD91-CF9DA84BAE42'),
        (nextval('product_seq'), 'Aqueon Adjustable Aquarium Heater', 'Maintain the perfect temperature for your fish', 12, 17.99, 1401, 'https://www.petco.com/shop/en/petcostore/category/fish/fish-tank-heaters-chillers/fish-tank-submersible-heaters'),
        (nextval('product_seq'), 'Songbird Essentials Hanging Bird Bath', 'Provide a refreshing spot for your feathered friends', 5, 14.99, 1401, 'https://www.wayfair.com/outdoor/sb1/birds-bird-baths-c417303-a131749~442135.html'),
        (nextval('product_seq'), 'Living World Critter Carrier', 'Safe and secure transportation for your small pet', 15, 12.99, 1401, 'https://www.petsmart.com/bird/cages-and-stands/travel-carriers/all-living-things-bird-carrier-59151.html');

INSERT INTO product (id, name, description, available_quantity, price, category_id, img)
    VALUES 
        (nextval('product_seq'), 'Cozy Knitted Scarf', 'Keep warm in style with this hand-knitted scarf. Perfect for winter!', 10, 35.00, 1451, 'https://www.istockphoto.com/photos/knitted-scarf'),
        (nextval('product_seq'), 'Abstract Expressionism', 'A unique and expressive abstract painting.', 1, 150.00, 1451, 'https://unsplash.com/s/photos/abstract-art'),
        (nextval('product_seq'), 'Polymer Clay Earrings', 'Lightweight and stylish earrings handmade from polymer clay.', 15, 12.00, 1451, 'https://www.istockphoto.com/photos/polymer-clay-earrings'),
        (nextval('product_seq'), 'Handcrafted Ceramic Mug', 'Enjoy your morning coffee in this beautiful handmade mug.', 8, 20.00, 1451, 'https://www.pinterest.com/seanindundee/1000-ceramic-cups-and-mugs-handmade/'),
        (nextval('product_seq'), 'Bohemian Macrame Wall Hanging', 'Add a touch of texture and style to your walls with this macrame piece.', 5, 45.00, 1451, 'https://www.pinterest.com/sarahlillianc/macrame-wall-hangings/'),
        (nextval('product_seq'), 'Handbound Leather Journal', 'Capture your thoughts and ideas in this beautiful leather journal.', 3, 50.00, 1451, 'https://www.istockphoto.com/photos/leather-journal'),
        (nextval('product_seq'), 'Intricate Wood Carving', 'A unique piece of art created through wood carving.', 1, 75.00, 1451, 'https://www.istockphoto.com/photos/wood-carving'),
        (nextval('product_seq'), 'Cozy Crocheted Blanket', 'Snuggle up under this warm and comfy crocheted blanket.', 2, 60.00, 1451, 'https://za.pinterest.com/sharonblignaut/crochet-blankets-afghans-and-throws/'),
        (nextval('product_seq'), 'Watercolor Landscape', 'A serene and beautiful watercolor landscape painting.', 2, 80.00, 1451, 'https://unsplash.com/s/photos/watercolor-painting'),
        (nextval('product_seq'), 'Elegant Etched Glass Vase', 'Add a touch of sophistication to your home with this etched glass vase.', 4, 38.00, 1451, 'https://www.etsy.com/market/etched_glass_vase');

