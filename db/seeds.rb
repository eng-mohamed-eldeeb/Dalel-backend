require 'open-uri'
#! Create a default admin user
    AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
    user = User.create(email: "mo@mo.mo", password: "momomo", name: "Mohammed Saeed")

#! Create eras
    ancientEra = Era.create(name: "Ancient Era")
    greekEra = Era.create(name:"Greek Era")
    romanEra = Era.create(name:"Roman Era")
    islamicEra = Era.create(name:"Islamic Era")
 
#! Create sub eras
    sub_era_1 = SubEra.create(
        era: ancientEra,
        arabic_name: "العصر العتيق (الأسرتان 1 , 2)",
        english_name: "The ancient era (dynasties 1 and 2)" ,
        arabic_info: "يعود للملك ' مينا ' الفضل فى  تحقيق الوحدة السياسية لمصر حوالى سنة 3200 ق . م، واستطاع أن يؤسس أول أسرة حاكمة في تاريخ مصر الفرعونية، و قد أراد مينا أن يؤمن وحدة البلاد فأقام مدينة قرب رأس الدلتا سميت فيما بعد باسم 'ممفيس' ، وكانت هذه الوحدة عاملاً هاماً فى نهضة مصر فى شتى نواحى الحياة . ",
        english_info: "King Menes is credited with achieving political unity in Egypt around the year 3200 BC. M, and he was able to establish the first ruling family in the history of Pharaonic Egypt. Menes wanted to secure the unity of the country, so he established a city near the head of the Delta that was later named 'Memphis.' This unity was an important factor in the Renaissance of Egypt in all aspects of life."
    )
    sub_era_2 = SubEra.create(
        era: ancientEra,
        arabic_name: "الدولة القديمة (الأسرات من 3 إلى 6)",
        english_name: "Old Kingdom (dynasties 3 to 6)" ,
        arabic_info: "يعتبر عصر هذه الدولة فترة شباب مصر وقد تميزت بالاستقرار و الأمن والسلام ، مما يسّر تقدمها اقتصادياً و ثقافياً و فنياً ، و قد انعقد لواء الحكم لملوك الدولة القديمة من بناة  الأهرامات حوالي 2800 ق.م  بعد أن انتقل عرش البلاد إلى منف على يد الفرعون زوسر صاحب أقدم هرم معروف و هو الهرم المدرج بسقارة، و ازدهرت حضارة مصر في أيام هذه الدولة، وليس أدل علي ذلك من أهرامات الجيزة الضخمة للملوك خوفو وخفرع ومنكاورع .",
        english_info: "The era of this state is considered the period of Egypt’s youth, and it was characterized by stability, security, and peace, which facilitated its economic, cultural, and artistic progress. The ruling brigade of the kings of the Old Kingdom, who built the pyramids, was convened around 2800 BC after the throne of the country was transferred to Memphis at the hands of Pharaoh Djoser. He is the owner of the oldest known pyramid, which is the Step Pyramid at Saqqara. Egypt’s civilization flourished during the days of this state, and there is no clearer evidence of that than the huge pyramids of Giza of Kings Khufu, Khafre, and Menkaure."
    )
    sub_era_3 = SubEra.create(
        era: ancientEra,
        arabic_name: "العصر المتوسط الأول (الأسرات من 7 إلى 10)",
        english_name: "The First Middle Ages (Dynasties 7 to 10)" ,
        arabic_info:"بدأ هذا العصر حوالي سنة 2200 ق . م حين انفلت زمام الحكم من يد الفرعون حتى استطاع 'منتوحتب الثاني' توحيد البلاد مرة ثانية.",
        english_info: "This era began around 2200 BC. When the reins of power escaped from the hands of the Pharaoh, Mentuhotep II was able to unify the country again."
    )
    sub_era_4 = SubEra.create(
        era: ancientEra,
        arabic_name: "الدولة الوسطى (الأسرات 11 ,  12)",
        english_name: "Middle Kingdom (Dynasties 11, 12)" ,
        arabic_info: "بعد أن تمكن 'منتوحتب الثاني' أمير طيبة حوالي سنة 2065 ق . م من إعادة توحيد البلاد قام بتأسيس حكومة قوية نجحت في توطيد النظام و استتباب الأمن مما ساعد علي انتعاش البلاد اقتصادياً و تقدم الفنون و العمارة ثم بدأ سنة 2000 ق . م حكم رجل عظيم هو أمنمحات الأول صاحب الفضل الأكبر في بناء النهضة التي ظهرت أيام الدولة الوسطى .",
        english_info: "After Mentuhotep II, Prince of Thebes, succeeded in about the year 2065 BC. In order to reunify the country, he established a strong government that succeeded in consolidating the regime and establishing security, which helped the country’s economic recovery and the advancement of arts and architecture. Then, he began in the year 2000 BC. The reign of a great man, Amenemhat I, who is most credited with building the renaissance that emerged during the Middle Kingdom."
    )
    sub_era_5 = SubEra.create(
        era: ancientEra,
        arabic_name: "العصر المتوسط الثانى (الأسرات من 13 الى 17)",
        english_name: "The Second Middle Ages (Dynasties 13 to 17)" ,
        arabic_info:"خلال عصر الأسرة الثانية عشرة  حوالي سنة 1725 ق . م قامت القبائل الرعوية التي كانت تسكن فلسطين و أُطلق عليها اسم 'الهكسوس' بالإغارة على مصر واجتياح اراضيها ، فلما أخذت قوة الهكسوس في الضعف، هبّ أمراء طيبة يكافحون في سبيل استرداد حرية بلدهم المسلوبة وقد كتب الله لهم النجاح وتمكن أحمس من الاستيلاء على عاصمتهم في الدلتا و طردهم من البلاد .",
        english_info:"During the Twelfth Dynasty, around 1725 BC. The pastoral tribes that inhabited Palestine and were called 'Hyksos' raided Egypt and invaded its lands. When the power of the Hyksos began to weaken, the princes of Thebes rose up and struggled to regain the stolen freedom of their country. God decreed success for them and Ahmose was able to seize their capital in Delta and expel them from the country."
    )
    sub_era_6 = SubEra.create(
        era: ancientEra,
        arabic_name: "الدولة الحديثة (الأسرات من 18 إلى 20)",
        english_name: "New Kingdom (Dynasties 18-20)" ,
        arabic_info:"بعد أن طرد أحمس الهكسوس رجع الى بلاده سنة 1571 ق . م حيث قضى على ثورات النوبيين جنوباً واتجه الى الإصلاح الداخلى فى البلاد واهتم بإنشاء جيش عامل منظم وسلحه بكل الأسلحة المعروفة فى ذلك الوقت وزوده بالعجلات الحربية، ويُعد رمسيس الثانى من أشهر ملوك هذه الدولة وتعتبر حروبه آخر المجهودات التى بذلها ملوك الدولة الحديثة فى سبيل المحافظة على الوحدة  وقد انتهت خصومته مع ملك الحيثيين بتوقيع معاهدة عدم اعتداء بين الطرفين بعد معركة قادش، وتُعد هذه المعاهدة أول معاهدة سلام فى التاريخ وأصبحت مصر قوة كبرى، وصارت بذلك إمبراطورية عظيمة مترامية الأطراف.",
        english_info:"After Ahmose expelled the Hyksos, he returned to his country in 1571 BC. M, where he eliminated the revolts of the Nubians in the south and headed for internal reform in the country. He was concerned with creating an organized working army, arming it with all the weapons known at that time and supplying it with chariots. Ramesses II is considered one of the most famous kings of this country, and his wars are considered the last efforts made by the kings of the modern state in order to preserve Unity. His rivalry with the Hittite king ended with the signing of a non-aggression treaty between the two parties after the Battle of Kadesh. This treaty is considered the first peace treaty in history, and Egypt became a major power, thus becoming a great, sprawling empire."
    )
    sub_era_7 = SubEra.create(
        era: ancientEra,
        arabic_name: "العصر المتأخر (الأسرات من 21 إلى 30)",
        english_name: "Late Period (Dynasties 21 to 30)" ,
        arabic_info:"كان هذا العصر فصل الختام في التاريخ الفرعوني حيث تعرضت مصر منذ حكم الأسرة 21 وحتى الأسرة 28 لاحتلال كل من الآشوريين عام 670 ق.م ، ثم الفرس حتى انتهى حكم الفراعنة مع الأسرة الــ 30 ودخول الإسكندر الأكبر مصر .",
        english_info:"This era was the closing chapter in Pharaonic history, as Egypt, from the rule of the 21st Dynasty until the 28th Dynasty, was subjected to occupation by the Assyrians in 670 BC, then the Persians, until the rule of the Pharaohs ended with the 30th Dynasty and the entry of Alexander the Great into Egypt."
    )

#! Create subera's Sections
    # sub_era_1
    Section.create(
        arabic_title:"مقدمه",
        english_title:"Introduction",
        arabic_content:"يرجع اسم ( عصر بداية الأسر ) الي درجة الائتمان انه أول عصر يمكن فية يقين الاستقرار وتراث عرش مصر منذ أيامه بين أسرات حاكمه، ويرتبط بملوكها السجائر بروابط وصل القرابة الدم، اي انه هو والعصر يحدد تاريخ البدء، وهو من حوالي عام ( 3100 - 2686 ) قبل عيد الميلاد .
        وأيضاً بالعصر العتيق، اشارة الي تقدمه البعيد وسبقه لصور الدولة القديمة، او العصر الثيني او (لاي) نسبة الي مدينة ثيني او (طينة) التي تقع بالقرب من أبيدوس بصعيد مصر.
        يشمل هذا العصر استخدامتين (الاولى الشعبية) ، وقد امتاز ببداية استقرار ووحدة مصر الشعبية، وبمعرفة الكتابة منذ بدايتها، حيث أصبح ضروريا لأول مرة، كما يعتبر هو العصر للتحكم ولادارة عاصمة ادارية للبلاد، وتعاقب علي عرش مصر في هذا العصر التاسع عشر حاكمتان من الإدارة الفرعونية التي حكمت مصر .",
        english_content:"The name (the era of the beginning of the dynasties) is due to the degree of credit that it is the first era in which the stability and legacy of the throne of Egypt can be certain from its days among the families of its ruler, and its kings are linked to cigarettes by ties of blood kinship, meaning that it and the era determine the date of the beginning, which is from about the year (3100 - 2686). ) Before Christmas.
        And also the ancient era, referring to its distant progress and precedence of images of the Old Kingdom, or the Athenian era, or (Lay), in reference to the city of Theni or (Tyne), which is located near Abydos in Upper Egypt.
        This era includes two uses (the first is popular), and it was characterized by the beginning of the stability and unity of popular Egypt, and the knowledge of writing from its beginning, as it became necessary for the first time. It is also considered the era of control and administration of the administrative capital of the country, and two female rulers of administration succeeded to the throne of Egypt in this nineteenth era. The Pharaohs who ruled Egypt.",
        sub_era: sub_era_1,
    )
    Section.create(
        arabic_title:"الحضارة",
        english_title:"Civilization",
        arabic_content:"لعام 3600 ق.م. كان أساس مجتمعات العصر الحديث مصدرًا على طول نهر النيل، وجمع وتدجين الحيوانات. وبعد ذلك (حوالي 3600 ق.م.) بدأ المجتمع المصري يتطور بشكل قصير نحو حضارة كبيرة. ظهر خلال هذه الفترة فخار جديد ومميز، ويرتبط بنوع فخار جيد من فلسطين. أصبح استخدام النطاق الواسع خلال هذا الوقت النحاس. استخدمت مبادئ بلاد الرافدين في صناعة الطوب المجفف بالشمس والمباني التقنية، بما في ذلك استخدام القوس والجدران المزخرفة، وأصبحت شائعة خلال هذا الوقت.",
        english_content:"For the year 3600 BC. The foundation of modern-day societies was a source along the Nile River, collecting and domesticating animals. After that (about 3600 BC) Egyptian society began to develop briefly towards a major civilization. During this period a new and distinctive pottery appeared, associated with a fine type of pottery from Palestine. Copper became widely used during this time. Mesopotamian principles were used in the manufacture of sun-dried bricks and technical buildings, including the use of arches and decorated walls, and became popular during this time.",
        sub_era: sub_era_1,
    )
    Section.create(
        arabic_title:"الأسرة الاولي  ( 3100 - 2890 ) ق .م",
        english_title:"First Dynasty (3100 - 2890) BC",
        arabic_content:"ارتبط تأسيس حكم الأسرة الاولي بثلاثة اسماء ملكية ، هي مينا ( نعرمر ) وعحا - ومني ، وقد دارت حول هذه الاسماء اراء ومناقشات كثيرة ، فيري البعض ان الاسماء الثلاثة تدل علي ملك واحد ، بدأ حكمه باسم نعرمر، ثم لقب بلقب عحا بمعني ( المحارب ) ، ثم أخذ لقب مني اي ( الراعي او المثبت او الخالد ) ، والبعض يري ان نعرمر هو مني وان عحا كان ابننا لنعرمر .
        تتابع علي عرش الحكم بعد الملك نعرمر ثمانية حكام ، سموا باسماء كالتالي ( حور عحا -جر -واجي - دن - عج ايب - سمرخت - قاي عا - رع حوتب ) ، ومازالت هذه الاسماء موضع جدل لغوي وتاريخي بين الأثريين والمؤرخين الي الأن .",
        english_content:"The establishment of the rule of the First Dynasty was linked to three royal names: Mina (Narmer), Aha, and Mina. Many opinions and discussions took place around these names. Some believe that the three names indicate one king. He began his rule with the name Narmer, then he was given the title of Aha, meaning (the warrior). Then he took the title from me, meaning (the shepherd, the steadfast, or the immortal), and some believe that Narmer is from me, and that Aha was our son to Narmer.
        Eight rulers succeeded to the throne of power after King Narmer, named as follows (Hor-Aha - Djer - Wagi - Den - Ag Ib - Semerkhet - Qai A - Ra Hotep), and these names are still the subject of linguistic and historical controversy among archaeologists and historians to this day.",
        sub_era: sub_era_1,
    )
    Section.create(
        arabic_title:"انجازات أهم ملوك الأسرة الأولي",
        english_title:"Achievements of the most important kings of the First Dynasty",
        arabic_content:"نعرمر : وفقا لمانيتون وحسب قائمة ابيدوس هو (مينا ) موحد القطرين ، وهو مؤسس الأسرة الاولي ، ويعتبر الملك الاول لمصر ، نقل مقر الحكم بعد توحيد البلاد وارتدائه التاج ذو اللونين الي منف ( من نفر ) ، وهي المدينة التي اطلق عليها اليونانيون اسم ( ممفيس ) ، وأسس نعرمر معبد للاله بتاح في هذه المدينة ، حكم نعرمر حوالي 60 عام ، اصدر خلالهم القوانين وشيد المعابد ، كما قام بارسال حملات عسكرية لصد الغزوات القادمة من الصحراء الليبية ، ومات اثر جرحا تلقاه اثناء الصيد .
        حور عحا : جاء هذا الملك بعد نعرمر ، ربما يكون هو الملك تتي حسب قائمة ابيدوس ، لقب ب ( اتي ) في قائمة ابيدوس ، ولقب ب ( اتوتيس ) حسب مانيتون ، حارب بلاد النوبة وليبيا ، كما عرف الطب ، وشيد معبد للاله ( نيت ) في صا الحجر ، وله مقبرة في ابيدوس .
        جر : حسب قائمة ابيدوس هو اتي ، قام هذا الملك بمجموعة من الحروب والحملات الحربيه ، حيث غزا ارض سيناء ، والكنعان وبلاد النوبه ، وتوغل حتي وصل الي الشلال الثاني بالسودان ، كما قام بحملة ضد الليبين ، وكذلك اقام معهم بعض التجارات ، زوجته هي مريت نيت ، وله مقبره في ابيدوس .
        دن : اسمه النبتي سمتي وعرف في قائمة ابيدوس باسم حسابتي ، قام بعدة حملات علي سيناء ، ليحافظ علي مناجم المالاكيت التي اكتشفها البدو ، واحتفل في فترة حكمه بعيد ( الحب سد ) ، وله مقبرة بابيدوس ايضا .
        عج ايب : يعتبر مغتصب للحكم ، وفترة حكمة مليئة بالاضطرابات السياسية .
        سمر خت : هو ايضا مغتصب للحكم ، جاء بعد عج ايب وهو قليل الشهره ، واحتفل بعيد الحب سد ، وله مقبره في ابيدوس .
        قاي عا : اسمه قبح حسب ابيدوس ، وهو اخر ملوك الأسرة الاولي ، وله مقبرة في ابيدوس .",
        english_content:"Narmer: According to Manetho and according to the Abydos List, he is (Mena) the unifier of the two countries. He is the founder of the First Dynasty, and is considered the first king of Egypt. He moved the seat of government after unifying the country and wearing the two-colored crown to Memphis (from Nefer), which is the city that the Greeks called (Memphis). Narmer founded a temple to the god Ptah in this city. Narmer ruled for about 60 years, during which he issued laws and built temples. He also sent military campaigns to repel invasions coming from the Libyan desert. He died as a result of a wound he received while hunting.
        Hor-Aha: This king came after Narmer. He may be King Teti according to the Abydos list. He was called (Ati) in the Abydos list, and he was called (Atotis) according to Manetho. He fought Nubia and Libya. He also knew medicine, and built a temple to the god (Nate). In Sa Al-Hijr, he has a cemetery in Abydos.
        Djer: According to the list of Abydos, he came. This king carried out a number of wars and military campaigns, as he invaded the land of Sinai, Canaan, and Nubia, and penetrated until he reached the Second Cataract in Sudan. He also carried out a campaign against the Libyans, and also established some trade with them. His wife is Merit Nate. He has a cemetery in Abydos.
        Den: His Nabti name is Smti, and he was known in the Abydos list as Hesabati. He carried out several campaigns in the Sinai, to preserve the malachite mines discovered by the Bedouins. During his rule, he celebrated the “Love Dam” Day, and he also has the Babidos Cemetery.
        Aj Ib: He is considered a usurper of power, and a period of rule full of political turmoil.
        Samar Khatt: He was also a usurper of power. He came after Aj Ib and was little known. He celebrated Valentine’s Day in Sad, and has a cemetery in Abydos.
        Qai A: His name is Qabah according to Abydos. He is the last king of the First Dynasty, and he has a cemetery in Abydos.",
        sub_era: sub_era_1,
    )
    Section.create(
        arabic_title:"الأسرة الثانية (2890- 2686 ) ق .م",
        english_title:"Second Dynasty (2890-2686) BC",
        arabic_content:"في الحقيقة لانعرف اسباب انتهاء حكم الأسرة الاولي ، وسبب انتقال الحكم الي الأسرة الثانية ، ولا يوجد ابدا مايبرر هذا الانتقال ، ولكن نحن نتبع ترتيب مانيتون في تقسيمة للأسرات ، ولا نعرف ماجعله يبدا باسرة جديده ، اذ اننا لا نري اي تغير او انتقال مفاجئ فكل شئ كان يسير طبيعيا ، ولكن يعتقد البعض احتمال وجود نزاع بين الشمال والجنوب وبين اتباع الاله حورس والاله ست ، انتهي في عهد سخموي الزي يعتبر مؤسس الاسرة الثانية .
        عموما ظل امر ترتيب اسماء حكام هذه الاسرة ايضا موضع نقاش عند الباحثين والمؤرخين ، وقد عرفنا منهم سبع ملوك هم ( حتب سخموي - نب رع - ني نثر - ونج - سنج - خع سخم - خع سخموي ) .
        ملوك هذه الاسرة لم يختلفوا كثيرا عن ما سبقهم من الفراعنة في اعمالهم ، فقد قاموا باستغلال محاجر سيناء ، ومحاولة تهدئة الشمال والتوفيق بينها وبين الجنوب بسبب النزاعات كانت من اهم اعمالهم ، بعض ملوك هذه الاسره لم يعثر لهم علي مقابر بابيدوس ، حيث انهم كانوا يفضلون الاقامه في العاصمه الشمالية ( منف ) ، وقيل انهم اقاموا مقابرهم هناك ، قاموا بتشيد بعض المعابد للمعبودات المختلفه وخاصة الاله ( سوكر ) الصقر .",
        english_content:"In fact, we do not know the reasons for the end of the rule of the first dynasty, and the reason for the transfer of rule to the second dynasty, and there is absolutely no justification for this transfer, but we follow Maniton’s order in dividing the dynasties, and we do not know what made him start a new dynasty, as we do not see any sudden change or transition, so everything It was proceeding normally, but some believe that there might be a conflict between the north and the south and between the followers of the god Horus and the god Set, which ended during the reign of Sekhemwy, who is considered the founder of the Second Dynasty.
            In general, the order of the names of the rulers of this family also remained a subject of debate among researchers and historians, and we know of seven kings from them: (Hetepsekhemwy - Nebre - Nithar - Weng - Senge - Khasekhem - Khasekhemwy).
            The kings of this dynasty did not differ much from the pharaohs who preceded them in their actions. They exploited the Sinai quarries, and trying to calm the north and reconcile it with the south due to the conflicts was one of their most important actions. Some of the kings of this dynasty were not found in the tombs of Babidos, as they preferred to reside there. In the northern capital (Memphis), it was said that they established their tombs there. They built some temples for various deities, especially the god (Sokar), the falcon.",
        sub_era: sub_era_1,
    )
    Section.create(
        arabic_title:"خصائص وملامح عصر الأسرات ( العصر العتيق )",
        english_title:"Characteristics and features of the Dynastic Era (Ancient Era)",
        arabic_content:"بعد عملية التوحيد بين الدولتين والربط بين الصعيد والدلتا ، كان من اهم العوامل التي اتبعها الملوك في التوحيد بين الدولتين ، هي عملية المصاهره ، وازدواج الالقاب ، والاشتراك في عبادة الالهه ، فمثلا تزوج الملك نعرمر من احدي سليلات البيت الحاكم القديم في الدلتا وهي ( نيت حوتب ) ، وتزوج الملك جر من اميرة من الدلتا هي ( مريت نيت ) .
        كما مزج ملوك هذه الفترة بين تاجي الحكم في الدولتين الي تاج موحد يحمل شعار الدولتين ، كما اهتم حكام هذا العصر بالاعياد الدينية ، واحتفالات الطقوس الجنائزية .
        
        وتعتبر فترة حكم الاسرتين الاولي والثانية هي صلة الوصل بين فترة ماقبل الاسرات وعصر الاسرات ، من ناحية انتقال مصر من امارات متفرقة الي دوله موحده ، اضافة الي الانتقال الحضاري الزي شهدتة هذه الفترة .
        وكان من اهم ملامح هذا العصر ، تأسيس القصر الفرعوني الزي كان دورا للحكم ، حيث كان هناك وزير للشمال ووزير للجنوب والفرعون يعلوهما بصفته الحاكم للدوله ، كما تم تنظيم القصر الملكي ليتضمن عددا كبيرا من الموظفين الزين يؤدون الخدمات الاداريه و الخاصه للملك ، كما تم انشاء المصاطب لدفن الملوك ، فقد قام كل ملك من الملوك بانشاء مصطبتين واحده ف الشمال واخري بالجنوب في ابيدوس ، كانت احداهما لدفن مؤمياء الملك والثانيه مقبرة رمزية .
        عرف الفن المصري تطورا كبيرا في هذه المرحلة في الرسم والنحت ، كما تطورت الصناعات المختلفه ، فلم يكتفي المصريون بصناعة الألات والأدوات والأواني من الفخار والحجر والخشب والعاج ، كما كان قديما في عصر ما قبل الاسرات ، بل تخطوا سابقيهم بصناعة الالات من المعادن والاحجار الكريمه بمهارة فائقه ، كما ظهرت مهارة المعماريين والمهندسين في انشاء المقابر الملكية ، باستخدام الاحجار الجيريه والجيرانيتية في البناء ، كما شهدت هذه المرحله ولادة الكتابة التصويرية التي تعرف باسم الهيروغليفية .
        الجانب المعماري : 
        تميزت مدن عصر بداية الاسرات بعمرانها ، ودل علي هذا العمران اطلال اسوارها وحصونها ومعابدها ، كما تمثلت في رسوم ونقوش مختصرة صورت علي الاثار الصغيرة ، وشيدت في هذه المرحلة قصور من الطوب اللبن ، كما استخدم الحجرعلي نطاق ضيق لاقامة الاعمدة واعتاب واكتاف الابواب .
        وكان يستخدم الطوب اللبن في بناء مساكن الكبار والصغار من الموظفين الاغنياء والفقراء علي حد سواء نظرا لتوافرة وقلة تكلفته ، وكانت المساكن تبني حوائطها من الطوب اللبن اما الاعمده واكتاف الابواب كانت تبني من الحجر او من الخشب احيانا ، وكانت تسقف بالحصير والجريد .
        وكانت تشيد المقابر في المناطق الصحراوية الجافة ، وينحت الجزء السفلي منها في باطن الصخر ، وكانت تبني المقابر في منطقة ابيدوس بالصعيد ، وفي المنطقة الشمالية في منف وفي سقارة ، واختلف طرازها بعض الشئ في كل من الوجهين عن الاخر .",
        english_content:"After the process of unifying the two states and linking Upper Egypt and the Delta, one of the most important factors that the kings followed in unifying the two states was the process of intermarriage, duality of titles, and participation in the worship of the gods. For example, King Narmer married one of the descendants of the ancient ruling house in the Delta, namely (Neithotep King Djer married a princess from the Delta, Merit Nate.
        The kings of this period also combined the crowns of power in the two countries into a unified crown bearing the emblem of the two countries. The rulers of this era also paid attention to religious holidays and funeral ritual celebrations.
        
        The period of rule of the First and Second Dynasties is considered the link between the pre-dynastic period and the dynastic era, in terms of Egypt’s transition from separate emirates to a unified state, in addition to the cultural transition witnessed in this period.
        One of the most important features of this era was the establishment of the Pharaonic Palace. It was a role of government, where there was a minister for the north, a minister for the south, and the pharaoh above them in his capacity as ruler of the state. The royal palace was also organized to include a large number of decorated employees who performed administrative and private services for the king, and terraces were also created. To bury the kings, each king built two mastabas, one in the north and the other in the south in Abydos. One of them was to bury the king’s mummy and the second was a symbolic tomb.
        Egyptian art witnessed great development at this stage in painting and sculpture, as did various industries. Not only did the Egyptians manufacture instruments, tools, and utensils from pottery, stone, wood, and ivory, as was the case in the pre-dynastic era, but they surpassed their predecessors in manufacturing instruments from metals and precious stones with great skill. The skill of architects and engineers also appeared in constructing royal tombs, using limestone and granite in construction. This stage also witnessed the birth of pictorial writing known as hieroglyphics.
        Architectural aspect:
        The cities of the Early Dynastic Era were distinguished by their urbanization, and this urbanization was indicated by the ruins of their walls, forts, and temples, as represented in drawings and brief inscriptions depicted on small monuments. Palaces were built in this stage of mud brick, and stone was also used on a small scale to erect columns, lintels, and shoulders of doors.
        Mud bricks were used to build homes for adults and children, both rich and poor, due to their availability and low cost. The walls of the homes were built of mud bricks, while the columns and shoulders of the doors were built of stone or sometimes of wood, and they were roofed with mats and parchment.
        Tombs were built in dry desert areas, and the lower part of them was carved into the rock. Tombs were built in the Abydos region of Upper Egypt, and in the northern region of Memphis and Saqqara, and their style differed somewhat in both aspects from the other.",
        sub_era: sub_era_1,
    )
    Section.create(
        arabic_title:"النشاط الخارجي لملوك عصر الأسرات",
        english_title:"The external activity of the kings of the dynastic era",
        arabic_content:"صورت نقوش هذا العصر واثاره وجود نشاطات خارجية سلمية وحربية لموك عصر الاسرتين الاولي والثانية في عصر الاسرات ، فقد عثر علي اسم الملك ( جر ) من ملوك الاسرة الاولي مسجلا علي صخور جبل الشيخ سليمان قرب وادي حلفا ، مما يدل علي وجود اتصالات جنوبيه مع منطقة النوبه والسودان ، ربما اراد الملك منها استغلال مناجم الذهب في وادي حلفا ، وقام جيشه بحماية هذه المناجم .
        كما عثر علي نقش للملك ( واجي ) من ملوك الاسرة الاولي ايضا علي صخرة بالقرب من البحر الاحمر ، في وادي يصل بينه وبين ادفو ، مما يدل علي استغلال الاحجار ومعادن الوادي ، او استغلال الوادي كطريق للتجارة المتبادله بين النيل والبحر الاحمر .
        كما استورد المصريون اخشاب الارز والصنوبر من فينيقيا ، واستخدموها في تسقيف مقابر الملوك في ابيدوس ، كما استخدموها في صناعة السفن الكبيرة في عهد الملك حور عحا ، مما يدل علي اتصال مصر بغرب اسيا ، كما استوردت مصر الزيوت والخمور في اواني فخاريه من سوريا وفلسطين .
        كما اتصلت مصر خارجيا ايضا مع كريت ، فقد عثر بتري علي بعض الاواني تشبه في زخرفتها الاواني الكريتية المعروفة .",
        english_content:"The inscriptions of this era and its effects depict the presence of peaceful and warlike external activities of the Muk era of the First and Second Dynasties in the Dynastic Era. The name of the king (Jar) of the kings of the First Dynasty was found recorded on the rocks of Mount Sheikh Suleiman near Wadi Halfa, which indicates the presence of southern contacts with the Nubia region. And Sudan, perhaps the king wanted to exploit the gold mines in Wadi Halfa, and his army protected these mines.
        An inscription of King Waji, one of the kings of the First Dynasty, was also found on a rock near the Red Sea, in a valley connecting it to Edfu, which indicates the exploitation of the stones and minerals of the valley, or the exploitation of the valley as a route for mutual trade between the Nile and the Red Sea.
        The Egyptians also imported cedar and pine wood from Phenicia, and used it to roof the tombs of the kings in Abydos. They also used it to make large ships during the reign of King Hor-Aha, which indicates Egypt’s connection with West Asia. Egypt also imported oils and liquor in pottery vessels from Syria and Palestine.
        Egypt also had external contact with Crete. Petrie found some vessels similar in decoration to the well-known Cretan vessels.",
        sub_era: sub_era_1,
    )
    Section.create(
        arabic_title:"الاستكشافات",
        english_title:"Explorations",
        arabic_content:"صفيحة صنعت أثناء فترة الأسرات المبكرة في مصر القديمة. تصور رجلًا على متن قارب إلى جانب فرس النهر وتمساح
        تقع المواقع الأثرية التي تعود إلى العصر العتيق، مستوطنة عزبة «تل كفور نجم» (حوالى 5 كم جنوب غرب مدينة كفر صقر، محافظة الشرقية). فقد عثر على شواهد أثرية عديدة تؤكد تبعية الموقع إلى العصر المُبكر. واجرت جامعة الزقازيق حفائرها بالموقع وأسفرت عن اكتشاف منطقة سكنية من عصر ما قبل الأسرات، وجبانة تضم 127 مقبرة معظم محتوياتها سليمة. منها 60 مقبرة من عصر الأسرة الأولى و 23 مقبرة من نفس العصر؛ و17 مقبرة في مستوى العصر العتيق؛ و13 مقبرة حافلة بالكثير من القرابين، منها مقبرتان لطفلين داخل إنائين من الفخار (موسم 1990م). ودفنت بعضها على هيئة القرفصاء. وهياكل عظمية داخل أوانى وجرار فخارية يحمل معظمها علامات واسم الملك نارمر. وتوابيت معها حُلى (أساور من حجر الشست، وخلخال من الحجر في الساق اليمنى)؛ وألواح الكُحل وأوانى حجرية من الشست والألباستر، ولوحات من الإردواز (الشست) لإعداد الكحل. وذلك بالإضافة إلى أوانى أخرى نحاسية، وقطع من عظام حيوانية، وبقايا آنية بداخلها عظام حيوانية (مقبرة 127) وقرابين. ومن التمائم جعران من حجر الحية الأخضر (؟)، وتميمة على هيئة ذبابة مثقوبة من حجر أخضر داكن، وتميمة من الذهب على هيئة طائر «أيبس» (اللقلق) بساق واحد، وهي من الحالات النادرة في هذا المكان من العصر العتيق. كما عثر على تميمة أخرى من العقيق لعلها على هيئة صقر مُجنَّح (مقبرة 123). وهذا بالإضافة إلى أجزاء من جدران للمنطقة السكنية القديمة، وبداخلها عدة أماكن بها آثار حريق لأفران، ومواقد كانت تخدم أهل القرية.",
        english_content:"A plate made during the Early Dynastic Period in ancient Egypt. Picture a man on a boat alongside a hippopotamus and a crocodile
        The archaeological sites dating back to the ancient era are located in the settlement of Ezbet “Tel Kafour Negm” (about 5 km southwest of the city of Kafr Saqr, Sharqia Governorate). Numerous archaeological evidences have been found confirming that the site dates back to the early era. Zagazig University conducted excavations at the site and resulted in the discovery of a residential area from the pre-dynastic era, and a cemetery containing 127 tombs, most of its contents intact. Of these, 60 tombs are from the First Dynasty and 23 tombs are from the same era. And 17 tombs at the level of the Archaic era. And 13 graves full of offerings, including two graves of two children inside two pottery vessels (1990 season). Some of them were buried in a squat shape. Skeletons inside pottery pots and jars, most of which bear marks and the name of King Narmer. And coffins with jewelry (schist stone bracelets, and a stone anklet on the right leg); And kohl boards, stone vessels made of schist and alabaster, and boards made of slate (schist) for preparing kohl. This is in addition to other copper vessels, pieces of animal bones, and the remains of vessels containing animal bones (cemetery 127) and offerings. The amulets include a scarab made of green snake stone (?), an amulet in the form of a fly pierced from a dark green stone, and a gold amulet in the form of an “ibis” (stork) bird with one leg, which is one of the rare cases in this place from the ancient era. Another agate amulet was also found, perhaps in the form of a winged falcon (cemetery 123). This is in addition to parts of the walls of the old residential area, inside which are several places containing traces of fire from ovens and stoves that used to serve the villagers.",
        sub_era: sub_era_1,
    )
    Section.create(
        arabic_title:"مستوطنات في كنعان والنوبة",
        english_title:"Settlements in Canaan and Nubia",
        arabic_content:"تم إثبات الاستيطان والاستعمار المصري منذ حوالي 3200 قبل الميلاد فصاعدًا في جميع أنحاء منطقة جنوب كنعان مع كل أنواع القطع الأثرية تقريبًا: العمارة (التحصينات والسدود والمباني) والفخار والأواني والأدوات والأسلحة والأختام، إلخ. تم العثور على 20 سرخ منسوب إلى نارمر - أول حاكم في عصر الأسرات المبكرة - في كنعان. هناك أيضًا أدلة على الاستيطان والاحتلال المصريين في النوبة السفلى بعد انتهاء ثقافة المجموعة النوبية.",
        english_content:"Egyptian settlement and colonization from about 3200 BC onwards are attested throughout the southern Canaan region with almost every type of artefact: architecture (fortifications, dams, buildings), pottery, utensils, tools, weapons, seals, etc. 20 serekhs attributed to Narmer - the first ruler of the Early Dynastic Period - have been found in Canaan. There is also evidence of Egyptian settlement and occupation in Lower Nubia after the Nubian Group culture ended.",
        sub_era: sub_era_1,
    )
    # sub_era_2
    Section.create(
        arabic_title:"مقدمه",
        english_title:"Introduction",
        arabic_content:"المملكة المصرية القديمة (2686 ق.م - 2181 ق.م) تُعرف أيضًا باسم «عصر بناة الأهرامات» وهي أول وأقدم مملكة في التاريخ وتضم الأسرةُ المصرية الثالثة والأسرةُ المصرية الرابعة العظماءَ وبهما أتقن الملك سنفرو فن بناء الأهرامات وشيدت أهرامات الجيزة تحت حكم الملوك خوفو وخفرع ومنقرع. السجلاتُ التاريخية لهذه الفترة -الأسرة الرابعة والأسرة السادسة- نادرةٌ ويعتبر المؤرخون أن تاريخَ العصر «مكتوبٌ بالحجر» حرفيًا ومعماريٌّ إلى حد كبير من حيث أنَّه من خلال الآثار ونقوشها تمكن العلماء من بناء التاريخ. تنقل الأهرامات نفسها معلومات شحيحة عن بنائها، لكن المعابد الجنائزية التي شُيِّدت في الجوار والشواهد المصاحبة لها توفر أسماء الملوك ومعلومات أخرى مهمة. علاوة على ذلك، فإن النقوش الحجرية الموجودة في مكان آخر من ذلك الوقت تسجل أحداثًا مختلفة وتواريخ حدوثها. أخيرًا، يوفر قبر آخر ملوك الأسرة المصرية الخامسة، أوناس، نصوص الهرم الأولى (لوحات ونقوش متقنة داخل المقبرة) التي تلقي الضوء على المعتقدات الدينية في ذلك الوقت.

        ومع ذلك، فإن الأهرامات هي أكثر ما اشتهرت به المملكة القديمة. كتب المؤرخ مارك فان دي ميروب كيف أن المملكة القديمة «ربما لا مثيل لها في تاريخ العالم من حيث مقدار البناء الذي قاموا به». تطلبت الأهرامات في الجيزة وأماكن أخرى خلال هذه الفترة كفاءة بيروقراطية غير مسبوقة لتنظيم القوى العاملة التي بنت الأهرامات، وكان من الممكن أن تعمل هذه البيروقراطية فقط في ظل حكومة مركزية قوية.
        
        صاغ عالم المصريات الألماني كريستيان تشارلز جوسياس فون بنسن مفهوم «المملكة القديمة» كواحد من ثلاثة «عصور ذهبية»، وتعريفه سوف تتطور بشكل ملحوظ خلال القرنين التاسع عشر والعشرين. لم يكن فقط آخر ملوك عصر الأسرة المبكرة مرتبطًا بأول ملوك الدولة القديمة، بل كان أيضًا «العاصمة»، المقر الملكي، بقي في ممفيس. المبرر الأساسي للفصل بين الفترتين هو التغيير الثوري في العمارة المصحوب بالتأثيرات على المجتمع المصري واقتصاد مشاريع البناء الكبيرة.
        
        يُنظر إلى المملكة القديمة في الغالب على أنها الفترة من الأسرة الثالثة إلى الأسرة السادسة. المعلومات من الأسرة الرابعة إلى السادسة في مصر شحيحة، ويعتبر المؤرخون أن تاريخ العصر حرفيًا «مكتوب بالحجر» ومعماري إلى حد كبير لأنه من خلال الآثار ونقوشها تمكن العلماء من بناء تاريخ. عالم المصريات تشمل أيضًا ممفيس الأسرات السابعة والثامنة في المملكة القديمة كاستمرار. للإدارة المركزية في ممفيس. في حين كانت المملكة القديمة فترة من الأمن الداخلي والازدهار، تلتها فترة من الانقسام والتدهور الثقافي النسبي التي أشار إليها علماء المصريات باسم الفترة الانتقالية الأولى. خلال عصر الدولة القديمة، أصبح ملك مصر الإله الحي الذي حكم بشكل مطلق ويمكن أن يطالب بخدمات وثروة رعاياه.
        
        في عهد الملك زوسر، أول ملوك الأسرة الثالثة للمملكة القديمة، تم نقل العاصمة الملكية لمصر إلى ممفيس، حيث أنشأ زوسر بلاطه. بدأ عهد جديد من البناء في سقارة في عهده. يعود الفضل إلى المهندس المعماري للملك زوسر، إمحوتب، في تطوير البناء بالحجر ومع مفهوم الشكل المعماري الجديد، الهرم التدريجي. القديم ربما اشتهرت المملكة بالعدد الكبير من الأهرامات التي شيدت في هذا الوقت كأماكن دفن لملوك مصر.",
        english_content:"The Old Egyptian Kingdom 2686 BC - 2181 BC is also known as the “Age of Pyramid Builders.” It is the first and oldest kingdom in history. It includes the great Egyptian Third Dynasty and the great Fourth Egyptian Dynasty, through which King Sneferu mastered the art of building pyramids, and the Giza Pyramids were built under the rule of Kings Khufu. Khafre and Menkaure. Historical records for this period - the Fourth Dynasty and the Sixth Dynasty - are scarce and historians consider the history of the era to be largely literal and architectural “written in stone” in that it is through antiquities and their inscriptions that scholars were able to construct history. The pyramids themselves convey scant information about their construction, but the funerary temples built nearby and their accompanying stelae provide the names of the kings and other important information. Furthermore, stone inscriptions found elsewhere from that time record various events and the dates they occurred. Finally, the tomb of the last king of the Fifth Dynasty of Egypt, Unas, provides the first Pyramid Texts (elaborate paintings and inscriptions within the tomb) that shed light on the religious beliefs of the time.

        However, it is the pyramids that the Old Kingdom is most famous for. Historian Mark van de Mierop wrote how the Old Kingdom was “perhaps unparalleled in world history in the amount of building they did.” The pyramids at Giza and elsewhere during this period required unprecedented bureaucratic efficiency to organize the workforce that built the pyramids, and this bureaucracy could only function under a strong central government.
        
        The German Egyptologist Christian Charles Josias von Bunsen coined the concept of the 'Old Kingdom' as one of three 'golden ages', and his definition would evolve significantly during the nineteenth and twentieth centuries. Not only was the last king of the Early Dynasty related to the first king of the Old Kingdom, but his 'capital', the royal residence, remained in Memphis. The primary justification for separating the two periods is the revolutionary change in architecture accompanied by the effects on Egyptian society and the economy of large construction projects.
        
        The Old Kingdom is mostly viewed as the period from the Third Dynasty to the Sixth Dynasty. Information from the Fourth to Sixth Dynasties in Egypt is scarce, and historians consider the history of the era to be literally “written in stone” and largely architectural because it is through antiquities and their inscriptions that scholars were able to construct a history. Egyptology also includes Memphis of the Seventh and Eighth Dynasties of the Old Kingdom as a continuation. For central administration in Memphis. While the Old Kingdom was a period of internal security and prosperity, it was followed by a period of division and relative cultural decline that Egyptologists refer to as the First Intermediate Period. During the Old Kingdom, the king of Egypt became a living god who ruled absolutely and could demand the services and wealth of his subjects.
        
        During the reign of King Djoser, the first king of the Third Dynasty of the Old Kingdom, the royal capital of Egypt was moved to Memphis, where Djoser established his court. A new era of construction began in Saqqara during his reign. King Djoser's architect, Imhotep, is credited with developing stone construction and with the concept of a new architectural form, the stepped pyramid. The ancient kingdom is perhaps best known for the large number of pyramids built at this time as burial places for the kings of Egypt.",
        sub_era: sub_era_2,
    )
    Section.create(
        arabic_title:"صعود المملكة القديمة",
        english_title:"Rise of the Old Kingdom",
        arabic_content:"بدأت الثالثة في مصر (2686-2613 قبل الميلاد) بالملك زوسر المشهور بالهرم المدرج في سقارة. على الرغم من وجود بعض المصادر التي تدعي أن ملكًا يُدعى سا ناختي أسس الأسرة الثالثة، إلا أن هذه الادعاءات يتم الطعن فيها بشكل روتيني لعدم وجود أدلة. التسلسل الزمني لمانيتون غامض فيما يتعلق بمن كان سا ناختي، عندما حكم في الأسرة الثالثة، وحتى اسمه. لا يُعرف اسم سا ناختي إلا من خلال قائمة ملوك أبيدوس، ورق البردي تورين، واثنين من النقوش البارزة الموجودة في المقبرة المعروفة باسم مصطبة K2 في بيت خلاف. كان يُعتقد أن هذا هو قبر سا ناختي ولكن هذا التعريف تم الطعن فيه ودحضه. لم يُعرف أي شيء عن عهد سا ناختي وقد يكون اسمه إشارة إلى ملك آخر. على الرغم من قلة التفاصيل المتاحة عن عهد زوسر، فمن المؤكد أنه كان ملكًا في بداية الأسرة الثالثة ومن الواضح أيضًا أنه تبع آخر ملوك الأسرة الثانية خع سخموي",
        english_content:"The third began in Egypt (2686-2613 BC) with King Djoser, famous for the Step Pyramid at Saqqara. Although there are some sources that claim that a king named Sa Nakhty founded the Third Dynasty, these claims are routinely disputed for lack of evidence. Manetho's chronology is ambiguous as to who Sa-nakhe was, when he ruled in the Third Dynasty, and even his name. The name Sa-nakhe is known only from the Abydos king list, the Turin papyrus, and two bas-reliefs found in the tomb known as Mastaba K2 at Beit Khallaf. This was thought to be the tomb of Sa Nakhti but this identification has been disputed and refuted. Nothing is known about Sa-nakhe's reign and his name may be a reference to another king. Although few details are available about Djoser's reign, it is certain that he was king at the beginning of the Third Dynasty and it is also clear that he followed the last king of the Second Dynasty, Khasekhemwy",
        sub_era: sub_era_2,
    )
    Section.create(
        arabic_title:"الهرم الأول",
        english_title:"The first pyramid",
        arabic_content:"على الرغم من أن هرم زوسر، الذي صممه المهندس المعماري والوزير إمحوتب، هو أول هرم مصر، إلا أنه أقرب في البناء إلى مقابر المصطبة في فترة الأسرات المبكرة من ما يسمى بـ «الأهرامات الحقيقية» من الأسرة الرابعة للمملكة القديمة. انتقل تطور بناء الهرم في الأسرة الثالثة من المصاطب إلى المصاطب المكدسة لأهرامات زوسر وسخم خت وخع با. أدت هذه الأهرامات في وقت لاحق إلى ظهور أهرامات الجيزة الضخمة، ولكن، كما لوحظ، تشترك مع المصطبة السابقة أكثر من الهياكل اللاحقة.

        بدأ الهرم المدرج كمقبرة مصطبة بسيطة ذات سقف مسطح وجوانب مائلة، على غرار العديد من المقابر من السلالات السابقة. ومع ذلك، كان لدى المهندس المعماري إمحوتب مخطط أعظم في ذهنه لمنزل ملكه الأبدي. الهرم المدرج عبارة عن سلسلة من المصاطب المكدسة فوق بعضها البعض، كل مستوى أصغر قليلاً من المستوى الموجود تحته، لتشكيل شكل هرم. كانت المصاطب السابقة مبنية من الطوب الطيني، لكن الهرم المدرج كان مصنوعًا من كتل حجرية منحوتة عليها صور الأشجار (المقدسة لآلهة مصر) والقصب (ربما يرمز إلى حقل القصب، والحياة الآخرة المصرية). عند اكتماله، ارتفع الهرم المدرج 204 قدمًا (62 مترًا) وكان أطول مبنى في عصره. يضم مجمع الهرم معبدًاوالأفنية والأضرحة وأماكن المعيشة للكهنة تغطي مساحة 40 فدانًا (16 هكتارًا) ومحاطة بجدار يبلغ ارتفاعه 30 قدمًا (10.5 مترًا). تم حفر الغرف الفعلية للمقبرة أسفل القاعدة كمتاهة من الأنفاق مع غرف خارج الممرات لتثبيط اللصوص وحماية جسد ومقتنيات الملك. ومع ذلك، لم تنجح هذه الخطة، حيث تم سرقة القبر في العصور القديمة من جميع الأشياء الثمينة بما في ذلك جسد الملك؛ فقط قدمه وجدت في القبر.
        
        
        رأس ملك، ح. 2650-2600 قبل الميلاد متحف بروكلين. كانت أقدم تمثيلات الملوك المصريين على نطاق ضيق. من الأسرة الثالثة، صنعت تماثيل تظهر الحاكم بالحجم الطبيعي. هذا الرأس الذي يرتدي تاج صعيد مصر يفوق المقياس البشري
        .
        
        ومع ذلك، فإن تصميم وبناء الهرم المدرج يجسد براعة ورؤية بناة الأسرة الثالثة الذين قاموا لاحقًا برفع الهرم المدفون وهرم الطبقات بين العديد من المعالم والمعابد الأخرى. وضع هؤلاء الحالمون الأوائل أسس «الأهرامات الحقيقية» اللاحقة من الأسرة الرابعة التي أثارت اهتمام الناس وفتنهم على مر القرون منذ إنشائها. خلال الأسرة الثالثة، العمارة، التكنولوجيا، الدين، وخطت الفنون خطوة كبيرة إلى الأمام حيث خطط الناس وبنوا هذه المقابر والآثار العظيمة لحكامهم. تم تصميم الهرم لإيواء رفات الملك وتوفير منزل لروحه للتعرف عليه والقدرة على السفر إليه لزيارات الطائرة الأرضية؛ مهما كانت التسميات أو الاستخدامات الأخرى التي ينسبها الناس إلى الأهرامات على مر القرون منذ بنائها، كان هذا هو الغرض الأصلي منها. علاوة على ذلك، على الرغم من الادعاءات المتكررة بعكس ذلك، لم يتم بناء هذه الأعمال العظيمة ولا الأهرامات اللاحقة من قبل العبيد ولكن من قبل الحرفيين المصريين المهرة والعمال المأجورين. توضح الأدلة الأثرية أن أولئك الذين عملوا في الأهرامات والآثار الأخرى في جميع أنحاء مصر حصلوا على رواتبهم أو أدوا واجباتهم كخدمة للآلهة وملكهم.
        
        يتطلب تصميم وبناء هرم زوسر المتدرج من البناة التفكير بمصطلحات أكبر من أسلافهم. في السابق، كانت المصطبة البسيطة بمثابة قبر ولكن الخطة الآن هي إنشاء سلسلة من المصاطب مكدسة فوق بعضها البعض للوصول إلى السماء، وتحيط بها مقبرة تكرم الموتى وتذهل الأحياء. من أجل تحقيق هذه الرؤية، تم التخلص من الطرق القديمة للبناء باستخدام الطوب والخشب بالطين لصالح الحجر، وسيؤثر هذا القرار الفردي على الفن والعمارة المصرية على مدار 2000 عام القادمة. علاوة على ذلك، تتطلب التكنولوجيا المطلوبة لتحريك الحجر وتشكيله ووضعه تفكيرًا مبتكرًا ومهارة في الأعمال الحجرية التي لم تكن ضرورية في الأوقات السابقة.
        
        يبدو أن هذه التغييرات قد نتجت عن استقرار عهد زوسر وتطور المفاهيم الدينية في الروح التي شجعها هذا الاستقرار. كان يُعتقد أن روح المتوفى تتكون من تسعة أجزاء، أحدها، البا، كان على شكل طائر ويمكن أن ينزل مرة أخرى إلى الأرض أو يطير إلى السماء. هذا المفهوم، إلى جانب الاعتقاد الراسخ بالحياة بعد الموت، ألهم المصريين لبناء منازل كبيرة للملوك هم لإيواء الجسد المادي الكا وتمكين البا من النزول لزيارته إذا اختاروا ذلك. هرم زوسر، الأول من نوعه، يجسد هذا الاعتقاد ويقف كرمز لإلهام وابتكار إمحوتب وبناة الأسرة الثالثة في مصر.
        
        خطط خليفة زوسر، سيخم خت، لمجمع هرم مدرج أكثر فخامة في سقارة، وبدأ الملك اللاحق، خع با، واحدًا في زاوية العريان، على بعد أميال قليلة جنوب الجيزة. مكان دفن آخر ملوك الأسرة حوني غير معروف. لقد قيل في كثير من الأحيان أنه بنى هرم ميدوم، ولكن ربما كان هذا من عمل خليفته، سنفرو.",
        english_content:"Although the Pyramid of Djoser, designed by the architect and vizier Imhotep, is Egypt's first pyramid, it is closer in construction to the mastaba tombs of the Early Dynastic Period than to the so-called 'true pyramids' of the Fourth Dynasty of the Old Kingdom. The development of pyramid building in the Third Dynasty moved from terraces to stacked terraces for the pyramids of Djoser, Sekhemkhet, and Khaba. These pyramids later gave rise to the massive pyramids of Giza, but, as noted, they have more in common with the earlier mastaba than with the later structures.

        The Step Pyramid began as a simple mastaba tomb with a flat roof and sloping sides, similar to many tombs from earlier dynasties. However, the architect Imhotep had a grander plan in mind for the home of his eternal king. A step pyramid is a series of terraces stacked on top of each other, each level slightly smaller than the level below it, to form a pyramid shape. The earlier mastabas were made of clay brick, but the step pyramid was made of stone blocks carved with images of trees (sacred to the Egyptian gods) and reeds (possibly symbolizing the field of reeds, and the Egyptian afterlife). When completed, the Step Pyramid rose 204 feet (62 m) and was the tallest building of its time. The pyramid complex included a temple, courtyards, shrines, and living quarters for the priests covering an area of 40 acres (16 ha) and surrounded by a 30-foot-high (10.5 m) wall. The actual chambers of the tomb were dug beneath the base as a maze of tunnels with chambers off the corridors to discourage thieves and protect the king's body and belongings. However, this plan did not work, as in ancient times the tomb was robbed of all valuables including the king's body; Only his foot was found in the grave.
        
        
        Ras Malak, c. 2650-2600 BC Brooklyn Museum. The earliest representations of Egyptian kings were on a small scale. From the Third Dynasty, statues were made showing the ruler in life size. This head wearing the crown of Upper Egypt exceeds human scale
        .
        
        However, the design and construction of the Step Pyramid exemplifies the ingenuity and vision of the Third Dynasty builders who later raised the Step Pyramid and the Step Pyramid among many other monuments and temples. These early dreamers laid the foundations for the later “true pyramids” of the Fourth Dynasty that have aroused people’s interest and fascination over the centuries since their creation. During the Third Dynasty, architecture, technology, religion, and the arts took a huge step forward as people planned and built these great tombs and monuments for their rulers. The pyramid was designed to house the king's remains and provide a home for his spirit to recognize him and be able to travel to him for earthly plane visits; Whatever other names or uses people have attributed to the pyramids over the centuries since their construction, this was their original purpose. Moreover, despite repeated claims to the contrary, neither these great works nor the subsequent pyramids were built by slaves but by skilled Egyptian craftsmen and hired laborers. Archaeological evidence shows that those who worked on the pyramids and other monuments throughout Egypt received their salaries or performed their duties as a service to the gods and their king.
        
        The design and construction of Djoser's step pyramid required the builders to think in larger terms than their predecessors. Previously, a simple mastaba served as a tomb but now the plan is to create a series of mastabas stacked on top of each other to reach the sky, surrounded by a tomb that honors the dead and amazes the living. In order to realize this vision, the ancient methods of building using brick and wood were discarded with clay in favor of stone, and this single decision would influence Egyptian art and architecture for the next 2,000 years. Furthermore, the technology required to move, shape, and place stone required innovative thinking and skill in stonework that was not necessary in earlier times.
        
        These changes appear to have resulted from the stability of Djoser's reign and the development of religious concepts in the spirit that this stability encouraged. The soul of the deceased was believed to consist of nine parts, one of which, the ba, was in the shape of a bird and could descend back to earth or fly to the sky. This concept, along with the firm belief in life after death, inspired the Egyptians to build large houses for their kings to house the physical body of the ka and enable the ba to come down to visit it if they so chose. The Pyramid of Djoser, the first of its kind, embodies this belief and stands as a symbol of the inspiration and innovation of Imhotep and the builders of Egypt's Third Dynasty.
        
        Djoser's successor, Sekhemkhet, planned a more opulent step pyramid complex at Saqqara, and the later king, Khaba, began one at Zawiyet al-Aryan, a few miles south of Giza. The burial place of the last king of the Huni dynasty is unknown. It has often been said that he built the Pyramid of Meedum, but this was probably the work of his successor, Sneferu.",
        sub_era: sub_era_2,
    )
    Section.create(
        arabic_title:"ارتفاع المملكة القديمة",
        english_title:"Rise of the Old Kingdom",
        arabic_content:"كانت الأسرة الرابعة للمملكة القديمة فترة تقدم وحكومة مركزية قوية يمكنها أن تحظى بنوع من الاحترام اللازم لمشاريع البناء هذه. ومع ذلك، خلال الأسرة الخامسة والسادسة، بدأت قوة الكهنوت في النمو، في المقام الأول من خلال سيطرتهم على الممارسات الجنائزية ذاتها التي أدت إلى ظهور الأهرامات العظيمة، وتمكين المسؤولين المحليين في المناطق والملك الذي عانى. بدأت المملكة القديمة في الانهيار مع تولي المزيد والمزيد من الحكام المحليين المزيد من السلطة على مناطقهم، وأصبح يُنظر إلى الحكومة المركزية في ممفيس على نحو متزايد على أنها غير ذات صلة.

        في نهاية الأسرة السادسة، لم تعد هناك حكومة مركزية ملحوظة ودخلت مصر فترة من الاضطرابات الاجتماعية والإصلاح المعروفة باسم الفترة الانتقالية الأولى (2181-2055 قبل الميلاد) والتي حكمت خلالها مصر إقليمياً من قبل قضاة محليين وفرضوا قوانينهم الخاصة. لم يكن صعود هؤلاء المسؤولين المحليين وقوة الكهنوت السبب الوحيد لانهيار المملكة القديمة، ومع ذلك، فقد تسبب الجفاف الشديد في نهاية الأسرة السادسة في حدوث مجاعة لم تستطع الحكومة فعل أي شيء للتخفيف منها. أشار العلماء أيضًا إلى فترة حكم بيبي الثاني الطويلة بشكل استثنائي من الأسرة السادسة كعامل مساهم لأنه عاش أكثر من خلفائه ولم يترك وريثًا للعرش.
        
        لم يعد العديد من العلماء اليوم يرون نهاية المملكة القديمة على أنها انهيار بقدر ما هو انتقال إلى النموذج الجديد للفترة الانتقالية الأولى، عندما كان الحكام المحليون يحكمون مناطقهم مباشرة، وأصبح نوع الثروة الذي كان متاحًا في السابق للنبلاء فقط. أكثر انتشارا. لا يزال التصنيف طويل الأمد للانهيار السياسي والثقافي في نهاية الأسرة السادسة يعتبر قابلاً للتطبيق، ومع ذلك، فقد أدى فقدان الحكومة المركزية للسلطة والثروة مباشرة إلى الحكم الإقليمي للمقاطعات الرحل.",
        english_content:"The Fourth Dynasty of the Old Kingdom was a period of progress and a strong central government that could command the kind of respect necessary for these building projects. However, during the Fifth and Sixth Dynasties, the power of the priesthood began to grow, primarily through their control of the very funerary practices that gave rise to the great pyramids, and the empowerment of local officials in the regions and the king who suffered. The ancient kingdom began to collapse as more and more local rulers assumed more power over their regions, and the central government in Memphis became increasingly viewed as irrelevant.

        At the end of the Sixth Dynasty, there was no longer a noticeable central government and Egypt entered a period of social unrest and reform known as the First Intermediate Period (2181-2055 BC) during which Egypt was ruled regionally by local magistrates who imposed their own laws. The rise of these local officials and the power of the priesthood was not the only reason for the collapse of the Old Kingdom, however, as a severe drought at the end of the Sixth Dynasty caused a famine that the government could do nothing to alleviate. Scholars have also pointed to the exceptionally long reign of Pepi II of the Sixth Dynasty as a contributing factor because he outlived his successors and left no heir to the throne.
        
        Many scholars today no longer see the end of the Old Kingdom as a collapse so much as a transition to the new model of the First Intermediate Period, when local rulers ruled their territories directly and the kind of wealth that had previously been available only to the nobility became available. more famous. The long-standing classification of political and cultural collapse at the end of the Sixth Dynasty is still considered applicable, however, as the central government's loss of power and wealth led directly to the regional rule of nomadic provinces.",
        sub_era: sub_era_2,
    )
    Section.create(
        arabic_title:"أول هرم حقيقي",
        english_title:"The first real pyramid",
        arabic_content:"كان يُعتقد منذ فترة طويلة أن آخر ملوك الأسرة الثالثة حوني بدأ مشاريع البناء الضخمة للمملكة القديمة في بناء الهرم في ميدوم، لكن الفضل في إنشاء هرم ميدوم يعود إلى الملك الأول من الأسرة الرابعة، سنفرو الذي ربما كان ابن حوني من قبل إحدى ملكاته الصغرى. كتبت عالمة المصريات باربرا واترسون، «بدأ سنفرو العصر الذهبي للمملكة القديمة، وأبرز إنجازاته هي الهرمان اللذان شُيدوا له في دهشور». بدأ سنفرو عمله بالهرم في ميدوم الذي يُشار إليه الآن باسم «الهرم المنهار» أو، محليًا، باسم «الهرم الزائف» بسبب شكله: فهو يشبه البرج أكثر من الهرم، ويستقر غلافه الخارجي حوله في كومة ضخمة من الحصى.

        هرم ميدوم هو أول هرم حقيقي تم بناؤه في مصر ولكنه لم يدم. هذا بسبب إجراء تعديلات على التصميم الهرمي الأصلي لإيمحوتب، مما أدى إلى وضع الغلاف الخارجي على أساس رملي بدلاً من الصخور، مما تسبب في انهياره. ينقسم العلماء حول ما إذا كان الانهيار قد حدث أثناء البناء أو على مدى فترة زمنية أطول. يستشهد عالم المصريات ميروسلاف فيرنر بعمل عالم الآثار بورشاردت في الادعاء بأن الهرم قد تم بناؤه على مراحل، والتي كان أساسها الخارجي يرتكز بشكل متزايد على الرمال بينما تم بناء الأساس الداخلي بأمان على الصخر. عندما وصل العمال إلى المرحلة الثالثة من عملية البناء، الغلاف الخارجي، افتقر الهيكل إلى التماسك لأنه لم يكن له أساس ثابت. لا يزال آخرون، مثل المؤرخ مارك فان دي ميروب، يدعون أنه من المستحيل معرفة متى انهار الغلاف الخارجي.
        
        تم العثور على معابد وهياكل أخرى غير مكتملة في ميدوم مما يشير إلى أن مجمع الهرم لم ينته أبدًا، وبالتالي يدافع عن انهيار مبكر للهرم، على الأرجح عندما كان لا يزال قيد الإنشاء. لكن سنفرو تعلم من خطئه وانتقل إلى هرميه التاليين في دهشور.",
        english_content:"It has long been believed that the last king of the Third Dynasty, Huni, began the massive construction projects of the Old Kingdom in building the pyramid at Meedum, but credit for the construction of the pyramid at Meedum goes to the first king of the Fourth Dynasty, Sneferu, who may have been the son of Huni by one of his younger queens. Egyptologist Barbara Watterson wrote, “Sneferu began the golden age of the Old Kingdom, and his most notable achievements are the two pyramids built for him at Dahshur.” Sneferu began his work with the pyramid at Meidum which is now referred to as the 'collapsed pyramid' or, locally, as the 'false pyramid' because of its shape: it resembles a tower more than a pyramid, and its outer shell rests around it in a huge pile of gravel.

        The Pyramid of Meidum is the first real pyramid built in Egypt, but it did not last. This is because modifications were made to Imhotep's original pyramid design, placing the outer shell on a sand foundation instead of rock, causing it to collapse. Scholars are divided on whether the collapse occurred during construction or over a longer period of time. Egyptologist Miroslav Werner cites the work of archaeologist Borchardt in claiming that the pyramid was built in stages, in which the outer foundation increasingly rested on sand while the inner foundation was built securely on the rock. When workers reached the third stage of the construction process, the outer shell, the structure lacked stability because it had no stable foundation. Still others, such as historian Mark van de Mierop, claim that it is impossible to know when the outer shell collapsed.
        
        Temples and other unfinished structures have been found at Meedum suggesting that the pyramid complex was never finished, thus arguing for an early collapse of the pyramid, most likely while it was still under construction. But Sneferu learned from his mistake and moved on to his next two hierarchs in Dahshur.",
        sub_era: sub_era_2,
    )
    Section.create(
        arabic_title:"الملك سنفرو اهراماته",
        english_title:"King Sneferu and his pyramids",
        arabic_content:"تعرف أهرامات سنفرو في دهشور باسم الهرم المنحني والهرم الأحمر (أو الهرم الشمالي). يُطلق على الهرم المنحني هذا الاسم لأنه يرتفع بزاوية 55 درجة ثم يتحول إلى 43 درجة من الأحجار الأصغر مما يمنحه مظهر الانحناء نحو الأعلى. أكمل العمال الأساس والجوانب قبل أن يدركوا أن الزاوية البالغة 55 درجة كانت شديدة الانحدار وقاموا بتعديل خطتهم لإنهاء المشروع بأفضل ما يمكنهم. يبدو أن سنفرو قد فهم المشكلة وانتقل لبناء هرمه الثالث.

        يبدو أن سنفرو كان حاكماً يسهل الوصول إليه ولم يردعه الفشل أو خيبة الأمل. عندما لم يلبِ الهرم المنحني توقعاته، بدأ ببساطة في محاولة ثالثة. تم بناء الهرم الأحمر (سمي كذلك بسبب استخدام الحجر الجيري المحمر في البناء) على قاعدة صلبة لمزيد من الثبات، حيث يرتفع بزاوية 43 درجة. يبلغ ارتفاع الهرم الأحمر 344 قدمًا (105 مترًا)، وكان أول هرم حقيقي ناجح تم بناؤه في مصر. في الأصل كانت مغطاة بالحجر الجيري الأبيض، كما كانت الأهرامات اللاحقة الأخرى أيضًا، والتي سقطت على مر القرون وحصدها السكان المحليون لمشاريع بناء مشاريع أخرى.
        
        أنشأ الملك سنفرو، من خلال بعثاته العسكرية واستخدامه الحكيم للموارد، حكومة مركزية قوية في ممفيس أنتجت نوعًا من الاستقرار اللازم لمشاريعه الإنشائية الضخمة. اقتداء بمثال مجمع زوسر في سقارة، كان لدى سنفرو معابد جنائزية ومباني أخرى شيدت حول أهراماته مع الكهنة الذين يعتنون بالعمليات اليومية بمجرد اكتمال الهرم الأحمر أخيرًا. كل هذا يدعو إلى استقرار المجتمع في ظل حكمه الذي تركه لابنه خوفو عند وفاته.",
        english_content:"The pyramids of Sneferu in Dahshur are known as the Bent Pyramid and the Red Pyramid (or North Pyramid). The curved pyramid is so named because it rises at a 55 degree angle and then turns 43 degrees from smaller stones, giving it the appearance of bending upward. Workers completed the foundation and siding before realizing the 55-degree angle was too steep and adjusted their plan to finish the project as best they could. Sneferu seems to have understood the problem and moved on to build his third pyramid.

        Sneferu appears to have been an accessible ruler who was not deterred by failure or disappointment. When the curved pyramid did not meet his expectations, he simply began a third attempt. The Red Pyramid (so named because of the use of reddish limestone in construction) was built on a solid base for greater stability, rising at a 43 degree angle. The Red Pyramid is 344 feet (105 m) high, and was the first successful true pyramid built in Egypt. Originally it was covered in white limestone, as were other later pyramids as well, which fell over the centuries and were harvested by locals for other building projects.
        
        King Sneferu, through his military expeditions and judicious use of resources, established a strong central government in Memphis that produced the kind of stability necessary for his massive construction projects. Following the example of Djoser's complex at Saqqara, Sneferu had funerary temples and other buildings constructed around his pyramids with priests taking care of day-to-day operations once the Red Pyramid was finally completed. All of this calls for the stability of society under his rule, which he left to his son Khufu upon his death.",
        sub_era: sub_era_2,
    )
    Section.create(
        arabic_title:"خوفو والهرم الأكبر",
        english_title:"Khufu and the Great Pyramid",
        arabic_content:"أقيم مجمع هرم خوفو في الجزء الشمالي الشرقي من هضبة الجيزة. من المحتمل أن عدم وجود مساحة للبناء، وعدم وجود محاجر الحجر الجيري المحلية والأرض غير الواضحة في دهشور، أجبر خوفو على التحرك شمالًا، بعيدًا عن هرم سلفه سنفرو. اختار خوفو الطرف العلوي من الهضبة الطبيعية حتى يكون هرمه المستقبلي مرئيًا على نطاق واسع. قرر خوفو تسمية هرمه «أخيت خوفو» (بمعنى «أفق خوفو»).

        الهرم الأكبر لديه قياس قاعدة 750 × 750 قدمًا (≙ 230.4 × 230.4 مترًا) واليوم يبلغ ارتفاعها 455.2 قدمًا (138.7 مترًا). بمجرد أن كان ارتفاعه 481 قدمًا (147 مترًا)، فقد تم فقد الهرم وغلاف الحجر الجيري تمامًا بسبب السطو على الحجر. يسمح عدم وجود الغلاف برؤية كاملة للجوهر الداخلي للهرم. تم تشييده في خطوات صغيرة بواسطة كتل منحوتة تقريبًا من الحجر الجيري الداكن. كان الغلاف مصنوعًا من الحجر الجيري الأبيض تقريبًا. كان السطح الخارجي لأحجار الغلاف مصقولًا بدقة، لذا كان الهرم يتلألأ باللون الأبيض الجيرى الطبيعي الساطع عندما كان جديدًا. قد يكون الهرم مغطى بالإلكتروم، لكن لا يوجد دليل أثري على ذلك. تحتوي الممرات والغرف الداخلية على جدران وسقوف مصنوعة من الجرانيت المصقول، وهو من أقسى الأحجار المعروفة في عصر خوفو. وكان المونة المستخدمة عبارة عن خليط من الجبس والرمل والحجر الجيري المسحوق والماء.
        
        يقع المدخل الأصلي للهرم في الجهة الشمالية. يوجد داخل الهرم ثلاث غرف: في الأعلى توجد غرفة دفن الملك (غرفة الملك)، وفي المنتصف توجد غرفة التمثال (التي تسمى خطأ غرفة الملكة)، وتحت الأساس توجد غرفة تحت الأرض غير مكتملة (غرفة العالم السفلي). في حين يتم التعرف على حجرة الدفن بواسطة التابوت الضخم مصنوع من الجرانيت، واستخدام «غرفة الملكة» لا يزال المتنازع عليها - بل ربما كان serdab من كاتمثال خوفو. لا تزال الغرفة الجوفية غامضة لأنها تُركت غير مكتملة. قد يشير الممر الضيق الذي يتجه جنوبًا عند الطرف الغربي للغرفة والعمود غير المكتمل في الشرق الأوسط إلى أن الغرفة الجوفية كانت الأقدم من بين الغرف الثلاث وأن مخطط البناء الأصلي احتوى على مجمع غرف بسيط به عدة غرف وممرات. ولكن لأسباب غير معروفة تم إيقاف الأعمال وتم بناء غرفتين أخريين داخل الهرم. من اللافت للنظر ما يسمى بالمعرض الكبير المؤدي إلى غرفة الملك: إنه ذو سقف مقوس مقوس ويبلغ ارتفاعه 28.7 قدمًا وطوله 151.3 قدمًا. يحتوي المعرض على صورة ثابتة مهمة وظيفة؛ يحول وزن الكتلة الحجرية فوق حجرة الملك إلى قلب الهرم المحيط.",
        english_content:'"The pyramid complex of Khufu was erected in the northeastern part of the Giza Plateau. It is likely that the lack of space for building, the lack of local limestone quarries and the unclear land at Dahshur forced Khufu to move north, away from the pyramid of his predecessor Sneferu. Khufu chose the upper end of the natural plateau so that his future pyramid would be widely visible. Khufu decided to name his pyramid “Akhet Khufu” (meaning “Horizon of Khufu”).

        The Great Pyramid had a base measurement of 750 x 750 feet (≙ 230.4 x 230.4 m) and today its height is 455.2 feet (138.7 m). Once 481 feet (147 m) high, the pyramid and its limestone casing have been completely lost to stone plundering. The lack of casing allows a complete view of the inner core of the pyramid. It was constructed in small steps by roughly hewn blocks of dark limestone. The casing was made of almost white limestone. The outer surface of the casing stones was finely polished, so the pyramid was a bright, natural limestone white when new. The pyramid may have been covered in electrum, but there is no archaeological evidence of this. The interior corridors and rooms have walls and ceilings made of polished granite, one of the hardest stones known from Khufu\'s era. The mortar used was a mixture of gypsum, sand, crushed limestone and water.
        
        The original entrance to the pyramid is located on the northern side. Inside the pyramid there are three rooms: at the top is the king\'s burial chamber (the King\'s Chamber), in the middle is the statue chamber (erroneously called the Queen\'s Chamber), and below the foundation is an unfinished underground chamber (the Underworld Chamber). While the burial chamber is identified by the massive granite sarcophagus, the use of the \'Queen\'s Chamber\' remains disputed – it may have been the serdab of Khufu\'s statue. The subterranean chamber remains mysterious because it was left unfinished. The narrow corridor running south at the western end of the chamber and the unfinished shaft in the middle may indicate that the subterranean chamber was the oldest of the three chambers and that the original building plan contained a simple chamber complex with several rooms and corridors. But for unknown reasons, the work was stopped and two other rooms were built inside the pyramid. Remarkable is the so-called Great Gallery leading to the King\'s Chamber: it has a vaulted arched ceiling and is 28.7 feet high and 151.3 feet long. The gallery has an important still image function; The weight of the stone block above the king\'s chamber shifts the pyramid\'s surrounding core."',
        sub_era: sub_era_2,
    )
    Section.create(
            arabic_title:"خفرع وأبو الهول ومنقرع",
            english_title:"Khafre and the Sphinx and Menkaure",
            arabic_content:"بعد وفاة خوفو، خلفه أحد أفراد أسرته خارج الخط الشرعي المسمى دجيدف رع (2566-2558 قبل الميلاد) ويعتبر أهم جانب في عهد دجيدف رع ليس هرمه أو الادعاء بأنه بنى تمثال أبو الهول، ولكن ارتباطه بمنصب الملك بعبادة إله الشمس رع. كان أول ملوك مصر يطلق لقب 'ابن رع' على نفسه، مما يشير إلى أن الملكية تابعة لإله الشمس. في الأسرة الثانية، ربط الملك رانب اسمه بالآلهة، وبالتالي جعل الملك ممثل الآلهة على الأرض، والتجسيد الحي للآلهة. بعد إصلاحات دجيدف رع، كان لا يزال يُنظر إلى الملك على أنه ممثل إلهي ولكن الآن في موقع أكثر تبعية كأبناء الله. يعتبر دجيدف رع من قبل بعض العلماء هو منشئ تمثال أبو الهول بالجيزة، بينما ينسب آخرون هذا النصب إلى أخيه وخليفته خفرع (2558-2532 قبل الميلاد). تمثال أبو الهول هو أكبر تمثال مترابط في العالم يصور جسد أسد مستلق برأس ووجه ملك. يُقبل وجه هذا الملك تقليديًا على أنه وجه خفرع، لكن دوبريف وآخرين يزعمون أنه قد يكون في الواقع وجه خوفو. يبدو من المحتمل أنه تم إنشاؤه بواسطة خفرع لأنه يتماشى تمامًا مع مجمع الهرم الخاص به ويبدو أن وجه أبو الهول يشبه وجه خفرع أكثر من وجه خوفو.

            هرم خفرع هو ثاني أكبر هرم في الجيزة ومجمعه يكاد يكون مثل أبيه. لا يُعرف سوى القليل عن عهده. ارتبط خفرع بالاله حورس (كما فعل الملوك السابقون)، واعتبر أبو الهول صورة للملك على أنه الإله حرماخت 'حورس في الأفق'. على عكس ملوك عصر الأسرات المبكرة، أشار خفرع وأولئك الذين جاءوا بعده إلى نفسه على أنه 'ابن حورس'، مرتبطًا بالإله ولكن ليس الإله الحي نفسه. نمت قوة تفسير إرادة الآلهة، على الرغم من أنها لا تزال ضمن دائرة نفوذ الملك، بشكل متزايد من أصل الكهنة الذين خدموا تلك الآلهة.
            
            بعد وفاة خفرع، انقطعت الخلافة مرة أخرى لفترة وجيزة عندما تولى باكا، ابن دجيدف رع، العرش. لم يحكم حتى عام واحد، قبل أن يصبح منقرع (2532-2503 قبل الميلاد)، ابن خفرع ملكًا. بدأ منقرع في بناء مجمع الهرم والمعبد في الجيزة. على الرغم من أن هضبة الجيزة اليوم هي موقع قديم مليء بالرمال في ضواحي القاهرة، إلا أنها كانت في زمن منقرع مدينة الموتى التي يسكنها الأحياء الذين يعتنون بها. كانت منازل الكهنة والمعابد ومساكن العمال والمتاجر والمصانع ومصانع الجعة وجميع جوانب المدينة الصغيرة موجودة في الجيزة.
            
            على عكس الاعتقاد السائد بأن أهرامات الجيزة قد تم بناؤها على يد عمال العبيد (وتحديداً عمل العبيد العبريين)، فقد تم بناؤها بالفعل من قبل المصريين، وكثير منهم كانوا من العمال ذوي المهارات العالية الذين حصلوا على أجر مقابل وقتهم. يُعتقد أن الأهرامات تمثل التل البدائي، بن بن، الذي ارتفع لأول مرة من مياه الفوضى في بداية الخلق. لم يتم اكتشاف أي مكان للعبيد في الجيزة ولا توجد سجلات مصرية تتحدث عن أي حدث مثل ذلك المنصوص عليه في كتاب الخروج التوراتي. تم العثور على مساكن العمال ومنازل المشرفين ومنازل المشرفين وتوضيح أن العمل المنجز في هضبة الجيزة في المملكة القديمة كان يؤديه مصريون يعملون مقابل تعويض.
            
            هرم منقرع ومعقده أصغر من الاثنين الآخرين وهذا يدل على تطور مهم في تاريخ المملكة القديمة وأحد أسباب انهيارها. لم تعد الموارد اللازمة لبناء الهرم الأكبر متاحة في زمن منقرع، لكنه لا يزال يعتمد على ما في وسعه لإنشاء منزل أبدي على قدم المساواة مع والده وجده. توفي ابن منقرع أثناء بناء الهرم، الأمر الذي أزعج خلافة الأسرة الحاكمة، وتوفي منقرع نفسه قبل اكتمال مجمع الهرم. على الرغم من أنه حكم لمدة ثلاثين عامًا، إلا أنه لم يكن قادرًا على إكمال ما فعله أسلافه، وبالنسبة للعديد من العلماء فإن هذا يدل على تضاؤل الموارد تحت إمرته.
            
            كان الملوك، كما لوحظ سابقًا، يحولون موارد هائلة إلى آثارهم ومجمعاتهم الجنائزية، لكن هذه المعابد والأضرحة لم تعد بشكل متزايد تحت سيطرة الملك بل تحت سيطرة الكهنة الذين أداروها. بعد فترة حكم شبسسكاف القصيرة، انتهت الأسرة الرابعة وبدأت الأسرة الخامسة بوعد أقل بكثير مما كانت عليه عندما خلف سنفرو حوني.
            
            بصرف النظر عن المفهوم الهائل للأهرامات نفسها، فإن مجمعات المعابد المرتبطة بها تظهر إتقانًا كبيرًا للأشكال المعمارية. تم تزيين معبد خوفو أو جسر الاقتراب بنقوش مثيرة للإعجاب، تم دمج أجزاء منها في هرم الأسرة الثانية عشر لأمنمحات الأول في اللشت. أشهر المنحوتات المصرية، تمثال أبو الهول لخفرع في الجيزة وتمثاله الجالس الاستثنائي، يعود تاريخه إلى الأسرة الرابعة.
            
            تشكل أهرامات الجيزة مجموعة من الآثار المكتملة بشكل أو بآخر محاطة بالعديد من مقابر العائلة المالكة والنخبة، مرتبة حسب التسلسل الهرمي ومصممة بأنماط أنيقة. يتناقض هذا الترتيب مع ما كان عليه في عهد سنفرو، حيث تم بناء مقابر مهمة في ميدوم وسقارة، بينما ربما دُفن الملك في دهشور. من بين مقابر الجيزة، تم تزيين كبار المسؤولين فقط ؛ باستثناء الحاشية المباشرة للملوك، تم تقييد حرية التعبير للمسؤولين بشكل كبير. كان معظم كبار المسؤولين أعضاء في العائلة المالكة الكبيرة، لذلك تركزت القوة على أساس القرابة وكذلك بوسائل أخرى. لم يمنع هذا الصراع بين الفصائل: فقد تم تدمير مجمع دجيدف رع عمداً وبشكل كامل، ربما بتحريض من خليفته خفرع.
            
            يسجل حجر باليرمو حملة إلى النوبة السفلى في عهد سنفرو والتي قد تكون مرتبطة بالكتابات على الجدران في المنطقة نفسها. أسس المصريون مستوطنة في بوهين، على الطرف الشمالي للشلال الثاني (شمال السودان حاليا)، والتي استمرت لمدة 200 عام. قد يكون البعض الآخر قد تم تأسيسه بين هناك وإلفنتين. ربما كانت أغراض هذا الاختراق هي إقامة تجارة في أقصى الجنوب وإنشاء منطقة عازلة. لم يتم العثور على آثار أثرية لسكان مستقرين في النوبة السفلى لفترة المملكة القديمة. يبدو أن الوجود القمعي لمصر قد سلب من سكانها مواردهم، حيث تم استغلال المقاطعات لصالح الملك والنخبة.",
            english_content:"After Khufu's death, he was succeeded by a member of his family outside the legitimate line called Djedefre (2566-2558 BC). The most important aspect of Djedefre's reign is not his pyramid or the claim that he built the Sphinx, but his connection to the position of king with the worship of the sun god Ra. He was the first king of Egypt to call himself 'Son of Ra', indicating that kingship belonged to the sun god. In the Second Dynasty, King Raneb linked his name to the gods, thus making the king the representative of the gods on Earth, and the living embodiment of the gods. After Djedefre's reforms, the king was still seen as a divine representative but now in a more subordinate position as children of God. Djedefre is considered by some scholars to be the creator of the Great Sphinx in Giza, while others attribute this monument to his brother and successor Khafre (2558-2532 BC). The Great Sphinx is the largest monolithic statue in the world depicting the reclining body of a lion with the head and face of a king. The face of this king is traditionally accepted as that of Khafre, but Dobrev and others claim that it may in fact be that of Khufu. It seems likely that it was created by Khafre as it is perfectly in line with his pyramid complex and the face of the Sphinx appears to resemble Khafre's face more than Khufu's.

            The Pyramid of Khafre is the second largest pyramid in Giza and its complex is almost like its father. Little is known about his reign. Khafre was associated with the god Horus (as did previous kings), and the Sphinx was considered an image of the king as the god Haremakht 'Horus on the horizon'. Unlike the kings of the Early Dynastic Period, Khafre and those who came after him referred to himself as the 'son of Horus', associated with the god but not the living god himself. The power to interpret the will of the gods, though still within the king's sphere of influence, grew increasingly out of the priests who served those gods.
            
            After Khafre's death, the succession was again briefly interrupted when Baka, Djedefre's son, assumed the throne. He did not rule for even a year, before Menkaure (2532-2503 BC), Khafre's son, became king. Menkaure began construction of the pyramid and temple complex at Giza. Although today the Giza Plateau is an ancient, sand-filled site on the outskirts of Cairo, in Menkaure's time it was a city of the dead inhabited by the living who cared for it. Priests' houses, temples, workers' residences, shops, factories, breweries, and all aspects of a small city were present in Giza.
            
            Contrary to popular belief that the Pyramids of Giza were built by slave labor (specifically the labor of Hebrew slaves), they were actually built by Egyptians, many of whom were highly skilled workers who were paid for their time. The pyramids are believed to represent the primordial hill, Ben Ben, which first rose from the waters of chaos at the beginning of creation. No slave quarters have been discovered at Giza and no Egyptian records speak of any event like that described in the biblical Book of Exodus. Workers' dwellings, supervisors' homes, and supervisors' homes have been found and show that the work done on the Giza Plateau in the Old Kingdom was performed by Egyptians working for compensation.
            
            Menkaure's pyramid and its complex are smaller than the other two, and this indicates an important development in the history of the Old Kingdom and one of the reasons for its collapse. The resources needed to build the Great Pyramid were no longer available in Menkaure's time, but he still relied on what he could to create an eternal home on par with his father and grandfather. Menkaure's son died during the construction of the pyramid, which upset the dynastic succession, and Menkaure himself died before the pyramid complex was completed. Although he ruled for thirty years, he was unable to complete what his predecessors had done, and to many scholars this demonstrates the dwindling resources under his command.
            
            Kings, as previously noted, were diverting enormous resources to their monuments and funerary complexes, but increasingly these temples and shrines came no longer under the control of the king but rather under the control of the priests who administered them. After Shepseskaf's short reign, the Fourth Dynasty ended and the Fifth Dynasty began with much less promise than when Sneferu succeeded Huni.
            
            Aside from the monumental concept of the pyramids themselves, the associated temple complexes display great mastery of architectural forms. The Temple of Khufu or the approach bridge is decorated with impressive reliefs, parts of which were incorporated into the Twelfth Dynasty pyramid of Amenemhet I at Lisht. The most famous Egyptian sculptures, the Sphinx of Khafre at Giza and his extraordinary seated statue, date to the Fourth Dynasty.
            
            The Pyramids of Giza form a group of more or less complete monuments surrounded by numerous tombs of the royal family and the elite, arranged hierarchically and designed in elegant patterns. This arrangement contrasts with what it was during the reign of Sneferu, where important tombs were built at Meidum and Saqqara, while the king was probably buried at Dahshur. Among the tombs of Giza, only high-ranking officials were decorated; Except for the immediate entourage of kings, the freedom of expression of officials was severely restricted. Most senior officials were members of the large royal family, so power was concentrated based on kinship as well as by other means. This did not prevent factional conflict: Djedefre's complex was deliberately and completely destroyed, perhaps at the instigation of his successor Khafre.
            
            The Palermo Stone records an expedition to Lower Nubia during the reign of Sneferu which may be linked to graffiti in the same area. The Egyptians established a settlement at Buhin, on the northern end of the Second Cataract (present-day northern Sudan), which lasted for 200 years. Others may have been established between there and Elephantine. The purposes of this breakthrough were probably to establish trade farther south and create a buffer zone. No archaeological traces of a settled population have been found in Lower Nubia for the Old Kingdom period. Egypt's oppressive presence appears to have robbed its population of its resources, as the provinces were exploited for the benefit of the king and the elite.",
            sub_era: sub_era_2,
    )
    # sub_era_3
    Section.create(
            arabic_title:"مصطلح عصر الاضمحلال الأول",
            english_title:"The term of the first collapse",
            arabic_content:"كان فترة تدهور وضعف، حيث انهار نظام الحكم المركزي. وتسمى كل من استطاع باسم فرعون سقوط الدولة القديمة والثورة الاجتماعية
            يطلق مصطلح عصر الاضمحلال الأول في التاريخ المصري القديم على الفترة من نهاية الأسرة السادسة وانهيار السلطة الملكية المركزية. حتى إعادة توحيد البلاد على يد الأسرة الحادية عشرة..وقد حكم البلاد محتلين أجانب بدو شاسو قادمين من الشرق.",
            english_content:"It was a period of decline and weakness, as the central system of government collapsed. Everyone who could named Pharaoh called the fall of the Old Kingdom and the social revolution
            The term First Decline in ancient Egyptian history refers to the period from the end of the Sixth Dynasty and the collapse of central royal authority. Until the reunification of the country at the hands of the Eleventh Dynasty...the country was ruled by foreign occupiers, Shasu Bedouins, coming from the east.",
            sub_era: sub_era_3,
    )
    Section.create(
            arabic_title:"ما ذكر في التاريخ",
            english_title:"What is mentioned in history",
            arabic_content:"و يبدو مانيتون.. أو بالأحرى أفريكانوس عن مانيتون.. وهو يكتب مؤرخا لهذا العصر في أسوأ حالاته.. فيذكر أن الأسرة السابعة تتكون من سبعين ملكا حكموا سبعين يوما.. ويؤرخ للأسرة الثامنة بسبعة وعشرين ملكا في 146 عاما.. وللأسرتين التاسعة والعاشرة في العاصمة هيراكليوبوليس (المعروفه بأسم إهناسيا) بتسعة عشر ملكا مجتمعين حكموا في 594 عاما.. والأسرة الحادية عشرة في طيبة.. بستة عشر ملكا في ثلاثة وأربعين عاما..
            أما رواية إيوسيبوس عن مانيتون فتبدو أقل شطحا في الخيال.. وإن لم تستلهم من الواقع أقله.. فعلى طول هذه المرحلة لم يذكر ملك واحد بالاسم عدا أخيتوس.. من ملوك الأسرة التاسعة.. والذي هو أسوأ من كل أسلافه..
            على أية حال ما كتبه مانيتون لا يعدو كونه تاريخا خرافيا.. غير ذي صلة بالواقع.. لكنه في تقسيمه العام قد وضع خطة للكتابة نناقشها فيما يلي...",
            english_content:"It seems that Manetho... or rather Africanus on the authority of Manetho... is writing as a historian of this era at its worst... He mentions that the Seventh Dynasty consists of seventy kings who ruled for seventy days... and dates the Eighth Dynasty with twenty-seven kings in 146 years... and the Ninth and Tenth Dynasties in The capital, Heracleopolis (known as Ihnasia), had nineteen kings together who ruled in 594 years... and the Eleventh Dynasty in Thebes... with sixteen kings in forty-three years...
            As for Eusebus’s account of Manetho, it seems less fanciful, even if it was not inspired by reality in the least. Throughout this period, not a single king was mentioned by name except Achaetus, one of the kings of the Ninth Dynasty, who is worse than all his predecessors.
            In any case, what Maniton wrote is nothing more than a mythical history... irrelevant to reality... but in its general division, he laid out a plan for writing that we will discuss below...",
            sub_era: sub_era_3,
    )
    Section.create(
            arabic_title:"نظرية انخفاض درجة الحرارة",
            english_title:"The theory of temperature drop",
            arabic_content:"تدعي إحدى النظريات أن انخفاضا في درجة حرارة الكوكب قد أدى إلى انخفاض مخيف في مستوى الأمطار الموسمية.. وبالتالي إلى انخفاض مستوى فيضان النيل.. وأن ذلك الانخفاض في مستوى الفيضان قد تتابع لعقدين أو ثلاثة في أواخر حكم بيبي الثاني.. منذ نحو 2200 سنة قبل الميلاد.. ويظهر ذلك في انخفاض مستوى المياه في بحيرة منخفض الفيوم انخفاضا ملحوظا.. مما أدى إلى مجاعة هائلة.. ولعل المثل المصري القديم عن انخفاض مستوى النهر حتى لتعبره على الأقدام دليل على تلك المأساة..
            و لما كان هذا الانخفاض في مستوى الأمطار عالميا فإنه لم يكن يشمل شرق أفريقيا فحسب.. بل امتد إلى الشرق الأوسط.. مما أدى إلى نزوح جماعات هائلة من سكان شرقي النيل وغربه إلي وادي النيل التماسا للغذاء..
            و تفصيل ذلك أن البدو رغم الهزيمة المنكرة التي لحقت بهم في عهد بيبي الأول لم يفقدوا الأمل في غزو مصر التي كانت في تلك الفترة تزخر بالثراء والغنى.. وقد سنحت لهم الفرصة في عهد بيبي الثاني لنيل مآربهم إذ كانت الأحوال مهيئة لذلك فقد كان كل حاكم من حكام المقاطعات الوراثيين في الوجه القبلي منهمكا في المحافظة على مقاطعته التي تعد بمثابة مملكة صغيرة مستقلة ضد المجاعة.. أما في الوجه البحري فيحتمل أن القوم كانوا ملتفين حول الملك.. حيث مقر حكمه.. غير أنه ليس لدينا من الوثائق التاريخية ما يحدد لنا الموقف بالضبط.. لكن على أية حال كان موقف الحكومة المصرية في هذا العهد في حالة يرثى لها..",
            english_content:"One theory claims that a decrease in the planet's temperature led to a frightening decrease in the level of monsoon rains... and thus to a decrease in the level of the Nile flood... and that this decrease in the level of the flood continued for two or three decades towards the end of the reign of Pepi II... about 2,200 years ago. BC.. This is evident in the noticeable drop in the water level in the Fayoum Depression Lake.. which led to a massive famine.. Perhaps the ancient Egyptian proverb about the river’s level falling so low that it can be crossed on foot is evidence of that tragedy..
            Since this decrease in rainfall was global, it did not include only East Africa, but also extended to the Middle East, which led to the exodus of huge groups of people from the east and west of the Nile to the Nile Valley in search of food.
            The details of this are that the Bedouins, despite the terrible defeat that befell them during the reign of Pepi I, did not lose hope in conquering Egypt, which at that time was full of wealth and wealth. They had the opportunity during the reign of Pepi II to achieve their goals, as conditions were prepared for that. Every ruler was One of the hereditary provincial rulers in Upper Egypt is busy preserving his province, which is considered a small, independent kingdom against famine. As for Lower Egypt, it is likely that the people were gathered around the king... where his rule was based... However, we do not have any historical documents that determine for us The exact position.. But in any case, the position of the Egyptian government during this era was in a deplorable state..",
            sub_era: sub_era_3,
    )
    Section.create(
            arabic_title:"بداية الفوضي",
            english_title:"The beginning of chaos",
            arabic_content:"و كانت الضرائب في مصر تحدد سنويا على أساس مستوى الفيضان.. على أساس مقدار ما يمكن للفلاح زراعته لا على ما يزرعه فعلا.. وربما كان ارتفاع الضرائب في ظل انخفاض المحاصيل هو الشرارة الأولى التي أدت إلى أول ثورة اجتماعية سجلها التاريخ..
            و قد كان من جراء امتداد الفوضى أن ساد البلاد الخوف وانتشر القحط.. وعم الانحلال الخلقي وعدم المبالاة بالتقاليد الدينية والمعتقدات الموروثة.. وليس لدينا وثائق تاريخية تنير لنا الطريق خلال هذا العصر المظلم اللهم إلا معلومات ضئيلة جدا.. لكن من جهة أخرى قد اسعفتنا الوثائق الأدبية الشعبية مما يمكن أن نسميه مراثي الدولة القديمة.. وترجع معظمها إلى أوائل الدولة الوسطى.. والواقع أن أزمة هذا العصر قد طال أمدها فأثرت على أذهان القوم.. وبخاصة على أفكار الحكماء وأهل الفكر وعلى خيال القصاصين.. فنراهم يصورون ما حاق بالبلاد من ضعف وشدة وما قاست من ويلات وخراب بعبارات مؤثرة قوية خارجة من الأعماق.. بينما يشير بعضها الآخر إلى غزو الساميين حاملي السهام..
            و أهم ما وصل إلينا من هذا العصر كتاب تحذيرات نبي.. وهو من الكتب الأدبية النادرة في حسن تركيبها وتأثيرها في النفس.. حتى أن أدباء العصور التالية كانوا يحتذون منه نموذجا أدبيا يدرس.. ولا نبالغ إذ نقول أن هذه القطعة الأدبية تصف لنا أول انقلاب اجتماعي معروف في التاريخ.. ولعلنا لا نبالغ إذا ما شبهناه بالثورة البلشفية في أوائل القرن العشرين..",
            english_content:"Taxes in Egypt were determined annually on the basis of the level of the flood... on the basis of how much the farmer could cultivate, not on what he actually cultivated... and perhaps the rise in taxes in light of the decline in crops was the first spark that led to the first social revolution recorded in history..
            As a result of the spread of chaos, fear prevailed in the country and drought spread. Moral decay and indifference to religious traditions and inherited beliefs prevailed. We do not have historical documents to illuminate the way for us during this dark age, except for very scant information. But on the other hand, it has helped us. Popular literary documents are what we might call elegies of the Old Kingdom. Most of them date back to the early Middle Kingdom. In fact, the crisis of this era has lasted for a long time, affecting the minds of the people, especially the ideas of the wise and intellectuals, and the imagination of storytellers. We see them depicting what befell the country. Of weakness and distress and the scourges and devastation it endured, in powerful, poignant expressions emerging from the depths... while others refer to the invasion of the arrow-carrying Semites...
            The most important thing that has come down to us from this era is the book The Warnings of a Prophet... It is one of the rare literary books in its good composition and impact on the soul... so much so that the writers of later eras used it as a literary model to study... We do not exaggerate when we say that this piece of literature describes for us the first A social revolution known in history.. Perhaps we are not exaggerating if we liken it to the Bolshevik Revolution in the early twentieth century..",
            sub_era: sub_era_3,
    )
    Section.create(
            arabic_title:"التحذيرات",
            english_title:"Warnings",
            arabic_content:"و موضوع هذه التحذيرات هو أنه حاقت بالبلاد مصيبة شنعاء في عهد أحد حكام الأزمان القديمة.. فثار عامة الناس على الموظفين وعلية القوم.. وعصي الجند المرتزقة من الأجانب قادة البلاد.. ويحتمل أن الساميين قد هددوا الحدود الشرقية أيضا.. وبذلك انحل الحكم المنظم في مصر بالجملة.. لكن الملك الطاعن في السن كان يعيش في طمأنينة في قصره.. لأنه كان يغذى على الأكاذيب.. وعندئذ ظهر حكيم يدعى إي بور وأخبر الملك بكل الحقيقة فوصف له البؤس الذي عم البلاد وتنبأ بما سيأتي بعد.. وحرّض سامعيه على أن يحاربوا أعداء البلاد.. وذكّرهم بأن العبادات لابد أن تعاد إلى ما كانت عليه..",
            english_content:"The subject of these warnings is that a terrible calamity befell the country during the reign of one of the rulers of ancient times... so the common people revolted against the officials and the high-ranking people... and the foreign mercenary soldiers disobeyed the leaders of the country... and it is possible that the Semites threatened the eastern borders as well... and thus organized rule was dissolved. In Egypt in general...but the old king was living in peace in his palace...because he was fed on lies...and then a wise man named E-Bor appeared and told the king all the truth. He described to him the misery that had spread throughout the country and predicted what would come next...and incited his listeners to To fight the country's enemies... and remind them that worship must be restored to what it was...",
            sub_era: sub_era_3,
    )
    # Section.create(
        #     arabic_title:"",
        #     english_title:"",
        #     arabic_content:"",
        #     english_content:"",
        #     sub_era: sub_era_3,
    #)


#! Create Characters
    character_1 = Character.create(
        arabic_name: "(مينا) نارمر أو نعرمر",
        english_name: "Narmer or Narmer (Mena)",
        arabic_info: "نارمر أو نعرمر هو الملك الأول لمصر القديمة، وهو مؤسس الأسرة الأولى، ويعتبر العديد من المؤرخين أنه هو الفرعون الذي قام بتوحيد مصر العليا والسفلى، وقد تم توثيق هذا الحدث بواسطة النقوش الحجرية على النارمر باليت، والتي تعتبر أقدم توثيق لتوحيد مصر.",
        english_info: "Narmer or Narmer is the first king of ancient Egypt, the founder of the first dynasty, and many historians consider him to be the pharaoh who unified Upper and Lower Egypt, and this event has been documented by the stone inscriptions on the Narmer Palette, which is considered the oldest documentation of the unification of Egypt.",
        date_of_birth: "3100",
        date_of_death: "3050",
        sub_era_id: sub_era_1.id,
    )
    character_1.thumb_image.attach(io: URI.open("https://scontent.fcai20-1.fna.fbcdn.net/v/t1.18169-9/14100448_1006483662753651_26063133592500132_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=3RaIensAHkkQ7kNvgE_EaBd&_nc_ht=scontent.fcai20-1.fna&oh=00_AYDsd_Srn5sVzDiyQDehSZiUzIiKdByl_JT5fJ4hmKFMzw&oe=666883C0"), filename: 'image.jpg', content_type: 'image/jpg')
    character_1.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/b/be/Narmer_Palette.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"اسمه وهويته",
            english_title:"His name and identity",
            arabic_content:"اسم مينا الشائع مشتق من مانيتو، مؤرخ وكاهن مصري عاش في عهد المملكة الپطلمية. Manetho noted the name in Greek as Μήνης (transliterated: Mênês). الشكل اليوناني البديل، Μιν (يُترجم: مين)، استشهد به مؤرخ القرن الخامس ق.م. هيرودوت، لكن هذا البديل لم يعد مقبولاً؛ يبدو أنه كان نتيجة محرفة من اسم الإله مين. أما الشكل المصري للاسم mnj، فقد أُخذ من قائمتي تورين وأبيدوس للملوك، التي يرجع تاريخها إلى عهد الأسرة العشرين، ويُنطق */maˈnij/. بحلول عهد الدولة الحديثة، التغييرات في اللغة المصرية تعني أن اسمه كان بالفعل يُنطق */maˈneʔ/. اسم mnj يعني \"الدائم إلى الأبد\" أو \"الأبدي\"، الذي قترح إ. إدواردز (1971) أنه قد ربما قد صيغ على أنه \"مجرد لقب وصفي للدلالة على بطل شبه أسطوري [...] فقد اسمه\". بدلاً من اسم شخص معين، قد يخفي الاسم حكام نقادة الثالثة مجتمعين: كا، عقرب الثاني ونارمر",
            english_content:"The common name Mene is derived from Manetho, an Egyptian historian and priest who lived during the Ptolemaic Kingdom. Manetho noted the name in Greek as Μήνης (transliterated: Mênês). An alternative Greek form, Μιν (transliterated: Mên), cited by a 5th-century BC historian Herodotus, but this variant is no longer accepted; it appears to have been a distortion of the name of the god Min New Kingdom, changes in the Egyptian language meant that his name was already pronounced */maˈneʔ/ meaning \"perpetual forever\" or \"eternal\", which E. Edwards (1971) suggests may have been coined as \"Just a descriptive title to indicate a semi-mythical hero whose name has been lost\". Instead of the name of a specific person, the name may hide the combined rulers of Naqada III: Ka, Sqrab II and Narmer.",
            character_id: character_1.id,
    )
    CharacterSection.create(
            arabic_title:"تأسيس الأسرة الأولى",
            english_title:"Establishment of the First Dynasty",
            arabic_content:"يعترى مسألة رأس الأسرة الأولى ومؤسسها بعض الخلاف بين المتخصصين من الباحثين في تلك الفترة الزمنية من تاريخ مصر. وكانت الإشكالية قديماً من هو الملك 'مِـن' (مينا)، وهل هو الملك القرب الثاني، أم الملك نعرمر، أم الملك حور عحا.

            وكان بعض المتخصصين قد وحدواالملك مينا مع الملك التاريخي عحا؛ ولكن حتى زمن قريب - وقبل اكتشافات أبيدوس بالآونة الأخيرة- تم توحيد مينا مع الملك التاريخي نعرمر؛ وقد رجحوا ذلك في ضوء بعض الاكتشافات الحديثة.
            
            إلا أنه - من خلال طبعة ختم طيني من مقبرة بسقارة تعود إلى عهد الملك قاعا، آخر ملوك الأسرة الأولى - تأكد حديثاً أن الملك مينا هو ذاته الملك نعرمر، بل أنه مؤسس ورأس الأسرة الأولى؛ ثم خلفه في الحكم على الترتيب الملوك؛ حور عحا، ودجر، ودجت، ودن ومرني عت، وعنجي إب، وسمر خت، و[قاعاي]. وكان ذلك في سياق تكرار أسماء هؤلاء الملوك مرتين، تارة في سجل علوي يبدأ باسم الملك نعرمر، وينتهى باسم الملك قاعا؛ وتارة أخرى باسم الملك مينا، وينتهى باسم الملك قاعا.
            
            كما يؤكد المصدر سالف الذكر أثر آخر، ألا وهو طبعة ختم من مقبرة الملك دن بأبيدوس، عليه أسماء ملوك الأسرة الأولى على الترتيب: نعرمر، حور عحا، دجر، دجت، دن، ثم مرني عت أم الملك حور عحا. وحتى وقت قريب لم يكن معروفاً ما إذا كان اختيار منف كعاصمة للأسرة الأولى قد تم في عهد الملك نعرمر، أم أن الأمر قد جرى في عهد لاحق. وقد اعتقد البعض أنه تم في عهد الملك حور عحا تبعاً لافتراض دراير ومن تبعه في رأيه بأن هذا الملك الأخير هو مؤسس الأسرة الأولى.
            
            والمعروف أن الرحالة الإغريقى هيرودوت قد نسب إلى الملك مينا، أمراً بإقامة العاصمة التى عُرفت باسم إنب-حدج، أى (الجدار الأبيض)، إشارة إلى أن سورها كان مبنياً بالطوب اللبن ثم لُون باللون الأبيض؛ أو أنه كان مشيداً بالحجر الجيري الأبيض. وهذه المدينة هى التى عُرفت فيما بعد باسم 'من- نفر' (ثابت وجميل)، والتى حُورت إلى 'منف'، ثم: 'ميت- رهنت' التى حُوِّرت إلى 'ميت رهينة'، وهو الاسم الحالي للقرية التى تقوم على أطلال هذه المدينة.
            
            وتبعاً لما أثبتته المصادر المصرية التى أشرنا إليها بأن الملك نعرمر هو ذاته الملك مينا، وأنه رأس ومؤسس الأسرة الأولى؛ فإنه يكون هو أيضاً نفس الملك الذى أسس العاصمة إنب- حچ، والتى اختار لها موقعاً متوسطاً بين شمال البلاد وجنوبها.
            
            أما عن الملك نعرمر ذاته، والذى يُعرف أيضاً باسم مينا، كما ورد في الآثار المصرية من عصر الدولة الحديثة، فهو الملك الذى خطت البلاد في عهده خطوات واسعة نحو الوحدة وتأسيس الأسرة الأولى؛ لذا فمن المهم أن نلقى مزيداً من الضوء على آثاره، سواء ما كُشف منها قديماً، أوما كُشف حديثاً، خاصة في مواقع الدلتا؛ مما يؤكد ما ذكرناه من انتشار ثقافة الصعيد في كافة أنحاء البلاد",
            english_content:"The issue of the head of the First Dynasty and its founder is subject to some disagreement among specialist researchers in that period of time in Egyptian history. The problem in the past was who was King 'Min' (Mena), and was he King Qarb II, King Narmer, or King Hor-Aha.

            Some specialists had united King Menes with the historical King Aha. But until recently - and before the recent discoveries of Abydos - Menes was united with the historical king Narmer; They suggested this in light of some recent discoveries.
            
            However, - through a clay seal impression from a Saqqara cemetery dating back to the reign of King Qaa, the last king of the First Dynasty - it was recently confirmed that King Menes is the same King Narmer, and that he is even the founder and head of the First Dynasty. Then he succeeded him in ruling in order of kings; Hor-Aha, Dajr, Dajat, Din, Marni-Aat, Anji Ibb, Samar Khatt, and Qaai. This was in the context of repeating the names of these kings twice, sometimes in an upper register that begins with the name of King Narmer, and ends with the name of King Qaa. Other times, it is in the name of King Mina, and it ends in the name of King Qaa.
            
            The aforementioned source also confirms another trace, which is a seal impression from the tomb of King Den in Abydos, bearing the names of the kings of the First Dynasty, in order: Narmer, Hor-Aha, Djer, Dajt, Den, then Marni-At, the mother of King Hor-Aha. Until recently, it was not known whether the selection of Memphis as the capital of the First Dynasty took place during the reign of King Narmer, or whether the matter happened in a later era. Some believed that it took place during the reign of King Hor-Aha, according to the assumption of Dreyer and those who followed him in his opinion that this last king was the founder of the First Dynasty.
            
            It is known that the Greek traveler Herodotus attributed to King Menes an order to establish the capital, which was known as Eneb-Hedaj, meaning (the white wall), indicating that its wall was built of mud bricks and then painted white. Or it was built of white limestone. This city is what was later known as 'Min-Nefer' (steadfast and beautiful), which was changed to 'Memphis', then: 'Meet-Rahant', which was changed to 'Meet Rahina', which is the current name of the village that stands on the ruins of this city. .
            
            According to what was proven by the Egyptian sources that we referred to, that King Narmer is the same King Menes, and that he is the head and founder of the First Dynasty; He is also the same king who founded the capital, Eneb-Hash, for which he chose a central location between the north and south of the country.
            
            As for King Narmer himself, who is also known as Mina, as mentioned in Egyptian antiquities from the New Kingdom era, he is the king during whose reign the country took great strides towards unity and the establishment of the First Dynasty. Therefore, it is important to shed more light on its effects, whether discovered in ancient times or recently discovered, especially in the delta sites. Which confirms what we mentioned about the spread of Upper Egypt culture throughout the country",
            character_id: character_1.id,
    )
    CharacterSection.create(
            arabic_title:"أسلافه",
            english_title:"His ancestors",
            arabic_content:"زوجته يعتقد أنها كانت نعيث‌حوتپ، وكانت أميرة من مصر السفلى. وقد وجد اسمها في مقابر خلفاء نارمر المباشرين حور آحا ودجر، مما يدعو للإعتقاد أنها كانت أم أو زوجة حور آحا.",
            english_content:"His wife is believed to have been Neithhotep, a princess of Lower Egypt. Her name was found in the tombs of Narmer's immediate successors, Hor-Aha and Djer, which leads to believe that she was the mother or wife of Hor-Aha.",
            character_id: character_1.id,
    )
    CharacterSection.create(
            arabic_title:"آثاره",
            english_title:"Excitement",
            arabic_content:"منشأة أبو عمر
            الملك مينا ضمن جزء من موكب الكهنة الحاملين لأسماء وتماثيل ملوك الوحدة وأسلاف الملك رعمسيس الثاني من ملوك الأسرتين الثامنة عشرة والتاسعة عشرة  في موكب عيد المعبود مين بالواجهة الداخلية الشماليةالشرقية  للصالة الثانية  من معبد الرامسيوم.
            عثر في منشأة أبو عمر على إناء يحمل اسمه، وقد ظهرت علامة (نعر) في شكل شرطة أفقية.
            
            تل إبراهيم عوض
            عثر أيضاً على كسرة إناء عليها اسم نعرمر. الملك مينا ضمن جزء من موكب الكهنة الحاملين لأسماء وتماثيل ملوك الوحدة وأسلاف الملك 'رعمسيس الثانى' من ملوك الأسرتين الثامنة عشرة والتاسعة عشرة في موكب عيد المعبود مين بالواجهة الداخلية الشمالية الشرقية  للصالة الثانية من معبد الرامسيوم.
            
            كفر حسن داود
            أختام الملك نعرمر من مقبرة رقم (414) بطرخان.
            عثر على إناء يحتمل قراءة اسم نعرمر عليه، ولكن لم يعثر على شواهد أخرى تعززه.
            
            حلوان وطرة
            عثر في مقبرة  على قطعة من الفيانس المزجَّج تمثل سرخ (واجهة القصر الملكى) في رديم المقبرتين، وعليها العلامتان المكونتان لاسمه، وهما: نعر (سمكة القرموط)، ومر (الأزميل). وكذلك عثر على اسمه في موقع طرة القريب من حلوان.
            
            زاوية العريان
            عثر على كسرة إناء عليها علامة سمكة القرموط نعـر.
            
            طرخان
            عثر على إناءين لسوائل من طرخان، عليهما اسم الملك كاملاً. عثر على إناء في مقبرة (1100)، يؤرخه 'فان دن برنك' بعهد 'نقادة' ، نقش عليه علامة نعر فقط من اسمه. وعثر أيضاً على ختم مُطعم بالمقبرة رقم ، مسجّل عليه اسمه. وكذا عثر في مقبرة رقم (412)، ومقبرة رقم (415) على أوانى سوائل تحمل اسمه وايضًا أختام الملك 'نعرمر' من مقبرة رقم (414) بطرخان.
            
            أبيدوس
            إعادة تركيب لنص على طبعة ختم طينية من الجبانة الملكية بأبيدوس، به أسماء حكام الأسرة الأولى من نعرمر إلى دن بترتيبهم التاريخى (حوالى 3000 ق.م).
            
            بطاقات من العاج تحتوى على اسم الملك نعرمر من الجبانة الملكية بأبيدوس.
            
            بطاقات من العاج تحتوى على اسم الملك نعرمر من الجبانة الملكية بأبيدوس.
            
            بطاقات من العاج تحتوى على اسم الملك نعرمر من الجبانة الملكية بأبيدوس.
            
            آثار من الأبانوس للملك نارمر في أبيدوس.
            
            آثار للملك نارمر والملك حور عحا في أبيدوس.
            من الجبانة في أبيدوس، عثر على أوانى سوائل من الألباستر تحمل اسم الملك نعرمر. وعثر على كسرات من أوانى من نفس الجبانة تحمل اسمه.
            
            من الجبانة عثر على كسرات أوانى من الألباستر عليها اسمه. من المقبرة رقم  بالجبانة ، عثر على بطاقة عاجية سُجِّل اسمه ضمن نقوشها. إعادة تركيب لنص على طبعة ختم طينية من الجبانة الملكية بأبيدوس.
            
            هيراكونپوليس
            صلاية نعرمر محفوظة بالطابق الأرض في المتحف المصري.
            ظهرت أهمية هيراكونپوليس منذ زمن طويل، وذلك منذ أيام كويبل وجرين اللذين قاما بالحفر في المنطقة في سنوات 1897-1899؛ حيث استخرجا حشداً من الأدلة المتصلة بعصر التوحيد، وكان من أهمها آثار الملك نعرمر، ويأتى على رأسها (صِلاية 'نعرمر') الشهيرة، والمحفوظة حالياً بالمتحف المصرى بالقاهرة.",
            english_content:"Abu Omar facility
            King Menes is part of the procession of priests carrying the names and statues of the Kings of Unity and the ancestors of King Ramesses II of the Kings of the Eighteenth and Nineteenth Dynasties in the procession of the Feast of the Deity Min in the north-eastern interior façade of the second hall of the Ramesseum Temple.
            In the Abu Omar facility, a vessel bearing his name was found, and a sign (naar) appeared in the form of a horizontal dash.
            
            Tal Ibrahim Awad
            A fragment of a vessel bearing the name Narmar was also found. King Menes is part of the procession of priests carrying the names and statues of the Kings of Unity and the ancestors of King Ramesses II of the Kings of the Eighteenth and Nineteenth Dynasties in the procession of the Feast of the Deity Min in the northeastern interior facade of the second hall of the Ramesseum Temple.
            
            Kafr Hassan Daoud
            Seals of King Narmer from Tomb No. (414) in Tarkhan.
            A vessel was found on which the name Narmer may be read, but no other evidence was found to support it.
            
            Helwan and Tora
            A piece of glazed faience was found in a cemetery representing a serekh (the facade of the royal palace) in the backfill of the two tombs, bearing the two signs that make up his name: naar (catfish) and mar (chisel). His name was also found in the Tora site near Helwan.
            
            Zawyat Al-Arian
            A fragment of a vessel bearing the mark of a catfish was found.
            
            Tarkhan
            Two containers of Tarkhan liquids were found, bearing the king’s full name. A vessel was found in a cemetery (1100), dated by 'Van den Brink' to the Naqada era. It was engraved with a narwhal sign only of his name. An inlaid seal was also found in tomb No., with his name written on it. Likewise, vessels of liquids bearing his name were found in Tomb No. (412) and Tomb No. (415), as well as the seals of King ‘Narmer’ from Tomb No. (414) in Tarkhan.
            
            Abydos
            Reconstruction of text on a clay seal impression from the royal cemetery in Abydos, containing the names of the rulers of the First Dynasty from Narmer to Dene in their historical order (about 3000 BC).
            
            Ivory cards containing the name of King Narmer from the royal cemetery in Abydos.
            
            Ivory cards containing the name of King Narmer from the royal cemetery in Abydos.
            
            Ivory cards containing the name of King Narmer from the royal cemetery in Abydos.
            
            Antiquities of ebony belonging to King Narmer in Abydos.
            
            Monuments of King Narmer and King Hor-Aha in Abydos.
            From the cemetery in Abydos, alabaster liquid vessels bearing the name of King Narmer were found. Fragments of vessels from the same cemetery bearing his name were found.
            
            From the cemetery, fragments of alabaster vessels bearing his name were found. From Tomb No. in the cemetery, an ivory card was found on which his name was recorded. Reconstruction of text on a clay seal impression from the Royal Cemetery of Abydos.
            
            Hierakonpolis
            Narmer Prayer is preserved on the ground floor of the Egyptian Museum.
            The importance of Hierakonpolis has been apparent for a long time, since the days of Koppel and Green, who excavated the area in 1897-1899; They extracted a host of evidence related to the era of monotheism, the most important of which were the antiquities of King Narmer, at the top of which comes the famous (‘Narmer’ prayer), which is currently preserved in the Egyptian Museum in Cairo.",
            character_id: character_1.id,
    )

    character_2 = Character.create(
        arabic_name: "حور عحا",
        english_name: "Hor Aha",
        arabic_info: "ربمَّا يكون هو الملك تتي حسب قائمة أبيدوس. مَاَرسَ الطب، وحارب بلاد النوبة وليبيا. هو السلف الملك نارمر، لقب بآتي في قائمة ملوك مصر (أبيدوس)، ولقب بأتوتيس وفقاً لمانيتون. ويعني اسمه المحارب. حارب ضد بلاد النوبة، وشبد معبد الإلهنيث في صا الحجر ضمت حديثاً لمصر السفلى. يوجد للملك مقبرة في أبيدوس، ومقبرة رمزية (القبر الأجوف) في سقارة.",
        english_info: "He may be King Teti according to the Abydos list. He practiced medicine, and fought Nubia and Libya. He is the ancestor of King Narmer, nicknamed Baati in the list of kings of Egypt (Abydos), and nicknamed Atotes according to Manetho. His name means warrior. He fought against Nubia, and built the temple of the gods in Sa al-Hijr, newly annexed to Lower Egypt. The king has a tomb in Abydos, and a symbolic tomb (the Hollow Tomb) in Saqqara.",
        date_of_birth: "3050",
        date_of_death: "3049",
        sub_era_id: sub_era_1.id,
    )
    character_2.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c7/GlazedFiaenceVesselFragmentNameOfAha-BritishMuseum-August21-08.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_2.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c8/Benerib.JPG"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"هويته",
            english_title:"His identity",
            arabic_content:"كان شائعًا تقديم الفراعنة لأسم حورس قبل اساميهم، وعحا تعني «المُحارب». يجمع علماء المصريات بالتوفيق بين اثنين من السجلات التي تربط اسم حور عحا مع الاسم النبتي إيتي.

            كان هناك بعض الجدل حول حور عحا. فيعتقد البعض أنه يكون الفرعون مينا وهو من وحد مصر. ويدعي آخرون انه كان ابن نارمر، الفرعون الذي وحد مصر. وأن نارمر ومينا ربما كانوا فرعون واحد يشار إليه بأكثر من اسم.",
            english_content:"It was common for pharaohs to give the name Horus before their names, and Aha means “warrior.” Egyptologists reconcile two records linking the name Hor-Aha with the Nabataean name Iti.

            There has been some controversy over Hor-Aha. Some believe that he is the Pharaoh Menes, who unified Egypt. Others claim that he was the son of Narmer, the pharaoh who unified Egypt. Narmer and Menes may have been one pharaoh referred to by more than one name.",
            character_id: character_2.id,
    )
    CharacterSection.create(
            arabic_title:"خلافة نارمر",
            english_title:"Caliphate of Narmer",
            arabic_content:"اكتشف جي دراي مير نيث وقاع إدراج حور عحا بانه الفرعون الثاني من الأسرة الأولى. وكان سلفه نارمر موحد مصر العليا ومصر السفلى إلى المملكة الواحدة. ربمَّا اعتلى حور عحا العرش في أواخر القرن 32 ق.م. أو أوائل القرن 31 ق.م. وفقا لمانيتو، أصبح فرعون في سن الثلاثين تقريبًا، وحكم البلاد حوالي ستين عام.",
            english_content:"Ge Dry Mer discovered Neith and Qaa listing Hor-Aha as the second pharaoh of the First Dynasty. His predecessor, Narmer, united Upper and Lower Egypt into a single kingdom. Hor-Aha may have ascended the throne in the late 32nd century BC. Or early 31st century BC. According to Manetho, he became pharaoh around the age of thirty, and ruled the country for about sixty years.",
            character_id: character_2.id,
    )
    CharacterSection.create(
            arabic_title:"السياسة الداخلية",
            english_title:"Domestic politics",
            arabic_content:"يبدو أن حور عحا قد أجري العديد من الأنشطة الدينية. وسجلت زيارته لمَقْدِس الإلهة نيث على عدة لوحات خلال حكمه. يقع مَقْدِس نيث في الشمال الشرقي من دلتا النيل في ساو.
            نقوش الأوعية، تشير التسميات والأختام من مقبرة حور عحا والملكة نيث حوتب أن هذه الملكة توفيت في عهد عحا. وأنه رتب لدفنها في المصطبة المهيبة المُكتشفه من قبل جاك دي مورغان. ويعتقد بأن الملكة نيث حوتب هي أم عحا. اختيارنقادة كمكان للمقبرة لنيث حوتب هو إشارة قوية إلى أن جاءت من هذا الأقليم. وهذا، بدوره، يدعم الرأي القائل بأن نارمر تزوج عضوًا من العائلة الملكية التاريخية لنقادة لتعزيز هيمنة ملوك ثني على المنطقة.
            تؤرخ أقدم المصطبات في سقارة جبانة شمال ممفيس بأنها تعود إلى عهده. تعود المصطبة إلى عضو من نخبة الإداريين الذي قد يكون أحد أقارباء حور عحا، كما كانت العادة في ذلك الوقت. يعد هذا مؤشرًا قويًا على الأهمية المتزايدة لممفيس خلال عهد عحا.",
            english_content:"Hor-Aha appears to have conducted many religious activities. His visit to the sanctuary of the goddess Neith was recorded on several paintings during his reign. The sanctuary of Neith is located in the northeast of the Nile Delta in Sao.
            Vessel inscriptions, labels and seals from the tomb of Hor-Aha and Queen Neithhotep indicate that this queen died during the reign of Aha. He arranged for her to be buried in the majestic mastaba discovered by Jacques de Morgan. It is believed that Queen Neithhotep is the mother of Aha. The choice of Naqada as the location of the tomb for Neithhotep is a strong indication that she came from this region. This, in turn, supports the view that Narmer married a member of the historical royal family of Naqada to strengthen the dominance of the Thinni kings over the region.
            The oldest mastabas in the Saqqara cemetery north of Memphis date back to his reign. The mastaba belonged to a member of the administrative elite who may have been a relative of Hor Aha, as was the custom at that time. This is a strong indication of the growing importance of Memphis during Aha's reign.",
            character_id: character_2.id,
    )
    CharacterSection.create(
            arabic_title:"التنمية الاقتصادية",
            english_title:"Economical development",
            arabic_content:"تبقى عدد قليل من القطع الأثرية من عهد حور عحا. مع ذلك، فإن رؤس فؤوس نحاسية مصنوعة بدقة، وبقايا أوعية خزفيه، وصندوق عاجي ورخام أبيض منقوش ما يشهد بزدهار الحرف خلال عهد عحا.",
            english_content:"A few artifacts remain from the reign of Hor-Aha. However, finely crafted copper ax heads, remains of ceramic vessels,[11] an ivory box and engraved white marble attest to the flourishing of the craft during Aha's reign.",
            character_id: character_2.id,
    )
    CharacterSection.create(
            arabic_title:"السياسة الخارجية",
            english_title:"Foreign Policy",
            arabic_content:"نقش على لوح عاجي من أبيدوس يوحي بأن حور عحا قاد رحلة استكشافية ضد النوبيين. على لوح سنة، ذكر صراحة «مُحاربة تا سيتي»(أي النوبة).",
            english_content:"An inscription on an ivory tablet from Abydos suggests that Hor-Aha led an expedition against the Nubians. On the tablet of Sunna, he explicitly mentioned fighting Ta Seti (i.e. Nubia).",
            character_id: character_2.id,
    )
    CharacterSection.create(
            arabic_title:"وفاته",
            english_title:"His death",
            arabic_content:"وفقا لمانيتو، كان حور عحا يحمل معه فرس النهر، وتجسيدًا للإله سيث. طبقًا لنظرية أن حور عحا هو نفسه مينا الأسطوري، قصة أخرى تقول إن حور عحا قُتل على يد فرس النهر بينما كان يُمارس الصيد.",
            english_content:"According to Manetho, Hor-Aha carried with him a hippopotamus, an embodiment of the god Seth. According to the theory that Hor-Aha is the same as the legendary Menes, another story says that Hor-Aha was killed by a hippopotamus while he was hunting.",
            character_id: character_2.id,
    )
    CharacterSection.create(
            arabic_title:"المقبرة",
            english_title:"Cemetery",
            arabic_content:"عثر للفرعون عحا مقبرتين إحداهُما في أبيدوس والأخرى أضخم تقع في منطقة سقارة، ما أصبح تقليدًا تبعه معظم الفراعنة بعده. تقع مقبرة حور عحا بمنطقة مقابر ملوك الأسرة الأولى في أبيدوس، والمعروفة باسم أم العقاب. تتألف من ثلاثة غرف كبيرة (B10 B15 B19) متاخمة مباشرة لمقبرة نارمر. المقبرة عبارة عن غرف مستطيلة، وحفر مباشرة في الطابق الصحراوي، جدرانها مبطنة بالطوب اللبن. كان لمقابر نارمر وكا غرفتين مجاورتين فقط، في حين أن مقبرة حور عحا تضم ثلاث حُجرات أكبر ومنفصلة. السبب في هذه النوع من العمارة صعوبة بناء أسقف كبيرة فوق الغرف. استخدمت الأخشاب لهذه الهياكل والتي كانت ما يتم استيرادها من فلسطين.",
            english_content:"Two tombs were found for Pharaoh Aha, one in Abydos and a larger one located in the Saqqara region, which became a tradition followed by most pharaohs after him. The Hor Aha cemetery is located in the area of ​​the tombs of the First Dynasty kings in Abydos, known as the Mother of the Eagles. It consists of three large rooms (B10 B15 B19) directly adjacent to the Narmer Tomb. The tomb consists of rectangular rooms, dug directly into the desert floor, with walls lined with mud bricks. The tombs of Narmer and Ka had only two adjacent chambers, while the tomb of Hor-Aha had three larger, separate chambers. The reason for this type of architecture is the difficulty of building large ceilings over the rooms. Timber was used for these structures, which was imported from Palestine.",
            character_id: character_2.id,
    )
    character_3 = Character.create(
        arabic_name: "'جر' (فرعون)",
        english_name: "'Jar' (Pharaoh)",
        arabic_info: "إتي حسب قائمة أبيدوس. كانت هناك علاقات تجارية مع ليبيا في عهدهِ، غزا جزء من أرض سيناء والكنعان. حارب كلا من سيناء وبلاد النوبة، وتوغل حتى وصل إلى الشلال الثاني، وفقا لما تعرضه لوحة محفورة وجدت بالقرب من قلعة بوهين. ومن المرجح انه قاد حملة ضد الليبيين. زوجته هي مريت نيت. كما تم اكتشاف مقبرته في أبيدوس، ودفن بجانبه أكثر من 300 خادم لخدمته في العالم الاخر.",
        english_info: "'Eti' according to the Abydos list. There were trade relations with Libya during his reign, and he conquered part of the land of Sinai and Canaan. He fought both Sinai and Nubia, and penetrated until he reached the second cataract, according to an engraved tablet found near Buhin Castle. It is likely that he led a campaign against the Libyans. His wife is Merit Nate. His tomb was also discovered in Abydos, and more than 300 servants who served him in the other world were buried next to him.",
        date_of_birth: "3049",
        date_of_death: "3008",
        sub_era_id: sub_era_1.id,
    )
    character_3.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/b/b5/Djer_stela_retouched.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_3.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/3/3e/Djer_1.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"هويته",
            english_title:"His identity",
            arabic_content:"الملك خنت دجر أو خنت (جر) هو فرعون من الأسرة المصرية الأولى وهو غير معروف; حكم في حوالي سنة 3050 ق م خلف الملك حور عحا وخلفه الملك دجت (وارجى) وعلى الأغلب أنه حكم لمدة 57 سنة ويعتقد أنه قام بحملات في بلد النوبة وليبيا. اسمه يكتب بطريقتين الأولى مقترنة باسم حورس (حورس جر) ومز جر بالهيلوغريفي كيس من الصوف. أما الاسم الثاني آيتي ويوجد في أبيدوس وعلى الأغلب كان هذا اسمه عند الولادة.

            وتوجد مقبرته بأبيدوس بجانب مقبرة زوجته مرنيث التي يعتقد أنها تولت الحكم لما كان ابنه قاصرا وعند اكتشاف مقبرته عثر على اربع اسوار كانت مربوطة فوق ساعد امرأة، ملفوف بالكتان. ولعلها كانت زوجة الملك خنت دجر، أو من أعضاء الأسرة المالكة. وكانت الأساور مربوطة بأربطة من كتان، في موضع يمكننا من استنتاج الترتيب الأصلي لها. وقد تكونت ثلاثة منها من أنواع مختلفة من الخرز، من ذهب وفيروز ولازورد وجمشت، وهو الأماتست. أما الرابع فيتألف من سبع وعشرين لويحة، تمثل واجهة القصر، يعلوها الصقر حورس. وتوضح تقدم قدماء المصريين في الصناعة في هذا الوقت المبكر من هذه الحضارة.",
            english_content:"King Khent Djer or Khent (Djer) is a pharaoh of the First Egyptian Dynasty and is unknown. He ruled in about the year 3050 BC, succeeding King Hor Aha, and was succeeded by King Djet (Warji). He most likely ruled for 57 years, and it is believed that he carried out campaigns in Nubia and Libya. His name is written in two ways, the first is associated with the name of Horus (Horus Djer) and Mez Djer in the hieroglyphic of a bag of wool. As for the second name, Aiti, it is found in Abydos, and this was most likely his name at birth.

            His tomb is located in Abydos, next to the tomb of his wife, Merneith, who is believed to have assumed power when his son was a minor. When his tomb was discovered, four bracelets were found that were tied over a woman’s forearm, wrapped in linen. She may have been the wife of King Khent Djer, or a member of the royal family. The bracelets were bound with linen bands, in a position that enables us to deduce their original arrangement. Three of them were made of different types of beads: gold, turquoise, lapis lazuli, and amethyst, which is amethyst. The fourth consists of twenty-seven panels, representing the facade of the palace, surmounted by the falcon Horus. It illustrates the progress of the ancient Egyptians in industry at this early time in this civilization.",
            character_id: character_3.id,
    )
    CharacterSection.create(
            arabic_title:"عهده",
            english_title:"Custody",
            arabic_content:"تميز عهد الملك ((جر)) بعدم وقوع أي اضطرابات داخلية٫ كما تميز بتقدم الفنون والصناعات.

            قام الملك ببناء مقبرته في أبيدوس وقد وجد له مقبرتين كبار في مدينة أبيدوس وسقارة. شارك الملك دجر الملك عحا في غزواته ضد النوبة وانشاء حكمة حتى وصل إلى الجندل الثاني وهذه الأحداث تم تسجيلها على لوحة صغيرة من الحجر تم العثور عليها في منطقة جبل الشيخ سليمان حوالي 11 كم جنوب وادى حلفا. هذه اللوحة تم قطعها ونقلها إلى الخرطوم وهي الآن في حديقة متحف في الخرطوم وهذه اللوحة توضح اهتمام ملوك الأسرة الأولى بتأمين الحدود الجنوبية لمصر. وفي عمليات حفر أخيرة أجريت في منطقة سقارة تم العثور على مقبرة كبيرة ترجع إلى حير نيت يعتقد أنها زوجة الملك دجر.",
            english_content:"The reign of King Djer was characterized by the absence of any internal disturbances, and was also characterized by the advancement of arts and industries.

            The king built his tomb in Abydos and found two large tombs for him in the city of Abydos and Saqqara. King Dajr King Aha participated in his conquests against Nubia and the establishment of Hekma until he reached the second cataract. These events were recorded on a small stone tablet that was found in the area of Mount Sheikh Suleiman, about 11 km south of Wadi Halfa. This painting was cut down and transported to Khartoum and is now in the garden of a museum in Khartoum. This painting shows the interest of the kings of the First Dynasty in securing the southern borders of Egypt. In recent excavations conducted in the Saqqara area, a large tomb belonging to Heer-Nit was found, believed to be the wife of King Dajr.",
            character_id: character_3.id,
    )
    CharacterSection.create(
            arabic_title:"المقبرة",
            english_title:"Cemetery",
            arabic_content:"على غرار والده حور عحا، دفن جر في أم العقاب في أبيدوس. مقبرة جر 'O' من بيتري. قبره يحتوي على رفات 318 من الخدم الذين دفنوا معه. بدايتًا من الأسرة الثامنة عشر، كان التبجيل لمقبرة حور عحا كما تبجل مقبرة أوزوريس، ومجمع دفن الأسرة الأولى، والذي يتضمن مقبرة جر على حد سواء، كان من التقاليد الدينية المصرية المُهمة.",
            english_content:"Like his father Hor-Aha, Djer was buried in Umm al-Uqab in Abydos. Grave traction 'O' from Petrie. His tomb contains the remains of 318 servants who were buried with him. Beginning in the Eighteenth Dynasty, the tomb of Hor-Aha was venerated as was the tomb of Osiris, and the First Dynasty burial complex, which included both the tomb of Djer, was an important Egyptian religious tradition.",
            character_id: character_3.id,
    )
    CharacterSection.create(
            arabic_title:"الأغراض في مقبرة 'جر'",
            english_title:"Objects in the 'Jar' cemetery",
            arabic_content:"لوحة جر، والآن في متحف القاهرة ربمَّا أتت من أبيدوس.
            بطاقات ذكر اسم قصر واسم ميرت نيث.
            شظايا لمزهريتين منقوش عليها اسم الملكة نبث حوتب.
            تم العثور إسوار ملكة في جدار المقبرة.",
            english_content:"The 'Jar' painting, now in the Cairo Museum, may have come from Abydos.
            Cards mentioning Qasr's name and Mert Neith's name.
            Fragments of two vases inscribed with the name of Queen Nebhotep.
            A queen's bracelet was found in the wall of the tomb.",
            character_id: character_3.id,
    )
    CharacterSection.create(
            arabic_title:"المكتشفات من المقابر الثانَوِيّه",
            english_title:"Finds from secondary graves",
            arabic_content:"لوحات لعدة أفراد
            حاجيات من العاج مع اسم نبث حوتب عليها.
            ألواح من العاج.
            أشار مانيتو إلى أن الأسرة الأولى حكمت من ممفيس - وبالفعل دفنت حور نيث، واحدة من زوجات جر، بالقرب من سقارة.",
            english_content:"Paintings for several people
            Ivory objects with the name Nebhotep on them.
            Ivory panels.
            Manetho suggested that the First Dynasty ruled from Memphis - and indeed buried Hor-neith, one of Djer's wives, near Saqqara.",
            character_id: character_3.id,
    )
    character_4 = Character.create(
        arabic_name: "جت",
        english_name: "Jet",
        arabic_info: "جت (يعني اسمه أفعي حورس) فرعون مصري، ورابع ملوك الأسرة الأولى. بدأ في عهده سياسة استغلال المناجم بحثًا عن المعادن؛ فقد عثر على اسمه منقوشًا على صخرة في أحد الدروب التي كانت تصل ما بين إدفو والبحر الأحمر. عثر له على اللوحة الشهيرة التي تحمل اسمه، والمحفوظة حاليًا في متحف اللوفر في باريس.",
        english_info: "Gath (his name means the snake of Horus) was an Egyptian pharaoh, and the fourth king of the First Dynasty. During his reign, he began a policy of exploiting mines in search of minerals. His name was found engraved on a rock on one of the paths that connected Edfu to the Red Sea. He found the famous painting bearing his name, which is currently preserved in the Louvre Museum in Paris.",
        date_of_birth: "3008",
        date_of_death: "2975",
        sub_era_id: sub_era_1.id,
    )
    character_4.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f3/Egypte_louvre_290.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_4.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/a/aa/Abydos_KL_01-04_n04.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"عائلته",
            english_title:"his family",
            arabic_content:"كانت مير نيث أخت جت هي زوجته وملكة مصر، التي قد تكون حكمت مصر كفرعون بعد وفاته. هنالك إحتمال بأن تكون عحا نيث إحدى زوجاته. أنجب جت ومير نيث هو الفرعون دن وحفيدهم الفرعون عج إب.",
            english_content:"Gath's sister Mer-Neith was his wife and queen of Egypt, who may have ruled Egypt as pharaoh after his death. There is a possibility that Aha-neith was one of his wives. Gath and Mer Neith gave birth to the Pharaoh Den and their grandson the Pharaoh Aj-Ib.",
            character_id: character_4.id,
    )    
    CharacterSection.create(
            arabic_title:"عهده",
            english_title:"Custody",
            arabic_content:"لا تعرف مدة حكم جت بالتحديد، ولكن تقدر بأن تكون ما بين ستة إلى عشر سنوات مدة. وفقًا هانس هلك  حكم 10 سنوات. فقدت تفاصيل عهد جت في فجوات من حجر باليرمو. ومع ذلك، يرى من بعض الشظايا ختم يثبت أن هناك أنشطة التداول المكثف مع كنعنان سوريا وفلسطين في ذلك الوقت. المقابر التي يرجع تاريخها إلى عهده في طرخان وسقارة عثر بها على فخار من فلسطين.

            اهتم جت بالتوسع التجاري واستغلال المناجم، فقد عثر على اسمه مكتوب على صخور إحدى الطرق الرابطة بين إدفو والبحر الأحمر. عند التدقيق في آثار عصر جت يُرى أنها قد وصلت إلى حد كبير من الأتقان.",
            english_content:"The exact duration of Gath's rule is not known, but it is estimated to be between six and ten years. According to Hans Hulk, a 10-year sentence. Details of Gath's reign are lost in gaps in Palermo stone. However, some seal fragments seen prove that there were intense trading activities with Canaan of Syria and Palestine at that time. Tombs dating back to his reign in Tarkhan and Saqqara contained pottery from Palestine.

            Jet was interested in commercial expansion and exploitation of mines. He found his name written on the rocks of one of the roads linking Edfu and the Red Sea. When examining the effects of the Gath era, it is seen that they have reached a great degree of perfection.",
            character_id: character_4.id,
    )
    CharacterSection.create(
            arabic_title:"المقبرة",
            english_title:"Cemetery",
            arabic_content:"تقع مقبرة جت 'Z' في أبيدوس، إلى الغرب من مقبرة والده الفرعون جر. تحيط بمقبرة جت 174 مدفن تابع له معظمهم من الخدم الذين تم التضحية بهم عند وفاة جت لخدمة الحياة الآخرى.",
            english_content:"The tomb of Jet 'Z' is located in Abydos, to the west of the tomb of his father, Pharaoh Djer. The cemetery of Gath is surrounded by 174 tombs belonging to him, most of whom are servants who were sacrificed upon the death of Gath to serve the afterlife.",
            character_id: character_4.id,
    )
    character_5 = Character.create(
        arabic_name: "مريت نيت",
        english_name: "Merrit Nate",
        arabic_info: "مربيـاپ حسب قائمة أبيدوس. هي ملكة وصية على العرش، أم الملك دن. كما انها موضع نقاش حيث من المحتمل انها تولت العرش بعد موت الملك جر، ومن الممكن أيضا اعتبارها أول حاكمة لمصر، وطبقا لما اشار اليه بعض علماء الاثار انها كانت ملكة وصية على العرش مع الملك جت وربما حدث ذلك بالتراضي بينهما. معنى اسمها هو المحبة لنيت (نيث) (اله مصر السفلى، كما لديها مثلها مثل الكثير من الملوك في عهدها مقبرة ومقبرة أخرى رمزية في كلا من أبيدوس وسقارة. كلاهما لهما الوقار الملكي من حيث الحجم والبناء.",
        english_info: "Murbiyab according to the Abydos list. She is queen regent, mother of King Den. It is also a subject of debate, as it is possible that she assumed the throne after the death of King Djer, and it is also possible that she was considered the first female ruler of Egypt, and according to what some archaeologists have indicated, she was queen regent with King Gath, and this may have happened by mutual consent between them. The meaning of her name is love for Neith (the god of Lower Egypt). She, like many kings during her reign, had a cemetery and another symbolic cemetery in both Abydos and Saqqara. Both had royal dignity in terms of size and construction.",
        date_of_birth: "3008",
        date_of_death: "2975",
        sub_era_id: sub_era_1.id,
    )
    character_5.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/b/b3/Merneith_stele.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_5.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/b/b3/Merneith_stele.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"اسمها وشخصيتها",
            english_title:"Her name and personality",
            arabic_content:"يقترن اسم مريت نيث بالإلهة المصرية القديمة نيث معبودة هامة خلال الأسرة الأولى. معنى اسمها «محبوبة نيث». كانت مركز عبادة نيث في سايس (حاليًا صا الحجر). وتجد بعض الآثار وادوات من عهدها تحمل أسماء أخرى، مثل «نيث حتب» أي نيث راضية و«نخت نيث» ومعناها نيث القوية.

            ويظهر اسمها «أم الملك»(موت نسوت) على العديد من الاختام الملكية للملك دن وربما يعني ذلك أنه كان ابنها. وتشير الآثار التي عثر عليها إلى أنها كانت زوجة الملك جت، في عام 2900 قبل الميلاد، وربما كانت ابنة الفرعون جر. فمن ناحية أخرى يعتقد عالم الآثار «بيتر كابلوني» أنها كانت ابنة [جر] (حيث عثر على آثار تحمل اسمها في مقبرته) وأنها كانت زوجة «جت».",
            english_content:"The name Merit-Neith is associated with the ancient Egyptian goddess Neith, an important deity during the First Dynasty. The meaning of her name is “Beloved of Neith.” The center of Neith's cult was at Sais (present-day Sa'as al-Hajar). You find some antiquities and tools from her era bearing other names, such as “Neithhotep,” which means Neith is satisfied, and “Nakht-Neith,” which means Neith the Strong.

            Her name, “Mother of the King” (Mot Nesut), appears on many of King Den’s royal seals, perhaps meaning that he was her son. The antiquities found indicate that she was the wife of King Gath, in 2900 BC, and she may have been the daughter of Pharaoh Djer. On the other hand, archaeologist Peter Caploni believes that she was the daughter of Jar (as traces bearing her name were found in his tomb) and that she was the wife of Jet.",
            character_id: character_5.id,
    )
    CharacterSection.create(
            arabic_title:"من أثارها",
            english_title:"From its effects",
            arabic_content:"عثر لمريت نيث على لوحة تذكيرية من الحجر الرملي، عثر عليها الباحث فلندرز بيتري في عام 1900 بالقرب من قبور أم الكاب. كما عثر على اسمها أختام من مقبرتها مع دن (فرعون) في أبيدوس. يقل وجود اسمها في مواقع أخرى غير أبيدوس.

            عثر في مقبرة سقارة على مكسورات قوارير وطاسات من سن الفيل. وكانت تلك المقبرة في البدء مصنفة بأنها مقبرتها حيث عثر فيها على اسمها محفورا على لوحة من المرمر ولم يتأكد الباحثون من ذلك فيما بعد.
            
            ولكن عثر على اسمها على أختام لشخصيات كانت تعمل تحت ادارتها في سقارة، من ضمنهم الوكيل «هاتيا» و«سخ كا». وكان «سخ كا سج» مديرا لمقاطعة «حور واج» الذي عاصر الفراعنة جر، و«واجي» و«دن» ودفن في سقارة.",
            english_content:"Lemrit Neith found a memorial sandstone plaque, found by researcher Flinders Petrie in 1900 near the graves of Umm al-Kab. Her name was also found on seals from her tomb with the Den (Pharaoh) in Abydos. Her name is rarely found in sites other than Abydos.

            Broken bottles and bowls from Sin el Fil were found in the Saqqara cemetery. This cemetery was initially classified as her cemetery, as her name was found engraved on an alabaster plaque, but researchers did not confirm this later.
            
            However, her name was found on the seals of figures who worked under her in Saqqara, including the agent “Hatia” and “Sakh Ka”. “Sakhka Saj” was the director of the “Hoor Waj” province, who was a contemporary of the pharaohs Djer, Waji, and Den, and was buried in Saqqara.",
            character_id: character_5.id,
    )
    CharacterSection.create(
            arabic_title:"مقبرتها",
            english_title:"Her cemetery",
            arabic_content:"دفنت مريت نيث في مقبرتها Tomb Y في ابيدوس. اذ تبلغ مقاييس المقبرة 19,2 × 16,3 متر وارتفاعها غير معروف بدقة. يماثل تصميم المقبرة مقابر الملك جر (فرعون) وجت ودن وعج إب وسمر خت وقاع. ووجد في وسط المقبرة تابوتا خشبيا كما هو الحال مع الملوك الآخرين. ويوجد حول الحجرة 8 حجرات للمخزونات ويحيطها 41 حجرة لموتى، دفن فيها كبار الموظفين وخدم الملكة من النساء والرجال وكلاب.

            ينبع تصميم المقبرة نظام تصور الصعود إلى السماء بعد الموت كما هو منقوش على مشط من سن الفيل وجد في مقبرة الفرعون جت، وهو يصور الأرض والسماء. يملأ الصقر حورس والاسم المكتوب في السيرخ (أسم الملك أو الملكة) المكان الموجود بين السماء والأرض. ويوجد على ناحيتي المشط دعامتان للسماء. وهذا يبين عقيدة المصري القديم بأن قوة الملك كانت تشغل المكان بين الأرض والسماء. أي أن الملك كان يصل إلى مرتبة خاصة به، كتبت ووصفت بعد ذلك في نصوص الأهرام بالتفصيل (خلال الأسرة الرابعة مثل هرم أوناس).
            
            كما يوجد في مقبرة مريت نيث في أبيدوس ما يسمى «منطقة الوادي» ويوجد بها نحو 71 مقبرة ثانوية في منطقة أم الكاب تبلغ مساحتها 66,5 × 25,5 متر. كانت تلك القبور الثانوية الموجودة إلى الشمال الغربي من مقبرتها مخصصة لخدم الملكة وكانت مدفونة في توابيت خشبية بسيطة. ويبدو أن جميع خدام الملكة وحيواناتها قد تم قتلهم ليدفنوا معها بغرض مصاحبتها وخدمتها في الآخرة.
            
            انتهى اتباع ذلك النظام في دفن الملوك من بعد الفرعون قاع حيث كان هو آخر ملك من الاسرة الأولى، وكان يحيط بمقبرته 26 من القبور الثانوية.
            
            عثر في المقابر الثانوية شمال غرب مقبرة مريت نيث على أدوات كثيرة من العاج وأدوات من الاحجار. وقد تم التعرف على تلك هي مقبرة مريت نيث من وجود قارورة مزينة عليها اسم الملكة. لهذا اختلف علماء الآثار على مكان دفن الملكة مريت نيث والمنطقة المحيطة بقبرها. ويعتقد عالم الآثار «فرنر كايزر» أن تلك المنطقة تتبع مقبرة الفرعون دن. ولكن عمليات حفريات أجريت بعد ذلك تؤيد انها منطقة قبور تتبع مقبرة مريت نيث. كما ان منطقة القبور تقع قريبة أيضا من مقبرة الملك جر كما يتفق تصميم مقبرتيهما.
            
            توجد في منطقة سقارة (بالقرب من الجيزة) مصطبة S3503 اعتقد بعض المؤرخون في الماضي انها مقبرة مريت نيث. ولكن هذا الانتساب لا يزال يحتار فيه العلماء لأن تجهيز مقبرتين لملكة واحدة كانت مسألة غريبة في ذلك الزمان، وربما يرجع هذا التصور إلى عادة ان لكل ملك من تلك الفترة كانت له مقبرة في أبيدوس.
            
            ولكن ضعف الاعتقاد بنظرية ان مقبرتها توجد في سقارة، خصوصا وأن طريقة الدفن مختلفة كما ان صاحب مقبرة سقارة غير معروف.
            
            المقبرة إس 3503 عبارة عن مصطبة مشكلة من الخارج بطريقة النيشات (الزوايا) كما بينت بعد ازاحة الاتربة عنها ألوانا استخدمت في تزيينها. ويتكون البناء التحتي لها من حجرة مبطنة بالطوب اللبن، تبلغ مقاييسها 14,25 × 14,50 متر ويتبعها خمس حجرات ثانوية. تبلغ مقاييس حجرة التابوت 4,80 × 3,50 متر وعثر فيها عل بقايا تابوت خشبي وقطع صغيرة من صفائح ذهبية رقيقة. وبجانبها عثر علي ختم للملك واجي (جت) والملكة مريت نيث. كانت المصطبة مسروقة في العهد القديم واشعل فيها النيران.",
            english_content:"Merit Neith was buried in her Tomb Y cemetery in Abydos. The tomb measures 19.2 x 16.3 meters, and its height is not precisely known. The design of the tomb is similar to the tombs of King Jar (Pharaoh), Gath, Den, Aj, Ibb, Samar, Khatt, and Qa. A wooden coffin was found in the middle of the cemetery, as is the case with other kings. Around the room there are 8 rooms for stores, and surrounding it are 41 rooms for the dead, in which senior officials and the queen’s servants, including men and women, and dogs, are buried.

            The design of the tomb stems from the system depicting the ascension to heaven after death, as engraved on an elephant tooth comb found in the tomb of Pharaoh Jet, which depicts the earth and the sky. The falcon Horus and the name written in the serekh (the name of the king or queen) fill the place between heaven and earth. On both sides of the comb there are two supports for the sky. This shows the ancient Egyptian belief that the power of the king occupied the place between the earth and the sky. That is, the king was reaching a rank of his own, which was later written and described in detail in the Pyramid Texts (during the Fourth Dynasty, such as the Pyramid of Unas).
            
            There is also what is called the “Wadi Area” in the Merit Neith cemetery in Abydos, and there are about 71 secondary cemeteries in the Umm al-Kab area, with an area of 66.5 x 25.5 metres. The secondary graves to the northwest of her tomb were intended for the queen's servants and were buried in simple wooden coffins. It seems that all of the queen's servants and animals were killed and buried with her for the purpose of accompanying and serving her in the afterlife.
            
            Following that system ended up burying kings after Pharaoh Qaa, as he was the last king of the First Dynasty, and his tomb was surrounded by 26 secondary graves.
            
            Many ivory and stone tools were found in the secondary graves northwest of the Merit Neith cemetery. This was identified as the tomb of Merit Neith by the presence of a flask decorated with the queen's name. That is why archaeologists disagreed about the burial place of Queen Merit-Neith and the area surrounding her grave. Archaeologist Werner Kaiser believes that this area belongs to the tomb of Pharaoh Den. However, excavations conducted later confirm that it is a grave area belonging to the Merit Neith cemetery. The tomb area is also located close to the tomb of King Jar, as is the design of their tombs.
            
            In the Saqqara area (near Giza) there is Mastaba S3503, which some historians in the past believed to be the tomb of Meritneith. However, scholars are still confused about this affiliation because preparing two tombs for one queen was a strange matter at that time, and this perception may be due to the custom that every king from that period had a tomb in Abydos.
            
            But there is little belief in the theory that her tomb is located in Saqqara, especially since the method of burial is different and the owner of the Saqqara tomb is unknown.
            
            Cemetery S3503 is a mastaba formed from the outside in the manner of niches (corners), as shown after removing the dust from it and the colors used to decorate it. Its infrastructure consists of a room lined with mud brick, measuring 14.25 x 14.50 metres, followed by five secondary rooms. The coffin chamber measures 4.80 x 3.50 meters, and the remains of a wooden coffin and small pieces of thin gold sheets were found in it. Next to it was found a seal belonging to King Waji (Get) and Queen Merit-Neith. The mastaba was stolen in the Old Testament and set on fire.",
            character_id: character_5.id,
    )
    CharacterSection.create(
            arabic_title:"دلائل حديثة",
            english_title:"Recent evidence",
            arabic_content:"لم يوجد اسم مريت نيث على اختام في مقبرة الفرعون قاع وهو ثامن فرعون حكم الأسرة الأولى، ومذكور عليها جميع حكام مصر في تلك الفترة الأولى. ويبدو أن الملكة مريت نيث قل صيتها التاريخي على الأقل منذ عهد الفرعون قاع.

            يطهر اسم مريت نيث غلى حجر باليرمو في قطعة مكسورة من لوحة تذكارية من عهد الأسرة المصرية السادسة. تلك اللوحة تحوي تاريخ عدة ملوك، ويوجد اسمها في قائمة ثانية تذكر احداثا سنوية قام بها الفرعون دن. بحسب الباحثين 'كورت سي' 'سيلكه روت' يثبت حجر باليرمو أن مريت نيث هي أم الفرعون دن.",
            english_content:"The name of Meritneith was not found on seals in the tomb of Pharaoh Qaa, who was the eighth pharaoh to rule the First Dynasty, and all the rulers of Egypt in that first period are mentioned on them. It seems that Queen Merit-Neith has had a low historical reputation, at least since the time of Pharaoh Kaa.

            The name of Merit Neith is engraved on a Palermo stone in a broken piece of a stela from the Sixth Dynasty of Egypt. This tablet contains the history of several kings, and their name is found in a second list that mentions annual events carried out by Pharaoh Den. According to researchers 'Kurt Si' 'Silke Rut', the Palermo stone proves that Merit-Neith is the mother of Pharaoh Den.",
            character_id: character_5.id,
    )
    character_6= Character.create(
        arabic_name: "دن (فرعون)",
        english_name: "Den (Pharaoh)",
        arabic_info: "دن أو حور دن، هو اسم حورس لفرعون من الأسرة المصرية الأولى. أكثر الفراعنة القدامى آثارًا. حكم خلال هذه الفترة. صاحب عهد دن ازدهارًا كبيرًا لمملكته، فالعديد من الابتكارات تنسب إلى عهده. كان أول من استخدم لقب ملك مصر السفلى ومصر العليا، وهو اللقب الذي يعرف باسم التتويج. وأول من صوّر وهو ويرتدي التاج المزدوج (الأحمر والأبيض). شيدت أرضية مقبرته في أم العقاب بالقرب من أبيدوس من الجرانيت الأحمر والأسود. وهي المرة الأولى في مصر التي استخدم فيها هذا الحجر الصلب كمادة بناء. خلال فترة حكمه الطويلة أسس العديد من أنماط الطقوس والتي استخدمها الحكام من بعده.",
        english_info: "Den or Hor Den, is the name of Horus for a pharaoh of the First Egyptian Dynasty. The most monumental of the ancient pharaohs. He ruled during this period. Dunn's reign was accompanied by great prosperity for his kingdom, and many innovations are attributed to his reign. He was the first to use the title of King of Lower and Upper Egypt, a title known as the coronation. He was the first to be photographed wearing the double crown (red and white). The floor of his tomb at Umm al-Uqab near Abydos was constructed of red and black granite. This is the first time in Egypt that this hard stone was used as a building material. During his long reign, he established many ritual patterns that were used by rulers after him.",
        date_of_birth: "2975",
        date_of_death: "2935",
        sub_era_id: sub_era_1.id,
    )
    character_6.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/a/a3/IvoryLabelOfDen-BritishMuseum-August19-08.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_6.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/a/a3/IvoryLabelOfDen-BritishMuseum-August19-08.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"انجازاته",
            english_title:"His achievements",
            arabic_content:"حارب في سيناء، تم إحصاء سكان البلاد بوجه عام في عهده. اسمه النبتي (اسم نبتيهو سمتي، وعرف ايضا باسم حسابتي في قائمة أبيدوس الملكية، وبأسم أوسافايدوس وفقا لمانيتون. قام بالعديد من الحملات على سيناء؛ ليدافع عن مناجم المالاكيت التي أكتشفها البدو. واحتفل خلال فترة حكمه بعيد الحب سد والذي من خلاله اعتقد أن الملك حكم لمدة 30 سنة على الأقل. ويظن انه وصل إلى الحكم في سن مبكر، ويؤكد ذلك أن والدته حكمت كوصية على العرش. وخلال فترة عهده قام بتعداد الماشية. ظهر في فترة حكمه منصب لاحدى الموظفين ذو شأن يدعى حماقا أعمال هذا الموضف تشبه ما يقوم به الوزراء في العهود الحديثة. مقبرته في ابيدوس صغيرة الحجم، ويوجد 130 مقبرة مجاورة لخدمه. أما المقبرة في الشمال فهي مخصصة لكلا من الملك ووزيره حماقا.",
            english_content:"He fought in Sinai, and the country's population was generally counted during his reign. His name is Nabta (Nabtihu Smti, and he is also known as Hesbati in the Abydos royal list, and as Osavaidos according to Manitho. He carried out many campaigns in the Sinai, to defend the malachite mines discovered by the Bedouins. During his reign, he celebrated Valentine’s Day, through which it is believed that the king ruled For at least 30 years, it is believed that he came to power at an early age, and this is confirmed by the fact that his mother ruled as regent and during his reign he counted livestock. During his reign, a position of an important official named Hamaka appeared. This position is similar to that of ministers In modern times, his cemetery in Abydos is small, and there are 130 graves adjacent to his servants, while the cemetery in the north is dedicated to both the king and his minister Hamama.",
            character_id: character_6.id,
    )
    CharacterSection.create(
            arabic_title:"عهده",
            english_title:"His reign",
            arabic_content:"الملك «دن» له العديد من الإنجازات من أهمها أنه أعاق قطاع الطرق الذين كانوا يغيرون على سكان الدلتا الغربية. وهو أول ملك فكّر في تنظيم مياه النيل وفيضانه في منطقة الفيوم. وكان أول من حبس الأوقاف على المعابد. دفن في العرابة المدفونة في مقبرة كسيت أرضيتها بقطع من الجرانيت.

            أسس بعض الطقوس وأسس اتخاذ لقب التتويج «نيسوت - بيتي» وبقي من بعده هذا اللقب إلى عصر الحكم الرومان. كما يرجع إليه لقب اسم نبتي لفرعون وهذا اللقب يعني ملك الوجه القبلي والبحري. وهو صوّر في حجر باليرمو مرتديا التاج الأبيض، رمز الوجه القبلي ثم مرتديا التاج الأحمر رمز الوجه البحري.
            
            وقد كشف في سقارة عن مقبرة لوزيره حماكا بها أقراص من الحجر والنحاس والخشب والعاج ومحلاة بمناظر بديعة وبعضها مطعم بقطع من المرمر .",
            english_content:"King Den had many achievements, the most important of which was that he hindered the bandits who were attacking the residents of the Western Delta. He was the first king to think about regulating the waters of the Nile and its flooding in the Fayoum region. He was the first to reserve endowments for temples. He was buried in Al-Araba, buried in a cemetery whose floor was covered with pieces of granite.

            He established some rituals and established the coronation title “Nisut-Beti,” and this title remained after him until the era of Roman rule. The title of the Nabta name of Pharaoh is also attributed to him, and this title means king of Upper and Lower Egypt. He was depicted in Palermo stone wearing the white crown, the symbol of Upper Egypt, and then wearing the red crown, the symbol of Lower Egypt.
            
            In Saqqara, a tomb of his vizier Hamaka was uncovered, containing tablets made of stone, copper, wood, and ivory, decorated with magnificent scenes, some of which were inlaid with pieces of alabaster.",
            character_id: character_6.id,
    )
    character_7 = Character.create(
        arabic_name: "حتب سخم وى",
        english_name: "Hotepsekhemwy",
        arabic_info: "حتب سخم وي هو اسم حورس لفرعون فترة الأسرات المبكرة والذي أسس الأسرة الثانية. لا يعرف شئ عن حقبته؛ تقترح بردية تورينو بأن حكمه استمر 95 عام بينما يورد المؤرخ مانيتون في تاريخه بان حكمه استمر 38 عام. اعتبر علماء المصريات أن كلا التقريرين مخطئين وقدرت فترة حكم حتب سخم وي 25 أو 29 عام.",
        english_info: "Hotepsekhemwy is the Horus name of the Pharaoh of the Early Dynastic Period who founded the Second Dynasty. Nothing is known about his era; The Turin Papyrus suggests that his rule lasted 95 years, while the historian Manetho states in his history that his rule lasted 38 years. Egyptologists considered both reports to be wrong and estimated the period of Hotepsekhemwy's rule to be 25 or 29 years.",
        date_of_birth: "2740",
        date_of_death: "2765",
        sub_era_id: sub_era_1.id,
    )
    character_7.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/91/Hotepsekhemwy.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_7.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f4/Abydos_KL_02-01_n09.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"مصادر الاسم",
            english_title:"Name sources",
            arabic_content:"تم تحديد اسم حتب سخم وي من قبل علماء الآثار في سقارة، الجيزة، البداري وأبيدوس من أختام طينية، والأواني الحجرية واسطوانات العظام. العديد من النقوش الحجرية على الأوعية تذكر حتب سخم وي مع اسم خليفته رع نب.

            اسم حورس لحتب سخموي هو موضع اهتمام خاص لعلماء المصريات والمؤرخون، لأنه قد يلمح إلى السياسة المضطربة في ذلك الوقت. الكلمة المصرية 'حتب' تعني 'السلمى' و 'المرضي' وقد تعني أيضًا 'المُوفِق' أو 'أن يكون المُوفِق'. حتى اسم حتب سخم وي الكامل قد يقرأ أيضًا 'وفقت القوتين' أو 'تراضت القوتين'، وهو ما يشير إلى معنى سياسي كبير. في هذا المعنى، 'القوتين' يمكن أن تكون إشارة إلى مصر العليا ومصر السفلى وكذلك الآلهة الرئيسية حورس وست.",
            english_content:"The name Hotepsekhemwy was identified by archaeologists at Saqqara, Giza, Badari and Abydos from clay seals, stone vessels and bone cylinders. Many of the stone inscriptions on the vessels mention Hotepsekhemwy along with the name of his successor Ra-neb.

            The Horus name of Hotepsekhemwy is of particular interest to Egyptologists and historians, because it may allude to the turbulent politics of the time. The Egyptian word 'hotep' means 'peaceful' and 'pleasant' and may also mean 'the conciliator' or 'to be the conciliator'. Even Hotepsekhemwy's full name may also read 'the two powers agreed' or 'the two powers came to an agreement', which indicates a greater political meaning. In this sense, 'the two powers' could be a reference to Upper Egypt and Lower Egypt as well as the main gods Horus and Set.",
            character_id: character_7.id,
    )
    CharacterSection.create(
            arabic_title:"العائلة",
            english_title:"the family",
            arabic_content:"من غير المعروف من هي زوجة حتب سخم وي. من الممكن أن يكون ابنه بر نب «ابن الملك» و«كاهن سوبدي»، لكن منذ اكتشاف الأختام الطينية تشمل اسمه وألقابه وجدت في معرض المقبرة والتي شملت اسمين (حتب سخم وي وخليفته رع نب، ولا يعرف من كان بر نب.",
            english_content:"It is not known who Hotepsekhemwy's wife was. It is possible that his son was Barneb, the “son of the king” and the “priest of Sobdei”, but since the discovery of clay seals including his name and titles found in the tomb gallery, which included the names of Hetehotepsekhemwy and his successor Ra Neb, it is not known who Barneb was.",
            character_id: character_7.id,
    )
    CharacterSection.create(
            arabic_title:"عهده",
            english_title:"His reign",
            arabic_content:"في عهده حدث انفجار أرضي في جهة تل بسطة مات بسببه خلق كثري، ومن المحتمل أنه زلزال وقع هناك لقرب المكان من منطقة أبي زعبل البركانية.",
            english_content:"During his reign, a ground explosion occurred in the area of Tel Basta, as a result of which many people died. It was likely that it was an earthquake that occurred there due to the location’s proximity to the Abu Zaabal volcanic area.",
            character_id: character_7.id,
    )
    CharacterSection.create(
            arabic_title:"المقبرة",
            english_title:"The tomb",
            arabic_content:"موقع مقبرة حتب سخم وي غير معروف. يعتقد علماء المصريات أمثال فلندرز بيتري وتوبي ويلكنسون بأنها قد تكون معرض عملاق تحت الأرض مقبرة بي تحت الممر الدفن لمُجمع أوناس الجنائزي في سقارة. فقد وجدت هناك العديد من الأختام تعبر عن الملك حتب سخم وي.

            علماء المصريات مثل فولفغانغ هيلك وبيتر مونرو غير مقتنعين بهذه النظرية ويعتقدا أن معرض المقبر بي هي موقع دفن الملك رع نب، فقد تم العثور على العديد من الأختام تعود لهذا الحاكم هناك أيضًا.",
            english_content:"The location of Hetepesekhemwy's tomb is unknown. Egyptologists such as Flinders Petrie and Toby Wilkinson believe that it may be a giant underground gallery tomb of Bi under the burial passage of the Unas funerary complex at Saqqara. Many seals were found there representing King Hotepsekhemwy.

            Egyptologists such as Wolfgang Helke and Peter Munro are not convinced by this theory and believe that Tomb Gallery B is the burial site of King Raneb, as many seals belonging to this ruler have been found there as well.",
            character_id: character_7.id,
    )

    character_8 = Character.create(
        arabic_name: "الملك 'ني نتجر'",
        english_name: "King 'Ni Negr'",
        arabic_info: "ربما قسّم مصر بين خلفائه، وزُعم أنه سمح للمرأة بالحكم مثل الفراعنة.",
        english_info: "He may have divided Egypt among his successors, and allegedly allowed women to rule like the pharaohs.",
        date_of_birth: "2740",
        date_of_death: "2695",
        sub_era_id: sub_era_1.id,
    )
    character_8.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/2/27/Nynetjer_2.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_8.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/2/27/Nynetjer_2.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"مصادر اسمه",
            english_title:"Sources of his name",
            arabic_content:"عثر في منطقة سقارة على مقبرة كبيرة وجد فيها خمسة أنواع مختلفة من الأختام لهذا الملك، وفي عام 1938 عثرت مصلحة الآثار على جبانة تحت الأرض في سقارة يرجع تاريخها إلى الأسرة الثانية، وقد عثر فيها على بعض أوان عليها سدادات مختومة باسم هذا الملك، وقد ذكر اسمه كذلك على حجر باليرمو.",
            english_content:"In the Saqqara area, a large cemetery was found in which five different types of seals were found for this king. In 1938, the Antiquities Service found an underground cemetery in Saqqara dating back to the Second Dynasty, in which some vessels were found with seals stamped with the name of this king. It was mentioned His name is also on the Palermo stone.",
            character_id: character_8.id,
    )
    CharacterSection.create(
            arabic_title:"حقبته",
            english_title:"His era",
            arabic_content:"يعتقد من النقوش أنه حكم أكثر من 35 عام وقد ذكر مانيتون أن هذا الفرعون في عهده أمر بان الحكم يمكن أن تتولاه أنثى، وربما كان ذلك من العادات التي كانت مندثرة ثم أعيدت ثانية.

            يعتقد علماء المصريات مثل ولفجانج هيلك ونيكولاس جريمال وهيرمان ألكسندر شلوغ وفرانشيسكو تيرادريتي أن ني نتجر ترك مصر وهي تعاني من إدارة معقدة للغاية وأن ني نتجر قرر تقسيم مصر لتركها لابنيه (أو على الأقل ، لخليفتين) يحكمان مملكتين منفصلتين ، على أمل أن يتمكن الحاكمان من إدارة الولايات بشكل أفضل. في المقابل ، يعتقد علماء المصريات مثل باربرا بيل أن كارثة اقتصادية مثل المجاعة أو الجفاف الطويل الأمد أثرت على مصر في هذا الوقت. لذلك ، لمعالجة مشكلة إطعام السكان المصريين ، قسم ني نتجر مصر إلى دولتين وحكم خلفاؤه دولتين مستقلتين حتى انتهت المجاعة.",
            english_content:"It is believed from the inscriptions that he ruled for more than 35 years. Manetho mentioned that during his reign, this pharaoh ordered that a female rule could be assumed, and perhaps this was one of the customs that had disappeared and then were restored again.

            Egyptologists such as Wolfgang Hilke, Nicholas Grimal, Hermann Alexander Schlug, and Francesco Teradriti believe that Néntjer left Egypt suffering from a very complex administration and that Néntjer decided to partition Egypt to leave it to his two sons (or at least, two successors) ruling separate kingdoms, in the hope that the two rulers would be able to administer states better. In contrast, Egyptologists such as Barbara Bell believe that an economic disaster such as famine or long-term drought affected Egypt at this time. Therefore, to address the problem of feeding the Egyptian population, Nyintjer divided Egypt into two states and his successors ruled two independent states until the famine ended.",
            character_id: character_8.id,
    )
    CharacterSection.create(
            arabic_title:"المقبرة",
            english_title:"The tomb",
            arabic_content:"تقع مقبرة معرض ني نتجر في سقارة ويبلغ قياسها 94x106 متر. يؤدي منحدر المدخل علي عمق 25 مترًا إلى ثلاثة أروقة متجهة إلى الشرق والغرب، ويمتد إلى نظام يشبه المتاهة من المداخل والأروقة والممرات. قام المعهد الألماني للآثار بإنجاز خمس حفريات واكتشف أن قبر ني نتجر يظهر تشابهات معمارية كبيرة مع المقبرة ب ، والذي يعتقد أنه إما موقع دفن رع نب أو حتب سخم وى. تم العثور على 56 سكينة من الصوان و 44 من شفرات الحلاقة و 44 من الشفرات الإضافية وأواني الجعة والنبيذ. وجد الجزء الجنوبي بدون تخريب ويحتوي على الكثير من الأشياء الملكية التي بقيت من فترة حكم ني نتجر، مثل أكثر من 50 برطمان نبيذ مختوم ، وشبكات ، وصناديق تخزين مصنوعة من الخشب وزجاجات مرمر. نشأت بعض أوعية النبيذ من مقابر الأسرة الأولى المتأخرة. أيضا تم العثور على أقنعة المومياء وتابوت امرأة من عصر رمسيس. لذلك تم إعادة استخدام قبر ني نتجر جزئيا في أوقات لاحقة. تقع غرفة الدفن الرئيسية في الطرف الجنوبي الغربي من المقبرة ، لكن موقع الدفن بأكمله غير مستقر للغاية ويواجه خطر الانهيار. ",
            english_content:"The tomb of Nenetjer Fair is located in Saqqara and measures 94x106 metres. An entrance ramp at a depth of 25 meters leads to three galleries facing east and west, extending into a maze-like system of entrances, galleries and corridors. The German Archaeological Institute has carried out five excavations and discovered that the tomb of Nynetjer shows significant architectural similarities with Tomb B, which is believed to be the burial site of either Ra-neb or Hetepesekhemwy. 56 flint knives, 44 razor blades, 44 additional blades, beer and wine vessels were found. The southern part was found without vandalism and contains many royal objects that have survived from Nyentjer's reign, such as more than 50 sealed wine jars, nets, storage boxes made of wood and alabaster bottles. Some wine vessels originate from Late First Dynasty tombs. Mummy masks and a coffin of a woman from the Ramesses era were also found. Therefore the tomb of Nyentjer was partly reused in later times. The main burial chamber is located at the southwestern end of the tomb, but the entire burial site is very unstable and is in danger of collapsing.",
            character_id: character_8.id,
    )
    character_9 = Character.create(
        arabic_name: "الملك خع سخموي",
        english_name: "King Khasekhemwy",
        arabic_info: "خع سخم وى (بالإنجليزية: Khasekhemwy) (ت. 2686 ق.م.; أحيانا يـُكتب خع سخم اويْ Khasekhemui) كان خامس وآخر فرعون في الأسرة المصرية الثانية. قليل هو المعروف عن خع سخم وى، عدا أنه قاد العديد من الحملات الحربية الهامة وبنى العديد من التماثيل، ما زالت باقية، تذكر الحرب ضد الشماليين.",
        english_info: "Khasekhemwy (d. 2686 BC; sometimes spelled Khasekhemui) was the fifth and last pharaoh of the Second Dynasty of Egypt. Little is known about Khasekhemwy, except that he led many important military campaigns and built many statues, which still survive, remembering the war against the northerners.",
        date_of_birth: "2754",
        date_of_death: "2727",
        sub_era_id: sub_era_1.id,
    )
    character_9.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/6/69/Khasekhem_oxford2.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_9.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/6/69/Khasekhem_oxford2.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"فترة الحكم",
            english_title:"Period of rule",
            arabic_content:"سادت خلال فترة حكم خع سخم وى، حالة من الإستقرار ترجع إلى النص الرسمي الذي كان قد أصدره: 'ظهور القوتين اللتين توافق الإلهان وتصالحا من خلالهما 'والرسوم الخاصة به. فواجهة قصره الرئيسية تعلوها صورتا 'حورس وست' معا 'بدلا من صورة الإله 'حورس' بمفرده، أو صورة الإله 'ست' بمفرده كما فعل الملك 'بر إيب سن'). وضع 'خع سخموي' حدا للمنازعات السياسية بين اتجاهين: اتخذ الاتجاه الأول من 'حورس' رمزا له، في حين اتخذ الاتجاه الثاني من 'ست' رمزا له. وقد ساعد إخضاع النوبيين في الجنوب والليبيين في الشمال على إرساء دعائم الوحدة الوطنية. واستتب في عصره الأمن وساد الانضباط، سواء داخل أراضي مصر أم خارجها. كما قامت الحضارة المصرية بوثبة هائلة في شتى النواحي كما وكيفا، مما جعلها تتعدى العصر 'الثيني' لتخطو نحو الدولة القديمة. وفي الواقع فإن تطور التقنيات وتقدمها كان له عظيم الأثر ليس فقط على الصناعات التعدينية - إذ أصبح من الممكن حينذاك صهر التماثيل النحاسية - وإنما أيضا على فن العمارة بصفة خاصة. ولم تعد الأحجار محصورة في استخدامها كمادة مساعدة فقط، بل وجدت من يستعملها في ذلك الحين بدراية ومهارة. ومما يدل على ذلك تلك الغرفة المشيدة من الحجر الجيري الموجودة في مقبرة ذلك الفرعون في أبيدوس،وكذلك الركيزة الدعامية المنحوتة من حجر الجرانيت والمزينة بالنقوش من 'نخن ، بالإغريقية Herakonpolis ، حاليا الكوم الأحمر' وهكذا أصبح الطريق ممهدا لعبقرية 'إمحوتب'.

            بنى خع سخموي حصن في نخن، وفي أبيدوس، وقد يكون بنى أيضًا جسر المدير في سقارة.",
            english_content:"During the reign of Khasekhemwy, a state of stability prevailed due to the official text that he had issued: 'The appearance of the two powers through which the two gods agreed and were reconciled' and its drawings. The main facade of his palace is surmounted by images of Horus and Set together, instead of the image of the god Horus alone, or the image of the god Set alone, as King Bar-ib-Sin did. Khasekhemwy put an end to political disputes between two directions: the first direction took “Horus” as its symbol, while the second direction took “Set” as its symbol. The subjugation of the Nubians in the south and the Libyans in the north helped establish the foundations of national unity. During his time, security and discipline prevailed, whether inside or outside Egypt. Egyptian civilization also made a huge leap in various aspects, both quantitatively and qualitatively, which made it go beyond the 'Thinian' era to move towards the Old Kingdom. In fact, the development and advancement of technologies had a great impact not only on the mining industries - as it became possible at that time to melt copper statues - but also on architecture in particular. Stones were no longer limited to being used only as an auxiliary material, but at that time there were those who used them with knowledge and skill. Evidence of this is the room built of limestone located in the tomb of that pharaoh in Abydos, as well as the pillar carved from granite stone and decorated with inscriptions from 'Nekhen, in Greek Herakonpolis, currently Kom Al-Ahmar'. Thus, the way became paved for the genius of 'Imhotep'.

            Khasekhemwy built a fortress at Nekhen and Abydos, and he may have also built the Modir Bridge at Saqqara.",
            character_id: character_9.id,
    )
    character_10 = Character.create(
        arabic_name: "نوب نفر",
        english_name: "Nope Nefer",
        arabic_info: "يُعتقد أنه كان معاصرا للفرعون ني نتجر. لا يمكن تحديد ترتيبه الزمني بشكل دقيق",
        english_info: "It is believed that he was a contemporary of Pharaoh Nyentjer. Its chronological order cannot be determined precisely",
        date_of_birth: "2500",
        date_of_death: "2450",
        sub_era_id: sub_era_1.id,
    )
    character_10.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/e/e7/Nubnefer.png"), filename: 'image.jpg', content_type: 'image/jpg')
    character_10.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/e/e7/Nubnefer.png"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"مصدر اسمه",
            english_title:"Name source",
            arabic_content:"النوب نفر أو نقود تاخوس: هي عملة فرعونية تم صكها عام 350 قبل الميلاد باسم الملك أو الفرعون المصري (تيوس ويطلق عليه أيضًا اسم تاخوس).",
            english_content:"Nubian Nefer or Thachos coin: It is a Pharaonic coin that was minted in 350 BC in the name of the Egyptian king or pharaoh (Teos, also called Thachos).",
            character_id: character_10.id,
    )
    CharacterSection.create(
            arabic_title:"معلومات تاريخية",
            english_title:"Historical information",
            arabic_content:"لم تضرب النقود في مصر طوال العصر الفرعونى إلا في عهد الأسرة الثلاثين، فقد بقيت الحضارة المصرية متمسكة بتقاليدها العريقة في اتباع نظام المقايضة بالحبوب والبيض والماشية والمنتجات اليدوية وخلافه، ولكن تحت ضغط الظروف السياسية تم صك العملة باسم الملك أو الفرعون المصرى «تاخوس» وتحديدا عام 350 ق.م، وكانت تسمى هذه العملة بـ«النوب نفر» وتعنى الذهب الجيد أو الخالص وهي تعد من العملات النادرة جدًا حيث يوجد منها حوالي عشرين قطعة فقط على مستوى العالم، وهي العملات الوحيدة التي تم اكتشافها حتى الآن وتحمل كتابات مصرية قديمة، حيث كان الملك تاخوس قد جلب عددًا من الجنود المرتزقة من اليونان لمحاربة الفرس الذين جاؤوا لاحتلال مصر مما دعا الحكومة المصرية لأن تضرب النقود لدفع أجور هؤلاء الجنود دون أن يتم التعامل بها على المستوى الشعبى، وفي عهد الأسكندر الأكبر استخدم المصريون النقود في تعاملاتهم اليومية لأول مرة في التاريخ وكانت العملة في ذلك الوقت تحمل صورة الإسكندر بعد تأليهه.",
            english_content:"Coins were not struck in Egypt throughout the Pharaonic era except during the Thirty Dynasty, as the Egyptian civilization remained committed to its ancient traditions of following the barter system with grains, eggs, livestock, handicrafts, etc., but under the pressure of political circumstances, the currency was minted in the name of the Egyptian king or pharaoh 'Teos' specifically in 350 BC, and this currency was called 'Nub Nefer' and means good or pure gold. It is considered one of the very rare currencies, as there are only about twenty pieces of it worldwide. It is the only currency that has been discovered so far and bears ancient Egyptian inscriptions, as King Teos had brought a number of mercenaries from Greece to fight the Persians who came to occupy Egypt, which prompted the Egyptian government to mint coins to pay the salaries of these soldiers without dealing with them at the popular level. In the era of Alexander the Great, the Egyptians used coins in their daily transactions for the first time in history, and the currency at that time bore the image of Alexander after his deification.",
            character_id: character_10.id,
    )
    character_11 = Character.create(
        arabic_name: "سانخت",
        english_name: "Sanakht",
        arabic_info: "سانخت أو حور سا ناختي هو الفرعون الثالث من أسرة مصرية ثالثة خلال المملكة المصرية القديمة. فترة حكمة الزمنية غير مؤكدة للغاية، ومن غير الواضح أيضا تحت أي تسمية إغريقية قد وثقه بها المؤرخ مانيتون. والكثير من علماء المصريات يصلون سا ناختي بالفرعون نيبكا ويعتقدون أنه هو نيبكا ولكن يبقى الأمر متنازع فيه لعدم وجود أي لقب ملكي لهذا الملك.",
        english_info: "Sankhet or Hor-sa-nakhti was the third pharaoh of the Third Egyptian Dynasty during the Old Kingdom of Egypt. The period of his wisdom is highly uncertain, and it is also unclear under what Greek name Manetho documented him. Many Egyptologists link Sa Nakhty to the Pharaoh Nibka and believe that he is Nibka, but the matter remains disputed because there is no royal title for this king.",
        date_of_birth: "2780",
        date_of_death: "2715",
        sub_era_id: sub_era_2.id,
    )
    character_11.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/e/eb/ReliefFragmentOfPharaohSanakht-BritishMuseum-August21-08.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_11.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/e/eb/ReliefFragmentOfPharaohSanakht-BritishMuseum-August21-08.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"هويته",
            english_title:"His identity",
            arabic_content:"هوية سا ناختي وموضعة في الاسرة الثلاثة غير واضح بالكامل ويبقى الموضوع في مناقشات. ويدعم قضية وجودة مصطبة زوسر وبعض الخربشات على الجدران والجرافيتي. ومكانته كمؤسس للأسرة المصرية الثالثة كما صنفه المؤرخ مانيتون وبردية تورين قد قوضت بشدة من قبل الاكتشافات الأثرية الأخيرة في أبيدوس وهذه الاكتشافات أثبتت انه من المرجح ان يكون زوسر هو المؤسس للأسرة المصرية الثالثة وانه هو الذي قام بدفن الفرعون خع سخموي من الأسرة المصرية الثانية",
            english_content:"The identity of Sa Nakhti and his position in the Three Dynasties is not entirely clear and the matter remains debated. The issue and quality of Djoser's mastaba and some scribbles on the walls and graffiti are supported. His position as the founder of the Third Dynasty, as classified by the historian Manetho and the Turin Papyrus, has been severely undermined by the recent archaeological discoveries in Abydos. These discoveries prove that it is likely that Djoser was the founder of the Third Dynasty and that he was the one who buried the Pharaoh Khasekhemwy of the Second Dynasty.",
            character_id: character_11.id,
    )
    character_12 = Character.create(
        arabic_name: "زوسر",
        english_name: "Zoser",
        arabic_info: "صاحب هرم سقارة المدرج الذي صممه إمحوتب",
        english_info: "Owner of the Step Pyramid of Saqqara, designed by Imhotep",
        date_of_birth: "2700",
        date_of_death: "2670",
        sub_era_id: sub_era_2.id,
    )
    character_12.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/4/43/Djoser_statue.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_12.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9e/Saqqarah_Djeser_10.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"تعريفه",
            english_title:"Definition",
            arabic_content:"زوسر (ويعرف أيضا باسم نيت جيريخت، توسورثروس، سيسورثوس) كان فرعونًا مصريًا قديمًا من الأسرة الثالثة خلال المملكة القديمة ومؤسس هذه الأسرة. كان ابن الملك خع سخموي والملكة نيماعت حاب، ولكن ما زال من غير الواضح ما إذا كان الوريث المباشر للعرش. أغلب قوائم الملك رمسيس الثاني تضع اسم الملك نبكا قبله في الترتيب الزمني، ولكن نظرًا لأنه لا تزال هناك صعوبات في ربط اسم نبكا بأسماء حورس المعاصرة، فإن بعض علماء المصريات لا زالوا يشككون في التسلسل الزمني لملوك الأسرة الثالثة.

            ذكر اسمه في بردية تورين باللون الأحمر تمييزا له عن باقي ملوك الدولة القديمة. ويعدّ الهرم المدرج الذي أمر زوسر المهندس إمحتب ببنائه أول بناء حجري ضخم عرفه التاريخ.",
            english_content:"Djoser (also known as Neit-Gerichte, Tosorthros, Sisorthus) was an ancient Egyptian pharaoh of the Third Dynasty during the Old Kingdom and the founder of this dynasty. He was the son of King Khasekhemwy and Queen Nimaethap, but it is still unclear whether he was the direct heir to the throne. Most lists of King Ramesses II place the name of King Nabka before him in chronological order, but since there are still difficulties in linking the name Nabka to the contemporary names of Horus, some Egyptologists still question the chronology of the kings of the Third Dynasty.

            His name is mentioned in the Turin Papyrus in red, to distinguish him from the rest of the kings of the Old Kingdom. The Step Pyramid, which Djoser ordered the engineer Imhotep to build, is the first huge stone building known to history.",
            character_id: character_12.id,
    )
    CharacterSection.create(
            arabic_title:"عهده",
            english_title:"His era",
            arabic_content:"ذكر المؤرخ الفرعوني مانيتون أن زوسر حكم لمدة 29 سنة (2640ق.م - 2611ق.م)، بينما تذكر بردية تورين أن فترة حكمه امتدت فقط 19 عام (2630 ق.م - 2611 ق.م). إلا أن الكثير من المؤرخين الحاليين يرجحون أن فترة حكمة امتدت لمدة 29 عام بسبب ضخامة أعماله الإنشائية التي قام بها. وعليه فإن فارق السنوات بين الرقمين قد يعني أن زوسر هو نفسه الفرعون الأول في الأسرة الثالثة.

            و له نقش في أحد جزر أسوان، يسرد أحداث المجاعة التي حدثت في عهده بسبب نقص فيضان النيل، حيث قدم زوسر القرابين لخنوم معبود الشلال. وذكر فيه التالي:
            
               زوسر	قلبي كان في ضيق مؤلم، لأن النيل لم يفض لسبع سنوات. الحبوب لم تكن وفيرة، البذور جفت، كل شيء كان يملكه الفرد ليأكله كان بكميات مثيرة للشفقة، كل شخص حرم حصاده. لا يمكن لأي شخص أن يمشي أكثر؛ قلوب كبار السنّ كانت حزينة وسيقانهم إنحنت متى جلسوا على الأرض، وأيديهم أخفت بعيدا. حتى خدم المعابد كانوا يذهبون، المعابد أغلقت والملاجئ غطّيت بالغبار. باختصار، كلّ شيء في الوجود أصيب	   زوسر
            و يأتي الرد من خنوم حسب النقش:
            
               زوسر	أنا سأجعل النيل يرتفع لك. لن يكون هناك سنوات أكثر عندما يخفق الغمر في تغطية أي منطقة من الأرض. الزهور ستورق، وتنحني جذوعها تحت وزن غبار الطلع	   زوسر
            يعدّ الملك زوسر من أقوي الملوك الذين حكموا مصر ولقب المهندس المعماري إمحتب الذي شيد له الهرم بعدة القاب منها: ناظر القصر وتيتي خرن سو، وكان أول طبيب كبير يعرفه المصريون واعتبروه اله الطب والشفاء نظرا لقوة معرفته في الطب.
            
            اتخذ زوسر منف عاصمة له
            قام باستخراج النحاس والتركواز من سيناء مما أمن له ثروة ضخمة مكنته من القيام بأعمال إنشائية ضخمة.
            وسع دولته جنوبا بعد أن بسط نفوذه على النوبيين ومد حدود البلاد إلى ما بعد الشلال الأول.",
            english_content:"The Pharaonic historian Manetho mentioned that Djoser ruled for 29 years (2640 BC - 2611 BC), while the Turin Papyrus states that his reign lasted only 19 years (2630 BC - 2611 BC). However, many current historians believe that his period of wisdom lasted for 29 years due to the magnitude of the construction work that he carried out. Therefore, the difference in years between the two numbers may mean that Djoser is the first pharaoh in the Third Dynasty.

            He has an inscription on one of the Aswan islands, recounting the events of the famine that occurred during his reign due to the lack of Nile flooding, where Djoser made sacrifices to Khnum, the god of the waterfall. He stated the following:
            
                Djoser My heart was in painful distress, because the Nile had not flowed for seven years. Grains were not plentiful, seeds dried up, everything one had to eat was in pathetic quantities, everyone was deprived of their harvest. No one can walk further; The hearts of the elderly were sad, their legs bent when they sat on the ground, and their hands were hidden away. Even the temple servants were gone, the temples were closed and the shelters were covered with dust. In short, everything in existence was infected by Djoser
            The response comes from Khnum according to the inscription:
            
                Djoser I will make the Nile rise for you. There will be no more years when the inundation fails to cover any area of land. The flowers will leaf out, and their stems will bend under the weight of Djoser's pollen
            King Djoser is considered one of the most powerful kings who ruled Egypt, and the architect Imhotep, who built the pyramid, was given several titles, including: Palace Superintendent and Titi Khron-Su. He was the first great physician known to the Egyptians and they considered him the god of medicine and healing due to the strength of his knowledge in medicine.
            
            Djoser made Memphis his capital
            He extracted copper and turquoise from Sinai, which secured him a huge fortune that enabled him to carry out huge construction works.
            He expanded his state southward after extending his influence over the Nubians and extending the country's borders beyond the First Cataract.",
            character_id: character_12.id,
    )
    CharacterSection.create(
            arabic_title:"حملاته",
            english_title:"His campaigns",
            arabic_content:"كان زوسر أول فرعون يرسل حملات إلى وادي المغارة في سيناء لاستخراج النحاس والفيروز. وتوجد لوحة منقوشة لزوسر في هذا الوادي تبينه يضرب أحد الأعداء في الصورة المعروفة للملك مينا والتي داوم عليها قدماء المصريين ورسموها لكل ملك على المعابد على مر العصور. في لوحة زوسر تظهر إلهة وخلفها يظهر شخص يميزه كتابة هيروغليفية بأنه «عنخ إن - إيتي»، أي «مدير الصحراء» ورئيس البعثة. 

            ومع أن التاريخ يذكر بعثات مصرية قديمة ونشاطات إلى سيناء من عصر ما قبل الأسرات، إلا أنه يبدو أنه في عصر الأسرتين الثانية والثالثة أصبحت هناك إدارة خاصة لتلك المناطق في البلاط الملكي. .",
            english_content:"Djoser was the first pharaoh to send expeditions to Wadi al-Maghara in Sinai to extract copper and turquoise. There is an engraved painting of Djoser in this valley showing him striking an enemy in the well-known image of King Menes, which the ancient Egyptians continued and painted for every king on temples throughout the ages. In Djoser's painting, a goddess appears, and behind her appears a person identified by hieroglyphs as 'Ankh-en-iti', meaning 'manager of the desert' and head of the expedition.

            Although history mentions ancient Egyptian missions and activities to Sinai from the pre-dynastic era, it seems that in the era of the Second and Third Dynasties there became a special administration for those areas in the royal court.",
            character_id: character_12.id,
    )
    CharacterSection.create(
            arabic_title:"بدء اللقب الذهبي",
            english_title:"Starting golden title",
            arabic_content:"خلال حكم الفرعون زوسر حظيت عبادة الشمس باهتمام كبير تماشت مع المنزلة العالية المقترنة بالفرعون. فمنذ عهد الأسرة الأولى على الأقل ظهر وصف فرعون بأنه حورس الحي «تحت الشمس»، مقترنا بتعبير «نبو» أي الذهب. ولكن في عهد الفرعون زوسر أصبح اللقب الملكي «حورس الحي على الأرض»، أي جعل الملك في مرتبة الشمس. 

            تظهر تلك المقارنة أيضا في بناء الأهرامات التي كبرت أحجامها في عهد زوسر. ويبين بناء هرم زوسر المدرج الفلسفة الجديدة، وهي تصميم جديد كبير يبقى أزليًا ويرفع الملك إلى منزلة أبدية مثل الشمس. وقام زوسر بإنشاء مقبرته داخل الهرم مستغنيًا بذلك عن مقبرته التي كان من المفروض بنائها في أبيدوس (في جنوب مصر) مثل أسلافه، وأصبحت مقبرته في سقارة. 
            
            يدعم ذلك أيضا انتشار عبادة الشمس وبدء بناء بهو المقبرة بأعمدة من الحجر بدلا من بنائها من الخشب والمعدن. فقد اتخذت مقبرة الملك مساحة هائلة تضم الهرم والعديد من بهوات الأعمدة والسراديب وإحاطتها بسور حجري. ويقرن العديد من علماء الآثار، مثل«يوخيم كال» و«ستيفن كرك» و«ولف جانج هيلك» إلى اقتران ذلك بإدخال اللقب الذهبي من زوسر الذي يرفعه إلى منزلة إلهية تساويه بإله الشمس.
            
            ويعتقد كل من «كال» و«كيرك» أن اتخاذ لقب حورس الذهبي غير من الفكر الديني أيام زوسر وطوره عبر العصور التالية، مما جعل جميع الفراعنة الذين أتوا بعد زوسر يتخذوا لقب حورس الذهبي من بعده.",
            english_content:"During the rule of Pharaoh Djoser, sun worship received great attention, in keeping with the high status associated with the pharaoh. Since at least the era of the First Dynasty, the description of Pharaoh as a living Horus “under the sun” has appeared, coupled with the expression “Nabo,” meaning gold. But during the reign of Pharaoh Djoser, the royal title became 'Living Horus on Earth', meaning the king was placed in the rank of the sun.

            This comparison also appears in the construction of the pyramids, which increased in size during the reign of Djoser. The construction of the Step Pyramid of Djoser demonstrates the new philosophy, which is a new, grand design that remains eternal and raises the king to an eternal status like the sun. Djoser created his tomb inside the pyramid, dispensing with his tomb that was supposed to be built in Abydos (in southern Egypt) like his predecessors, and his tomb became in Saqqara.
            
            This also supports the spread of sun worship and the beginning of building the tomb’s foyer with stone columns instead of wood and metal. The king's tomb took up a huge area, including the pyramid, many column halls and basements, and was surrounded by a stone wall. Many archaeologists, such as Jochem Kahl, Stephen Kirk, and Wolfgang Helk, associate this with the introduction of the golden title from Djoser, which raises him to a divine status equal to the sun god.
            
            Both 'Kale' and 'Kirk' believe that adopting the title of Golden Horus changed religious thought in the days of Djoser and developed it throughout the following eras, which made all the pharaohs who came after Djoser take the title of Golden Horus after him.",
            character_id: character_12.id,
    )
    CharacterSection.create(
            arabic_title:"مقبرته",
            english_title:"His tomb",
            arabic_content:"بنى زوسر هرم سقارة المدرج على مسافة ميل من جرف سقارة ليبتعد عن باقي المقابر، وأشرف على البناء وزيره امحتب، يتكون الهرم من ست مصاطب غير متساوية وبارتفاع يبلغ 63 متر ومكسو بحجر جيري أبيض. أما من الداخل فيتكون من شبكة ممرات ودهاليز. أما غرفة دفن الملك فبنيت من الجرانيت والرخام.",
            english_content:"Djoser built the Saqqara Step Pyramid at a distance of a mile from the Saqqara cliff, to distance itself from the rest of the tombs. His minister, Imhotep, supervised the construction. The pyramid consists of six unequal terraces, 63 meters high, and is covered with white limestone. The interior consists of a network of corridors and corridors. As for the king's burial chamber, it was built of granite and marble.",
            character_id: character_12.id,
    )
    CharacterSection.create(
            arabic_title:"تمثاله",
            english_title:"His statue",
            arabic_content:"هذا التمثال الكامل لزوسر عثر عليه في حجرة ضيقة والتي تعرف باسم السرداب، وتقع شمال الهرم المدرج للملك زوسر بسقارة. وهذا التمثال أقدم ما عرف من التماثيل بالحجم الطبيعي في مصر، وهو يمثل الملك زوسر جالسا على العرش، وقد غطى جسده رداء احتفالي وكان التمثال بأسره مكسوا بطبقة من ملاط أبيض ثم لون. أما العينان الغائرتان فكانتا يومًا ما مرصعتين. ويتخذ الملك شعرا مستعارا أسودا يعلوه لباس الرأس الملكي المعروف باسم «النمس»، فضلًا عن اللحية المستعارة الشعائرية. وقد نقش السطح الأمامي من القاعدة بنص هيروغليفي دقيق ينطق عن أسماء وألقاب ملك مصر العليا والسفلى نيثر خت.",
            english_content:"This complete statue of Djoser was found in a narrow room known as the basement, located north of the Step Pyramid of King Djoser in Saqqara. This statue is the oldest known life-sized statue in Egypt. It represents King Djoser sitting on the throne. His body was covered in a ceremonial robe, and the entire statue was covered with a layer of white mortar and then color. The sunken eyes, Vkanta someday Mrsotain. The king wears a black wig topped with a royal headdress known as the 'mongoose', in addition to a ritual false beard. The front surface of the base was engraved with precise hieroglyphic text declaring the names and titles of the king of Upper and Lower Egypt, Netherkhet.",
            character_id: character_12.id,
    )
    CharacterSection.create(
            arabic_title:"زوسر وإمحتب",
            english_title:"Djoser and Imhotep",
            arabic_content:"أحد أهم الشخصيات التي عاصرت عهد الفرعون زوسر كان الطبيب المهندس إمحتب. عمل إمحتب وزيرًا ومستشارًا للملك زوسر، فكان «رئيسًا للبلاط الملكي» و«مدير أعمال منشآت الملك». كان إمحتب ناظرا على أعمال منشآت زوسر وكذلك منشآت الملك سخم خت. وربما كان معنيا في «بردية وستكار» تحت رواية «خوفو» والساحر. ولكن مقدمة البردية وجدت في حالة سيئة فلم يستطع العثور على اسم إمحتب.

            وتذكر وجدت في بردية في معبد تبتونس ترجع إلى القرن الثاني قبل الميلاد، تقص قصة مكتوبة الخط بالديموطي عن زوسر وإمحتب. وكان إمحتب في عصر زوسر من الشخصيات الهامة حتى أنه كان يذكر على تماثيل الفرعون زوسر التي كانت تقام في سقارة.
            
            و وصل تقدير المصريين القدماء لشخص المهندس «إيموحتب» أن تم تقديسه في عصور لاحقة حتى وصل إلى مرتبة الآلهة وهو ما يظهر واضحا في نقوش معبد الإله سوبك في مدينة كوم إمبو بالقرب من أسوان، حيث تمت عبادته كإله للطب كما هو مسجل خلف قدس أقداس معبد كوم أمبو.",
            english_content:"One of the most important figures who lived during the reign of Pharaoh Djoser was the physician and engineer Imhotep. Imhotep worked as a minister and advisor to King Djoser. He was 'head of the royal court' and 'director of the king's facilities'. Imhotep was the supervisor of the work of Djoser's facilities, as well as those of King Sekhemkhet. It may have been mentioned in the 'Westkar Papyrus' under the novel 'Khufu and the Magician'. But the introduction to the papyrus was found in poor condition, so he could not find the name Imhotep.

            Remember, a papyrus found in a temple in Teptunia dating back to the second century BC tells a story written in Demotic script about Djoser and Imhotep. In the era of Djoser, Imhotep was an important figure and was even mentioned on the statues of Pharaoh Djoser that were erected in Saqqara.
            
            The appreciation of the ancient Egyptians for the person of the engineer 'Imhotep' reached the point that he was sanctified in later eras until he reached the rank of gods, which appears clearly in the inscriptions of the temple of the god Sobek in the city of Kom Ombo near Aswan, where he was worshiped as a god of medicine, as recorded behind the Holy of Holies Temple. Kom Ombo.",
            character_id: character_12.id,
    )
    character_13 = Character.create(
        arabic_name: "خع با",
        english_name: "Khaba,",
        arabic_info: "خع با، (بالإنجليزية: Khaba), كان فرعون في مصر القديمة. ويعتقد أنه حكم قرب نهاية الأسرة المصرية الثالثة وخلف سخم خت. حكم لفترة قصيرة نسبية قدرها 4 أعوام بين 2603 ق.م. إلى 2599 ق.م. إلا أن تلك التواريخ مستنتجة، وتعتمد على القليل من الأدلة التي بقيت عن هذا الملك المبكر.",
        english_info: "Khaba, (English: Khaba), was a pharaoh in ancient Egypt. He is believed to have ruled near the end of the Third Dynasty and succeeded Sekhemkhet. He ruled for a relatively short period of 4 years between 2603 BC. To 2599 BC. However, these dates are inferred and depend on the little evidence that remains about this early king.",
        date_of_birth: "2603",
        date_of_death: "2599",
        sub_era_id: sub_era_2.id,
    )
    character_13.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f1/Khaba-DolomiteBowlBearingHisName.png"), filename: 'image.jpg', content_type: 'image/jpg')
    character_13.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f1/Khaba-DolomiteBowlBearingHisName.png"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"الهرم المدرج",
            english_title:"Step Pyramid",
            arabic_content:"ويقترن في الأغلب بالهرم المدرج, في زاوية العريان, على بعد نحو كم جنوب الجيزة. وهو هرم غير مكتمل وبناؤه مطابق لأسلوب الأبنية الحجرية في الأسرة الثالثة وكان سيرتفع في الأصل إلى نحو 42-45 م (إلا أن ارتفاعه الآن هو نحو 20 م). وبالرغم من عدم وجود نقوش تربط الهرم مباشرة بهذا الملك, إلا أن عدداً من الأواني المصنوعة من الألباستر المنقوش عليها اسم الملك عـُثر عليها بالقرب من الهرم في مقبرة تحمل الرمز: Z-500 الواقعة إلى الشمال مباشرة من الهرم.

            الملك خع با مذكور في بوصف «مشطوب», الأمر الذي قد يشي بمشاكل في الخلافة أثناء حكمه, أو أن الكاتب الذي كان يحرر هذه القائمة لم يتمكن من فك رموز الاسم في السجلات الأقدم التي كان ينقل عنها. وقد اُقتـُرح أن خع با قد يكون اسم حورس لآخر ملك في الأسرة الثالثة, حوني, وأن الملكين هما في الواقع نفس الشخص.",
            english_content:"It is most likely associated with the Step Pyramid, in Zawyet El-Erian, about a km south of Giza. It is an incomplete pyramid and its construction is identical to the style of stone buildings in the Third Dynasty. It was originally going to rise to about 42-45 m (however, its height is now about 20 m). Although there are no inscriptions linking the pyramid directly to this king, a number of alabaster vessels engraved with the king's name were found near the pyramid in a tomb bearing the symbol: Z-500, located directly north of the pyramid.

            King Khaba is mentioned as 'crossed out', which may indicate problems in the succession during his rule, or that the writer who was compiling this list was unable to decipher the name in the older records from which he was quoting. It has been suggested that Khaba may be the Horus name of the last king of the Third Dynasty, Huni, and that the two kings are in fact the same person.",
            character_id: character_13.id,
    )
    CharacterSection.create(
            arabic_title:"معنى الأسم",
            english_title:"Name meaning",
            arabic_content:"اسم خع با، الذي يظهر عادة داخل سرخ بدلاً من صيغة الخرطوش التي أصبحت أكثر اعتياداً مع نهاية تلك الأسرة, كـُـتـِب باستعمال رمز الشمس المشرقة ذات القيمة الصوتية خا, و اللقلق معقوف المنقار ذات القيمة الصوتية با.",
            english_content:"The name Khaba, which usually appears inside a cartouche instead of the more common serekh form that became more common at the end of that dynasty, was written using the symbol of the rising sun with the phonetic value of kha, and the quail chick with the phonetic value of ba.",
            character_id: character_13.id,
    )
    character_14 = Character.create(
        arabic_name: "حوني",
        english_name: "Huni",
        arabic_info: "حوني فرعون مصري قديم من الأسرة الثالثة خلال عصر الدولة القديمة التي استمرت لمدة 24 عاما. ترتيبه الزمني كآخر فراعنة الأسرة الثالثة أمر مؤكد إلى حد ما، لكن لم يتضح تحت أي اسم باليونانية سرده المؤرخ مانيتون. العديد من علماء المصريات يعتقدون أن حوني كان والد والسلف المباشرة للملك سنفرو، ولكن هذا الأمر لا يزال نقاشًا جاريًا.",
        english_info: "Huni is an ancient Egyptian pharaoh of the Third Dynasty during the Old Kingdom, which lasted for 24 years. His chronological order as the last pharaoh of the Third Dynasty is fairly certain, but it is not clear under what Greek name Manetho listed it. Many Egyptologists believe that Huni was the father and direct ancestor of King Sneferu, but this is still an ongoing debate.",
        date_of_birth: "2643",
        date_of_death: "2637",
        sub_era_id: sub_era_2.id,
    )
    character_14.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9f/Huni-StatueHead_BrooklynMuseum.png"), filename: 'image.jpg', content_type: 'image/jpg')
    character_14.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9f/Huni-StatueHead_BrooklynMuseum.png"), filename: 'image.jpg', content_type: 'image/jpg')
    character_15 = Character.create(
        arabic_name: "سنفرو",
        english_name: "Sneferu",
        arabic_info: "سنفرو، المعروف باسم ساويرس باليونانية (وفقًا لمانيتون)، مؤسس الأسرة الرابعة خلال عصر الدولة القديمة. تختلف تقديرات مدة حكمه بين 24 سنة و48 سنة. تميز عهده بالتوسع في التجارة الخارجية، وإرسال الحملات التأديبية، وحملات التعدين . توصل مع مهندسه ومستشاره إمحتب إلى الشكل الكامل للهرم ، حيث قام ببناء ثلاثة أهرامات باقيه ليومنا هذا ، ويمكن زيارتها في دهشور.

        ليس معروفًا تمامًا عما إذا كان سنفرو هو والد خوفو أم عمه . حكم خوفو مصر بعد سنفرو.",
        english_info: "Sneferu, known as Severus in Greek (according to Manetho), founder of the Fourth Dynasty during the Old Kingdom. Estimates of the duration of his rule vary between 24 years and 48 years. His reign was characterized by the expansion of foreign trade, sending punitive expeditions, and mining campaigns. With his engineer and advisor Imhotep, he came up with the complete shape of the pyramid, where he built three pyramids that remain to this day, and can be visited in Dahshur.

        It is not entirely known whether Sneferu was Khufu's father or his uncle. Khufu ruled Egypt after Sneferu.",
        date_of_birth: "2613",
        date_of_death: "2589",
        sub_era_id: sub_era_2.id,
    )
    character_15.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f2/Snofru_Eg_Mus_Kairo_2002_b.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_15.cover_image.attach(io: URI.open("https://static.euronews.com/articles/stories/04/01/75/72/1440x810_cmsv2_f5a6cd5c-7d1f-5ab9-8610-90f3e9cb3d0e-4017572.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"عائلته",
            english_title:"His family",
            arabic_content:"تزوج سنفرو من حتب حرس، التي يعتقد أنها كانت ابنة الفرعون السابق له، هوني. وحماه ربما يكون أيضاً والده حسب بعض الباحثين. وحسب تلك الافتراضية أن هوني أنجب حتب حرس من زوجة ملكية، بينما أنجب سنفرو من جارية. ولذلك فكان زواج سنفرو هو جوازه إلى العرش.",
            english_content:"Sneferu married Hetepheres, who is believed to have been the daughter of his previous pharaoh, Huni. His father-in-law may also have been his father, according to some researchers. According to this assumption, Huni gave birth to Hetepheres from a royal wife, while Sneferu gave birth to a slave girl. Therefore Bent marriage is was permissible to the throne.",
            character_id: character_15.id,
    )
    CharacterSection.create(
            arabic_title:"عهده",
            english_title:"His reign",
            arabic_content:"أغلب الظن أن انتقال الحكم من الاسرة الرابعة كان انتقالا سلميا . فقد تزوج سنفرو (ابن الملك حوني من زوجة فرعية) صاحبة الحق في وراثة العرش. وأسس الأسرة الرابعة. وهو ما أكدته المصادر الأدبية إذ ذكر أحد أدباء الدولة الوسطي في نصوصه: «وبعد أن توفي جلالة الملك حوني نصب جلالة الملك سنفرو باعتباره ملكا فاضلا في هذه الدنيا كلها». من هو الملك سنفرو ؟ سنفرو هو الاسم المختصر من «بتاح سنفروي»، أي «بتاح جملني».

            وقد حكم سنفرو طبقا لما جاء في تاريخ مانيتون 26 عاما ،وذكرت بردية تورين 24 عاما ، ويحسب عالم الآثار الألماني «ستادلمان» أنه حكم 48 سنة وذلك على أساس أنه في فترة حكم سنفرو قد أجريت 24 أحصاءا في مصر ، وفي العادة كان الإحصاء يتم كل سنتين ، من هنا يعتقد ستادلمان في أن فترة حكم سنفرو بلغت 48 عاما.
            
            ونعرف الكثير عن أخبار سنفرو من خلال حجر باليرمو منها أنه أقام عددا كبيرا من القصور والمعابد. أن الملكة «مرس – عنخ» هي أم سنفرو، ويرجح أنها كانت إحدى زوجات الملك حوني الثانويات ، وأن سنفرو استحق وراثة العرش عن طريق زواجه بالأميرة «حتب – حرس» ابنة حوني التي حملت لقب «ابنة الإله» وأن زواجهما تم قبل وفاة حوني آخر ملوك الأسرة الثالثة.
            
            تبادل تجاري مع فينيقيا
            يعتبر انه جمع بين القوة والرحمة، فحكم وقاد بلاده وشعبه إلى حياة أفضل يظللها الأمن والسلام. كما أنتعش في عهده الاقتصاد بفضل تشجيعه لإقامة علاقات تجارية مع فينيقيا (لبنان حاليا) وأحسن في استخدام موارد بلاده.
            
            كان يرسل أساطيل بحرية بصفة خاصة إلى ميناء جبيل (بلبنان حاليا) للتبادل التجاري . من ضمن تلك البعثات التجارية أرسل أسطولا كبيرا مكونا من أربعين سفينة لإحضار أخشاب الأرز «الصنوبر» . وبحسب ما جاء في حجر بالرمو استخدمت تلك الأخشاب في صناعة الأبواب وبعض الأجزاء الداخلية من أهرامات الملك ، كما استخدمت في صناعة السفن . ذكر أيضاً حجر بالرمو خبر تشييد ستين سفينة لكل منها ستة عشر مجدافاً.
            
            النشاط العسكري
            اهتم الفرعون سنفرو بتأمين الحدود، فقام بحملة إلي بلاد النوبة ليعيد الأمن والطمأنينة إلي حدود مصر الجنوبية. وورد ذكر هذه الحملة على الوجه الثاني من حجر باليرمو ، ومن خلال الأرقام يتضح لنا مدى المقاومة التي واجهها الملك سنفرو هناك. وقد عاد جيشه بـ 7000 آلاف من الاسري و200 ألف رأس من الثيران والأغنام.
            
            وقد أطلق الملك سنفرو اسم «نحسيو» على السودانيين ، وكان المقصود بهذه التسمية كل القبائل التي تسكن جنوبي الحدود المصرية .كما كانت تلك المناطق تسمى «نوب» حيث كان يسخرج منها ال «نوب» وهو الذهب باللغة المصرية القديمة . (ومنها جاءت التسمية الحديثة بالعربية حيث تسمى تلك المناطق «النوبة».)
            
            إرسال حملات تأديبية لبدو سيناء، الذين كانوا يغيرون على مناجم الفيروز و النحاس وقوافل التجارة . وقد عثر علي نقش له علي صخور جبل المغارة تمثل الملك سنفرو وهو يؤدب الأسرى. كما استحق أن يمجد كحاميا للمنطقة إلي جانب المعبودين حتحور و سوبد.
            
            وأرسل حملة أخرى إلى الليبو ( ليبيا حالياً ) وأتى منها بـ 11 ألف أسير و13 ألف رأس من الثيران والأغنام.
            
            التنظيم الإداري
            قد استحدث وظيفة وزير (تياتي) التي ظهرت لأول مرة في عهده. وليس هناك دليل أقوى من وجود ممثلات للأقاليم المصرية المنقوشة على جدران معبد الوادي بدهشور ، وهي أقدم نقش للأقاليم المصرية عثر عليه.
            
            كان تحديث التنظيم الإداري لمصر لازما لتنفيذ أغراض سنفرو من بناء هرمين في نفس المكان . فهذا العمل الضخم استخدم فيه كم من الأحجار قدرت بحوالي 3.842.000 متراً مكعباً من الحجر الجيري . بينما قدرت كمية الأحجار التي استخدمها الملك خوفو الذي جاء بعده في بناء الهرم الأكبر بحوالي 2.500.000 متراً مكعباً.
            
            احتاج بناء الأهرام عبر سنوات طويلة إلى إقامة مدينة سكنية للعمال والمهندسين . فكانوا يسكنون مع عائلاتهم قريبا من مكان العمل . وكانت الإدارة تخصهم بالمأكل والمشرب والملابس ، ونعرف أن لكل عامل من العمال كان له نصيبا من الخبز والثوم والبيرة يوميا يحصل عليه حتى يتفرغ لعمله في بناء الأهرام. وأحيانا كانت تقدم إليهم اللحوم والطيور.",
            english_content:"Most likely, the transfer of power from the Fourth Dynasty was peaceful. Sneferu (King Huni's son from a subsidiary wife) married the woman who had the right to inherit the throne. He founded the Fourth Dynasty. This was confirmed by literary sources, as one of the writers of the Central State mentioned in his texts: 'After His Majesty King Huni died, His Majesty King Sneferu was installed as a virtuous king in this entire world.' Who is King Senefro ? Sneferu is the abbreviated form of 'Ptah Sneferu', meaning 'Ptah Camelni'.

            According to Manetho’s history, Sneferu ruled for 26 years, and the Turin Papyrus mentioned 24 years. The German archaeologist Stadelmann calculates that he ruled for 48 years on the basis that during the period of Sneferu’s rule, 24 censuses were conducted in Egypt, and usually the census was carried out every year. Two years, hence Stadelmann believes that Sneferu's reign reached 48 years.
            
            We know a lot about Sneferu's news through the Palermo stone, including that he built a large number of palaces and temples. Queen Meresankh is the mother of Sneferu, and it is likely that she was one of King Huni’s secondary wives, and that Sneferu deserved to inherit the throne through his marriage to Princess Hetepheres, daughter of Huni, who bore the title “Daughter of God,” and that their marriage took place before the death of the last Huni. Kings of the Third Dynasty.
            
            Trade with Phoenicia
            He is considered to have combined strength and mercy, so he ruled and led his country and people to a better life shaded by security and peace. The economy also revived during his reign thanks to his encouragement to establish trade relations with Phenicia (currently Lebanon) and he made better use of his country’s resources.
            
            He used to send naval fleets in particular to the port of Byblos (currently in Lebanon) for trade exchange. Among these trade missions, he sent a large fleet consisting of forty ships to bring cedar and pine wood. According to what was stated in the Palermo stone, these woods were used in the manufacture of doors and some interior parts of the king’s pyramids, and they were also used in the manufacture of ships. The Palermo stone also mentioned news of the construction of sixty ships, each with sixteen oars.
            
            Military activity
            Pharaoh Sneferu was interested in securing the borders, so he launched a campaign into Nubia to restore security and tranquility to Egypt's southern borders. This campaign was mentioned on the second side of the Palermo stone, and through the numbers it becomes clear to us the extent of the resistance that King Sneferu faced there. His army returned with 7,000 captives and 200,000 heads of bulls and sheep.
            
            King Senefru gave the Sudanese the name 'Nahsio', and this name meant all the tribes that lived south of the Egyptian border. These areas were also called 'Nob', as 'Nub', which is gold in the ancient Egyptian language, was extracted from it. (From it came the modern name in Arabic, where these areas are called 'Nuba'.)
            
            Sending disciplinary campaigns to the Sinai Bedouins, who were raiding the turquoise and copper mines and trade caravans. An inscription of him was found on the rocks of Mount Cave, representing King Sneferu disciplining prisoners. He also deserved to be glorified as a protector of the region alongside the deities Hathor and Sobed.
            
            He sent another campaign to Libo (currently Libya), from which he brought 11,000 prisoners and 13,000 heads of bulls and sheep.
            
            Administrative regulation
            He created the position of minister (Tiati), which appeared for the first time during his reign. There is no stronger evidence than the presence of representatives of the Egyptian regions inscribed on the walls of the Valley Temple in Dahshur, which is the oldest inscription of the Egyptian regions ever found.
            
            Modernizing the administrative organization of Egypt was necessary to implement Sneferu’s goals of building two pyramids in the same place. This huge work used a quantity of stones estimated at approximately 3,842,000 cubic meters of limestone. While the amount of stones used by King Khufu, who came after him, in building the Great Pyramid was estimated at about 2,500,000 cubic meters.
            
            The construction of the pyramids required, over many years, the establishment of a residential city for workers and engineers. They lived with their families close to the place of work. The administration provided them with food, drink, and clothing, and we know that each worker had a daily share of bread, garlic, and beer until he could devote himself to his work in building the pyramids. Sometimes meat and birds were offered to them.",
            character_id: character_15.id,
    )
    CharacterSection.create(
            arabic_title:"تماثيله",
            english_title:"His statues",
            arabic_content:"رأس من حجر الجرانيت قد تكون للملك سنفرو هي محفوظة حالياً بمتحف بروكلين، ارتفاعها 61 سم. تؤرخ هذه الرأس لأواخر الأسرة الثالثة وبداية الأسرة الرابعة، وتتشابه هذه الملامح من حيث الأنف العريض والشفاه الغليظة وامتلاءة الوجه مع ملامح سنفرو في رأس أخرى لتمثال من الحجرالجيري اكتشفت في دهشور الجنوبية . ونلاحظ طريقة وضع التاج على رأس الملك لكي يغطي جبين الملك ويميل الرأي لنسبتها إما لخوفو أو سنفرو وهما أكبر ملوك الأسرة الرابعة تأليهاً حيث أخذ كل منهما لقب «نيثر عا» أي المعبود الكبير.

            كما ثر على تمثال من الحجر الجيري للملك سنفرو وهو محفوظ حالياً بالمتحف المصري بالقاهرة. عثر عليه د أحمد فخري في نيش (زاوية) بمعبد الوادي الخاص بهرمه في منطقة دهشور الجنوبية ، وينسبه العلماء للملك سنفرو، وخاصة للملامح من حيث الشفتين الغليظتين وامتلاء الوجه والأنف العريض وطريقة وضع التاج الأبيض فوق الرأس بحيث تغطي أكبر قدر من الجبين، ونلاحظ أن التمثال أصابه التلف في منطقة الصدر والأطراف.",
            english_content:"A granite head that may belong to King Sneferu. It is currently preserved in the Brooklyn Museum. It is 61 cm high. This head dates to the late Third Dynasty and the beginning of the Fourth Dynasty, and these features, in terms of the broad nose, thick lips, and fullness of the face, are similar to the features of Sneferu in another head of a limestone statue discovered in southern Dahshur. We notice the way the crown is placed on the king’s head in order to cover the king’s forehead, and opinion tends to attribute it to either Khufu or Sneferu, who were the most deified kings of the Fourth Dynasty, as each of them took the title “Nether-A”, meaning the great deity.

            It also found a limestone statue of King Sneferu, which is currently preserved in the Egyptian Museum in Cairo. It was found by Dr. Ahmed Fakhry in a niche (corner) of the valley temple of his pyramid in the southern Dahshur region. Scientists attribute it to King Sneferu, especially for the features in terms of thick lips, fullness of the face, wide nose, and the way the white crown is placed on top of the head so that it covers the largest amount of the forehead. We note that the statue He sustained damage to the chest and limbs area.",
            character_id: character_15.id,
    )
    CharacterSection.create(
            arabic_title:"أهم أعماله",
            english_title:"His most important works",
            arabic_content:"أرسل أسطولا ضخما إلى فينيقيا لاستيراد خشب الأرز النادر لعدم وجود أخشاب جيدة في مصر تصلح لأعمال الإنشاءات الكبيرة من أهرامات ومعابد ، تحتاج إلى الكثير من الزحافات الخشبية والعوارض ، وكذلك لبناء السفن التي نشطت صناعتها وركوبها للتبادل التجاري مع البلاد المحاورة . كما عمل على تأمين حدود مصر الغربية والجنوبية من الأعداء. شيد لنفسه ثلاثة أهرامات: الأول هرم ميدوم الذي يعتبر مرحلة انتقالية بين الهرم المدرج والهرم الحقيقى , ثم هرمين بدهشور وهما الهرم الأحمر والهرم المائل. كما أنه اهتم باستخراج المعادن، مثل :النحاس والفيروز من سيناء. تميزت فترة حكمه بالاستقرار والعدالة.",
            english_content:"He sent a huge fleet to Phoenicia to import rare cedar wood, because there was no good wood in Egypt suitable for large construction works, such as pyramids and temples, which needed a lot of wooden skis and beams, as well as for building ships, the manufacture of which was active and their embarkation for trade exchange with the neighboring countries. He also worked to secure Egypt's western and southern borders from enemies. He built three pyramids for himself: the first, the Meidum Pyramid, which is considered a transitional stage between the Step Pyramid and the real pyramid, then two pyramids in Dahshur, which are the Red Pyramid and the Leaning Pyramid. He was also interested in extracting minerals, such as copper and turquoise from Sinai. His rule was characterized by stability and justice.",
            character_id: character_15.id,
    )
    character_16 = Character.create(
        arabic_name: "خوفو",
        english_name: "Khufu",
        arabic_info: "خوفو (خووّ-فووّ)، هو اسم الولادة للفرعون المصري القديم، الذي حكم في عهد الأسرة الرابعة من عصر الدولة القديمة، حوالي 2580 قبل الميلاد. يعرف بالتساوي أيضًا بالاسم الهليني خوبوس أو شوبوس (باليونانية: Χέοψ من خلال المؤرخين الإغريقيين ديودورس وهيرودوت).

        الفرعون خوفو ثاني ملوك الأسرة الرابعة، الذي تبع الفرعون سنفرو على العرش، والمُرجح أن يكون أبيه. ومن الثابت أن أمه كانت الملكة حتب حرس الموجود قبرها في مقابر الجيزة. يُعزى إليه بناء الهرم الأكبر على هضبة الجيزة لتكون مقبرة له، أحد عجائب الدنيا السبع في العالم القديم. ولكن لم يتم توثيق جوانب أخرى كثيرة من حكمه.
        
        أرسل البعثات إلى وادي المغارة بسيناء لإحضار الفيروز. حيث وجد اسمه وصورة تمثله وهو يهوي على رأس شخص بدبوس. له تمثال وحيد عثر عليه في أبيدوس من العاج، نقش اسمه على كرسي العرش. طول التمثال خمسة سنتيمترات؛ وهو الآن بالمتحف المصري. حكم طبقاً لبردية (تورين) حوالي ثلاث وعشرين سنة. في عهده بني الهرم الأكبر في الجيزة، وكان أعلى بناء حجري في العالم حتى بناء كتدرائية في عام 1350 ووصل ارتفاعها إلى 160 متر، ولكن هرم خوفو هو أضحم مبنى من صنع الإنسان حتى الآن. أطلق على الهرم اسم (آخت خوفو) بمعنى أفق خوفو، وشيد سنة 2650 ق.م. وقد اشرف على بنائه وزيره والمسؤول عن كل أعمال الملك حم إيونو، وتمثاله موجود بمتحف رومر-بيليسوس]] بهيلدسهايم بشمال ألمانيا.",
        english_info: "Khufu (Khoe-Fuu) is the birth name of the ancient Egyptian pharaoh, who ruled during the Fourth Dynasty of the Old Kingdom, around 2580 BC. It is equally known by the Hellenistic name of Chobos or Chobos (Greek: Χέοψ through the Greek historians Diodorus and Herodotus).

        Pharaoh Khufu, the second king of the Fourth Dynasty, who followed Pharaoh Sneferu on the throne, and is likely to be his father. It is proven that his mother was Queen Hetepheres, whose tomb is located in the Giza cemeteries. He is credited with building the Great Pyramid on the Giza Plateau as his tomb, one of the Seven Wonders of the Ancient World. But many other aspects of his rule have not been documented.
        
        He sent missions to Wadi al-Maghara in Sinai to bring turquoise. Where he found his name and a picture representing him falling on someone's head with a pin. He has a single statue, found in Abydos, made of ivory. His name is engraved on the throne seat. The length of the statue is five centimeters; It is now in the Egyptian Museum. He ruled, according to the Turin Papyrus, for about twenty-three years. During his reign, the Great Pyramid of Giza was built, and it was the tallest stone building in the world until the cathedral was built in 1350 and its height reached 160 meters, but the Pyramid of Khufu is the largest man-made building to date. The pyramid was called (Akhet Khufu), meaning the horizon of Khufu, and it was built in 2650 BC. Its construction was supervised by his minister, who was responsible for all King Iono's works, and his statue is located in the Romer-Bellissus Museum in Hildesheim in northern Germany.",
        date_of_birth: "2580",
        date_of_death: "2566",
        sub_era_id: sub_era_2.id,
    )
    character_16.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f7/Kairo_Museum_Statuette_Cheops_03_%28cropped%29.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_16.cover_image.attach(io: URI.open("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi0VPNxwtZ-ueEWjUUENGi5smiY1FxqJRCSivQmjUNL22AkBr4zBOU31VXPGr9eCKjEmcmJN0KvglvUyYPKmR3Ei1qTgPW3_9n4kdRmY6AFpyHUm_-RL5s0umfm-UEmnIhTfRf7_xzhWRg/w640-h320-rw/%25D8%25A7%25D8%25B4%25D9%2587%25D8%25B1-%25D8%25B5%25D9%2588%25D8%25B1-%25D8%25A7%25D9%2584%25D9%2585%25D9%2584%25D9%2583-%25D8%25AE%25D9%2588%25D9%2581%25D9%2588.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"أصول خوفو",
            english_title:"Khufu's origins",
            arabic_content:"من الثوابت أن أم خوفو كانت الملكة حتب حرس، وكان يعتقد أن والده الفرعون سنفرو. وكان لسنفرو أبناء أخرين عنخ حاف (والذي قد يكون في الحقيقة أبن لخوفو)، ونفر معات والأمير رع حتب؛ وهم أخوات لخوفو ولكن من أم ثانية.

            في أوائل القرن العشرين كان يعتقد أن خوفو كان أحد الأمراء وتزوج من عائلة سنفرو. ولكن حفريات قام بها 'سيورج رايزنر', على هضبة الجيزة في عام 1925 أدت إلى اكتشاف مقبرة حتب حرس (G 7000x) شرق هرم خوفو، ووجدت في مقبرتها الكثير من الأثاث والقوارير والقرابين والأختام. ووجدت على بعض تلك الآثار اسم الفرعون سنفرو، كما وجد ان حتب حرس كانت تلقب 'موت نسوت' بمعنى 'أم الملك'. بهذا يبدو أنها كانت زوجة سنفرو، وبالتالي فكان سنفرو وحتب حرس هما أبوي خوفو.",
            english_content:"It is certain that Khufu's mother was Queen Hetepheres, and it was believed that his father was Pharaoh Sneferu. Sneferu had other sons Ankhhaf (who may in fact be a son of Khufu), Nefer-Maat, and Prince Ra-hotep; They are sisters to Khufu, but from a second mother.

            In the early twentieth century, it was believed that Khufu was one of the princes and had married into the Sneferu family. However, excavations carried out by Sorge Reisner on the Giza Plateau in 1925 led to the discovery of the tomb of Hetepheres (G 7000x) east of the Pyramid of Khufu, and a lot of furniture, flasks, offerings and seals were found in its tomb. The name of Pharaoh Sneferu was found on some of these antiquities, and it was also found that Hetepheres was nicknamed 'Mut-nesut', meaning 'Mother of the King'. Thus, it seems that she was Sneferu's wife, and therefore Sneferu and Hetepheres were Khufu's parents.",
            character_id: character_16.id,
    )
    CharacterSection.create(
            arabic_title:"شجرة العائلة",
            english_title:"Family tree",
            arabic_content:"الملك سنفرو هو أبو الفرعون خوفو، وأبو الملك سنفرو هو الفرعون زوسر مؤسس الأسرة الثالثة، وأم خوفو هي الملكة حتب حرس، حيث كان لقبها «أم ملك مصر العليا والسفلى».

            وابن الملك خوفو الملك خفرع الذي بنى الهرم الثاني؛ وانجب خفرع الملك منكاورع أو منقرع.",
            english_content:"King Senefru is the father of Pharaoh Khufu, and King Senefru's father is Pharaoh Djoser, the founder of the Third Dynasty, and Khufu's mother is Queen Hetepheres, as her title was 'Mother of the King of Upper and Lower Egypt'.

            And the son of King Khufu, King Khafre, who built the second pyramid; Khafre gave birth to King Menkaure or Menkaure.",
            character_id: character_16.id,
    )
    CharacterSection.create(
            arabic_title:"مدة حكمه",
            english_title:"His reign",
            arabic_content:"تختلف التقديرات في معرفة فترة حكمه بالضبط. تذكر بردية تورينو وهي من عهد الدولة الحديثة وتعتبر من أهم الوثائق بالنسبة لتتابع ملوك مصر أن خوفو حكم مدة 23 عاما. ويقول المؤرخ الإغريقي هيرودوت أنه حكم 50 سنة، كما أن الكاهن المصري مانيتو الذي عاش في القرن الثالث قبل الميلاد يعني أنه حكم 63 سنة. كما ذكر في وقت الأسرة الرابعة أن مدة حكمه كانت 17 تعدادات (حيث كان في العادة يتم تعداد لأعداد الماشية ومساحات الأراضي بغرض فرض الضرائب) وكان التعداد يتم عادة كل سنتين - ولكنه كان أحيانا يتم كل سنة - فإذا كان التعداد كل سنتين بانتظام في عهد خوفو فتكون فترة حكمه 34 سنة.",
            english_content:"Estimates vary regarding the exact period of his reign. The Turin Papyrus, which dates back to the New Kingdom and is considered one of the most important documents regarding the succession of Egyptian kings, states that Khufu ruled for 23 years. The Greek historian Herodotus says that he ruled for 50 years, and the Egyptian priest Manetho, who lived in the third century BC, means that he ruled for 63 years. It was also mentioned at the time of the Fourth Dynasty that the duration of his rule was 17 censuses (where a census of the number of livestock and land areas was usually carried out for the purpose of levying taxes) and the census was usually carried out every two years - but sometimes it was carried out every year - so if the census was every two years regularly during the reign of Khufu So his reign will be 34 years.",
            character_id: character_16.id,
    )
    CharacterSection.create(
            arabic_title:"التجارة والبعثات",
            english_title:"Trade and missions",
            arabic_content:"يذكر من عهد خوفو بعثتان: واحدة منهما أرسلها على منطقة واحة الداخلة في الصحراء الليبية، والأخرى إلى سيناء بغرض الحصول على الفيروز والنحاس. وتذكر كتابات هيروغليفية توجد منقوشة في الصخور على بعد 50 كيلومتر غرب واحة الداخلة  جبل ماء جد ف رع - نسبة إلى الإله رع الدائم. وبحسب تأريخ تلك البعثة فقد تمت في 'عام 12 من التعداد' وهذا ما يعادل العام 24 من حكم خوفو؛ وفي تاريخ ثاني 'عام 13 من التعداد' وهذ يعادل العام 26 من حكم خوفو - باعتبار أن التعداد كان يتم في مصر كل سنتين.",
            english_content:"Two expeditions are mentioned from the era of Khufu: one of them he sent to the Dakhla Oasis region in the Libyan Desert, and the other to Sinai for the purpose of obtaining turquoise and copper. Hieroglyphic writings found inscribed in the rocks 50 kilometers west of Dakhla Oasis mention Jabal Ma Djed-Fre - named after the everlasting god Ra. According to the history of that mission, it took place in 'year 12 of the census', which is equivalent to year 24 of Khufu's rule. On the second date, 'Year 13 of the Census', which is equivalent to Year 26 of Khufu's rule - considering that the census was carried out in Egypt every two years.",
            character_id: character_16.id,
    )
    CharacterSection.create(
            arabic_title:"البلاط الملكي",
            english_title:"The royal court",
            arabic_content:"الكثير من كبار موظفي الدولة من عهد خوفو معروفون من مقابرهم في منطقة أهرامات الجيزة. ويعرف أيضا أن الوظائف العليا كانت مخصصة لعائلة الملك. في عهد خوفو ظهرت رتبة الوزير بالمصرية القديمة تياتي؛ وشغلها عدد من الوزراء، منهم: عنخاف و خوفوخعف الأول و مينخعف الأول، ويحتمل أيضا كان كا وعب وزيرا لخوفو. وقد ذكر اسم كواب على تمثال من الأسرة التاسعة عشر على أنه كان وزيرا لخوفو.

            في غرب الهرم الأكبر -هرم خوفو- توجد مقابر كبار رجال الدولة الذين كانوا يعملون بصفة رئيسية في أعمال الهنة والبناء، وكبار الكتاب. وكان من أكبر المهندسين الذين قاموا ببناء هرم خوفو حم إيونو الذي كان ابن أخ خوفو. وكان متقلدا في نفس الوقت أعمال 'الوزير'، كما حمل لقب 'ناظر جميع أعمال فرعون'. أي أنه كان المسؤول عن يناء هرم خوفو وما يحيط به من منشآت.
            
            بجانب حم إيونو تعرف أيضا أسماء مديرون في أعمال البناء مثل إيونو، وكاإماخ و 'كا-نفر' و 'وب-إم-نوفرت . لم توجد دلائل على كون هؤلاء الموظفين الكبار ينتمون إلى العائلة الملكية. صحيح أن الواحد من منهم كان يحمل لقب 'ابن الملك ' أو 'ابنة الملك' ولكنهم كانوا لا يحملون ألقابا أخرى مثل الأمراء والأميرات. وتوجد قبورهم أيضا في منطقة مقابر الجيزة. ويبدو أن لقب 'ابن فرعون' كان لقبا رمزيا لا تعني بالتمام صلة قرابة للملك.",
            english_content:"Many senior civil servants from the era of Khufu are known from their tombs in the area of the Giza Pyramids. It is also known that the highest positions were reserved for the king's family. During the reign of Khufu, the rank of vizier appeared in the ancient Egyptian word tiati. It was occupied by a number of ministers, including: Ankhaf, Khufu I, and Minkhaf I. It is also possible that Ka'ab was Khufu's minister. Kwab's name was mentioned on a statue from the Nineteenth Dynasty, indicating that he was Khufu's minister.

            In the west of the Great Pyramid - the Pyramid of Khufu - there are the tombs of senior statesmen who worked mainly in art and construction work, and major writers. One of the greatest engineers who built the pyramid of Khufu was Iono's father-in-law, who was Khufu's nephew. At the same time, he held the duties of a 'minister', and also held the title of 'inspector of all Pharaoh's affairs'. That is, he was responsible for building the pyramid of Khufu and its surrounding facilities.
            
            Besides Ham Iunu, the names of managers in construction work are also known, such as Iunu, Ka-Amakh, 'Ka-nefer' and 'Web-em-Nofret'. There is no evidence that these senior officials belong to the royal family. It is true that one of them had the title 'the king's son' or 'the king's daughter', but they did not have other titles such as princes and princesses. Their graves are also located in the Giza Cemetery area. It seems that the title 'Son of Pharaoh' was a symbolic title that did not entirely mean a relationship to the king.",
            character_id: character_16.id,
    )
    character_17 = Character.create(
        arabic_name: "خفرع",
        english_name: "Khafre",
        arabic_info: "خفرع أو خعف رع (وتعني بالمصرية: الظاهر كرع أو الظاهر كالشمس)، ملك من الأسرة الرابعة. هو ثالث أو رابع ملوك هذه الأسرة بالدولة القديمة حكم بين سنتي 2559 و2535 ق م هو من شيد الهرم الثاني بالجيزة. هو على الأغلب ابن الملك خوفو من زوجة ثانوية تولى الحكم بعد الملك جدف رع الذي كان قد استولى على الحكم. هرم خفرع يشابه في عظمته هرم خوفو. ملامحه نتعرف عليها من خلال أبو الهول الموجود بجانب هرمه والمتمثل في صورة أسد يدل على القوة، برأس إنسان يدل على الحكمة. كما عُثِر على صورة منحوتة بمعبده بوادي الملوك وتمثال للملك جالس موجود بالمتحف المصري. ليعرف الكثير عن فترة حكمه، ولا توجد شواهد تؤكد رواية الرحالة اليوناني هيرودت التي تصف خوفو وخفرع كطغاة.",
        english_info: "Khafre or Khaf-Ra (which in Egyptian means: Al-Zahir as Ra or Al-Zahir as the sun), a king of the Fourth Dynasty. He was the third or fourth king of this dynasty in the Old Kingdom. He ruled between the years 2559 and 2535 BC. He was the one who built the second pyramid in Giza. He is most likely the son of King Khufu from a secondary wife. He assumed power after King Djedefre, who had seized power. The Pyramid of Khafra is similar in its magnitude to the pyramid of Khufu. We recognize his features through the Sphinx located next to his pyramid, which is represented in the image of a lion, indicating strength, with a human head, indicating wisdom. A carved image was also found in his temple in the Valley of the Kings, and a statue of the seated king is in the Egyptian Museum. Much is known about the period of his rule, and there is no evidence to confirm the story of the Greek traveler Herodotus, which describes Khufu and Khafre as tyrants.",
        date_of_birth: "2570",
        date_of_death: "2546",
        sub_era_id: sub_era_2.id,
    )
    character_17.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/0/08/%D8%A7%D9%84%D9%85%D9%84%D9%83_%D8%AE%D9%81%D8%B1%D8%B9.png"), filename: 'image.jpg', content_type: 'image/jpg')
    character_17.cover_image.attach(io: URI.open("https://www.tripsinegypt.com/wp-content/uploads/2018/12/King-Khafre-Trips-in-Egypt-2.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"عائلته",
            english_title:"His family",
            arabic_content:"كان خفرع أحد أبناء خوفو وأمه غير معروفة حتى الآن على وجه الدقة، لكن يُعتقد أنها إما مريت إتس الأولى أو حنوتسن.

            وكان لخفرع عدة أخوة أكبرهم كا وعب من أم ثانية، ولكنه مات شابا. يعتقد بعض العلماء أن كاوعب كان في الحقيقة إبنا لسنفرو، وبذلك من المحتمل أن يكون كاوعب أخا لخوفو.
            
            تزوج خفرع من أربعة زوجات، أنجب من واحدة منهم وهي خع مرر نبتي الأولى ابنه منكاورع، كما انجبت له ابنته 'خع مرر نبتي الثانية'، ومعنى اسمها بالعربية 'ظهور محبوبة السيدتين'.",
            english_content:"Khafre was one of Khufu's sons and his mother is not yet known exactly, but is believed to be either Meritets I or Henutsen.

            Khafre had several brothers, the eldest of whom was Ka and Heb from a second mother, but he died young. Some scholars believe that Ka'ab was in fact a son of Snefru, and thus it is possible that Ka'ab was a brother of Khufu.
            
            Khafre married four wives. One of them, Khafre Mernabti I, gave birth to his son Menkaure. She also gave birth to his daughter, Khafre Nabti II, whose name in Arabic means the appearance of the beloved of the two women.",
            character_id: character_17.id,
    )
    CharacterSection.create(
            arabic_title:"عهده",
            english_title:"His reign",
            arabic_content:"لا يوجد اتفاق حول تاريخ حكمه، ولكن قد قيل بأنه حكم بين عامي 2558 ق.م و2532 ق.م. بنى ثاني أكبر هرم في الجيزة وارتفاعه 143م والآن 136م وشيد فوق مساحة 215 متر مربع وله مدخلان في الجهة الشمالية بالإضافة إلى تمثال أبو الهول الذي يبلغ طوله 57م وارتفاعه 20م، ومعبدالإله رع.",
            english_content:"There is no agreement about the date of his rule, but it has been said that he ruled between 2558 BC and 2532 BC. He built the second largest pyramid in Giza, its height is 143 meters and now 136 meters. It was built over an area of 215 square meters and has two entrances on the northern side, in addition to the Sphinx, which is 57 meters long and 20 meters high, and the temple of the god Ra.",
            character_id: character_17.id,
    )
    CharacterSection.create(
            arabic_title:"هرم خفرع",
            english_title:"Khafre Pyramid",
            arabic_content:"هرم خفرع هو أحد أهرامات الجيزة في مصر. بناه الملك خفرع رابع ملوك الأسرة الرابعة ابن الملك خوفو. تزوج من الأميرة مراس عنخ. حكم ست وعشرين سنة. بني الهرم الثاني من أهرام الجيزة، وهو أقل ارتفاعا من هرم أبيه (خوفو). كان ارتفاعه 143 مترا والآن 136 مترا.

            شيد فوق مساحة 215 مترا مربعا.وله مدخلان في الجهة الشمالية. وما زال يحتفظ بجزء من كسوته الخارجية عند القمة.عثر ضمن مجموعته الهرمية على تماثيل من حجر الشست في معبد الوادي الخاص ز من بينها تمثال من أجمل ما أنتجه فن النحت المصري، وهو موجود بالمتحف المصري، وينسب له نحت صخرة تمثال أبي الهول.
            
            يقع هرم خفرع جنوب غرب هرم أبيه خوفو. ويبلغ ارتفاعه 143,5 متراً وطول كل ضلع 215,5 متراً، وزاوية ميله 53,10ْ. يقع في مستوى سطح الأرض، والمدخل يؤدي إلى ممر هابط، سقفه من الجرانيت وزاوية انحداره 22ْ. وينتهي عند متراس يفضي إلى ممر أفقي، ثم ممر منحدر يؤدي إلى حجيرة يطلق عليها خطأ حجرة الدفن وهي فارغة منحوتة في الصخر، ويؤدي الدهليز إلى متراس آخر يرتفع إلى أعلى بممر أفقي ينتهي بحجرة الدفن، وهذه الحجرة سقفها جمالوني مشيد بالحجر الجيري، وتكاد تكون منتصف الهرم، أطلق خفرع على هرمه اسم(العظيم).",
            english_content:"The Pyramid of Khafre is one of the pyramids of Giza in Egypt. It was built by King Khafre, the fourth king of the Fourth Dynasty, son of King Khufu. He married Princess Ankh berths. He ruled for twenty-six years. The second pyramid of Giza was built, and it is lower in height than his father's pyramid (Khufu). Its height was 143 meters and now it is 136 metres.

            It was built on an area of 215 square meters. It has two entrances on the northern side. It still retains part of its outer covering at the top. Within its pyramid collection, schist stone statues were found in the Wadi Khas Temple, including one of the most beautiful statues produced by Egyptian sculpture. It is located in the Egyptian Museum, and he is credited with carving the rock of the Sphinx.
            
            Khafre's pyramid is located southwest of the pyramid of his father Khufu. Its height is 143.5 metres, the length of each side is 215.5 metres, and its inclination angle is 53.10 degrees. It is located at ground level, and the entrance leads to a descending corridor, with a granite ceiling and a slope angle of 22 degrees. It ends at a rampart that leads to a horizontal passage, then a sloped passage that leads to a chamber mistakenly called the burial chamber, which is empty and carved into the rock. The vestibule leads to another rampart that rises upwards with a horizontal passage that ends with the burial chamber. This chamber has a trussed roof built of limestone, and is almost the middle of The Pyramid: Khafre called his pyramid the Great.",
            character_id: character_17.id,
    )
    CharacterSection.create(
            arabic_title:"أبو الهول",
            english_title:"The Sphinx",
            arabic_content:"أبو الهول هو تمثال لمخلوق أسطوري بجسم أسد ورأس إنسان وقد نحت من الحجر الكلسيّ، ومن المرجح أنه كان في الأصل مغطى بطبقة من الجص وملون، ولا زالت آثار الألوان الأصلية ظاهرة بجانب إحدى أذنيه.

            يقع على هضبة الجيزة على الضفة الغربية من النيل في الجيزة، مصر، ويعد أبو الهول أيضاً حارساً للهضبة. وهو أقدم المنحوتات الضخمة المعروفة، يبلغ طوله نحو 73.5 متر، من ضمنها 15 متر طول قدميه الأماميتين، وعرضه 19.3 م، وأعلى ارتفاع له عن سطح الأرض حوالي 20 متراً إلى قمة الرأس. يعتقد أن قدماء المصريين بنوه في عهد الملك خفرع (2558 ق.م -2532 ق.م)، باني الهرم الأوسط في الجيزة.
            
            
            رأس أبو الهول.
            ومن المعتقد أن تمثال أبي الهول كان محجراً قبل أن يفكر الملك خفرع في نحته على شكل تمثال، وينظر هذا التمثال ناحية الشرق لذا قد تم تغيير الجهات الأصلية في القرن الماضي لتوافق نظر أبي الهول.",
            english_content:"The Sphinx is a statue of a mythical creature with the body of a lion and the head of a human. It was carved from limestone. It was likely that it was originally covered with a layer of plaster and colored, and traces of the original colors are still visible next to one of its ears.

            Located on the Giza Plateau on the west bank of the Nile in Giza, Egypt, the Sphinx is also a guardian of the plateau. It is the oldest known huge sculpture. It is about 73.5 meters long, including 15 meters the length of its front feet, and 19.3 meters wide, and its highest height above the ground is about 20 meters to the top of the head. It is believed that the ancient Egyptians built it during the reign of King Khafre (2558 BC - 2532 BC), the builder of the middle pyramid in Giza.
            
            
            Head of the Sphinx.
            It is believed that the Sphinx was quarried before King Khafre thought of sculpting it into the shape of a statue. This statue looks to the east, so the original directions were changed in the last century to match the view of the Sphinx.",
            character_id: character_17.id,
    )
    character_18 = Character.create(
        arabic_name: "منكاورع",
        english_name: "Menkaure",
        arabic_info: "منكاورع (ينطق بالعربية نطقاً غير دقيق: منقرع ولكن النطق المصري الأدق 'مِنْ كاو رَع')، هو ملك مصري من الأسرة الرابعة خلال عصر الدولة القديمة. ابن الملك خعفرع، ملكا مصر. واسمه يعني: 'فلتبقى هيئته مثل رع'. تزوج من الأميرة خع مرر نپتي الثانية. عثر في المعبد الجنائزى لـ منكاورع على سكين من حجر الصوان منقوش عليه اسم والدة الملك وتدعى خع مررنپتي الأولى، فيما يشير إلى أن خعفرع وهذه الملكة هما والدا منكاورع. ويعتقد أن منكاورع كان لديه زوجتان•",
        english_info: "Menkaure (pronounced in Arabic imprecisely: Menkaure, but the more accurate Egyptian pronunciation is 'men Kau-Ra'), was an Egyptian king of the Fourth Dynasty during the Old Kingdom. Son of King Khafre, King of Egypt. His name means: 'May his form remain like Ra'. He married Princess Khamerar-Nebty II. In Menkaure's funerary temple, a flint knife was found engraved with the name of the king's mother, called Kha Merernepti I, indicating that Khafre and this queen were Menkaure's parents. It is believed that Menkaure had two wives.",
        date_of_birth: "2530",
        date_of_death: "2500",
        sub_era_id: sub_era_2.id,
    )
    character_18.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/fb/Menkaura_Bust_Closeup.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_18.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/fb/Menkaura_Bust_Closeup.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"عائلته",
            english_title:"His family",
            arabic_content:"الملكة خعمررنبتي الثانية وهي ابنة خعمررنبتي الأولى ووالدة ابن الملك الذي يدعى خو إن رع. موقع قبر خو إن رع يدل على إنه ابن منكاورع، ويدل على أن والدته هي زوجة الملك.
            الملكة رخيت رع تعرف على أنها ابنة خعفرع وأن أكثر الشخصيات المرشحة كزوج لها هو منكاورع.
            و لا يوجد أطفال كثر يعتقد أنهم أبناء منكاورع:        
            خو إن رع أو خونرع: هو ابن الملكة خعمررنبتي الثانية. هو الابن الأكبر للملك من كاو رع الذي توفى قبل والده ولذلك لم يصعد إلى العرش في حين أن الابن الأصغر شبسسكاف تلى والده على العرش.
            شبسسكاف: هو الحاكم التالى لمنكاورع والذي من المحتمل أن يكون ابنه.
            سخم رع: وجد له تمثال ومن المرجح أن يكون ابنا لمنكاورع.
            ابنة توفيت في بداية سن البلوغ ذكرها هيرودوت.
            خنت كاوس: ابنة محتملة للملك من كاو رع.
            و تضمن كذلك البلاط الملكى أخوة غير أشقاء للملك منكاورع. شغل الأخوة نب إم أخت و دوا إن رع و نيكاورع و إيون مين منصب وزير أثناء حكم أخوهم. بينما الأخ سخم كارع ربما يكون أصغر سنا وأصبح وزيرا بعد وفاة منكاورع.",
            english_content:"Queen Khamerernebty II, the daughter of Khamerernebty I, and the mother of the king's son, Khuen Ra. The location of Khuen Ra's tomb indicates that he is the son of Menkaure, and indicates that his mother is the king's wife.
            Queen Rekhetre is known as the daughter of Khafre and the most likely candidate for her husband is Menkaure.
            There are not many children believed to be the sons of Menkaure:
            Khoenra or Khonre: He is the son of Queen Khamerernebty II. He is the eldest son of the king from Kao Ra, who died before his father, and therefore did not ascend to the throne, while the youngest son, Shepseskaf, succeeded his father to the throne.
            Shepseskaf: He was the next ruler of Menkaure and possibly his son.
            Sekhemre: A statue of him was found and it is likely that he was the son of Menkaure.
            A daughter who died in early adulthood is mentioned by Herodotus.
            Khent-Kaos: Possible daughter of the king by Kao-Ra.
            The royal court also included half-brothers of King Menkaure. The brothers Neb-em-Akhet, Du-en-ra, Nikaure, and Iun-min served as viziers during their brother's rule. While brother Sekhemkare may have been younger and became a minister after the death of Menkaure.",
            character_id: character_18.id,
    )
    CharacterSection.create(
            arabic_title:"حكمه",
            english_title:"His reign",
            arabic_content:"بعض الكتاب يضعون تاريخ حكمه بين عامي 2532 ق.م. و 2504 ق.م، أي 28 سنة، إلا أن بردية تورين تقول أنه حكم لمدة 18 عامًا، وهو الأقرب للصحة إذا ما أخذنا في الاعتبار العديد من التماثيل غير المكتملة له. بنى ثالث أكبر هرم في الجيزة وبنى هرمه بجوار هرمي جده وأبيه، خوفو وخفرع، ويبلغ ارتفاع هرمه 66 مترًا تقريبًا، وكان عهده أكثر حرية من ابيه وجده، حيث مارس الشعب شعائره الدينية بحرية لم يعهدها من قبل.",
            english_content:"Some writers place the date of his rule between 2532 BC. And 2504 BC, i.e. 28 years, but the Turin Papyrus says that he ruled for 18 years, which is closest to being true if we take into account the many unfinished statues of him. He built the third largest pyramid in Giza and built his pyramid next to the pyramids of his grandfather and father, Khufu and Khafre. The height of his pyramid is approximately 66 meters, and his reign was freer than that of his father and grandfather, as the people practiced their religious rituals with a freedom they had never experienced before.",
            character_id: character_18.id,
    )
    CharacterSection.create(
            arabic_title:"هرم منكاورع",
            english_title:"Menkaure Pyramid",
            arabic_content:"بنى الملك منكاورع الهرم الأصغر بين الثلاثة أهرامات الكبرى في الجيزة. ويبلغ ضلعي قاعدته 102,2 متر في 104,6 متر وارتفاعه 65,55 متراً، وهو أصغر كثيرا عن هرمي خوفو وخفرع. المادة الأساسية في بنائه كانت من الحجر الجيري التي استخرجت من محاجر بالقرب من مكان البناء، ولكن طلب منقرع من مهندسيه أن يبنوا الجزء السفلي الخارجي من حجر الجرانيت الوردي . وعمل المهندسون على إحضار أحجار الجرانيت الرملي من أسوان وتم نقلها على النيل حتى الجيزة. وتم تغطية هرم منقرع بأحجار الجرانيت الوردي إلى ارتفاع 15 متر، وما فوقها فكان من الحجر الجيري الأبيض الذي أتوا به من طره، على الضفة الشرقية من النيل.
            يهبط من شمال الهرم سرداب مائل إلى حجرة أولية تحت ارضية الهرم. ويمتد منها سرداب آخر مائلا إلى أعلي وينتهي تحت أرضية الهرم مباشرة وينتهي بحائط. ويبدو أن هذا السرداب كان مخططا له أصلا أن يمتد داخل الهرم. بنيت حجرة التابوت أسفل من الحجرة الأولية. وعثر فيها على تابوت من الجرانيت تبلغ مقاييسه 2,43 × 0,94 × 0,88 متر. وكان التابوت مزينا - على عكس تابوتي خوفو وخفرع اللذان كانا بسيطان من دون زينة - إذ حفر على أوجهه تابوت منقرع شكل مدخل القصر.
            كان من المفروض نقل التابوت إلى بريطانيا في عام 1838، ولكنه لم يصل، إذ اعترضت عاصفة السفينة الناقلة وأغرقتها.",
            english_content:"King Menkaure built the smallest pyramid among the three great pyramids in Giza. Its base sides are 102.2 meters by 104.6 meters and its height is 65.55 metres. It is much smaller than the pyramids of Khufu and Khafre. The basic material in its construction was limestone extracted from quarries near the construction site, but Menkaure asked his engineers to build the lower outer part of pink granite stone. The engineers worked to bring granite sandstones from Aswan, and they were transported on the Nile to Giza. Menkaure's pyramid was covered with pink granite stones to a height of 15 meters, and above them was made of white limestone that they brought from Tura, on the eastern bank of the Nile.
            From the north of the pyramid descends a sloping crypt to a preliminary room under the floor of the pyramid. Another crypt extends from it, sloping upward, and ends directly under the floor of the pyramid and ends with a wall. It seems that this basement was originally planned to extend inside the pyramid. The coffin chamber was built down from the primary chamber. A granite coffin measuring 2.43 x 0.94 x 0.88 meters was found there. The coffin was decorated - unlike the coffins of Khufu and Khafre, which were simple and without decoration - as the coffin of Menkaure was engraved on its faces, which formed the entrance to the palace.
            The coffin was supposed to be transported to Britain in 1838, but it did not arrive, as a storm intercepted the carrier ship and sank.",
            character_id: character_18.id,
    )
    character_19 = Character.create(
        arabic_name: "أوسركاف",
        english_name: "Userkaf",
        arabic_info: "أَوْسَرْكاف (المعروف في اليونانية القديمة باسم Οὐσερχέρης ،Usercherês) كان أحد فَراعنة مِصر القديمة ومُؤسِّس الأسرة الخامسة. حَكم لمدة سَبع إلى ثماني سَنوات في أَوائل القرنِ الخامسِ والعشرينَ قبل الميلاد خلال عهد المملكة القديمة، وربما كان ينحدر من أحد فروع العائلة المالكة من الأسرة الرابعة. على الرغم من أنَّ اسم أبويه غير مؤكد؛ إلا أنه مِن المُرجَّح أنْ يكون ابنُ الملكة خنت كاوس. كان لديه ابنة واحدة على الأقل وربما ابن اسمه ساحو رع من قَرينته نفر حتبس وخَلَفَه هذا الابن في الحُكم.
        شهدت فترة حكمه ظهور عبادة الإله رع، الذي أصبح فعليًا إله الدولة في مِصر خلال عَصر الأسرة الخامسة. ربما كان أوسركاف أحد كبار كهنة رع قبل صُعوده العرش حيث بنى معبدًا للشمس يُعرف باسم معبد نخن رع يقع اليوم بين قريتي أبو صير وأبو غراب في مصر. وبذلك، أرسى تقليدًا سار عليه خلفاؤُه من بعده وعلى مدى 80 عامًا. بُني معبد نخن رع ليكون معبداً جنائزياً لعبادة الشمس عند الغروب. حيث كانت الطُقوس التي تُقام في المعبد معنية في المقام الأول بوظيفة رع كخالق ودوره كأب للملك الفرعوني. وبالنظر إلى تقليص حجم المعبد الجنائزي الملكي، فإن هذا يشير إلى وجود فصل ملموس بين وظيفة إله الشمس والملك أكثر مما كان عليه في السلالات السابقة. بعد وفاة أوسركاف، أُعيد بناء معبده على أربع مراحل ووُضعت فيه مِسلة كبيرة.
        بَنى أوسركاف هرمًا في سقارة قريبًا من هرم زوسر، وهو الموقع الذي أَجبر المعماريين آنذاك على بناء المعبد الجنائزي المرتبط بالهرم في وضع غير عادي في مكان ما جنوب الهرم. كان هذا الهرم أصغر بكثير من الأهرامات التي بُنيت في عهد الأسرة الرابعة، بينما كان المعبد الجنائزي مزخرفًا ببذخ وعلى نطاق واسع بنقوشٍ بارزة مرسومة. وبالإضافة إلى هرمه ومعبده، بنى أوسركاف هرمًا أصغر قريبًا من هرمه لإحدى ملكاته والتي على الأرجح الملكة نفر حتبس. وعلى الرغم من أنَّ أوسركاف تم تقديسه في طقوس جنائزية بعد وفاته مثل ملوك الأسرة الخامسة الآخرين، إلا أنه لم يكن مهمًا نسبيًا، وتم التخلي عن عبادته وتقديسه بعد نهاية عصر الأسرة الخامسة.
        لا يُعرف سوى القليل عن أنشطته عدا عن بناءه للهرم ومعبد الشمس. تُسجِّل السجلات الملكية للمملكة القديمة أنه قام بتقديم قرابين من البيرة والخبز والأراضي لآلهة مختلفة، بعض هذه القرابين يتوافق مع مشاريع بناء قام بها أشخاص بالنيابة عن أوسركاف بما في ذلك معبد الإله منتو في الطود حيث عُثر هناك على أول إثبات تاريخي لوجوده. أما خارج حدود مصر، فيُعتقد أنه قام بحملة عسكرية إلى كنعان أو الصحراء الشرقية، ويبدو أن التواصل التجاري مع حضارة إيجية كان نشطًا في ذلك الوقت.",
        english_info: "Userkaf (known in ancient Greek as Οὐσερχέρης, Usercherês) was one of the pharaohs of ancient Egypt and the founder of the Fifth Dynasty. He ruled for seven to eight years in the early 25th century BC during the Old Kingdom, and may have been descended from a branch of the royal family of the Fourth Dynasty. Although the name of his parents is uncertain; However, it is likely that he was the son of Queen Khent-Kaos. He had at least one daughter and perhaps a son named Sahure by his consort Neferhetepes, and this son succeeded him in power.
        His reign witnessed the emergence of the cult of Ra, who effectively became the state god of Egypt during the Fifth Dynasty. Userkaf may have been one of the high priests of Ra before he ascended the throne, as he built a sun temple known as the Temple of Nekhenre, located today between the villages of Abu Sir and Abu Ghurab in Egypt. In doing so, he established a tradition that his successors followed after him for 80 years. The Temple of Nekhenre was built as a funerary temple for worshiping the sun at sunset. The rituals held in the temple were primarily concerned with Ra’s function as creator and his role as father to the Pharaonic king. Given the reduction in size of the royal mortuary temple, this indicates a more tangible separation between the functions of the sun god and the king than in previous dynasties. After Userkaf's death, his temple was rebuilt in four stages and a large obelisk was placed in it.
        Userkaf built a pyramid at Saqqara close to the pyramid of Djoser, a location that forced architects to build the funerary temple associated with the pyramid in an unusual position somewhere south of the pyramid. This pyramid was much smaller than the pyramids built during the Fourth Dynasty, while the mortuary temple was lavishly and extensively decorated with painted bas-reliefs. In addition to his pyramid and temple, Userkaf built a smaller pyramid close to his pyramid for one of his queens, who was most likely Queen Neferhetepes. Although Userkaf was canonized in funerary rites after his death like other Fifth Dynasty kings, he was relatively unimportant, and his cult and reverence were abandoned after the end of the Fifth Dynasty.
        Little is known about his activities other than his construction of the pyramid and the Temple of the Sun. Royal records of the Old Kingdom record that he made offerings of beer, bread, and land to various gods, some of which correspond to building projects undertaken by people on Userkaf's behalf, including the temple of the god Mentu at Tud, where the first historical evidence of his existence was found. As for outside the borders of Egypt, it is believed that he carried out a military campaign to Canaan or the Eastern Desert, and it seems that commercial contact with the Aegean civilization was active at that time.",
        date_of_birth: "2494",
        date_of_death: "2487",
        sub_era_id: sub_era_2.id,
    )
    character_19.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/b/b9/By_ovedc_-_Egyptian_Museum_%28Cairo%29_-_046_%28cropped%29.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_19.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/b/b9/By_ovedc_-_Egyptian_Museum_%28Cairo%29_-_046_%28cropped%29.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"الوالدان والزوجة",
            english_title:"Parents and wife",
            arabic_content:"هوية والد ووالدة أوسركاف غير مؤكدة وغامضة، لكنه بلا شك كان له صلات عائلية بحكام الأسرة الرابعة السابقة. يقترح عالم المصريات ميروسلاف فيرنر  أنه كان ابن منقرع من إحدى ملكاته، وربما كان أخًا شقيقًا لسلفه وآخر ملوك الأسرة الرابعة شبسس كاف.
            اقترح كل من نيكولاس جريمال وبيتر كلايتون  ومايكل رايس أن أوسركاف كان ابن الملكة نفر حتبس، التي اعتبرها بعض علماء المصريات ابنة الملك دجيدف رع والملكة حتب حرس الثانية. بناءً على هذه الفرضية فإن زوج نفر حتبس يصبح من الصعب معرفته، لكن نيكولاس جريمال يعتقد أن زوجها ربما يكون (كاهن رع، سيد ساخبو) المذكور في بردية ويستكار. يقترح العالمان أيدان دودسون وديان هيلتون أن الملكة نفر حتبس دفنت في هرم مجاور للهرم الذي دُفن فيه أوسركاف، إذ يُعتقد أن هذا الهرم يعود لإمرأة تحمل نفس الاسم.
            ومع ذلك، فإن موقع الهرم الذي ينسب إلى نفر حتبس يشير بقوة إلى أنها ربما كانت زوجة أوسركاف بدلاً من أُمه. ولو كانت هذه الفرضية صحيحة فإن نفر حتبس في هذه الحالة تكون والدة ساحو رع الذي خلف أوسركاف في الحكم. عُثر على نقش يظهر فيه الملك ساحو رع بجانب زوجته الملكة ووالدته التي تم التعرف عليها على أنها نفر حتبس، مما يؤكد مرة أخرى أنها على الأرجح زوجة أوسركاف. يؤيد العالم يارومير مالك ما توصل إليه نيكولاس جريمال سابقًا من أن نفر حتبس هي ابنة الملك دجيدف رع والملكة حتب حرس الثانية. وعلى اعتبار صحة هذه الفرضية فقد أيد عالم المصريات الأمريكي مارك لينر فكرة أن والدة أوسركاف ربما تكون خنت كاوس، وهي نفس الفكرة التي أيدها العالم أرييل كوزلوف.
            بينما جادل أيدان دودسون وديان هيلتون بأن نفر حتبس لم تُمنح لقب زوجة الملك في الوثائق اللاحقة المتعلقة بعبادة الجنائز، ولاحظا عدم وجود سبب مقنع لهذا الأمر، كما اقترحا أن زوجة (قرينة) أوسركاف ربما كانت خنت كاوس الأولى، وهي الفرضية التي أيدها المؤرخ المصري سليم حسن. يتفق العلماء كلايتون وروزالي وأنتوني ديفيد على أن خنت كاوس الأولى كانت ابنة الملك منقرع. جادل العالم برنهارد جردسيلوف بأن أوسركاف باعتباره سليلًا للفرعون دجيدف رع ربما تزوج امرأة من السلالة الملكية الرئيسية - خط خفرع ومنقرع - فأصبح بإمكانه توحيد فصيلين متنافسين داخل العائلة المالكة وإنهاء صراعات الأسرة الحاكمة المحتملة. بدلاً من ذلك، من الممكن أن يكون أوسركاف هو رئيس كهنة رع قبل اعتلاءه العرش، مما يمنحه تأثيرًا كافيًا للزواج من أرملة شبسس كاف والتي يُعتقد أنها خنت كاوس الأولى.",
            english_content:"The identity of Userkaf's father and mother is uncertain and ambiguous, but he undoubtedly had family connections to the rulers of the previous Fourth Dynasty. Egyptologist Miroslav Werner suggests that he was Menkaure's son by one of his queens, and may have been a full brother of his predecessor and the last king of the Fourth Dynasty, Shepseskaf.
            Nicholas Grimall, Peter Clayton, and Michael Rice have all suggested that Userkaf was the son of Queen Neferhetepes, whom some Egyptologists consider to be the daughter of King Djedefre and Queen Hetepheres II. Based on this hypothesis, Neferhetepes's husband becomes difficult to identify, but Nicholas Grimal believes that her husband may be the (priest of Ra, master of Sakhpu) mentioned in the Westkar Papyrus. Scientists Aidan Dodson and Diane Hilton suggest that Queen Neferhetepes was buried in a pyramid adjacent to the pyramid in which Userkaf was buried, as it is believed that this pyramid belonged to a woman with the same name.
            However, the location of the pyramid attributed to Neferhetepes strongly suggests that she may have been Userkaf's wife rather than his mother. If this hypothesis is correct, then Neferhoteps in this case would be the mother of Sahure, who succeeded Userkaf in power. An inscription was found showing King Sahure alongside his wife, the queen, and his mother, who has been identified as Neferhetepes, once again confirming that she was most likely Userkaf's wife. The scholar Jaromir Malik supports Nicholas Grimal's previous findings that Neferhetepes is the daughter of King Djedefre and Queen Hetepheres II. Considering the validity of this hypothesis, the American Egyptologist Mark Lehner supported the idea that Userkaf’s mother may have betrayed Kaos, which is the same idea that was supported by the scientist Ariel Kozlov.
            While Aidan Dodson and Diane Hilton argued that Neferhetepes was not given the title of king's wife in later documents relating to the funeral cult, and noted that there was no convincing reason for this, they also suggested that Userkaf's wife (consort) may have been Khent-Kaos I, a hypothesis supported by the Egyptian historian Selim. Hassan. Scholars Clayton, Rosalie, and Anthony David agree that Khentkaos I was the daughter of King Menkaure. Scholar Bernhard Gerdsilov has argued that Userkaf, as a descendant of Pharaoh Djedefre, may have married a woman from the main royal line—the line of Khafre and Menkaure—so he could unite two rival factions within the royal family and end potential dynastic conflicts. Alternatively, it is possible that Userkaf was the high priest of Ra before his accession to the throne, giving him enough influence to marry the widow of Shepesskaf who is believed to have betrayed Kaos I.",
            character_id: character_19.id,
    )
    CharacterSection.create(
            arabic_title:"الأبناء",
            english_title:"Children",
            arabic_content:"Many Egyptologists believe that Sahure was Userkaf's son and not his brother as mentioned in the Westkar Papyrus. What confirms this is the discovery of an inscription showing Sahure and his mother Neferhetepes, which is the name that appears on a pyramid built next to the pyramid of Userkaf. An additional argument supporting Sahure's son is the location of his pyramid in close proximity to the Temple of the Sun built by Userkaf. No other child of Userkaf has been identified except for a daughter named Khamat, who was mentioned in inscriptions discovered in the mastaba of the high priest at Tahshepses.",
            english_content:"Many Egyptologists believe that Sahure was Userkaf's son and not his brother as mentioned in the Westkar Papyrus. What confirms this is the discovery of an inscription showing Sahure and his mother Neferhetepes, which is the name that appears on a pyramid built next to the pyramid of Userkaf. An additional argument supporting Sahure's son is the location of his pyramid in close proximity to the Temple of the Sun built by Userkaf. No other child of Userkaf has been identified except for a daughter named Khamat, who was mentioned in inscriptions discovered in the mastaba of the high priest at Tahshepses.",
            character_id: character_19.id,
    )
    CharacterSection.create(
            arabic_title:"فترة الحكم",
            english_title:"His reign",
            arabic_content:"لا يُعرف على وجه الدقة مدة حكم الملك أوسركاف. بالنظر إلى الأدلة التاريخية والأثرية التي عُثر عليها فإن الإجماع بين علماء المصريات هو أنه حكم لمدة سبع إلى ثماني سنوات في بداية الأسرة الخامسة في مصر. إذ يُظهر الدليل الأول وهو تحليل تقريبي للسجلات الملكية للمملكة القديمة أن عهد أوسركاف سًجِّل في ثمانية أقسام تقابل ما لا يقل عن سبع سنوات كاملة ولكن ليس أكثر من ذلك بكثير. آخر سنة مقروءة مسجلة في سجلات أوسركاف هي السنة التي تقابل ثالث إحصاء للماشية، وهو الإحصاء الذي كان معمولاً به في مصر القديمة لتقدير مقدار الضرائب التي ستُفرض على السكان. يُعتقد أن هذا الحدث الهام كان يتم كل سنتين خلال فترة المملكة القديمة، مما يعني أن الإحصاء الثالث للماشية يمثل السنة السادسة من حكمه. تم التوصل لنفس النتيحة أيضا عندما عُثر على نقش وُجد على حجر من معبد الشمس الذي بناه أوسركاف. أما الدليل الثاني فهو في بردية تورينو (وهي وثيقة كُتبت في عهد رمسيس الثاني) إذ تُظهر في العمود الثالث الصف 17 أن أوسركاف قد حكم لفترة مدتها سبع سنوات. أما الدليل الثالث فهو العثور على عدد قليل جدًا من القطع الأثرية الصغيرة التي تحمل اسم أوسركاف وهي تشهد على فترة حكمه القصيرة وتشمل هذه الآثار جرة مصنوعة من الديوريت مطلية بالذهب، وقطعة من الحجر وزنها 5 ديبن  (وحدة مصرية قديمة لقياس الوزن) وختم أسطواني حجري عُثر عليه في إلفنتين، وكلها اليوم معروضة في متحف المتروبوليتان للفنون، بالإضافة إلى ختم أسطواني عاجي محفوظ في المتحف البريطاني  وختم آخر في متحف بولاق.
            المصدر التاريخي الوحيد الذي يذكر أن أوسركاف قد حكم لفترة طويلة هو كتاب (تاريخ مصر) الذي كُتب في القرن الثالث قبل الميلاد في عهد بطليموس الثاني (283-246 قبل الميلاد) بواسطة المؤرخ مانيتون. لم تصل إلينا أي نسخة محفوظة من هذا الكتاب الذي تعرض للتلف والضياع وهو معروف اليوم فقط من خلال كتابات بعض المؤرخين اللاحقين مثل يوليوس أفريكانوس ويوسابيوس القيصري. وقد نقل الباحث البيزنطي جورج سينسيلوس عن يوليوس أفريكانوس أنه قال أن كتاب (تاريخ مصر) يُذكر فيه حكام الأسرة الخامسة بالترتيب التالي: أوسركاف و ساحو رع 
            و نفر إر كارع كاكاي. على وجه الخصوص، يتفق ترتيب الملوك الذي ذكره المُؤرخ مانيتون عن ملوك الأسرة الخامسة مع ما ورد في قائمة ملوك أبيدوس ولوح سقارة، وهما قائمتان للملوك كُتبتا خلال عهدي سيتي الأول ورمسيس الثاني على التوالي. على النقيض من بردية تورين، يقدر يوليوس أفريكانوس أن أوسركاف حكم لمدة 28 عامًا  وهي مدة أطول بكثير من الإجماع الحديث للمؤرخين.",
            english_content:"The exact length of King Userkaf's reign is not known. Given the historical and archaeological evidence found, the consensus among Egyptologists is that he ruled for seven to eight years at the beginning of the Fifth Dynasty in Egypt. The first piece of evidence, a rough analysis of the royal records of the Old Kingdom, shows that Userkaf's reign was recorded in eight sections corresponding to at least seven full years but not much more. The last readable year recorded in Userkaf's records is the year corresponding to the third cattle census, which was the census used in ancient Egypt to estimate the amount of taxes to be imposed on the population. This important event is believed to have occurred every two years during the Old Kingdom period, meaning that the third cattle census marks the sixth year of his reign. The same conclusion was also reached when an inscription was found on a stone from the Temple of the Sun built by Userkaf. The second piece of evidence is in the Turin Papyrus (a document written during the reign of Ramses II), which shows in the third column, row 17, that Userkaf ruled for a period of seven years. The third piece of evidence is the discovery of a very small number of small artifacts bearing Userkaf’s name, which testify to his short reign. These artifacts include a jar made of diorite plated with gold, a piece of stone weighing 5 deben (an ancient Egyptian unit for measuring weight), and a stone cylinder seal that was found. On it in Elephantine, all of them are today displayed in the Metropolitan Museum of Art, in addition to an ivory cylinder seal preserved in the British Museum and another seal in the Bulaq Museum.
            The only historical source that mentions that Userkaf ruled for a long time is the book (History of Egypt), which was written in the third century BC during the reign of Ptolemy II (283-246 BC) by the historian Manetho. No preserved copy of this book has reached us, which was damaged and lost, and it is known today only through the writings of some later historians such as Julius Africanus and Eusebius of Caesarea. The Byzantine researcher George Syncellus quoted Julius Africanus as saying that the book (History of Egypt) mentions the rulers of the Fifth Dynasty in the following order: Userkaf and Sahu Ra.
            And Neferirkare Kakai. In particular, the order of kings given by the historian Manetho for the kings of the Fifth Dynasty agrees with what is stated in the Abydos King List and the Saqqara Tablet, two king lists written during the reigns of Seti I and Ramesses II, respectively. In contrast to the Turin Papyrus, Julius Africanus estimates that Userkaf ruled for 28 years, much longer than the modern consensus of historians.",
            character_id: character_19.id,
    )
    CharacterSection.create(
            arabic_title:"مؤسس الأسرة الخامسة",
            english_title:"Founder of the Fifth Dynasty",
            arabic_content:"يُعتبر المؤرخ مانيتون هو أول من قسَّم الملوك المصريين القدماء إلى سلالات (عائلات) وذلك في كتابه المفقود (تاريخ مصر)، كان الهدف من هذا التقسيم هو أن يكون قريبا أكثر ما يمكن إلى قائمة الحكام اليونانيين لمصر في العهد البطلمي. مع ذلك فإن التنبأ بانتهاء حكم الأسرة الرابعة وبداية حكم الأسرة الخامسة ربما لاحظه المصريون القدماء الذين قاموا بتوثيقه كرواية عَثَر عليها الباحثون في بردية ويستكار. في هذه الرواية، تنبأ الملك خوفو وهو من ملوك الأسرة الرابعة بزوال سلالته وصعود سلالة جديدة من خلال تولي ثلاثة إخوة أبناء رع عرش مصر. يعود تاريخ هذه القصة إلى الأسرة السابعة عشرة أو ربما الأسرة الثانية عشرة.
            إلى جانب هذه الأدلة التاريخية، يبدو أن الانقسام بين الأسرة الرابعة والخامسة يعكس التغييرات الفعلية التي حدثت في ذلك الوقت لا سيما في الديانة المصرية وفي دور الملك. إن تفضيل رع على بقية الآلهة المصرية وتقديسه وعبادته بشكل أكثر عن غيره جعله يبدو وكأنه إله المملكة أو الأسرة، وهي الطقوس التي لم يكن موجودة خلال فترة حكم الأسرة الرابعة التي كانت تركز بشكل أكبر على طقوس الدفن الملكية.
            لا تعرف وظيفة أوسركاف قبل صعوده إلى العرش. يذكر المؤرخ جريمال أن أوسركاف ربما كان كاهنًا كبيرًا للإله رع في مدينة هليوبوليس أو ساخبو وهما مركز عبادة رع المذكور في بردية ويستكار. اقترح عالم المصريات فليندرز بيتري فرضية وجود علاقة بين أصول الأسرة الخامسة ومدينة ساخبو، حيث أشار إلى أن اسم المدينة في الكتابة الهيروغليفية المصرية يشبه اسم مدينة إلفنتين، وهي المدينة التي اعتبرها مانيتون مهد الأسرة الخامسة وبداية ظهورها فيها. وفقًا للعالم لبيتري، فإن افتراض أن بردية ويستكار قد وثَّقت تقليدًا يذكر أصول الأسرة الخامسة من الممكن أن يفسر تقسيم القوائم (العائلات) التي وضعها مانيتون، خاصة بالنظر إلى أنه لا توجد علاقة معينة بين إلفنتين والفراعنة من الأسرة الخامسة.",
            english_content:"The historian Manetho is considered the first to divide the ancient Egyptian kings into dynasties (families) in his lost book (The History of Egypt). The aim of this division was to be as close as possible to the list of Greek rulers of Egypt in the Ptolemaic era. However, the prediction of the end of the rule of the Fourth Dynasty and the beginning of the rule of the Fifth Dynasty may have been noticed by the ancient Egyptians, who documented it as a narrative found by researchers in the Westkar Papyrus. In this novel, King Khufu, one of the kings of the Fourth Dynasty, predicted the demise of his dynasty and the rise of a new dynasty through the accession of three brothers, sons of Ra, to the throne of Egypt. This story dates back to the Seventeenth Dynasty or perhaps the Twelfth Dynasty.
            Besides this historical evidence, the division between the Fourth and Fifth Dynasties seems to reflect the actual changes that occurred at that time, especially in Egyptian religion and in the role of the king. Preferring Ra over the rest of the Egyptian gods and sanctifying and worshiping him more than others made him appear to be the god of the kingdom or family, a ritual that did not exist during the Fourth Dynasty, which focused more on royal burial rituals.
            Userkaf's function before his ascension to the throne is not known. The historian Grimal states that Userkaf may have been a high priest of the god Ra in the city of Heliopolis or Sakhbu, the center of the cult of Ra mentioned in the Westkar Papyrus. Egyptologist Flinders Petrie proposed the hypothesis of a relationship between the origins of the Fifth Dynasty and the city of Sakhbu, as he pointed out that the name of the city in Egyptian hieroglyphs is similar to the name of the city of Elephantine, which is the city that Manetho considered the cradle of the Fifth Dynasty and the beginning of its emergence there. According to the scholar Petrie, the assumption that the Westkar Papyrus documented a tradition mentioning the origins of the Fifth Dynasty could explain the division of lists (families) drawn up by Manetho, especially considering that there is no specific relationship between Elephantine and the pharaohs of the Fifth Dynasty.",
            character_id: character_19.id,
    )
    CharacterSection.create(
            arabic_title:"التماثيل",
            english_title:"Statues",
            arabic_content:"اكتشفت عدة تماثيل متفرقة لأوسركاف من بينها تمثال نصفي للإلهة نيث له ملامح تشبه ملامح أوسركاف  وشكله عُثر عليه في معبده الشمسي في أبو صير وهو موجود اليوم في المتحف المصري. يبلغ ارتفاع التمثال 45 سم (18 بوصة) وقد نُحت من الحجر الرمادي. يعتبر هذا التمثال ذو أهمية خاصة لأنه من بين المنحوتات القليلة جدًا من عصرالمملكة القديمة التي تُظهر أوسركاف وهو يرتدي التاج الأحمر الذي يرمز إلى مصر السفلى. اكتشف التمثال في عام 1957 أثناء رحلة تنقيب مشتركة بين المعاهد الألمانية والسويسرية في القاهرة. هناك تمثال رأس آخر يُعتقد أنه يعود أيضاً لأوسركاف يظهر فيه وهو يرتدي التاج الأبيض الذي يرمز إلى صعيد مصر وقد صُنع من الحجر الجيري الملون وهو محفوظ اليوم في متحف كليفلاند للفنون.
            في عام 1928  عُثر العالم البريطاني سيسيل مالابي فيرث في فناء معبد يقع في المعبد الجنائزي في سقارة على رأس تمثال ضخم لأوسركاف وهو موجود اليوم في المتحف المصري. نُحت هذا الرأس الضخم من جرانيت أسوان الوردي ويظهر فيه أوسركاف وهو يرتدي غطاء الرأس الفرعوني مع صورة لأفعى الكوبرا على جبهته ، وهو أكبر تمثال رأس باقٍ يرجع تاريخه إلى المملكة القديمة والتمثال الملكي الضخم والوحيد من هذه الفترة بخلاف تمثال أبو الهول بالجيزة. العديد من قطع تماثيل أوسركاف صُنعت من الديوريت والأردواز والجرانيت ولكن لم يتم العثور على أي تمثال من الحجر الجيري في نفس الموقع. يَظهر على بعض القطع خرطوش أوسركاف واسم حورس.
            كما يلاحظ السمات الشبابية لأوسركاف في معظم تماثيله، إذ يعتقد بعض العلماء أنه هذه مؤشرات جيدة على عمره، فقد يكون قد اعتلى العرش كمراهق ومات في أوائل العشرينات من عمره.",
            english_content:"Several separate statues of Userkaf were discovered, including a bust of the goddess Neith, which has features similar to Userkaf's features and shape. It was found in his solar temple in Abusir and is located today in the Egyptian Museum. The statue is 45 cm (18 in) high and was carved from gray stone. This statue is of particular interest because it is among the very few Old Kingdom sculptures that show Userkaf wearing the red crown symbolizing Lower Egypt. The statue was discovered in 1957 during a joint excavation trip between German and Swiss institutes in Cairo. There is another head statue, believed to also belong to Userkaf, in which he appears wearing the white crown that symbolizes Upper Egypt. It was made of colored limestone and is preserved today in the Cleveland Museum of Art.
            In 1928, the British scientist Cecil Mallaby Firth was found in the courtyard of a temple located in the mortuary temple at Saqqara on top of a huge statue of Userkaf, which is located today in the Egyptian Museum. Carved from pink Aswan granite and showing Userkaf wearing a pharaonic headdress with an image of a cobra on his forehead, this colossal head is the largest surviving head statue dating from the Old Kingdom and the only colossal royal statue from this period other than the Great Sphinx of Giza. Many pieces of Userkaf's statues were made of diorite, slate, and granite, but no limestone statues have been found at the same site. On some pieces, Userkaf's cartouche and the name Horus appear.
            Userkaf's youthful features are also noted in most of his statues, as some scholars believe that these are good indicators of his age, as he may have ascended to the throne as a teenager and died in his early twenties.",
            character_id: character_19.id,
    )
    character_20 = Character.create(
        arabic_name: "ني أوسر رع",
        english_name: "Nyuserra",
        arabic_info: "نى اوسر رع (بالإنجليزية: Nyuserra) هو سادس ملك فرعوني في الأسرة المصرية الخامسة، ويسمى في اليونانية راثوريس. وقد تولى الحكم لمدة 25 عام، في الفترة من (2416 ق.م - 2392 ق.م). واسم ميلاده يعني الملك من قوة رع. والملك ني أوسر رع هو ابن للملك نفر إر كا رع (كاكاي) من زوجته الملكة خنت كاوس الثانية وأخيه الملك نفر اف رع.
        يعتقد بعض العلماء أنه حكم مصر لمدة 30 عام أو أكثر. وتشير آثاره التي بناها في منطقة أبو صير إلى نشاط كبير في إقامة البنايات، فمنها هرمه ومنطقته، وبنائه لمعبد الشمس، وتكملة مقبرة والده، ومقبرة أخيه ومقبرة أمه.
        قام بإنابة وزير Tjati لمتابعة مرافق الحياة في البلاد. كما أرسل بعثات حربية إلى وادي المغارة بسيناء وإلى النوبة لتأمين محاجر استخراج النحاس والذهب؛ وكانت له علاقات تجارية مع جبيل (في لبنان اليوم). عدل الطقوس الدينية وبصفة خاصة في الطقوس الجنائزية للملك بعد وفاته، واتبعت تلك الطقوس حتى عصر الدولة المصرية الوسطى.",
        english_info: "Nyuserra (in English: Nyuserra), is the sixth Pharaonic king in the Fifth Egyptian Dynasty, and is called Rathoris in Greek. He ruled for 25 years, from 2416 BC - 2392 BC. His birth name means king of the power of Ra. King Neuserre is the son of King Nefererkare (Kakai) from his wife, Queen Khentkaus II, and his brother, King Neferrere.
        Some scholars believe that he ruled Egypt for 30 years or more. The monuments he built in the Abu Sir area indicate great activity in erecting buildings, including his pyramid and its area, his construction of the Temple of the Sun, and the completion of his father’s tomb, his brother’s tomb, and his mother’s tomb.
        He appointed Minister Tjati to monitor the country's life facilities. He also sent military missions to Wadi al-Maghara in Sinai and to Nubia to secure quarries for extracting copper and gold. He had trade relations with Byblos (in Lebanon today). He modified the religious rituals, especially the funeral rituals of the king after his death, and these rituals were followed until the era of the Egyptian Middle Kingdom.",
        date_of_birth: "",
        date_of_death: "",
        sub_era_id: sub_era_2.id,
    )
    character_20.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f1/Niuserre_BrooklynMuseum.png"), filename: 'image.jpg', content_type: 'image/jpg')
    character_20.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f1/Niuserre_BrooklynMuseum.png"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"نظام الحكم",
            english_title:"His reign",
            arabic_content:"عمل ني-أوسر-رع على تركيز حكم البلاد وتوكيلها إلى 'وزير' يقوم بأعلى وظائف القصر ويرعاها. فجمع وظيفة 'رئيس غرفتي الثروة'، و 'رئيس الشونتين'، و'رئيس غرفتي حلي الملك' في يد وزير Tjati.
            بذلك تجمعت كل شئون البلاط الملكي في وظيفة واحدة. كما ظهرت في عهده أيضا وظيفتين جديدتين حملهما وزير يدعى 'كاي'، فكان هذا 'رئيسا للبيت العالي' بوظيفة قضائية، ثم رقي إلى مرتبة وزير بلقب 'رئيس 6 البيوت الكبيرة' وكبير القضاة على مصر. كما حمل 'كاي' أيضا لقب 'محافظ مصر العليا'.
            كذلك يذكر التاريخ تقليد 'من نفر' وبتاح شبسيس مقاليد الوزارة أثناء حكم ني-أوسر-رع. كما يشير بعض علماء الآثار أن الوزير 'سخم عنخ بتاح' كان أيضا أثناء حكم ني-أوسر-رع . وكان بتاح شبسيس قد وصل إلى أعلى المراتب في الدولة بزواجه من الأميرة 'غاميرر نبتي' ويدل على ذلك مقبرته التي بناها والتي تعتبر أكبر مقبرة خاصة من الدولة القديمة. ",
            english_content:"Ne-User-Ra worked to centralize the rule of the country and entrust it to a 'minister' who would carry out the highest functions of the palace and take care of it. He combined the functions of 'President of the Chambers of Wealth', 'President of the Shounen', and 'President of the Chambers of Royal Jewelry' in the hands of the Tjati Vizier.
            Thus, all the affairs of the royal court were gathered in one function. Two new positions also appeared during his reign, held by a minister called “Kay.” He was “President of the High House” with a judicial position, then he was promoted to the rank of minister with the title of “Head of the 6 Great Houses” and chief judge of Egypt. 'Kay' also held the title of 'Governor of Upper Egypt'.
            History also mentions the tradition of 'Mennefer' and Ptah-Shepesis holding the reins of the ministry during the rule of Ne-user-Ra. Some archaeologists also indicate that the minister 'Sekhemankhptah' was also during the rule of Neuser-Ra. Ptah Shepsis had reached the highest ranks in the state through his marriage to Princess 'Gamerer-Nebty', and this is evidenced by his tomb that he built, which is considered the largest private tomb of the Old Kingdom.",
            character_id: character_20.id,
    )
    CharacterSection.create(
            arabic_title:"العلاقات التجارية والحملات",
            english_title:"Business relationships and campaigns",
            arabic_content:"توجد في وادي المغارة بسيناء لوحتان منقوشتان في الصخور من عهد ني-أوسر-رع. اخذت أحدهما إلى المتحف المصري بالقاهرة. تدل اللوحتين على استغلال ني-أوسر-رع استخراج النحاس واحجار الفيروز الكريمة من منطقة هذا الوادي.
            نقوش من وادي المغارة بسيناء من عهد ني-أوسر-رع.
            وكانت للملك علاقات تجارية مع بلاد الشام، وتدل عليها تبادل التجارة مع جبيل على البحر الأبيض المتوسط، وتقع حاليا في لبنان، حيث عثر فيها على أحد تماثيل 'ني-أوسر-رع'، وكذلك من شقفة قارورة من مدينة 'ترافرتين' تحمل اسمه.
            ويدل على نشاطه في الجنوب في النوبة والعثور على ختم كان موجودا في قلعة بوهين عند الشلال الثاني على النيل. كما وجد جزء من لوحة حجرية نقش عليها اسم الملك ني-أوسر-رع وجدت في أحد محاجر الجنيس (نوع من أحجار فلدسبار).",
            english_content:"In Wadi al-Maghara in Sinai, there are two rock-cut stelae from the era of Neuser-Ra. I took one of them to the Egyptian Museum in Cairo. The two paintings indicate the exploitation of Ni-User-Ra by extracting copper and turquoise gems from the area of this valley.
            Inscriptions from Wadi al-Maghara in Sinai from the era of Neuser-Ra.
            The king had commercial relations with the Levant, as evidenced by the exchange of trade with Byblos on the Mediterranean Sea, currently located in Lebanon, where one of the statues of “Ni-user-Ra” was found, as well as a fragment of a bottle from the city of “travertine” bearing his name.
            Evidence of his activity in the south in Nubia is the finding of a seal that was present in Buhin Castle at the second cataract on the Nile. A part of a stone plaque inscribed with the name of King Neuser-Ra was also found in one of the gneiss quarries (a type of feldspar stone).",
            character_id: character_20.id,
    )
    CharacterSection.create(
            arabic_title:"أنشطته المعمارية",
            english_title:"Architectural activities",
            arabic_content:"قام ني أوسر رع ببناء منشآت عديدة في أبو صير فاقت ما بني قبل ذلك في تلك المنطقة. فبعد وفاة أبيه ثم أخيه بعد فترة حكم قصيرة، واجه ني أوسر رع عدة مشروعات بنائية لم تكتمل بعد، فأكملها. من ضمنها مقبرة 'نفر ير كا رع' و 'رع نفر إف'، ومقبر ة أمه 'خنتكاوس الثانية'. وقام ببناء هرمه مجاورا لهرم أبيه حيث لم تسمح تضاريس المنطقة بغير ذلك. واضطر لبناء مقابر زوجاته في جنوب أبي قير بالقرب من مقبرة أخيه ومقبرة أمه.
            كما قام ببناء معبد الشمس في منطقة أبو غراب في الجزى الشمالي من أبي صير.
            بعد وفاة ني أوسر رع فقدت منطقة أبي صير موقعها كمنطقة لمقابر المفراعنة. فكان هو آخر فرعون يبني مقبرته فيها. وبنى خليفته من-كا-حور مقبرته في سقارة. إلا أن الملك 'جد-كا-رع' قام ببناء مقابر عائلته في أبي صير.",
            english_content:"Niuserre built many facilities in Abusir that exceeded what had been built before in that region. After the death of his father and then his brother after a short reign, Neuser Ra faced several construction projects that had not yet been completed, so he completed them. Including the tomb of 'Neferirkare' and 'Ra'neferef', and the tomb of his mother 'Khentekaus II'. He built his pyramid adjacent to his father's pyramid, as the terrain of the area did not allow otherwise. He was forced to build graves for his wives in the south of Abu Qir, near his brother's cemetery and his mother's cemetery.
            He also built the Temple of the Sun in the Abu Ghurab area in the northern part of Abu Sir.
            After the death of Neuserre, the Abusir area lost its position as an area for the tombs of the Pharaohs. He was the last Pharaoh to build his tomb there. His successor, Men-Ka-Hur, built his tomb in Saqqara. However, King Djed-Ka-Ra built his family tombs in Abu Sir.",
            character_id: character_20.id,
    )
    CharacterSection.create(
            arabic_title:"هرم ني-أوسر-رع",
            english_title:"The Pyramid of Nyuserra",
            arabic_content:"هرم ني أوسر رع (في الهيروغليفية من ست ني أوسر رع، بمعنى البقاء في أماكن ني أوسر رع) هو هرم مصري تم تشييد مجمع للمصري للملك المصري ني أوسر رع من الأسرة الخامسة منتصف القرن الخامس والعشرين قبل الميلاد. خلال فترة حكمه، أكمل ني أوسر رع الآثار غير المكتملة لوالده، نفر إر كارع كاكاي، والدته، خنتكاوس الثانية، وشقيقه نفر ف رع، قبل أن يباشر العمل في مجمع الهرم الشخصي. اختار موقعًا في مقبرة أبو صير بين مجمعات نفر إر كارع وساحورع، مما أدى إلى تقييد التكاليف من حيث المساحة والتضاريس. العمل والمواد. كان ني أوسر رع آخر ملك دُفن في المقبرة، بينما اختار خلفاؤه أن يُدفنوا في مكان آخر. يشتمل نصبه التذكاري على هرم رئيسي ومعبد جنائزي ومعبد وادي على بحيرة أبو صير وجسر كان مخصصًا في الأصل لنصب نفرركاري وهرم عبادة.",
            english_content:"The Pyramid of Niuserre (in hieroglyphics from Set Niuserre, meaning staying in the places of Niuserre) is an Egyptian pyramid. A complex was built for the Egyptian king Niuserre of the Fifth Dynasty in the middle of the twenty-fifth century BC. During his reign, Neuserre completed the unfinished monuments of his father, Nefererkare Kakai, his mother, Khentakaus II, and his brother Neferrere, before beginning work on his personal pyramid complex. He chose a site in the necropolis of Abusir between the complexes of Neferirkare and Sahure, which limited costs in terms of space and terrain. Work and materials. Niuserre was the last king to be buried in the necropolis, while his successors chose to be buried elsewhere. His monument includes a main pyramid, a mortuary temple, a valley temple on Lake Abusir, a bridge originally intended for the Neferekare monument, and a cult pyramid.",
            character_id: character_20.id,
    )
    character_21 = Character.create(
        arabic_name: "تتي",
        english_name: "Teti",
        arabic_info: "الملك تتي هو أول فراعنة الاسرة السادسة، ويذكر مانيتون أن اصله من منف. انصرف تتي عن كهنة رع، واهتم بعباده بتاح المقدس في منف. ويبدو أنه تعرض في نهايه حياته لمؤامرة من قبل افراد البيت المالك أودت بحياته. خلفه في الحكم أوسر كا رع الذي لم يستمر في الحكم أكثر من أربع سنوات. كما أهملته النقوش القديمة فلم يخلف وراءه اثاراً.",
        english_info: "King Teti is the first pharaoh of the Sixth Dynasty, and Manetho mentions that his origin is from Memphis. Teti turned away from the priests of Ra, and focused on his worshipers, the sacred Ptah, in Memphis. It seems that at the end of his life, he was subjected to a conspiracy by members of the royal house that claimed his life. He was succeeded in power by Userkare, who did not continue to rule for more than four years. The ancient inscriptions also neglected it, leaving no traces behind it.",
        date_of_birth: "",
        date_of_death: "",
        sub_era_id: sub_era_2.id,
    )
    character_21.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/1/19/Statue_of_Teti_Quibell_Saqqara_1.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_21.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/1/19/Statue_of_Teti_Quibell_Saqqara_1.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"عائلته",
            english_title:"His family",
            arabic_content:"الفرعون تتي مؤسس الأسرة السادسة في مصر لم ينشأ من العائلة الملكية. فقد تولى الحكم نظرا لزواجه من الملكة إيبوت الأولى، ِإحدى بنات الفرعون أوناس. وكان أوناس أخر حكام الأسرة الخامسة.
            يعتقد ان تيتي كان إبنا ل 'شبس إبوبتاح' وامه 'سششت' وربما كان له أخ اسمه ميحو. وتزوج تتي من زوجتين بخلاف إيبوت الأولى، أحداهما 'خويت الثانية' والأخرى غير معروف اسمها بالضبط ومن المحتمل أنها كانت 'خنتكاوس الرابعة'.
            وأنجب تيتي من زوجته إيبوت الأولى ابنه بيبي الأول الذي اعتلي العرش فيما بعد. كما أنجب تتي تسع بنات لا تعرف أسماء امهاتهن بالضبط، وأشهرهن: 'سششت وعتت حتحور' (زوجة الوزير مريروكا) و 'إنتي'، و 'نبت أنوبخت سششت'.
            الاسم الحوري له يعني 'محقق السلام للقطرين' (الوجه البحري والوجه القبلي في مصر)، مما يشير إلى أنه قام بتقوية ترابط الدولة.",
            english_content:"Pharaoh Teti, founder of the Sixth Dynasty in Egypt, did not originate from the royal family. He assumed power due to his marriage to Queen Ibut I, one of the daughters of Pharaoh Unas. Unas was the last ruler of the Fifth Dynasty.
            It is believed that Titi was the son of 'Sheps-Ebuptah' and his mother 'Seshesht', and he may have had a brother named Mihu. Teti married two wives other than the first Ibut, one of whom was 'Khoit II' and the other whose exact name is unknown and it is possible that she was 'Khentkaus IV'.
            Titi and his first wife, Ebot, had a son, Pepi I, who later ascended the throne. Teti also gave birth to nine daughters whose mothers’ exact names are not known, the most famous of whom are: ‘Seshsht and Atat Hathor’ (wife of Minister Mereruka), ‘Enti’, and ‘Nebet Anubakht Sshsht’.
            His Hurrian name means 'bringer of peace to the two countries' (Uzera and Upper Egypt in Egypt), indicating that he strengthened the cohesion of the state.",
            character_id: character_21.id,
    )
    CharacterSection.create(
            arabic_title:"فترة حكمه",
            english_title:"His reign",
            arabic_content:"عدد السنوات التي حكمها تيتي ليس معروفا تماما. لا تذكر بردية تورينو التي كتبت في عهد الدولة الحديثة عدد السنوات التي حكمها. ولكن الكاهن والمؤرخ المصري مانيتون الذي عاش في القرن الثالث قبل الميلاد ينسب إليه فترة حكم 33 سنة. ولكن يختلف المؤرخون في تفسير المصادر المختلفة عن فترة حكم تتي، ومما هو مرجح انه كان فرعونا لمصر مدة بين 13 إلى 23 سنة.
            وقد عمل عدد كبير من الوزراء خلال حكم تيتي: 'كاجيمني' ومريروكا، وخنوم نتي، و: نفر سخ إم رع'، و 'نفر سخ إم بتاح'. و 'عنخ ما حور'، و 'خنتي كاي'.",
            english_content:"The number of years Titi ruled is not exactly known. The Turin Papyrus, which was written during the New Kingdom, does not mention the number of years he ruled. But the Egyptian priest and historian Manetho, who lived in the third century BC, attributes to him a reign of 33 years. However, historians differ in their interpretation of the various sources regarding the period of Tetti’s rule, and it is likely that he was Pharaoh of Egypt for a period between 13 and 23 years.
            A large number of ministers served during the rule of Teti: 'Kagemeni', Merruca, Khnum-Neti, 'Nefersekhemre', and 'Nefersekhemptah'. And 'ankh ma hor', and 'khenti kay'.",
            character_id: character_21.id,
    )
    CharacterSection.create(
            arabic_title:"هرم تتي",
            english_title:"The Pyramid of Teti",
            arabic_content:"بنى تيتي لنفسه هرما في سقارة. وتبلغ مقاييس هرم تتي 78,8 متر × 78,8 متر وكان ارتفاعه 52 مترا. وهو الآن أصبح مهدّما مثل ما يجاوره من أهرامات الملكات. عثر في أحد أهرامات الملكات على مومياء الملكة إيبوت الأولى في تابوت من الخشب. جدران الغرف الداخلية لهرم تتي مغطاة بأحجار رملية وأحجار جرانيت، وعليها نصوص من نصوص الأهرام، التي تصف رحلة الفرعون المتوفي في العالم الآخر.",
            english_content:"Titi built himself a pyramid at Saqqara. The dimensions of the Pyramid of Teti are 78.8 meters x 78.8 meters and its height was 52 meters. It is now in ruins, like the Queens Pyramids next to it. In one of the queens' pyramids, the mummy of Queen Ibut I was found in a wooden coffin. The walls of the inner chambers of the Pyramid of Teti are covered with sandstones and granite stones, and on them are texts from the Pyramid Texts, which describe the journey of the deceased pharaoh in the other world.",
            character_id: character_21.id,
    )
    CharacterSection.create(
            arabic_title:"تماثيله",
            english_title:"His statues",
            arabic_content:"التمثال المجسم الوحيد المعروف لتتي أكتشفه 'جيمس كيبل' أثناء حفرياته في عام 1907/1906 في سقارة، في منطقة تقع شرقا من هرمه، حيث وجد في مقبرة تحت الأرض. يوجد هذا التمثال الآن في المتحف المصري بالقاهرة وأعطي له الرقم (Inv.-Nr. JE 39103). التمثال مشكل من الجرانيت الأحمر ويبلغ طول جزئه السليم 74 سنتيمتر. ولم يعثر على الجزء السفلي من هذا التمثال من تحت الركبة. ويستند تمثال الملك على عمود من جهة ظهره حيث يظهر الملك متقدما برجله اليسرى. وذراعاه ممتدان بجانب جسمه ويداه قابضتان. يرتدي الملك ثوبا قصيرا ويعلو رأسه التاج الأبيض المميز لصعيد مصر. العينان والحاجبان مشكلان بعناية، ويبدو ان التمثال كان دون ذقن.
            لا يوجد على التمثال اسم تتي (حيث كان اسم الملك يكتب عادة على قاعدة التمثال). واعتبره عالم الآثار 'كيبل' أنه قد يكون تمثالا ل مري كا رع من الفترة الانتقالية الأولى. وانتساب التمثال إلى الفرعون تتي كان من الباحث 'وليام سميث' على أساس عدة شواهد: أولا، مكان وجود التمثال الذي عثر عليه بالقرب من هرم تيتي. ومن جهة أخرى فإن درجة اتقان صناعة التمثال كانت أعلى من جودة صناعة التماثيل خلال الفترة الانتقالية الأولى.",
            english_content:"The only known anthropomorphic statue of Teti was discovered by James Keppel during his excavations in 1906/1907 in Saqqara, in an area east of his pyramid, where it was found in an underground tomb. This statue is now in the Egyptian Museum in Cairo and was given the number (Inv.-Nr. JE 39103). The statue is made of red granite, and its intact part is 74 centimeters long. The lower part of this statue below the knee was not found. The king's statue rests on a column on its back, where the king appears advancing with his left leg. His arms are extended beside his body and his hands are clenched. The king wears a short dress and has the distinctive white crown of Upper Egypt on his head. The eyes and eyebrows are carefully shaped, and it appears that the statue was without a chin.
            The statue does not have Titi's name on it (as the king's name was usually written on the base of the statue). The archaeologist 'Keppel' considered it to be a statue of Merikare from the First Intermediate Period. The statue was attributed to Pharaoh Teti by researcher William Smith on the basis of several pieces of evidence: First, the location of the statue that was found near the pyramid of Teti. On the other hand, the degree of mastery of statue making was higher than the quality of statue making during the First Intermediate Period.",
            character_id: character_21.id,
    )
    CharacterSection.create(
            arabic_title:"موته",
            english_title:"His death",
            arabic_content:"طبقا لما جاء عن الكاهن والمؤرخ المصري مانيتو من القرن الثالث قبل الميلاد أغتيل تيتي من حراسه خهلال تمرد عليه. وربما كان ذلك سببا في اعتلاء أوسر كا رع الذي كان في مرحلة ما وزيرا (تياتي) للفرعون تتي. ولم يعتلي بيبي الأول ابن تتي عرش مصر إلا بعد وفاة أوسر كا رع.
            ,ظهرت قصة خلال دولة مصرية وسطى ودولة مصرية حديثة غير كاملة من 'نفر كا رع' و 'سازينت' أن روح الملك تتي ظهرت له - وهو قائد الجيش سازينت - في جبانة منف. ولكن نص تلك القصة غير مكتمل تماما، ولا نعرف عنها أي تفاصيل أخرى.
            مع بدء أسرة مصرية ثامنة عشر كتبت بردية إبيرس الطبية. وتلك البردية تذكر في القسم 468 (العمود 66، سطر 15 - 18) وصفة طبية لعقار يطوّل الشعر - وان صاحبة العقار هي 'سيشيسخت' أم الفرعون تتي (مذكورة في البردية باسم سيش).",
            english_content:"According to what was reported by the Egyptian priest and historian Manetho from the third century BC, Titi was assassinated by his guards during a rebellion against him. This may have been the reason for the accession of Userkare, who was at some point a minister (Tiati) of Pharaoh Teti. Pepi I, Ibn Titi, did not ascend to the throne of Egypt until after the death of Userkare.
            A story emerged during the Middle Egyptian state and the incomplete modern Egyptian state from 'Neferkare' and 'Sazint' that the spirit of King Teti appeared to him - the army commander Sazint - in the necropolis of Memphis. But the text of this story is completely incomplete, and we do not know any other details about it.
            With the beginning of the Eighteenth Egyptian Dynasty, the Ebers Medical Papyrus was written. That papyrus mentions in Section 468 (column 66, lines 15-18) a prescription for a drug that lengthens hair - and that the owner of the drug is 'Sesheshekhet', the mother of Pharaoh Teti (mentioned in the papyrus as Seshe).",
            character_id: character_21.id,
    )
    character_22 = Character.create(
        arabic_name: "بيبي الثاني",
        english_name: "Pepi II",
        arabic_info: "پيپي الثاني نفر كا رع (2278 قبل الميلاد سادت جيم - ج. 2184 قبل الميلاد) كان فرعون من السلاله السادسة في المملكة المصرية القديمة. بعد وفاة مري أن رع تولي الحكم أخوه الملك ببي الثاني. الذي ذكر عنه مانيتون أنه وصل الي العرش وعمره 6 سنوات بعد وفاة والده وانه حكم 94 عاما وأن امه كانت الوصية عليه كما أن خاله الأمير 'جاو' ووزير في نفس الوقت صاحب اليد العليا في تصريف أمور البلاد.
        عموما يعد حكم پيپي الثاني أطول فترة حكم لعاهل في التاريخ 94 (2278—2184)، على الرغم من أن هذا الرقم متنازع عليه من قبل بعض علماء المصريات الذين يؤيدون عهد أقصر مدة 64 عاما.",
        english_info: "Pepi II Neferkare (c. 2278 BC - c. 2184 BC) was a pharaoh of the Sixth Dynasty of the Old Kingdom of Egypt. After the death of Meri Ra, his brother, King Pepi II, assumed power. What Maniton mentioned about him is that he reached the throne at the age of 6 years after the death of his father, and that he ruled for 94 years, and that his mother was his guardian, and that his uncle, Prince 'Gao', was a minister at the same time and had the upper hand in running the affairs of the country.
        Overall the reign of Pepi II is the longest reign of a monarch in history (94 years 2278—2184), although this number is disputed by some Egyptologists who favor a shorter reign of 64 years.",
        date_of_birth: "2278",
        date_of_death: "2247",
        sub_era_id: sub_era_2.id,
    )
    character_22.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/6/64/AnkhnesmeryreII-and-Son-PepiII-SideView_BrooklynMuseum.png"), filename: 'image.jpg', content_type: 'image/jpg')
    character_22.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/6/64/AnkhnesmeryreII-and-Son-PepiII-SideView_BrooklynMuseum.png"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"الحملات",
            english_title:"Campaigns",
            arabic_content:"ارتبط اسم هذا الملك بالحملات التي كان يرسلها الي الجنوب بقيادة حكام الفنتين. اشهرهم 'حرخوف' و'بيبي-نخت' و'ميخو' كانت مصر في هذه الفترة في حاجة الي الملك قوي يكون له من النفوذ والسلطان مايكبح بهما جماح حكام الأقاليم الذين ضعف ولاؤهم للحكومة المركزية وأصبح ولأهم لهم ألا الحصول علي مزيد من السلطة والمال دون اهتمام بأحوال رعيتهم ولكن الملك بيبي لم يكن قويا وبالتالي لم يكن قادراً علي تصريف الامور واخذ حكام الأقاليم يسلبونه سلطاته ماأمكنهم ذلك. في ظل هذه الظروف عمت الفوضي أرجاء البلاد ولم يكن هناك من ضحية سوي العامل والفلاح الذين ذقوا الأمرين وما أن واتتهم الفرصة للتعبير عما تجيش به صدروهم حتي قاموا بثورة اجتماعية عارمة رافضين كل مافي المجتمع من ظلم وفساد.",
            english_content:"The name of this king was associated with the campaigns that he sent to the south under the leadership of the rulers of Elephantine. The most famous of them are 'Harkhuf', 'Pepi-Nakht' and 'Mikho'. Egypt in this period was in need of a strong king who would have influence and authority to restrain the rulers of the regions whose loyalty to the central government had weakened and it became more important for them not to obtain more power and money without They cared about the conditions of their subjects, but King Bibi was not strong, and therefore he was not able to manage matters, and the governors of the regions began to rob him of his powers as much as they could. Under these circumstances, chaos spread throughout the country, and there was no victim except the worker and the farmer who experienced both things. As soon as they were given the opportunity to express what was burning in their hearts, they launched a massive social revolution, rejecting all the injustice and corruption in society.",
            character_id: character_22.id,
    )
    CharacterSection.create(
            arabic_title:"نهاية الاسرة السادسة",
            english_title:"The end of the Sixth Dynasty",
            arabic_content:"انتهت الاسرة السادسة بملكة تدعي «نيت - أقرت» أو «نيتوكريس» التي ذكر مانيتون انها حكمت عامين.وحكي حول هذه الملكة العديد من الأساطير التي ذكرت أنها أجمل نساء عصرها وانها بانية الهرم الثالث وذكر هيرودوت بأنها حكمت البلاد وانها انتحرت بعد انتقاهما من الذين قتلوا اخاها ليضعوها مكانه وبنهاية حكم هذه الملكة انتهت الأسرة السادسة وانتهي معاها عصر من ازهي عصور مصر القديمة ألا وهو عصر الدولة القديمة وقبل أن ننتقل الي فترة زمنية جديدة نود ان نشير الي بعض المظاهر البارزة المرتبطة بهذه الفترة وهي اللامركزية وسلطات حكام الأقاليم وعلاقات مصر بالجنوب ثم الثورة الاجتماعية",
            english_content:"The Sixth Dynasty ended with a queen called 'Nite-Acret' or 'Nitocris', which Manetho mentioned ruled for two years. Many legends were told about this queen that mentioned that she was the most beautiful woman of her time and that she was the builder of the third pyramid. Herodotus mentioned that she ruled the country and that she committed suicide after selecting them from those who were killed. Her brother to put her in his place, and with the end of the rule of this queen, the Sixth Dynasty ended, and with it one of the most prosperous eras of ancient Egypt ended, which is the era of the Old Kingdom. Before we move to a new period of time, we would like to point out some of the prominent aspects associated with this period, which are decentralization, the powers of the regional rulers, Egypt’s relations with the south, and then the revolution. Social",
            character_id: character_22.id,
    )
    character_23 = Character.create(
        arabic_name: "نفر كا رع الاول",
        english_name: "Neferkare I",
        arabic_info: "الملك المصرى 'نفر كا رع' أى جميل قرين رع وهو آخر ملوك الأسرة السادسه وآخر ملوك الدولة القديمة (بناة الأهرامات) وهو أول ملك تقوم فى عهده أول ثورة مصرية فى التاريخ.",
        english_info: "The Egyptian king 'Neferkare', meaning Beautiful, the consort of Ra, is the last king of the Sixth Dynasty and the last king of the Old Kingdom (builders of the pyramids), and he is the first king during whose reign the first Egyptian revolution in history took place.",
        date_of_birth: "2181",
        date_of_death: "2055",
        sub_era_id: sub_era_3.id,
    )
    character_23.thumb_image.attach(io: URI.open("https://www.albawabhnews.com/UploadCache/libfiles/155/4/600x338o/542.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_23.cover_image.attach(io: URI.open("https://www.albawabhnews.com/UploadCache/libfiles/155/4/600x338o/542.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"حكمه لمصر",
            english_title:"His reign over Egypt",
            arabic_content:"يقول الباحث الأثرى الطيب عبد الله الملك نفر كا رع حكم مصر لفترة تقارب 94 عاما وهى أطول فترة حكم فى التاريخ المصرى وغالبا حكم فى سنه السادسه من عمره خلفا لوالده الملك مرى-إن-رع الأول وارتبط ايضا اسمه بالحملات التى كان يقودها بارونات جزيرة الفنتين الى افريقيا الأستوائيه
            في أواخر عهد الملك حوالي عام 2280ق.م دب الوهن والضعف في أوصال المملكة مما ادى الى انهياره حيث تقدم به السن وأصبح لا يقوى على حكم البلاد كما قويت حكام الأقاليم وزادت رغبتهم في الوصول إلى كرسي الحكم وزادت الفقر وأصبح الناس في كرب .",
            english_content:"The good archaeological researcher Abdullah says King Neferkare ruled Egypt for a period of approximately 94 years, which is the longest period of rule in Egyptian history. He probably ruled in the sixth year of his life, succeeding his father, King Mer-en-Ra I. His name was also associated with the campaigns that were led by the barons of Elephantine Island to Equatorial Africa
            At the end of the king’s reign, around the year 2280 BC, weakness and weakness spread throughout the kingdom, which led to its collapse, as he grew old and became unable to rule the country. The governors of the regions also became stronger, their desire to reach the throne increased, poverty increased, and the people became distressed.",
            character_id: character_23.id,
    )
    CharacterSection.create(
            arabic_title:"أول ثورة اجتماعية في التاريخ فى عهده",
            english_title:"The first social revolution in history during his reign",
            arabic_content:"وعادت هجمات بدو الصحراء من الشرق والغرب فقامت في البلاد ثورة اجتماعيه ضخمة هى الأولى في التاريخ حوالي عام 2280ق.م حتى أن بعضهم يطلق عليها (الثورة البلشفية الأولى) خرجت الجموع تنادي بعودة العدل والنظام والمساواة وانهارات السلطة المركزية وأصبحت الحدود مفتوحة وتوافدت جماعات كبيرة من بدو الصحراء على الحدود الشرقية كانوا ينهبون الناس ويذيعون الذعر في النفوس ورجال الأمن فقدوا السيطرة على حفظ الامن ولم يسلم منها مدفن أو معبد أو ديوان حكومي وامتد غضب الشعب إلى بيوت الأثرياء فنهبوها وشردوهم”هكذا كان الوضع في مصر حاله من الفوضى والضعف والتحلل وبرزت في تلك الفترة عدد من البيوت القوية الحاكمة في صعيد مصر ودلتاها استأثرت كل منها بإقليم تحكمه، وكانت البلاد مفككة العرى، خاصة فى الوجه البحري التي أشاعت الذعر والخوف بين الأهالي أما في مصر الوسطى فكان الحال أفضل حيث استقل كل حاكم بإقليم وفرض عليه سلطانه.
            وقام عدد من كبار الموظفين وحكام الأقاليم المخلصين تشكيل هيئة من 70 شخص لتحكم البلاد ولكنها لم تلبث سوى 70 يوما وانهارت الدولة المركزية وقسمت البلاد واندلعت الحرب الأهلية بين الأقاليم بغية السيطرة على أراضي الأقاليم المجاورة.",
            english_content:"Desert Bedouin attacks returned from the east and west, and a huge social revolution took place in the country, the first in history, around the year 2280 BC. Some even called it (the first Bolshevik revolution). Crowds came out calling for the return of justice, order, and equality. Central authority collapsed, the borders became open, and large groups of Bedouins arrived. In the desert on the eastern border, they were plundering people and spreading fear in the souls. The security men lost control over maintaining security, and no cemetery, temple, or government office was spared. The anger of the people extended to the homes of the wealthy, so they looted them and displaced them. Thus, the situation in Egypt was a state of chaos, weakness, and decay, and a number of people emerged during that period. Of the powerful ruling houses in Upper Egypt and its delta, each of them controlled a region under its control, and the country was disjointed, especially in Lower Egypt, which spread panic and fear among the people. However, in Middle Egypt, the situation was better, as each ruler became independent of a region and imposed his authority on it.
            A number of senior officials and loyal governors of the regions formed a body of 70 people to govern the country, but within only 70 days the central state collapsed, the country was divided, and civil war broke out between the regions in order to control the lands of the neighboring regions.",
            character_id: character_23.id,
    )
    CharacterSection.create(
            arabic_title:"الأمر ببناء معبد لشهداء الثورة",
            english_title:"Order to build a temple for the martyrs of the revolution",
            arabic_content:"وعثر أثناء الحفريات بعين أصيل بقرية بلاط (واحة الداخلة) حائط من الطوب اللبن المخلوط على حجر ترجم محتواه 'بانتالاتشى' وترجمته رساله من الفرعون الى الأدميرال حاكم الواحه وكبير الكهنه، أمرنا حضرتنا أن يتم بناء معبد للطقوس الجنائزية لحكام الواحة الذين ماتوا فى الثورة وقد عهدت اليكم من خلال السلطات المخولة من الفرعون المنسق الأكبر للطقوس الجنائزيه ببناء هذا المعبد وعلى حاكم الواحه أن يعد العده لإتمام هذا البناء الذى سيكون مخصصا لأجداده حكام الواحه ايدى دونى وابنه ديكرو وابنه خينتيكا.",
            english_content:"During excavations in Ain Asil in the village of Balat (Dakhla Oasis), a wall of mud bricks mixed on a stone was found, the contents of which were translated as 'Pantalachi' and translated as a letter from the pharaoh to the admiral, the ruler of the oasis and the chief priest. Our Holiness ordered that a temple be built for the funerary rituals of the rulers of the oasis who died in the revolution, and I have known Through the authorities delegated by the Pharaoh, you are the Grand Coordinator of the funerary rituals to build this temple. The ruler of the oasis must prepare to complete this building, which will be dedicated to his grandfathers, the rulers of the oasis, Eddie Doni, his son Dekru, and his son Khintika.",
            character_id: character_23.id,
    )



#! Create Evetns
    event_1 = Event.create(
        type: "War",
        arabic_title: "توحيد مصر العليا والسفلى",
        english_title: "Unification of Upper and Lower Egypt",
        start_date: "3150",
        end_date: "3150",
        arabic_info:"تم توحيد مصر العليا والسفلى من قبل الملك مينا، وهو أول فرعون في الأسرة الأولى، وقد تم توحيد البلاد بعد حرب طويلة بين البلدين.",
        english_info:"Upper and Lower Egypt were unified by King Menes, the first pharaoh of the First Dynasty, and the country was unified after a long war between the two countries.",
        character_id: character_1.id,
        sub_era: sub_era_1
    )
    event_1.cover_image.attach(io: URI.open("https://www.abou-alhool.com/ima/32899_1.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
            arabic_title:"المرحلة الاولى",
            english_title:"First stage",
            arabic_content:"في البداية كانت مصر عبارة عن اقاليم لكل منها حكومتها ولكل اقليم مدينة توجد فيها مركز الحكم والرمز المقدس للمدينة ، وكان يحكم كل اقليم اسرة قوية ، كانت هذه الاسر القوية تؤسس تكتلات اشبه بالاتحاد بين كياناتها ، وكان يتم ذلك بأحد أمرين إما بالمصاهرات او باستخدام القوة، وكان يتم ذلك في الدلتا والصعيد على السواء.",
            english_content:"At first, Egypt was divided into provinces, each of which had its own government, and each province had a city where the center of government and the sacred symbol of the city were located. Each province was ruled by a strong family. These strong families established alliances similar to a union between their entities, and this was done by one of two things, either by marriage or by using force, and this was done in the Delta and the Upper Egypt alike.",
            event_id: event_1.id,
    )
    EventSection.create(
            arabic_title:"المرحلة الثانية",
            english_title:"Second stage",
            arabic_content:"كان توحيدالشمال (الدلتا) تحت حكم مملكتين،الأولى وعاصمتها مدينة (عنجتي) قرب سمنود الحالية شرق الدلتا ، والثانية كانت عاصمتها (دمي-إن-حور) دمنهورالحالية غرب الدلتا، اجتمع شمل الصعيد تحت زعامة مدينة (نوبت) طوخ الحالية واتخذوا من (ست) شعاراً دينياً لهم .",
            english_content:"The unification of the north (the Delta) was under the rule of two kingdoms, the first with its capital city (Anjati) near the current Samannoud east of the Delta, and the second with its capital (Demi-en-Hor) in the current Damanhur west of the Delta. The Upper Egypt was united under the leadership of the city of (Nubt) Tukh, and they took (Set) as a religious symbol for them.",
            event_id: event_1.id,
    )
    EventSection.create(
            arabic_title:"المرحلة الثالثة",
            english_title:"Third stage",
            arabic_content:"وكانت اتحاد مملكتي الدلتا في مملكة واحدة عاصمتها (صاو) صالحجرالآن بمركز بسيون بمحافظة الغربية واتخذت من النحلة (بيت) شعارلها وتوجوا بتاج احمر وابيض وازرق، وكانت اتحاد مملكتي الصعيد في مملكة واحدة عاصمتها (نوبت) العربية الحالية واتخذوا من (نت) شعاراً دينياً لهم وتوجوا بتاج احمر وابيض وازرق، وفي النهاية توحدت الدلتا والصعيد تحت حكم ملك واحد وكانت العاصمة في مدينة (منف) بني سويف وكانت العاصمة الدينية في مدينة (نت) العربية والعاصمة الاقتصادية في مدينة (ممفيس).",
            english_content:"The union of the two kingdoms of the Delta into one kingdom with its capital (Saw) Salhagar now in the center of Basyoun in the Gharbia Governorate, and they took the bee (Bayt) as their symbol and were crowned with a red, white, and blue crown. The union of the two kingdoms of the Upper Egypt into one kingdom with its capital (Nubt) Al-Arabia now, and they took (Net) as a religious symbol for them and were crowned with a red, white, and blue crown. In the end, the Delta and the Upper Egypt united under the rule of one king, and the capital was in the city of (Menf) Beni Suef, and the religious capital was in the city of (Net) Al-Arabia, and the economic capital was in the city of (Memphis).",
            event_id: event_1.id,
    )
    EventSection.create(
        arabic_title:"المرحلة الرابعة",
        english_title:"Fourth stage",
        arabic_content:"انتقلت عاصمة مملكة الدلتا لأسباب غير معروفة من مدينة (ساو) إلى مدينة (عنجتي) فيشرق الدلتا والتي تبدل اسمها إلى (جدو) واتخذت من (أوزير) شعارادينياً لها فتغيراسمها إلى (بر-أوزير) وهى بلدة ابوصيربناغر بسمنود.",
        english_content:"The capital of the Delta kingdom moved for unknown reasons from the city of (Saw) to the city of (Anjati) in the east of the Delta, which changed its name to (Jedu) and took (Ozir) as its religious symbol, so its name changed to (Bar-Ozir), which is the town of Abu Sir Bnagar in Samannoud.",
        event_id: event_1.id,
    )
    EventSection.create(
        arabic_title:"المرحلة الخامسة",
        english_title:"Fifth stage",
        arabic_content:"كان الشمال سباق بتوحيد شطري مصر حيث اكتملت وحدة الدلتا والصعيد تحت زعامة (أون) لتوحيد مصر.",
        english_content:"The north was ahead in unifying the two halves of Egypt, as the unity of the Delta and the Upper Egypt was completed under the leadership of (On) to unify Egypt.",
        event_id: event_1.id,
    )
    EventSection.create(
        arabic_title:"المرحلة السادسة",
        english_title:"Sixth stage",
        arabic_content:"نجد ان مصر قد انفرط عقد وحدتها فحملت مدينة (ساو) على عاتقها توحيد الدلتا والصعيد تحت حكومة واحدة ولكنها لم تستمر طويلا ، حيث قام الصعيد بثورة تحت لواء (ست) ضد حكام الدلتا واستطاعواهزيمة ملوك الشمال وانفصال مملكة الجنوب مرة أخرى فعادت البلاد لسيرتها الأولى.",
        english_content:"We find that Egypt had lost its unity, so the city of (Saw) took it upon itself to unify the Delta and the Upper Egypt under one government, but it did not last long, as the Upper Egypt revolted under the banner of (Set) against the rulers of the Delta and they were able to defeat the kings of the north and the southern kingdom separated again, so the country returned to its original course.",
        event_id: event_1.id,
    )
    EventSection.create(
        arabic_title:"المرحلة السابعة",
        english_title:"Seventh stage",
        arabic_content:"انقسمت البلاد مرة اخرى لمملكتين مرة اخرى وسميت المملكتين باسم (أتباع حور) كانت عاصمة الجنوب هي (نخن) او قرية الكاب الحالية بمركز ادفو ، اتخذت مملكة الجنوب رمز نبات البوص (سوت) واخذوا يلقبون ملوكهم بلقب (ني-سوت) او المنتسب الى نبات البوص وارتدوا التاج الابيض ، وكان شعار المملكة زهرة اللوتس ورمزها الديني الرخمة (نخبت) ، بينما عاصمة الشمال مدينة (بي) تل ابط و الحالية بمركز دسوق بمحافظة كفر الشيخ ، واتخذت مملكة الشمال من النحلة (بيت) رمز لهم ولقب ملوكها بلقب (بيت-ي) او المنتسب للنحلة وارتدوا التاج الاحمر ، وكان لهم عاصمة دينية تدعى (دب) واصبحت الكوبرا (وادجيت) هى رمزهم الديني ، وشعار المملكة هو نبات البردي",
        english_content:"The country was divided again into two kingdoms again and the two kingdoms were named (Followers of Horus). The capital of the south was (Nekhen) or the current village of Al-Kab in the center of Edfu, and the southern kingdom took the plant of the papyrus (Soot) as a symbol and their kings were called (Ni-Soot) or affiliated with the plant of the papyrus and they wore the white crown. The symbol of the kingdom was the lotus flower and its religious symbol was the reed (Nekhbet), while the capital of the north was the city of (B) Tal Abt and the current center of Desouk in Kafr El-Sheikh Governorate, and the northern kingdom took the bee (Bayt) as their symbol and their kings were called (Bayt-Y) or affiliated with the bee and they wore the red crown. They had a religious capital called (Dab) and the cobra (Wadjet) became their religious symbol, and the symbol of the kingdom was the papyrus plant.",
        event_id: event_1.id,
    )
    EventSection.create(
        arabic_title:"المرحلة الثامنة",
        english_title:"Eighth stage",
        arabic_content:"يعتقد أن أحد ملوك الجنوب والمرجح انه الملك المدعو بـ (العقرب) تمكن من توحيد مصرولكن لسبب ما انقسمت البلاد مرة أخرى",
        english_content:"It is believed that one of the kings of the south, and it is likely that the king called (Scorpion), was able to unify Egypt, but for some reason the country was divided again.",
        event_id: event_1.id,
    )
    EventSection.create(
        arabic_title:"المرحلة التاسعة",
        english_title:"Ninth stage",
        arabic_content:"كانت مصر على موعد مع الملك (نعرمر) والذي تمكن من إتمامالوحدة المصرية وتأسيس أول دولة في التاريخ ، ولكي يحافظ على الوحده من الانفراط كالمراحل السابقة قرر بناء عاصمة جديدة تتوسط الشمال والجنوب عند رأس الدلتا ، وأطلق عليها (إنب-حج) الجدارالأبيض والتي أصبحت (من-نفر) أو منف وممفيس وإنشاء لها جبانه ضخمة في سقارة والجيزة ،والتي ضمت رفات اعظم ملوك واشهر الحكماء من انبياء مصر القديمة ، ظلت منف مركز اداري هام حتى هجرت في حوالي عام ٦٤١م ، وبنيت من احجارها مدينه الفسطاط اول عاصمة عربية في مصر.",
        english_content:"Egypt had an appointment with King Narmer, who was able to complete Egyptian unity and establish the first state in history. In order to preserve unity from disintegrating like previous stages, he decided to build a new capital in the middle of the north and south at the head of the delta, and he called it (Enb-Haj) the White Wall, which became ( From Nefer) or Memphis and Memphis, and the construction of huge cemeteries in Saqqara and Giza, which included the remains of the greatest kings and the most famous sages among the prophets of ancient Egypt. Memphis remained an important administrative center until it was abandoned in about the year 641 AD, and the city of Fustat, the first Arab capital in Egypt, was built from its stones.",
        event_id: event_1.id,
    )

    event_2 = Event.create(
        type: "War",
        arabic_title: "بناء هرم زوسر",
        english_title: "Building the Pyramid of Djoser",
        start_date: "2667",
        end_date: "2648",
        arabic_info:"هرم زوسر أو هرم سقارة أو الهرم المدرج  هو معلم آثري بجبانة سقارة شمال غرب مدينة ممفيس القديمة في مصر. بُني خلال القرن 27 ق.م لدفن الفرعون زوسر؛ بناه له وزيره إمحوتب. وكان المهندس والطبيب أمحتب هو المهندس الأساسي للمجموعة الجنائزية الواسعة في فناء الهرم وما يحيطه من هياكل الاحتفالية.

        يتكون أول هرم مصري من ست مصاطب بُنيت فوق بعضها البعض، شيء يمثل تطوراً هائلاً في تصميم القبور في ذلك العهد الذي كان يكتفي بمصطبة واحدة. يبلغ ارتفاع هرم زوسر المدرج 62 متر (203 قدم) ، مع وجود قاعدة بمساحة 109 م × 125 م (358 قدم × 410 قدم)، وكان مُغطى بالحجر الجيرى الأبيض المصقول. يُعتبر الهرم المدرج أول بنية حجرية وقتها، على الرغم من أن الحوش المعروفة باسم جسر المدير يبدو أنه سبق بناء الهرم.
        
        تأثر الهرم بزلزال وقع عام 1992 وأثر على بنية الهرم وأدى إلى سقوط أجزاء من مجموعة الجنائزية وكان اقدم هرم في التاريخ.",
        english_info:"The Pyramid of Djoser, the Saqqara Pyramid, or the Step Pyramid is an archaeological landmark in the Saqqara Necropolis, northwest of the ancient city of Memphis in Egypt. It was built during the 27th century BC to bury Pharaoh Djoser. It was built for him by his minister Imhotep. The engineer and physician Imhotep was the primary architect of the vast funerary group in the courtyard of the pyramid and the ceremonial structures surrounding it.

        The first Egyptian pyramid consisted of six mastabas built on top of each other, something that represents a huge development in the design of tombs in that era, which was sufficient for one mastaba. The Step Pyramid of Djoser was 62 meters (203 ft) high, with a base measuring 109 m × 125 m (358 ft × 410 ft), and was faced with polished white limestone. The Step Pyramid is considered the first stone structure of its time, although the courtyard known as Jisr al-Mudair appears to have preceded the construction of the pyramid.
        
        The pyramid was affected by an earthquake that occurred in 1992, which affected the structure of the pyramid and led to the fall of parts of the funerary group. It was the oldest pyramid in history.",
        character_id: character_12.id,
        sub_era: sub_era_2
    )
    event_2.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/0/09/Saqqara_pyramid.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"استكشافه العلمي",
        english_title:"Scientific exploration",
        arabic_content:"اكتشف مجمع هرم سقارة لأول مرة في عام 1821 حيث قام القنصل العام الألماني هينريش فون ميوتولي' وأيضا المهندس الإيطالي 'غيرولانو سيجاتو' بفحصه، واكتشفا مدخله. وعثرا في ممراته الداخلية على بقايا مومياء من جمجمة مغطاة بالذهب وكعبي قدمين مغطيين أيضا بالذهب. واعتقد 'فون مينوتولي' أنها تنتمي إلى مومياء زوسر. وحدث أن 'فون مينوتولي' حصل بتفويض من القيصر الألماني وموافقة من محمد علي باشا حاكم مصر في ذلك الوقت على تصريح بأخذ تلك الآثار مع مجموعة آثار أخرى إلى ألمانيا. ولكن السفينة وتسمى سفينة جوتفريد غرقت بسبب إعصار شديد بالقرب من ميناء هامبورغ في ألمانيا، وضاعت تقريبا كل ما كان عليها من آثار (أنظر سفينة جوتفريد). وتبين فيما بعد أن ما وجده 'فون مينوتولي في ممرات الهرم المدرج لم يكن إلا لمومياء أخرى وضعت في المقبرة في وقت لاحق بالعهد القديم.

        وفي عام 1837 عثر الباحث جون بيرينغ على أثار مومياوات أخرى في الممرات، واكتشف أيضا حجرات وأبوهة تحت الهرم.
        
        ثم قام 'سيسيل فيرث' في عام 1926 باستكشافات مستفيضة، إلا أنه توفي قبل الانتهاء منها. فتولى 'جيمس كيبل' رعاية الحفريات، لكن توفي أيضا في عام 1935 . وواصل 'جين لاور' الذي كان يعمل تحت إدارة كيبل الاشراف على عمليات الحفريات، وقام بقياس الحجرات تحت الأرض والممرات المؤدية إليها. وفي عام 1934 كان قد عثر في حجرة المقبرة بقايا مومياء وأخذت إلى جامعة القاهرة بعد فحص ابتدائي وحفظت في الجامعة حتى عام 1988 . اعتقد 'لاور' انه قد عثر على مومياء زوسر. ولكن بالفحص الدقيق الذي تم بعد ذلك تبين أنها من عدة موميات لأناس آخرين. وعين تاريخ تلك البقايا بواسطة طريقة الكربون-14 (تأريخ بالكربون المشع) واتضح انها لأناس من عهد البطالمة (أي أنها ليست من عهد زوسر نحو 2650 قبل الميلاد وإنما منذ نحو 200 سنة فقط قبل الميلاد).
        
        واستمر لاور مكرساً حياته في استكشاف هرم زوسر والمدينة الجنائزية في سقارة حتى نهاية عمره في عام 2001 . وبمعاونة لاور فقد تمكن من استعادة تشكيل بعض أجزاء الجدار المحيط بفناء الهرم والمباني الأخرى التابعة.
        
        وقد عثرت مجموعة من علماء الأثار من لتوانيا في عام 2001 على عدة أنفاق في مجمع الهرم، لم تكن معروفة من قبل.",
        english_content:"The Saqqara pyramid complex was discovered for the first time in 1821, when the German Consul General Heinrich von Miotoli and the Italian engineer Girolano Segato examined it and discovered its entrance. In its inner corridors, they found the remains of a mummy, including a skull covered in gold and the heels of two feet also covered in gold. Von Minutoli thought it belonged to Djoser's mummy. It happened that 'von Minutoli', with the authorization of the German Kaiser and the approval of Muhammad Ali Pasha, the ruler of Egypt at that time, obtained a permit to take these antiquities with a group of other antiquities to Germany. But the ship, called the Gottfried Ship, sank due to a severe hurricane near the port of Hamburg in Germany, and almost all traces on it were lost (see Gottfried Ship). It later became clear that what Von Minutoli found in the corridors of the Step Pyramid was none other than another mummy that was placed in the cemetery at a later time in the Old Testament.

        In 1837, researcher John Bering found traces of other mummies in the corridors, and also discovered chambers and chambers under the pyramid.
        
        Then, in 1926, Cecil Firth carried out extensive explorations, but he died before they were completed. James Keppel took care of the excavations, but he also died in 1935. 'Jean Lauer', who was working under Keppel's management, continued to supervise the excavations, and measured the underground chambers and the passages leading to them. In 1934, the remains of a mummy were found in the tomb room and were taken to Cairo University after a preliminary examination and preserved at the university until 1988. Lauer thought he had found Djoser's mummy. But upon careful examination afterwards, it was found that it was from several mummies of other people. The date of these remains was determined using the carbon-14 method (radiocarbon dating), and it became clear that they belonged to people from the Ptolemaic era (that is, they were not from the era of Djoser, about 2650 BC, but rather only from about 200 years BC).
        
        Lauer continued to devote his life to exploring the Pyramid of Djoser and the funerary city at Saqqara until the end of his life in 2001. With Lauer's help, he was able to restore the shape of some parts of the wall surrounding the pyramid's courtyard and other affiliated buildings.
        
        In 2001, a group of archaeologists from Lithuania found several tunnels in the pyramid complex, which were not known before.",
        event_id: event_2.id,
    )
    EventSection.create(
        arabic_title:"بناء الهرم المدرج ومجمعه",
        english_title:"Building the Step Pyramid and its complex",
        arabic_content:"كان زوسر يتخذ منذ توليه عرش مصر لقب اسم حورس 'نيثري خت' أي الجسد المقدس؛ وأمر كبير كهنة هليوبوليس أمحتب بتصميم وتشييد مقبرة كبيرة له. كان من ألقاب أمحتب 'إري بات' بمعنى 'عضو النخباء' وكبير الكهنة ورئيس المثالين ومدير أعمال البناء.",
        english_content:"Since his accession to the throne of Egypt, Djoser had taken the title of the name of Horus, 'Nethri Khet', meaning the Holy Body. The high priest of Heliopolis, Imhotep, ordered the design and construction of a large tomb for him. One of Imhotep's titles was 'Eribat', meaning 'member of the elite', chief priest, chief sculptor, and director of construction works.",
        event_id: event_2.id,
    )
    EventSection.create(
        arabic_title:"الأوضاع في زمن بناء الهرم",
        english_title:"Conditions at the time of building the pyramid",
        arabic_content:"وأقام زوسر خلال فترة حكمه التي استمرت 19 سنة (بين 2665–2645 قبل الميلاد) صرحا بنائيا كبيرا لم يبنى مثله من قبل، حيث كانت الأوضاع السياسية مستقرة، وكان عصره عصر تقدم في العلوم الهندسية والطبية ورخاء للشعب.

        واختار زوسر المدينة الجنائزية في سقارة لإنشاء مقبرته. وكان مكان مجمع الهرم بالقرب من مقابر فراعنة الأسرة الثانية: حتب سخم وى أو رع نب و'ني نيثر'؛ وبالقرب منها قبور جسر المدير ومصاطب عهد الأسرة الأولى. وكان المجمع ليس خاليا تماما فقد وجدت فيه قبور قديمة تعرف بالقبور السلمية في منطقة المجمع الشمالية.",
        english_content:"During his reign, which lasted 19 years (between 2665-2645 BC), Djoser erected a large building like it had never been built before, as the political situation was stable, and his era was an era of progress in the engineering and medical sciences and prosperity for the people.

        Djoser chose the funerary city of Saqqara to create his tomb. The location of the pyramid complex was near the tombs of the pharaohs of the Second Dynasty: Hotepsekhemwy or Ra-neb and 'Ni-Nether'; Nearby are the tombs of Jisr al-Mudir and the terraces of the First Dynasty. The complex was not completely empty, as ancient graves known as peaceful graves were found in the northern area of the complex.",
        event_id: event_2.id,
    )
    EventSection.create(
        arabic_title:"تطور البناء الهرمي المدرج من المصاطب",
        english_title:"The development of the step pyramid construction from the terraces",
        arabic_content:"ولم ينشأ مجمع الهرم على مرة واحدة وإنما أدخلت فيه طرق بنائية وجنائزية مختلفة من جنوب مصر وشمالها. فكان المجمع ذروة البنايات في ذلك العهد حيث طور قبور فراعنة الأسرتين الأولى والثانية التي كان بعضها يوجد في أبيدوس في جنوب البلاد. يمثل الهرم المدرج وما يجاوره من مباني اندماج بين بنية قبر وبنايات الوادي. وطور تصميم مقابر سقارة من عهد الاسرة الثانية والتي كانت في هيئة أروقة تحت الأرض ومغطاة بالأحجار فبني منها العديد من الاروقة في مجمع هرم زوسر.

        يتخذ الهرم نفسه شكلا مطورا 'للتل الأولي' الذي يدخل في المعتقدات الدينية لقدماء المصريين، مثلما اتـُخذ شكل التل أيضا في بناء مصاطب سقارة. فمثلا نجد في مصطبة إس 3507 في سقارة مقبرة في شكل تل، وفي المصطبة إس 3038 شكل تل مدرج من الأحجار. ويعتقد العلماء أن المصطبة المدرجة إس 3038 التي بناها الفرعون دن هي النموذج الذي أختاره زوسر لهرمه، مع الفرق الكبير في الحجم والارتفاع.",
        english_content:"The pyramid complex was not created all at once, but rather various construction and funerary methods were introduced into it from southern and northern Egypt. The complex was the pinnacle of buildings in that era, as it contained the tombs of the pharaohs of the First and Second Dynasties, some of which were located in Abydos in the south of the country. The Step Pyramid and its adjacent buildings represent a fusion between the structure of a tomb and the buildings of the valley. The design of the Saqqara tombs was developed during the Second Dynasty, which were in the form of underground galleries and covered with stones, from which many galleries were built in the pyramid complex of Djoser.

        The pyramid itself takes the form of a developed 'primary hill' which is part of the religious beliefs of the ancient Egyptians, just as the shape of the hill was also taken in the construction of the terraces of Saqqara. For example, we find in Mastaba S 3507 in Saqqara a cemetery in the shape of a hill, and in Mastaba S 3038 the shape of a stepped hill made of stones. Scientists believe that the step mastaba S 3038 built by Pharaoh Den is the model that Djoser chose for his pyramid, with a significant difference in size and height.",
        event_id: event_2.id,
    )
    EventSection.create(
        arabic_title:"الهرم المدرّج",
        english_title:"The Step Pyramid",
        arabic_content:"يحيط بالهرم المدرج ساحة كبيرة محدودة بجدار من عهد زوسر. ولم يصمم إمحتب المقبرة على أن تكون هرما في الأصل ولكن كان يصممها على ان تكون مقبرة زوسر في شكل مصطبة مربعة عالية.",
        english_content:"The Step Pyramid is surrounded by a large square bounded by a wall from the time of Djoser. Imhotep did not originally design the tomb to be a pyramid, but he designed it to be the tomb of Djoser in the form of a high square mastaba.",
        event_id: event_2.id,
    )
    EventSection.create(
        arabic_title:"تطوير المصطبة لتصبح هرما مدرّجا",
        english_title:"Developing the mastaba to become a stepped pyramid",
        arabic_content:"طبقا للدراسات التي قام بها «دين فيليب لاور» فقد بني ما فوق المصطبة الأولى على خمس مراحل، أي أن الهرم عند اكتماله تكون من ستة مصاطب فوق بعضها البعض . تظهر مراحل البناء على الناحيتين الجنوبية والشرقية وما تتبعها من توسعات. وبعد اكتمال المصاطب الستة وصل ارتفاع الهرم المدرج 62 متر، حيث تتكون قاعدته من مصطبة مستطيلة تبلغ طول أضلاعها 121 متر * 109 متر.

        مراحل البناء كانت كالآتي:
        
        مصطبة M1: بنيت أولا مصطبة مربعة يبلغ طول ضلعها 63 متر وارتفاعها 8 متر. وهي تختلف عن ما كانت تبنى عليه المصاطب من قبل، حيث كانت المصاطب تبنى قبل ذلك في شكل مستطيل، وغير ذلك ان مصطبة زوسر كانت هي أول مصطبة تبنى كلها من الأحجار الجيرية. وغلفت المصطبة M1 من الخارج من أحجار حجرية ملساء.وكان الجزء السفلي للمصطبة عبارة عن جزء من الأرضية الصخرية وشكل ليناسب شكل المصطبة.وبني الدهليز إلى حجرة الملك في داخل المصطبة.
        مصطبة M2: في المرحلة الثانية للبناء وسع ضلع المصطبة إلى 71 ونصف متر. ووصل ارتفاع الزيادة التي تمت إلى نحو 7 أمتار فقط، بحيث ظهر شكل مدرج. خلال تلك المرحلة بنيت 11 من الأبوهة في الجهة الشرقية للمصطبة.
        مصطبة M3: في المرحلة الثالثة للبناء وسعت المصطبة من جهتها الشرقية إلى 79 ونصف متر بحيث غطيت دهاليز الجزء الشرقي، الذي أصبح مغطى ببناء ارتفاعه 5 أمتار.
        الهرم P1: خلال المرحلة الرابعة للبناء تحول بناء المصطبة إلى هرم ذو ثلاثة مدرجات، يبغ ضلعيه 85.5 متر * 77 متر.
        كان جسم الهرم يبنى من احجار كبيرة وتغطى من الخارج بطبقة من أحجار مسواة بعناية. وكانت أحجار التغطية تبنى بحيث تكون مائلة إلى الداخل بزاوية نحو 17° حتى تكون متماسكة ومستقرة. وخلال تلك المرحلة لم يزد ارتفاع البناء عن الارتفاع الأول للمصطبة.
        
        الهرم P1': خلال المرحلة الخامسة للبناء تمت تغطية الهرم الصغير ليصبح هرما ذو خمسة أو ستة مصاطب وتبلغ قاعدته 119 متر في 107 متر. ومع تلك التوسعة أصبح المدخل الأصلي مغطى وبني مدخل آخر في الأرض على الناحية الشمالية، وبنى عليها أيضا معبد جنائزي فوق الأرض. خلال تلك المرحلة أستخدمت أحجار أكثر حجما عما قبل. وكانت المصطبة الأولى تكمل قبل القيام بزيادة البناء.
        الهرم P2: في المرحلة السادسة والأخيرة للبناء وسع الهرم مرة أخرى حتى أصبح ضلعيه 121 متر * 109 متر (وهو ما يعادل 231 * 208 ذراع ملكي قديم). واصبح الهرم ذو 6 مدرجات ووصل ارتفاعه 62.5 متر. وشكلت الدرجة السادسة بحيث تكون مقوسة بعض الشيء بحيث تظهر مع الهرم في شكل مستوي.
        يعتقد باحث الآثار «لاور» أن طبقات تغطية المرحلتين P1 وP2 قد تمت بعد الانتهاء من كل طبقة. وبناء على ذلك يستخلص أن الهرم P1 كان قد اكتمل بنائه قبل بدأ التوسعة لبناء الهرم P2 . كما يتمثل رأي الباحث الألماني «ستادلمان» بأن الأحجار الخارجية للهرم لم تكن مسواة. وعلاوة على ذلك فقد بينت حفريات في الناحية الشمالية الغربية للهرم أجريت في عام 2007 عدم وجود بقايا أحجار تغطية خارجية.",
        english_content:"According to studies carried out by Dean Philip Lauer, what was above the first mastaba was built in five stages, meaning that the pyramid, when completed, would consist of six mastabas on top of each other. The construction stages and subsequent expansions appear on the southern and eastern sides. After the completion of the six mastabas, the height of the Step Pyramid reached 62 metres, as its base consists of a rectangular mastaba with sides measuring 121 meters * 109 metres.

        The construction stages were as follows:
        
        Mastaba M1: First, a square mastaba was built with a side length of 63 meters and a height of 8 metres. It differs from what mastabas were built on before, as mastabas were built before that in a rectangular shape, and other than that, Djoser’s mastaba was the first mastaba to be built entirely of limestone. The M1 mastaba was covered from the outside with smooth stone stones. The lower part of the mastaba was part of the rock floor and was shaped to fit the shape of the mastaba. The vestibule to the king’s chamber was built inside the mastaba.
        M2 Mastaba: In the second phase of construction, the side of the mastaba was expanded to 71 and a half metres. The height of the increase was only about 7 metres, so that a terraced form appeared. During that stage, 11 al-Abwaha buildings were built on the eastern side of the mastaba.
        M3 Mastaba: In the third phase of construction, the mastaba was expanded from its eastern side to 79 and a half metres, covering the corridors of the eastern part, which became covered by a building 5 meters high.
        Pyramid P1: During the fourth phase of construction, the mastaba building was transformed into a pyramid with three terraces, its sides measuring 85.5 meters * 77 metres.
        The body of the pyramid was built of large stones and covered from the outside with a layer of carefully leveled stones. The covering stones were built so that they were inclined inward at an angle of about 17° so that they were cohesive and stable. During that stage, the height of the building did not exceed the first height of the mastaba.
        
        Pyramid P1': During the fifth phase of construction, the small pyramid was covered to become a pyramid with five or six terraces and its base is 119 meters by 107 metres. With this expansion, the original entrance became covered and another entrance was built in the ground on the northern side, and a funerary temple was also built over it. During this stage, larger stones were used than before. The first mastaba was completed before further construction.
        Pyramid P2: In the sixth and final stage of construction, the pyramid was expanded again until its sides became 121 meters * 109 meters (which is equivalent to 231 * 208 ancient royal cubits). The pyramid now had 6 terraces and reached a height of 62.5 metres. The sixth step was shaped so that it was slightly curved, so that it appeared with the pyramid in a flat form.
        Archaeologist Lauer believes that the covering layers of phases P1 and P2 were completed after each layer was completed. Based on this, it is concluded that Pyramid P1 had been completed before the expansion to build Pyramid P2 began. The German researcher Stadelmann also believes that the outer stones of the pyramid were not leveled. Moreover, excavations in the northwestern side of the pyramid conducted in 2007 showed that there were no remains of external covering stones.",
        event_id: event_2.id,
    )
    EventSection.create(
        arabic_title:"المظهر الخارجي الحالي",
        english_title:"The current external appearance",
        arabic_content:"أغلب القشرة الخارجية للهرم قد اختفت، كما اختفت من البناء الرئيسي بعض الأجزاء الخارجية. ومن الواضح أنه كانت هناك مراحل مختلفة من البناء، يظهر أفضل شكل للهرم من الجانب الشرقي.

        بعد الانتهاء من تشييد المرحلة الثالثة، بدأت عملية جعله هرما حقيقيا. وقداستخدمت أكثر من 200,000 طنِ من الحجارة لبناء المصطبتين الإضافيينِ اللتين وضعتا فوق الأربعة الموجودة، صانعة منه هرما ذو 6 مدرّجات. وتبدو إضافة وجه من الحجر الكلسي الأبيض على الجانب الشماليِ للهرمِ.
        
        يعد الهرم المدرج من أهم الآثار الخالدة الباقية من المصريين القدماء، حيث أنه أول بناء يبنيه الإنسان بهذه الضخامة. وبنائه يدل على تمكن قدماء المصريين من تقنية تقطيع الحجارة في ذلك العهود القديمة منذ نحو 2650 سنة قبل الميلاد. علاوة على الهندسة المعمارية التي يلاحظ تطورها خلال مراحل البناء والتي قام بها إمحتب؛ وإدارة عمل تم على سنوات طويلة يحتاج إلى مجموعات عمال ذوي مهارات مختلفة، وإمدادهم وامداد عائلاتهم بالغذاء والمشرب، ليتفرغوا للعمل في البناء حتى وصل ارتفاع الهرم المدرج إلى 5و62 متر. منذ عام 1979 تعتبر اليونسكو مجمع هرم سقارة موقعا للتراث العالمي.
        
        حاليا يظهر هرم سقارة على الأفق الغربي للمسافر بالسيارة عبر طريق الجيزة بني سويف الصحراوي الغربي.",
        english_content:"Most of the outer shell of the pyramid has disappeared, and some of the outer parts have also disappeared from the main building. It is clear that there were different stages of construction, the shape of the pyramid is best seen from the eastern side.

        After completing the construction of the third phase, the process of making it a real pyramid began. More than 200,000 tons of stones were used to build the two additional terraces that were placed on top of the existing four, creating a pyramid with 6 steps. The addition of a white limestone face appears on the northern side of the pyramid.
        
        The Step Pyramid is considered one of the most important immortal monuments remaining from the ancient Egyptians, as it was the first building built by man of this magnitude. Its construction indicates that the ancient Egyptians were able to use the technique of cutting stones in that ancient era, about 2650 years BC. In addition to the architecture, which is noted for its development during the construction stages, which was carried out by Imhotep; Managing work that took place over many years requires groups of workers with different skills, and providing them and their families with food and drink, so that they can devote themselves to working in construction until the height of the step pyramid reached 5.62 meters. Since 1979, UNESCO has considered the Saqqara pyramid complex a World Heritage Site.
        
        Currently, the Saqqara Pyramid appears on the western horizon of a traveler by car via the western Giza-Bani Suef desert road.",
        event_id: event_2.id,
    )
    EventSection.create(
        arabic_title:"البنية التحتية للهرم المدرج",
        english_title:"The infrastructure of the Step Pyramid",
        arabic_content:"بنيت حجرة الملك عند نهاية بئر بعمق 28 متر تحت الهرم بمقاس 7 متر * 7 متر. وهي تتكون من أحجار الجرانيت الأحمر ذات اسطح ملساء في أربع طبقات. تؤدي غرفة يسميها الباحثون 'غرفة مناورة' إلى حجرة الملك عن طريق فتحة مستديرة يبلغ قطرها نحو 1 متر. ويغلق المدخل قطعة حجرية كبيرة من الجرانيت يبلغ وزنها نحو 5و3 طن، تنزل من غرفة المناورة بواسطة حبال. عثر على بقايا من الألبستر في شكل نجمي في حجرة الملك، يعتقد أنها كانت من غرفة المناورة التي كانت مزينة بما يشبهها . ويعتقد باحث الآثار 'لاور' أن الحجرة الجرانيتية بنيت بدلا من حجرة دفن كانت قد بنيت خلال المرحلة الأولى للبناء.

        وبعد حفر حجرة الدفن وغرفة المناورة في أسفل البئر بطنت حجرة الدفن وغرفة المناورة وسد البئر بأحجار ورمال ثم بأججار كبيرة من أعلاه. أخلي ما كان يملأ البئر من أنقاض خلال الأسرة السادسة والعشرين.
        
        بنيت حول حجرة الملك مجموعات دهاليز من جميع النواحي على ابعاد مختلفة . وترتبط الدهاليز ببعضها البعض عن طريق ممرات . توجد في الدهليز الشرقي أربعة حجرات تغطي جدرانها قطع مستطيلة من فاينس أزرق وهي تشبه تلك الموجودة في المقبرة الجنوبية . تفصل بين مساحات تزيينات الفاينس الأزرق براويز بارزة كاعمدة مشكلة في هيئة حصائر الخوص تشبه الستائر . الفاينس الأزرق الذي يغطي الجدران يوحي بمياه عالم الآخرة طبقا للمعتقدات الدينية لدى قدماء المصريين. كما توجد في الدهاليز ثلاثة لوحات منقوشة تبين صور لفرعون أثناء احتفال عيد سد وهي من الأعياد المصرية القديمة التي كانت تتكرر في بعض السنين . ويبدو مجمع الهرم كاملا - بعكس المقبرة الجنوبية التي تبدو كما لو كانت لم تستكمل.",
        english_content:"The king's chamber was built at the end of a 28-meter-deep well under the pyramid, measuring 7 meters * 7 metres. It consists of red granite stones with smooth surfaces in four layers. A room that researchers call a 'maneuvering room' leads to the king's chamber through a circular opening with a diameter of about 1 meter. The entrance is closed by a large piece of granite weighing about 3.5 tons, which is lowered from the maneuvering room using ropes. Remains of star-shaped alabaster were found in the king's chamber. It is believed that they were from the maneuvering room, which was decorated in a similar way. Archaeological researcher Lauer believes that the granite chamber was built instead of a burial chamber that had been built during the first phase of construction.

        After digging the burial chamber and the maneuvering room at the bottom of the well, I lined the burial chamber and the maneuvering room and blocked the well with stones and sand, then with large stones from above. The debris that filled the well was cleared during the Twenty-Sixth Dynasty.
        
        Groups of corridors were built around the king's chamber on all sides of different dimensions. The vestibules are connected to each other through corridors. In the eastern vestibule there are four rooms whose walls are covered with rectangular pieces of blue vines, which are similar to those found in the southern cemetery. The areas of blue vine decoration are separated by prominent frames such as columns formed in the form of wicker mats resembling curtains. The blue vines covering the walls suggest the waters of the afterlife, according to the religious beliefs of the ancient Egyptians. There are also three engraved panels in the corridors showing pictures of Pharaoh during the Sid Eid celebration, which is one of the ancient Egyptian holidays that was repeated in some years. The pyramid complex appears complete - unlike the southern cemetery, which appears as if it was not completed.",
        event_id: event_2.id,
    )
    EventSection.create(
        arabic_title:"مجمع هرم زوسر",
        english_title:"Djoser Pyramid Complex",
        arabic_content:"مسحة مجمع هرم زوسر هي أكبر مجمع أهرامات في مصر . بعض المنشآت في المجمع تخص وظائف معينة في المراسيم والاحتفالات وبعضها كان له وظيفة بعد وفاة فرعون . البنيات الوظيفية تعطي فكرة عن مجريات الطقوس والاحتفالات التي كانت تقام فيها ويشارك فيها الملك، واما البنيات الأخرى فكانت لخدمة كا (روح) الملك في الحياة الآخرة . وكانت تعطى اهمية كبيرة لزينة العناصر الخارجية للمباني، وبعض البنيات المختفية عن الأنظار فلم تحظي بنفس العناية .

        ومما يلفت النظر أن بعض الأشياء التي كانت تقابل في الحياة اليومية مثل سيقان الأشجار والنخيل واللوتس والحصير المجدل من الخوص كانت تنفذ في المعبد بنحتها على الحجارة من دون أن يكون لها استخدام وظيفي، فكانت تشكل نوعا من التزيين.
        
        يرى المأرخون أن مجمع هرم زوسر قد تم بنائه على فترتين. فتوجد بقايا جدران كانت تحيط بساحة الهرم في الناحية الشمالية . ويبدو ان كانت المرحلة الأولى للبناء محدودة بالارتفاعات الأرضية الغربية .",
        english_content:"Djoser's Pyramid Complex is the largest pyramid complex in Egypt. Some of the facilities in the complex had specific functions in ceremonies and celebrations, and some of them had a function after the death of Pharaoh. The functional structures give an idea of the course of the rituals and celebrations that were held and in which the king participated. As for the other structures, they were to serve the king’s soul in the afterlife. Great importance was given to decorating the external elements of buildings, and some structures hidden from view did not receive the same care.

        What is striking is that some things that were encountered in daily life, such as tree stems, palm trees, lotuses, and braided wicker mats, were made in the temple by carving them on stones without having any functional use, so they constituted a kind of decoration.
        
        Historians believe that the Djoser pyramid complex was built in two periods. There are remains of walls that surrounded the pyramid courtyard on the northern side. It seems that the first phase of construction was limited to the western ground elevations.",
        event_id: event_2.id,
    )
    event_3 = Event.create(
        type: "PeaceTreaty",
        arabic_title: "بناء هرم سنفرو",
        english_title: "Building the Pyramid of Snefru",
        start_date: "2600",
        end_date: "2550",
        arabic_info:"هرم سنفرو المائل أو الهرم المنحني هو أحد أهرامات مصر وأحد ثلاثة أهرامات قام ببنائها سنفرو. سمي بالهرم المائل حيث بدء في بناء الهرم ليصعد بزاوية 58 درجة، وعندما وصل بناء الهرم إلى نصف ارتفاعه تقريبا تقرر بناء الجزء العلوي بزاوية 43 درجة. أفادت تلك التقنية في توصل سنفرو ومهندسوه إلى بناء هرما كاملا بتقنية جديدة في بلدة دهشور بجواره يسمى الهرم الأحمر.",
        english_info:"The Leaning Pyramid of Sneferu or the Bent Pyramid is one of the pyramids of Egypt and one of three pyramids built by Sneferu. It was called the tilted pyramid because he started building the pyramid to ascend at an angle of 58 degrees, and when the construction of the pyramid reached approximately half its height, it was decided to build the upper part at an angle of 43 degrees. This technology helped Sneferu and his engineers build a complete pyramid using new technology in the town of Dahshur next to it, called the Red Pyramid.",
        character_id: character_15.id,
        sub_era: sub_era_2
    )
    event_3.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/e/eb/Snefru%27s_Bent_Pyramid_in_Dahshur.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"مقدمه",
        english_title:"Introduction",
        arabic_content:"استغرق العمل في بناء الهرم المائل 14 سنة، ويبدو انه لم يعجب سنفرو فقرر بناء الهرم الأحمر طبقا للخبرة التي تعلمها مهنسوه عند بناء الهرم المائل. فاختار المكان لهرمه الذي يدفن فيه على بعد نحو 2 كيلومتر من شمال الهرم المائل في بلدة دهشور.

        عند بناء الهرم المائل بُني الهرم من الحجارة بزوايا مائلة بالنسبة للأرض تقدر بنحو 59 درجة. ويرجح أنه بإقامة البناء بهذا الشكل أن بدأ البناء يغوص بسبب الأحمال الحجرية. علاوة على أن الزواية الكبيرة تتسبب في ارتفاع كبير حاد للهرم تـُصعب العمل من اجل تكملته وبناء الجزء العلوي منه. ولتدارك هذه المشكلة قام المهندسون ببناء جدرانا تدعيمية جعلت زاية الميل 55 درجة للبناء الذي لم يكتمل بعد. ثم أكملوا البناء بزاوية منحنية قدرها 43 درجة مما جعله يطلق عليه الهرم المنحني. وبهذا أكتشفت تقنية بناء الأهرامات الكاملة عن طريق وضع طوابق أفقية من الحجارة. كل طبقة مربعة من الحجارة يعلوها طبقة أقل في المساحة على ان تكون زاوية الميل 52 درجة، بدلا من البناء بزاوية 55 أو 43 درجة كما كان في حالة الهرم المنحني. واصبح هذا الشكل هو الشكل الكامل للهرم كما نعرفه اليوم.
        
        قام سنفرو باستغلال التقنية الجديدة ببناء هرمه العملاق وأطلق عليه اسم «الهرم الشمالي» ونسميه اليوم الهرم الأحمر. يقع الهرم الأحمر علي بعد نحو 1,8 كيلومتر شمال الهرم المنحني بدهشور. وبناء علي تقنية بناء هرم سنفرو الأحمر بنيت الأهرامات بالجيزة. فقد قام خوفو ابن سنفرو ببناء الهرم الأكبر على هضبة الجيزة ووصل ارتفاعه إلى 157 متر، ثم تبعه ابنه خفرع وبنى هرمه بجانب هرم والده وكان اقل ارتفاعا منه، ثم جاء ابنه منقرع وبنى الهرم الثالث (الصغير)، والثلاثة أهرامات موجودة في الجيزة. وكانت تلك الأهرامات مقابر لهم.",
        english_content:"The work on building the Leaning Pyramid took 14 years, and it seems that Sneferu did not like it, so he decided to build the Red Pyramid according to the experience that his engineers learned when building the Leaning Pyramid. He chose the place for his pyramid in which he was buried, about 2 kilometers north of the Leaning Pyramid in the town of Dahshur.

        When building the tilted pyramid, the pyramid was built of stones at inclined angles relative to the ground, estimated at about 59 degrees. It is likely that by erecting the building in this way, the building began to sink due to the stone loads. In addition, the large angle causes a large, sharp rise in the pyramid, making it difficult to work on completing it and building the upper part of it. To remedy this problem, engineers built support walls that made the inclination angle 55 degrees for the building, which was not yet completed. Then they completed the construction with a curved angle of 43 degrees, which made it called the Bent Pyramid. Thus, I discovered the technique of building complete pyramids by placing horizontal floors of stones. Each square layer of stones is topped with a smaller layer in area, provided that the angle of inclination is 52 degrees, instead of building at an angle of 55 or 43 degrees as was the case in the case of the curved pyramid. This shape became the complete shape of the pyramid as we know it today.
        
        Taking advantage of the new technology, Sneferu built his giant pyramid and called it the 'Northern Pyramid'. Today we call it the Red Pyramid. The Red Pyramid is located about 1.8 kilometers north of the Bent Pyramid in Dahshur. Based on the technique of building the Red Pyramid of Sneferu, the pyramids in Giza were built. Khufu, son of Sneferu, built the Great Pyramid on the Giza Plateau and its height reached 157 meters. Then his son Khafre followed him and built his pyramid next to his father’s pyramid, which was lower in height than it. Then his son Menkaure came and built the third (small) pyramid. The three pyramids are located in Giza. These pyramids were their tombs.",
        event_id: event_3.id,
    )
    EventSection.create(
        arabic_title:"نظرة عامة",
        english_title:"Overview",
        arabic_content:"يعتقد علماء الآثار الآن أن الهرم المنحني يمثل شكلاً انتقاليًا بين الهرم المتدرج والهرم الأملس. لقد تم اقتراح أنه نظرًا لانحدار زاوية الميل الأصلية، فقد يبدأ الهيكل في إظهار علامات عدم الاستقرار أثناء البناء، مما أجبر البناة على تبني زاوية ضحلة لتجنب انهيار الهيكل. يبدو أن هذه النظرية تؤكدها حقيقة أن تم بناء الهرم الأحمر المجاور، بعد ذلك مباشرة من قبل نفس الملك، بزاوية 43 درجة من قاعدته. تتناقض هذه الحقيقة أيضًا مع النظرية القائلة بأن البناء في الزاوية الأولية سيستغرق وقتًا طويلاً لأن موت سنفرو كان يقترب، لذلك قام البناة بتغيير الزاوية لإكمال البناء في الوقت المناسب. في عام 1974، اقترح كورت مندلسون أن يتم تغيير الزاوية كإجراء احترازي أمني كرد فعل لانهيار كارثي لهرم ميدوم بينما كان لا يزال قيد الإنشاء.

        يمكن أن يكون سبب تخلي سنفرو عن هرم ميدوم والهرم المنحني ناتجًا عن تغيير في الأيديولوجية. لم يعد القبر الملكي يعتبر سلمًا للنجوم؛ بدلاً من ذلك، تم تقديمه كرمز لعبادة الشمس والتل البدائي الذي نشأت منه الحياة.
        
        كما أنه فريد من نوعه بين الأهرامات الموجودة في مصر، حيث أن غلافه الخارجي الأصلي المصقول الحجر الجيري لا يزال سليماً إلى حد كبير. يعزو المهندس الإنشائي البريطاني بيتر جيمس ذلك إلى وجود مساحات أكبر بين أجزاء الغلاف أكثر من تلك المستخدمة في الأهرامات اللاحقة؛ تعمل هذه العيوب مثل وصلات التمدد وتمنع التدمير المتتالي للغلاف الخارجي عن طريق التمدد الحراري.",
        english_content:"Archaeologists now believe that the curved pyramid represented a transitional form between the stepped pyramid and the smooth pyramid. It has been suggested that as the original tilt angle became steeper, the structure may begin to show signs of instability during construction, forcing the builders to adopt a shallower angle to avoid collapse of the structure. This theory seems to be confirmed by the fact that the adjacent Red Pyramid was built, immediately afterwards, by the same king, at an angle of 43 degrees from its base. This fact also contradicts the theory that construction at the initial angle would take too long because Sneferu's death was approaching, so the builders changed the angle to complete construction in time. In 1974, Kurt Mendelssohn suggested that the angle be changed as a security precaution in response to the catastrophic collapse of the Meidum Pyramid while it was still under construction.

        The reason for Sneferu's abandonment of the Meidum Pyramid and the Bent Pyramid could be due to a change in ideology. The royal tomb was no longer considered a ladder to the stars; Instead, it was presented as a symbol of sun worship and the primordial hill from which life arose.
        
        It is also unique among the pyramids in Egypt, as its original polished limestone outer shell is still largely intact. British structural engineer Peter James attributes this to the presence of larger spaces between the shell parts than those used in later pyramids; These defects act like expansion joints and prevent successive destruction of the outer shell by thermal expansion.",
        event_id: event_3.id,
    )
    EventSection.create(
        arabic_title:"مرحلة البناء الأولى",
        english_title:"First construction phase",
        arabic_content:"في مرحلة البناء الأولى، تم التخطيط لهرم شديد الانحدار بطول قاعدته 157 مترًا وزاوية ميل حوالي 58 درجة (ربما حتى 60 درجة). لو كان الهرم قد اكتمل بهذا الشكل، لكان قد وصل إلى ارتفاع حوالي 125 م. أقيم الهرم على هذا الشكل باستخدام تقنية الطبقة المائلة التي تم تجربتها واختبارها في الأهرامات المتدرجة. بينما أدت هذه التقنية إلى تحسين ثبات الأهرامات المتدرجة، حيث كانت البنية التحتية أسفل الهرم، إلا أنها أدت إلى مشاكل كبيرة مع هذا الهرم، حيث زادت الأوضاع المائلة من الضغط على داخل الهرم وفي الغرف وفي جسم الهرم الممرات أدت إلى مشاكل استقرار وتشققات وحتى خطر الانهيار. ربما كان المبنى نصف محاط بسور فقط في هذه المرحلة عندما أصبحت مشاكل الاستقرار واضحة. نظرًا للدرجة الكلية الجيدة للحفاظ على الهرم، لا يمكن التحقق من مرحلة البناء الأولى هذه إلا بشكل غير مباشر من خلال نقاط الإزاحة على بعد حوالي 12.70 مترًا من المدخل في الممر السفلي النازل وحوالي 11.60 مترًا في الممر العلوي الهابط.",
        english_content:"In the first construction phase, a steep pyramid was planned with a base length of 157 meters and an inclination angle of about 58 degrees (possibly even 60 degrees). If the pyramid had been completed in this way, it would have reached a height of about 125 m. The pyramid was erected in this shape using the inclined layer technique that has been tried and tested in step pyramids. While this technique improved the stability of the stepped pyramids, as the infrastructure was at the bottom of the pyramid, it led to major problems with this pyramid, as the tilted positions increased the pressure on the inside of the pyramid, in the rooms, and in the body of the pyramid, the corridors, which led to stability problems, cracks, and even the risk of collapse. . The building was probably only half walled at this point when stability problems became apparent. Given the overall good degree of preservation of the pyramid, this first construction phase can only be verified indirectly through offset points about 12.70 m from the entrance in the lower descending passage and about 11.60 m in the upper descending passage.",
        event_id: event_3.id,
    )
    EventSection.create(
        arabic_title:"مرحلة البناء الثانية",
        english_title:"Second construction phase",
        arabic_content:"لتحسين الاستقرار، قام البناة بتقليل زاوية الميل إلى 54 درجة. لهذا الغرض، تم بناء حزام بعرض 15.70 م حول هرم مرحلة البناء الأولى. أدى هذا إلى زيادة طول القاعدة إلى 188 م. هنا أيضًا، تم استخدام طبقات الجدران المائلة مرة أخرى. لو تم الالتزام بزاوية الانحدار البالغة 54 درجة، لكانت قد وصلت إلى ارتفاع 129.4 مترًا وحجمها حوالي 1524000 متر مكعب. سيكون هرم شبكي ثالث أعلى هرم في العالم، لكن حجمه سيظل خلف الهرم الأحمر (1,694,000 متر مكعب)، بحيث يكون رابع أكبر هرم في مصر فقط. ومع ذلك، نظرًا لأنه لا يمكن حل مشاكل البناء من خلال التدابير، تم إلغاء البناء على ارتفاع 49 & نبسب؛ م. حجر هذه المرحلة مكسو بالحجر الجيري الناعم طرة.",
        english_content:"To improve stability, the builders reduced the tilt angle to 54 degrees. For this purpose, a 15.70 m wide belt was built around the pyramid of the first construction phase. This increased the length of the base to 188 m. Here too, diagonal wall layers were used again. If the slope angle of 54 degrees had been adhered to, it would have reached a height of 129.4 meters and a volume of approximately 1,524,000 cubic metres. The reticulated pyramid will be the third highest pyramid in the world, but its volume will still be behind the Red Pyramid (1,694,000 cubic metres), making it only the fourth largest pyramid in Egypt. However, since the construction problems could not be solved through measures, the construction at the height of 49&nbsp; M. The stone of this stage is faced with soft Tura limestone.",
        event_id: event_3.id,
    )
    EventSection.create(
        arabic_title:"مرحلة البناء الثالثة",
        english_title:"Third construction phase",
        arabic_content:"في مرحلة البناء الثالثة، تم تقليل الزاوية إلى 43 درجة ووضع البناء في طبقات أفقية، تمامًا كما في الهرم الأحمر، مما أدى إلى تخفيف الضغط بالداخل. هذا خلق الشباك الفريد الذي لا يوجد في أي هرم آخر. نظرًا لزاوية الميل السفلية للجزء العلوي، تم تقليل الارتفاع الكلي إلى 105 م. بلغ الحجم الإجمالي 1,440,808 متر مكعب. أيضًا المنطقة العلوية مغطاة بحجر جيري طرة ناعم.",
        english_content:"In the third construction phase, the angle was reduced to 43 degrees and the construction was placed in horizontal layers, just as in the Red Pyramid, which relieved the pressure inside. This created a unique window that is not found in any other pyramid. Due to the lower inclination angle of the upper part, the total height was reduced to 105 m. The total volume reached 1,440,808 cubic metres. Also the upper area is covered with soft Tura limestone.",
        event_id: event_3.id,
    )
    event_4 = Event.create(
        type: "PeaceTreaty",
        arabic_title: "بناء هرم خوفو (الهرم الأكبر)",
        english_title: "Building the Pyramid of Khufu (the Great Pyramid)",
        start_date: "2560",
        end_date: "2540",
        arabic_info:"الهرم الأكبر أو هرم خوفو هو الأثر الوحيد الباقي من عجائب الدنيا السبع، ويقع بمنطقة أهرام الجيزة في مصر المسجلة ضمن مواقع اليونيسكو للتراث العالمي. يعود بناء الهرم إلى نحو سنة 2560 قبل الميلاد حيث شيد كمقبرة لفرعون الأسرة الرابعة خوفو واستمر بناؤه لفترة 20 عامًا. يعد بناء الهرم الأكبر نقلة حضارية كبرى في تاريخ مصر القديم، وقد تأثر خوفو بأبيه الملك سنفرو في بناء هرمه؛ فبعد موته، أصبح خوفو الإله الحاكم على الأرض، وأصبح من الضروري أن يفكر في بناء مقبرته والتي تعد المشروع القومي الأول في مصر القديمة، الذي اشترك في بنائه عمال محترفون من جميع أنحاء مصر. وظل الهرم الأكبر بارتفاعه الأصلي الذي كان يصل إلى 148 متر أعلى بناء أتمه الإنسان على الأرض على مدى 3800 سنة.",
        english_info:"The Great Pyramid, or the Pyramid of Khufu, is the only remaining relic of the Seven Wonders of the World. It is located in the Giza Pyramids area in Egypt, which is registered as a UNESCO World Heritage Site. The construction of the pyramid dates back to about 2560 BC, when it was built as a tomb for the Fourth Dynasty Pharaoh Khufu, and its construction continued for 20 years. The construction of the Great Pyramid is a major cultural shift in the history of ancient Egypt, and Khufu was influenced by his father, King Sneferu, in building his pyramid. After his death, Khufu became the ruling god on earth, and it became necessary for him to think about building his tomb, which was considered the first national project in ancient Egypt, in which professional workers from all over Egypt participated in its construction. With its original height of 148 metres, the Great Pyramid remained the tallest building completed by man on Earth over a period of 3,800 years.",
        character_id: character_16.id,
        sub_era: sub_era_2
    )
    event_4.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/e/e3/Kheops-Pyramid.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"مقدمه",
        english_title:"Introduction",
        arabic_content:"كان الأمير حم إيونو هو مهندس الملك خوفو - ويوجد له تمثال أكبر من الحجم العادي من الحجر الجيري محفوظ في متحف رومر-بيليزيوس في مدينة هيلدسهايم في ألمانيا. وقد أرسل الكهنة والمهندسين إلى مدينة أون كي يختاروا اسمًا للهرم، وكان ذلك الاسم هو: «آخت خوفو»، أي بمعنى «أفق خوفو». فهو يمثل الأفق الذي سيستقل منه الإله رع مراكب الشمس كي يبحر بها وتجدف له النجوم، ويقتل بمجاديفها الأرواح الشريرة في العالم الآخر ليفنى الشر فيقدسه شعبه. والملك خوفو هو أول ملك يعتبر نفسه الإله رع على الأرض[؟]. ونلاحظ أن ابنه خفرع وحفيده منقرع يدخل في اسمهما اسم الإله رع.",
        english_content:"Prince Ham-Iono was King Khufu's architect - and a larger-than-life limestone statue of him is preserved in the Romer-Belizius Museum in Hildesheim, Germany. Priests and engineers were sent to the city of On to choose a name for the pyramid, and that name was: 'Akhet Khufu', meaning 'Horizon of Khufu'. It represents the horizon from which the god Ra will board the chariots of the sun in order to sail on them and the stars will paddle for him, and with their oars he will kill evil spirits in the other world in order to annihilate evil and be sanctified by his people. King Khufu is the first king to consider himself God Ra on Earth. We note that his son Khafre and his grandson Menkaure include the name of the god Ra in their names.",
        event_id: event_4.id,
    )
    EventSection.create(
        arabic_title:"التاريخ والوصف",
        english_title:"History and Description",
        arabic_content:"شيد الهرم كمقبرة لفرعون الأسرة المصرية الرابعة خوفو واستمر بناؤه لفترة 20 عامًا. يعتقد بعض علماء الآثار بأن يكون التياتي (الوزير) حم إيونو هو معماري الهرم الأكبر. يعتقد بأن الهرم الأكبر أثناء البناء كان طوله 280 قدم بالمقياس المصري 146.5 متر (480.6 قدم) لكن مع التآكل وغياب القطعة الهرمية الخاصة به أصبح ارتفاعه الحالي 138.8 متر (455.4 قدم). كل جانب للقاعدة كان 440 ذراع 230.4 متر (755.9 قدم) طول. تقدر كتلة الهرم بنحو 5.9 مليون طن. حجم الهرم بالإضافة إلى الأَكَمَة الداخلية تقارب 2.5 مليون متر مكعب. استنادًا على هذه التقديرات، يحتاج بناء هذا الهرم في 20 عامًا تقطيع ونقل وتركيب ما يقرب من 800 طن من الحجارة يوميًا. وبالمثل، لأنه يتكون من ما يقدر بـ 2.3 مليون كتلة حجرية، فاستكمال البناء في 20 عامًا يحتاج تحريك نحو 12 كتلة حجرية إلى موقعها كل ساعة ليلًا ونهارًا. أجريت أول قياسات دقيقة للهرم من قبل عالم المصريات السير فلندرز بيتري من عام 1880 إلى 1882 ونشرها بعنوان أهرامات ومعابد الجيزة. تستند تقريبًا جميع التقارير على قياساته. كثيرًا من حجارة الكسوة وكتل الغرفة الداخلية تتناسب مع بعضها البعض بدقة متناهية. بناءً على القياسات التي أخذت لحجارة كسوة الجانب الشمالي الشرقي فعرض مدخل الأوْصال الرئيسي 0.5 مليمتر فقط.

        ظل الهرم الأكبر أعلى مبنى في العالم طيلت 3,800 عام، لم يَفُقْهُ مبنى آخر حتى تم بناء قمة كاتدرائية لينكولن بارتفاع 160 متر (في عام 1300 بعد الميلاد). الدقة في إتقان بناء الهرم تتمثل في الجوانب الأربعة للقاعدة فمعدل متوسط الخطأ 58 مليمتر في الطول، فأطوال أضلاع الهرم التي قدرها 'بيتري' في عام 1925 هي: 230.252 متر و 230.454 متر و 230.391 متر. قاعدة الهرم أفقية ومسطحة في حدود ±15 مـم (0.6 بوصة). جوانب القاعدة المربعة تُحاذي الجِهاتُ الأصلِيّة الأربعة للبوصلة (ضمن 4 دقائق قوسية)  على أساس الشمال الحقيقي، لا الشمال المغناطيسي، والقاعدة النهائية كانت مربعة بخطأ في الزاوية بمتوسط 12 ثانية قوسية. تقدر أبعاد التصميم النهائي، كما اقترحته دراسة بيتري والدراسات التالية: أن الارتفاع كان في الأصل 280 ذراعا وبطول ضلع للهرم 440 ذراع، فيكون محيط الهرم 1760 ذراع مصري قديم. النسبة بين المحيط إلى الارتفاع 1760/280، أي ما يعادل 2 ط وهي تختلف عن القيمة المضبوطة ل [ط] بنسبة 0.05% فقط. يعتبر بعض علماء المصريات أن هذه النسبة كانت متعمدة وقت التصميم. وبالإشارة إلى تلك الحقيقة كتب 'فيرنر' : 'نحن نستطيع أن نستنتج أنه بالرغم من عدم معرفة المصريين القدماء تحديد قيمة π (ط) بدقة، إلا أنهم في الواقع قد استخدموها.'",
        english_content:"The pyramid was built as a tomb for the Fourth Dynasty Egyptian Pharaoh Khufu, and its construction continued for a period of 20 years. Some archaeologists believe that Al-Tiyati (Vizier) Ham-Iuno was the architect of the Great Pyramid. It is believed that the Great Pyramid during construction was 280 feet tall by the Egyptian standard (146.5 meters (480.6 feet), but with erosion and the absence of its pyramidal piece, its current height became 138.8 meters (455.4 feet). Each side of the base was 440 cubits long and 230.4 meters (755.9 ft) long. The mass of the pyramid is estimated at about 5.9 million tons. The volume of the pyramid plus the inner mound is approximately 2.5 million cubic metres. Based on these estimates, building this pyramid in 20 years would require cutting, transporting and installing approximately 800 tons of stones per day. Likewise, because it consists of an estimated 2.3 million stone blocks, completing the construction in 20 years would require moving about 12 stone blocks into position every hour, day and night. The first accurate measurements of the pyramid were made by Egyptologist Sir Flinders Petrie from 1880 to 1882 and published with the title The Pyramids and Temples of Giza. Almost all reports are based on its measurements. Many of the cladding stones and interior room blocks fit together with great precision. Based on the measurements taken for the cladding stones of the northeastern side, the width of the main awsal entrance is only 0.5 mm.

        The Great Pyramid remained the tallest building in the world for 3,800 years, and was not surpassed by another building until the top of Lincoln Cathedral was built at a height of 160 meters (in 1300 AD). The accuracy in perfecting the construction of the pyramid is represented in the four sides of the base. The average error rate is 58 millimeters in length. The lengths of the pyramid’s sides estimated by Petrie in 1925 are: 230.252 metres, 230.454 metres, and 230.391 metres. The base of the pyramid is horizontal and flat to within ±15 mm (0.6 in). The sides of the square base aligned with the four cardinal directions of the compass (within 4 arc minutes) based on true north, not magnetic north, and the final base was square with an angle error of 12 arc seconds on average. The dimensions of the final design, as suggested by Petrie's study and the following studies, are estimated to be: The height was originally 280 cubits and the side length of the pyramid was 440 cubits, so the circumference of the pyramid would be 1760 ancient Egyptian cubits. The perimeter to height ratio is 1760/280, which is equivalent to 2t and differs from the set value of [t] by only 0.05%. Some Egyptologists consider that this proportion was intentional at the time of design. Referring to this fact, Werner wrote: “We can conclude that although the ancient Egyptians did not know how to precisely determine the value of π, they in fact used it.”",
        event_id: event_4.id,
    )
    EventSection.create(
        arabic_title:"تسوية الموقع والقياس",
        english_title:"Site settlement and measurement",
        arabic_content:"بعد اختيار المهندسون لهضبة الجيزة بأرضيتها الصخرية الصلبة لبناء الهرم بدؤوا مع العمال بتسوية السطح حول الهرم المزمع إنشاؤه لتكون الأساس. فقاموا بالقياس وتحديد مواقع الأركان لتكون كل واجهة للهرم متجهة نحو الجهات الجغرافية: شمال، جنوب، شرق، وغرب. وحطم العمال كل ما يزيد من جوانب الهرم من صخور ونقلت الأنقاض بعيدا عن الموقع. بهذا استفاد المهندسون بجزء بارز من صخرة الهضبة ليجعلوا منها جزءا من الطبقة السفلية للهرم، وتظهر صخرة الهضبة الآن في بعض أجزاء الهرم في الطبقة الأولى أو الثانية. وقاموا بتشكيل جزء الهضبة الداخلة من ضمن بناية الهرم لتكون مدرجة بحيث تسهل رص الأحجار بعد ذلك، وملؤا ما فيها من شقوق بالحجارة لإتمام التسوية. بعد ذلك قاموا بتغطية الطبقة الأولى من الجوانب بصف حجارة تغطية من الحجر الجيري الأبيض من محاجر طره بحيث تضبط أضلاع الهرم والزوايا القائمة لأركانه. وتمت تسوية الأساس بإتقان شديد: فإن الفرق في الارتفاع فيه لا يزيد عن 21 مليمتر. كما أن القياسات قد تمت بإتقان شديد لأضلاع الهرم، هذا على الرغم من أن ارتفاع الأرضية الصخرية في الوسط كانت تشكل عائقًا لقياس المحاور. إن مقدار الاختلاف عن اتجاه الشمال لا يزيد عن 3′6″ نحو الغرب. ولا تختلف أطوال أضلاع الهرم كثيرا عن المقاس المحدد لها والبالغ 440 ذراع (~ 230,383 متر)؛ على الناحية الجنوبية 7 سنتيمتر، وعلى الناحية الشمالية 13 سنتيمتر. كما أن زوايا الأركان كانت دقيقة جدا أيضا؛ فيبلغ انحراف الزاوية 2″ عند الركن الشمالي الغربي، و3′2 عند الركن الشمالي الشرقي، و3′33 عند الركن الجنوبي الشرقي و33 عند الجنوبي الغربي. وتبلغ زاوية ميل أسطح الهرم 51°50′40، وهو طبقا للمقياس المصري القديم ما يعادل ارتفاع ذراع مع إزاحة أفقية قدرها خمسة ونصف لعرض اليد. وهذا الميل ما يجعل الهرم يصل إلى ارتفاع 280 ذراع (= 146,59 متر). ويبلغ ارتفاع الهرم اليوم 138,75 متر، حيث هدم جزء من القمة على مر العصور. وطبقا للمقاييس المصرية القديمة: يبلغ 1 ذراع (ذراع ملكي قديم) = 7 عروض يد؛ لهذا تحسب زاوية ميل سطح الهرم بنسبة الارتفاع إلى الإزاحة الأفقية كالآتي: 7:5,5 = 14:11 = 28:22 = 280:220 = ظل زاوية 50,84 درجة. أسطح الهرم اليوم منحنية وليست مستوية تماما. ويبلغ انحناء السطح الشمالي إلى الداخل 0,94 متر.",
        english_content:"After the engineers chose the Giza Plateau, with its solid rocky floor, to build the pyramid, they and the workers began leveling the surface around the pyramid to be built to form the foundation. They measured and determined the locations of the corners so that each face of the pyramid would face the geographical directions: north, south, east, and west. The workers destroyed all the rocks on the pyramid's sides and moved the rubble away from the site. Thus, the engineers took advantage of a prominent part of the plateau rock to make it part of the bottom layer of the pyramid, and the plateau rock now appears in some parts of the pyramid in the first or second layer. They formed the part of the plateau inside the pyramid building to be a terrace to facilitate the laying of stones afterwards, and they filled the cracks in it with stones to complete the leveling. After that, they covered the first layer of the sides with a row of covering stones made of white limestone from the Tora quarries, so that the pyramid’s ribs and the right angles of its corners were aligned. The foundation was leveled very carefully: the difference in height does not exceed 21 millimeters. The measurements of the pyramid's sides were also carried out very carefully, despite the fact that the height of the rocky floor in the middle constituted an obstacle to measuring the axes. The amount of difference from the north direction is no more than 3′6″ towards the west. The lengths of the pyramid's sides do not differ much from the specified size of 440 cubits (~230,383 meters). On the southern side, 7 cm, and on the northern side, 13 cm. The corner angles were also very precise; The angle deviation is 2″ at the northwest corner, 3′2 at the northeast corner, 3′33 at the southeast corner, and 33 at the southwest. The angle of inclination of the pyramid's surfaces is 51°50′40, which according to the ancient Egyptian scale is equivalent to the height of an arm with a horizontal displacement of five and a half to the width of the hand. This tilt makes the pyramid reach a height of 280 cubits (= 146.59 metres). Today, the height of the pyramid is 138.75 meters, as part of the summit was demolished over the ages. According to ancient Egyptian standards: 1 cubit (ancient royal cubit) = 7 hand widths; For this reason, the angle of inclination of the pyramid's surface is calculated as a ratio of height to horizontal displacement as follows: 7:5.5 = 14:11 = 28:22 = 280:220 = tangent of 50.84 degrees. Today's pyramid surfaces are curved and not completely flat. The northern surface has an inward curvature of 0.94 metres.",
        event_id: event_4.id,
    )
    EventSection.create(
        arabic_title:"قلب الهرم والغلاف",
        english_title:"The heart of the pyramid and the cover",
        arabic_content:"كان هرم خوفو مغطى بطبقة ملساء من أحجار طرة البيضاء. إلا أن أغلب تلك الحجارة قد استغل في بناء القاهرة، مما يجعل الجزء الداخلي للهرم مرئية وطبقاته المتراصة. وترى بعض أجزاء التغطية في الطبقة السفلي من الهرم. وعلى بعض أحجار تلك التغطية توجد كتابات وعلامات كانت تكتبها مجموعات العمال أثناء العمل، وكانت تلك العلامات والكتابات تكتب باللون الأحمر. وكان الهرم وتغطيته ينتهي من أعلى بهرم صغير. هذا الهرم الصغير مفقود اليوم وأغلب الظن أنه كان من حجر من نوع آخر غير أحجار طرة، وإنما من البازلت أو الجرانيت.

        أحجار قلب الهرم تتكون من أحجار جيرية. وكانت الأحجار المقطوعة على أشكال مكعبات أو مستطيلات يصل ارتفاعها نحو 1 متر أو 1.5 متر مرصوصة أففيًا. ويوجد منها اليوم 203 طبقة، حيث تحطمت السبعة طبقات التي كانت تشكل القمة مع الزمن. يبلغ وزن القطعة الحجرية منها في الطبقات العليا نحو 1 طن وفي الطبقات السفلى بين 2 - 3 طن.
        
        أما لبناء حجرة الملك فقد بنيت بقطع حجرية كبيرة تزن بين 40 - 70 طن من الجرانبيت الأحمر، كانت تنقل إلى نحو ارتفاع 70 متر أثناء البناء لوضعها في أماكنها. كان العمال يكتبون علامات على بعض الأحجار أثناء عملية البناء، مثلما في بنايات خفض الضغط على أسقف الحجرات، وهي تعبر عن مقاييس وأسماء المجموعات العاملة، وفي حالتين تذكر اسم خوفو. وجدت بعض تلك الكتابات أيضا بالألوان الأحمر والأسود عل بعض أحجار الطبقتين 5 و 6، واكتشفها 'ليزلي غرينسيل' على أحجار عارية.",
        english_content:"The pyramid of Khufu was covered with a smooth layer of white Tura stones. However, most of these stones were used in the construction of Cairo, making the interior of the pyramid and its interconnected layers visible. You can see some parts of the coverage in the bottom layer of the pyramid. On some of the stones of this covering there are writings and marks that were written by groups of workers while working, and these marks and writings were written in red. The pyramid was covered with a small pyramid at the top. This small pyramid is missing today, and it is most likely that it was made of a different type of stone than the Tora stones, but rather made of basalt or granite.

        The core stones of the pyramid are made up of limestone. The stones were cut into cubes or rectangles, about 1 meter or 1.5 meters high, and stacked horizontally. Today there are 203 layers, as the seven layers that formed the top were destroyed with time. The weight of the stone piece in the upper layers is about 1 ton, and in the lower layers it is between 2 and 3 tons.
        
        As for the construction of the King’s Chamber, it was built with large stone pieces weighing between 40 and 70 tons of red granite, which were transported to a height of about 70 meters during construction to put them in their places. The workers used to write marks on some of the stones during the construction process, such as in pressure-reducing buildings on the ceilings of the rooms, which express the standards and names of the working groups, and in two cases mention the name of Khufu. Some of these writings were also found in red and black on some of the stones of layers 5 and 6, and were discovered by 'Leslie Greensill' on bare stones.",
        event_id: event_4.id,
    )
    EventSection.create(
        arabic_title:"الحجارة الخارجية",
        english_title:"Outer stones",
        arabic_content:"كان الهرم الأكبر مغلفا بطبقة ملساء من الحجر الجيري الأبيض، أما اليوم فكل ما يظهر من الهرم هو الطبقة المتدرجة أسفل الطبقة الملساء. ففي عام 1300 تراخت كميات كبيرة من حجارة الغلاف الخارجي نتيجة زلزال عنيف، ليتم بعدها استخراج تلك الحجارة واستخدامها في بناء التحصينات والمساجد في مدينة القاهرة. ويمكن رؤية تلك الحجارة حتى اليوم في إنشاءات مختلفة في مدينة القاهرة. وقد وصف مستكشفون لاحقون كميات كبيرة من الأنقاض عند سفح الهرم تراكمت من الانهيارات المتكرة لطبقة الحجارة الخارجية. وتمت إزالتها لاحقا أثناء عمليات الاستكشاف في الموقع. وعلى الرغم من ذلك، فقد تبقى القليل من حجارة الغلاف في مواقعها في بعض الأجزاء السفلية حول قاعدة الهرم.

        وقد وصف عالم المصريات فلندرز بيتري دقة تشكيل حجارة الغلاف بأنها 'مساوية لدقة عمل صانع النظارات اليوم، لكن على قياس فدادين' و'لوضع مثل هذه الحجارة في الموضع المحدد هو عمل دقيق، ولكن للقيام بذلك بدون إسمنت في المفاصل يبدو شبه مستحيل'. وقد اقترح البعض انه تم استخدام الملاط الذي وفر سطح مستوي ساعد البنائين على تثبيت تلك الحجارة في أماكنها، ليجعل بذلك تلك المهمة المستحيلة ممكنة.",
        english_content:"The Great Pyramid was covered with a smooth layer of white limestone, but today all that is visible of the pyramid is the stepped layer below the smooth layer. In the year 1300, large quantities of the stones of the outer shell fell as a result of a violent earthquake, after which those stones were extracted and used in the construction of fortifications and mosques in the city of Cairo. These stones can still be seen today in various constructions in Cairo. Later explorers described large amounts of rubble at the foot of the pyramid, accumulated from repeated collapses of the outer stone layer. They were later removed during excavations at the site. However, a few casing stones may remain in place in some of the lower parts around the base of the pyramid.

        The Egyptologist Flinders Petrie described the precision of shaping the casing stones as 'equal to the precision of the work of an optician today, but on the scale of acres' and 'to place such stones in the exact position is a delicate work, but to do it without cement in the joints seems almost impossible'. Some have suggested that mortar was used, which provided a flat surface that helped the builders hold these stones in place, thus making this impossible task possible.",
        event_id: event_4.id,
    )
    event_5 = Event.create(
        type: "PeaceTreaty",
        arabic_title: "بناء هرم خفرع",
        english_title: "Building the Pyramid of Khufu",
        start_date: "2570",
        end_date: "2546",
        arabic_info:"هرم خفرع هو أحد أهرامات الجيزة في مصر. بناه الملك خفرع رابع ملوك الأسرة الرابعة ابن الملك خوفو. تزوج من الأميرة مراس عنخ. حكم ست وعشرين سنة. بني الهرم الثاني من أهرام الجيزة، وهو أقل ارتفاعا من هرم أبيه (خوفو). كان ارتفاعه 143 مترا والآن 136 مترا.

        شيد فوق مساحة 215 مترا مربعا.وله مدخلان في الجهة الشمالية. وما زال يحتفظ بجزء من كسوته الخارجية عند القمة.عثر ضمن مجموعته الهرمية على تماثيل من حجر الشست في معبد الوادي الخاص ز من بينها تمثال من أجمل ما أنتجه فن النحت المصري، وهو موجود بالمتحف المصري، وينسب له نحت صخرة تمثال أبي الهول.
        
        يقع هرم خفرع جنوب غرب هرم أبيه خوفو. ويبلغ ارتفاعه 143,5 متراً وطول كل ضلع 215,5 متراً، وزاوية ميله 53,10ْ. يقع في مستوى سطح الأرض، والمدخل يؤدي إلى ممر هابط، سقفه من الجرانيت وزاوية انحداره 22ْ. وينتهي عند متراس يفضي إلى ممر أفقي، ثم ممر منحدر يؤدي إلى حجيرة يطلق عليها خطأ حجرة الدفن وهي فارغة منحوتة في الصخر، ويؤدي الدهليز إلى متراس آخر يرتفع إلى أعلى بممر أفقي ينتهي بحجرة الدفن، وهذه الحجرة سقفها جمالوني مشيد بالحجر الجيري، وتكاد تكون منتصف الهرم، أطلق خفرع على هرمه اسم(العظيم).",
        english_info:"The Pyramid of Khafre is one of the pyramids of Giza in Egypt. It was built by King Khafre, the fourth king of the Fourth Dynasty, son of King Khufu. He married Princess Ankh berths. He ruled for twenty-six years. The second pyramid of Giza was built, and it is lower in height than his father's pyramid (Khufu). Its height was 143 meters and now it is 136 metres.

        It was built on an area of 215 square meters. It has two entrances on the northern side. It still retains part of its outer covering at the top. Within its pyramid collection, schist stone statues were found in the Wadi Khas Temple, including one of the most beautiful statues produced by Egyptian sculpture. It is located in the Egyptian Museum, and he is credited with carving the rock of the Sphinx.
        
        Khafre's pyramid is located southwest of the pyramid of his father Khufu. Its height is 143.5 metres, the length of each side is 215.5 metres, and its inclination angle is 53.10 degrees. It is located at ground level, and the entrance leads to a descending corridor, with a granite ceiling and a slope angle of 22 degrees. It ends at a rampart that leads to a horizontal passage, then a sloped passage that leads to a chamber mistakenly called the burial chamber, which is empty and carved into the rock. The vestibule leads to another rampart that rises upwards with a horizontal passage that ends with the burial chamber. This chamber has a trussed roof built of limestone, and is almost the middle of The Pyramid: Khafre called his pyramid the Great.",
        character_id: character_17.id,
        sub_era: sub_era_2
    )
    event_5.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/1/1b/Khafre%27s_Pyramid343.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"الحجم",
        english_title:"Size",
        arabic_content:"يبلغ طول قاعدة الهرم 215.5 متر (706 قدم) وترتفع حتى ارتفاع 136.4 متر (448 قدم) . وهي مصنوعة من كتل الحجر الجيري التي يزيد وزن كل منها عن 2 طن. يرتفع منحدر الهرم بزاوية 53 درجة 13 بوصة ، وهو أكثر انحدارًا من جاره هرم خوفو ، الذي تبلغ زاويته 51 درجة 50'24 . يقع هرم خفرع على قاعدة صخرية أعلى 10 أمتار (33 قدم) أعلى من هرم خوفو ، مما يجعله يبدو أطول.",
        english_content:"The base of the pyramid is 215.5 meters (706 feet) long and rises to a height of 136.4 meters (448 feet). It is made of limestone blocks weighing over 2 tons each. The pyramid's slope rises at an angle of 53 degrees 13', which is steeper than its neighbor the Pyramid of Khufu, which has an angle of 51 degrees 50'24. The Pyramid of Khafre sits on a rock base 10 meters (33 ft) higher than the Pyramid of Khufu, making it appear taller.",
        event_id: event_5.id,
    )
    EventSection.create(
        arabic_title:"التاريخ",
        english_title:"History",
        arabic_content:"من المحتمل أن الهرم قد تم فتحه وسرقته خلال الفترة الانتقالية الأولى. خلال الأسرة المصرية التاسعة عشر ، أخذ المشرف على بناء المعبد حجارة الغلاف من الهرم لبناء معبد في أون بناءً على أوامر رمسيس الثاني.

        سجل المؤرخ العربي ابن عبد السلام أن الهرم تم فتحه في 1372 م. على جدار حجرة الدفن ، هناك نقوش لغة عربية ربما يرجع تاريخها إلى نفس الوقت.
        
        من غير المعروف متى تم سرقة ما تبقى من حجارة الغلاف ؛ من المفترض أنها كانت لا تزال في مكانها بحلول عام 1646 ، عندما كتب جون جريفز ، أستاذ علم الفلك في جامعة أكسفورد في كتابه Pyramidographia ، أنه بينما لم تكن أحجارها كان السطح كبيرًا أو منتظمًا كما هو الحال في خوفو ، وكان السطح أملسًا وخاليًا من انتهاكات عدم المساواة ، باستثناء الجنوب.
        
        تم استكشاف الهرم لأول مرة في العصر الحديث بواسطة جوفاني باتيستا بلزوني في 2 مارس 1818 ، عندما تم العثور على المدخل الأصلي في الجانب الشمالي. كان بلزوني يأمل في العثور على دفن سليم لكن الغرفة كانت فارغة باستثناء تابوت مفتوح وغطائها مكسور على الأرض.
        
        تم إجراء أول استكشاف كامل من قبل جون شاي بيرينج  في عام 1837. في عام 1853 ، قام أوجوست مارييت بحفر جزئي في معبد وادي خفرع ، وفي عام 1858 ، أثناء استكمال تطهيره ، تمكن من اكتشاف تمثال ديوريت لخفرع.",
        english_content:"It is likely that the pyramid was opened and stolen during the First Intermediate Period. During the 19th Dynasty of Egypt, the temple construction supervisor took the casing stones from the pyramid to build a temple at On on the orders of Ramesses II.

        The Arab historian Ibn Abd al-Salam recorded that the pyramid was opened in 1372 AD. On the wall of the burial chamber, there are Arabic language inscriptions probably dating to the same time.
        
        It is not known when the remaining casing stones were stolen; It was supposedly still in place by 1646, when John Greaves, professor of astronomy at Oxford University, wrote in his book Pyramidographia, that while its stones were not as large or regular as those of Khufu, the surface was smooth and free of irregularity violations. Equality, except in the South.
        
        The pyramid was first explored in modern times by Giovanni Battista Belzoni on March 2, 1818, when the original entrance was found on the north side. Belzoni had hoped to find an intact burial but the room was empty except for an open coffin with its lid broken on the floor.
        
        The first complete exploration was undertaken by John Shaye Bering in 1837. In 1853, Auguste Mariette carried out a partial excavation of the Valley Temple of Khafre, and in 1858, while completing its clearing, he was able to discover a diorite statue of Khafre.",
        event_id: event_5.id,
    )
    EventSection.create(
        arabic_title:"البناء",
        english_title:"Construction",
        arabic_content:"مثل الهرم الأكبر ، تم استخدام نتوء صخري في القلب. بسبب منحدر الهضبة ، تم قطع الركن الشمالي الغربي 10 أمتار (33 قدمًا) من باطن الصخور وتم بناء الركن الجنوبي الشرقي.

        الهرم مبني من مسارات أفقية. الأحجار المستخدمة في القاع كبيرة جدًا ، ولكن مع ارتفاع الهرم ، تصبح الحجارة أصغر ، ويصبح سمكها 50 سم (20 بوصة) عند القمة. تكون الدورات قاسية وغير منتظمة في النصف الأول من ارتفاعها ، لكن هناك نطاقًا ضيقًا من البناء العادي واضحًا في الجزء الأوسط من الهرم. في الركن الشمالي الغربي للهرم ، تم تشكيل حجر الأساس في درجات. تغطي أحجار الغلاف الثلث العلوي من الهرم ، لكن الهرم وجزء من القمة مفقودة.
        
        تم صنع الطبقة السفلية لأحجار الغلاف من الجرانيت الوردي ولكن تم تغليف باقي الهرم بالحجر الجيري من طرة . يكشف الفحص الدقيق أن حواف زوايا أحجار الغلاف المتبقية ليست مستقيمة تمامًا ، ولكنها متداخلة ببضعة مليمترات. تقول إحدى النظريات أن هذا يرجع إلى الاستقرار من النشاط الزلزالي. تفترض نظرية بديلة أن المنحدر على الكتل قد تم قطعه للشكل قبل وضعه بسبب مساحة العمل المحدودة باتجاه قمة الهرم.",
        english_content:"Like the Great Pyramid, a rock outcrop was used for the core. Because of the slope of the plateau, the northwest corner was cut off 10 meters (33 ft) of soffit and the southeast corner was built up.

        The pyramid is built of horizontal paths. The stones used at the bottom are very large, but as the pyramid rises, the stones become smaller, becoming 50 cm (20 in) thick at the top. The courses are rough and irregular in the first half of its height, but a narrow band of regular masonry is evident in the central part of the pyramid. At the northwest corner of the pyramid, the foundation stone is shaped into steps. Casing stones cover the upper third of the pyramid, but the pyramid and part of the summit are missing.
        
        The bottom layer of the casing stones was made of pink granite but the rest of the pyramid was encased in limestone from Tura. Closer examination reveals that the edges of the corners of the remaining casing stones are not perfectly straight, but are overlapping by a few millimetres. One theory is that this is due to stability from seismic activity. An alternative theory posits that the slope on the blocks was cut to shape before being placed due to the limited working space towards the top of the pyramid.",
        event_id: event_5.id,
    )
    EventSection.create(
        arabic_title:"داخلي",
        english_title:"Interior",
        arabic_content:"يؤدي مدخلان إلى حجرة الدفن ، أحدهما يوجد على ارتفاع 11.54 متر (37.9 قدم) أعلى وجه الهرم والآخر يوجد عند قاعدة الهرم. لا تتماشى هذه الممرات مع الخط المركزي للهرم ، ولكنها تقابلها جهة الشرق بمقدار 12 متر (39 قدم). الممر السفلي النازل محفور بالكامل من حجر الأساس ، ينزل ، ويمر أفقيًا ، ثم يصعد لينضم إلى الممر الأفقي المؤدي إلى حجرة الدفن.

        إحدى النظريات حول سبب وجود مدخلين هي أن الهرم كان من المفترض أن يكون أكبر بكثير مع تحول القاعدة الشمالية 30 متر (98 قدم) إلى الشمال مما يجعل هرم خفرع أكبر بكثير من هرم أبيه. هذا من شأنه أن يضع المدخل إلى الممر السفلي النازل داخل بناء الهرم. بينما يتم قطع حجر الأساس بعيدًا عن الهرم على الجانب الشمالي منه على الجانب الغربي ، فليس من الواضح أن هناك مساحة كافية على الهضبة لجدار السياج وشرفة الهرم. النظرية البديلة هي أنه ، كما هو الحال مع العديد من الأهرامات السابقة ، تم تغيير المخططات وتم نقل المدخل في منتصف الطريق خلال البناء.
        
        توجد غرفة فرعية ، مساوية في الطول لغرفة الملك في هرم خوفو ،  التي تفتح إلى الغرب من الممر السفلي ، الغرض منها انه غير مؤكد. يمكن استخدامه لتخزين القرابين ، أو تخزين معدات الدفن ، أو قد يكون غرفة سرداب. الممر العلوي النازل مغطى بالجرانيت وينحدر للانضمام إلى الممر الأفقي المؤدي إلى حجرة الدفن.
        
        تم نحت حجرة الدفن من حفرة في الصخر. السقف مبني من عوارض جملونية من الحجر الجيري. الغرفة مستطيلة الشكل ، 14.15 متر × 5 متر (46.4 × 16.4 قدمًا) ، وموجهة بين الشرق والغرب. تم نحت تابوت خفرع من كتلة صلبة من الجرانيت وغرق جزئيًا في الأرض ، ووجد بلزوني فيه عظام حيوان ، ربما ثور. من المحتمل أن تحتوي حفرة أخرى في الأرضية على صندوق كانوبي ، وكان من الممكن أن يكون غطاءها أحد ألواح الرصيف.",
        english_content:"Two entrances lead to the burial chamber, one of which is located 11.54 meters (37.9 ft) above the face of the pyramid and the other is located at the base of the pyramid. These corridors do not align with the center line of the pyramid, but offset it to the east by 12 meters (39 ft). The lower descending passage is entirely excavated from bedrock, descends, passes horizontally, and then ascends to join the horizontal passage leading to the burial chamber.

            One theory as to why there were two entrances is that the pyramid was meant to be much larger with the northern base shifted 30 meters (98 ft) to the north making Khafre's pyramid much larger than his father's pyramid. This would place the entrance to the lower descending passage within the pyramid construction. While the bedrock is cut farther away from the pyramid on the north side than on the west side, it is not clear that there was enough space on the plateau for the enclosure wall and terrace of the pyramid. An alternative theory is that, as with many earlier pyramids, the plans were changed and the entrance was moved midway through construction.
            
            There is a subsidiary chamber, equal in length to the King's Chamber in the Pyramid of Khufu, which opens to the west of the lower passage, the purpose of which is uncertain. It may have been used to store offerings, store burial equipment, or it may have been a crypt room. The descending upper passage is covered with granite and descends to join the horizontal passage leading to the burial chamber.
            
            The burial chamber was carved out of a hole in the rock. The roof is built of limestone gabled beams. The room is rectangular in shape, 14.15 m × 5 m (46.4 × 16.4 ft), and oriented east-west. Khafre's sarcophagus was carved from a solid block of granite and partially sunk into the ground, and Belzoni found in it the bones of an animal, perhaps a bull. Another hole in the floor likely contained a canopic box, the lid of which could have been one of the pavement slabs.",
        event_id: event_5.id,
    )

    event_6 = Event.create(
        type: "PeaceTreaty",
        arabic_title:"بناء ابو الهول",
        english_title:"Building the Sphinx",
        start_date: "2494",
        end_date: "2520",
        arabic_info:"أبو الهول هو تمثال لمخلوق أسطوري بجسم أسد ورأس إنسان وقد نحت من الحجر الكلسيّ، ومن المرجح أنه كان في الأصل مغطى بطبقة من الجص وملون، ولا زالت آثار الألوان الأصلية ظاهرة بجانب إحدى أذنيه.

        يقع على هضبة الجيزة على الضفة الغربية من النيل في الجيزة، مصر، ويعد أبو الهول أيضاً حارساً للهضبة. وهو أقدم المنحوتات الضخمة المعروفة، يبلغ طوله نحو 73.5 متر، من ضمنها 15 متر طول قدميه الأماميتين، وعرضه 19.3 م، وأعلى ارتفاع له عن سطح الأرض حوالي 20 متراً إلى قمة الرأس. يعتقد أن قدماء المصريين بنوه في عهد الملك خفرع (2558 ق.م -2532 ق.م)، باني الهرم الأوسط في الجيزة.
        
        
        رأس أبو الهول.
        ومن المعتقد أن تمثال أبي الهول كان محجراً قبل أن يفكر الملك خفرع في نحته على شكل تمثال، وينظر هذا التمثال ناحية الشرق لذا قد تم تغيير الجهات الأصلية في القرن الماضي لتوافق نظر أبي الهول.",
        english_info:"The Sphinx is a statue of a mythical creature with the body of a lion and the head of a human. It was carved from limestone. It was likely that it was originally covered with a layer of plaster and colored, and traces of the original colors are still visible next to one of its ears.

        Located on the Giza Plateau on the west bank of the Nile in Giza, Egypt, the Sphinx is also a guardian of the plateau. It is the oldest known huge sculpture. It is about 73.5 meters long, including 15 meters the length of its front feet, and 19.3 meters wide, and its highest height above the ground is about 20 meters to the top of the head. It is believed that the ancient Egyptians built it during the reign of King Khafre (2558 BC - 2532 BC), the builder of the middle pyramid in Giza.
        
        
        Head of the Sphinx.
        It is believed that the Sphinx was quarried before King Khafre thought of sculpting it into the shape of a statue. This statue looks to the east, so the original directions were changed in the last century to match the view of the Sphinx.",
        character_id: character_17.id,
        sub_era: sub_era_2
    )
    event_6.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f6/Great_Sphinx_of_Giza_-_20080716a.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"البناء",
        english_title:"Construction",
        arabic_content:"أبو الهول هو تمثال منحوت من إحدى صخور هضبة الجيزة، والتي كانت أيضًا بمثابة مقلع لـ أهرام الجيزة والآثار الأخرى في المنطقة. نيموليت الحجر الجيري للمنطقة يتكون من طبقات ذات مقاومة مختلفة لتعرية الرياح، ما يفسر التدهور غير المتكافئ الظاهر في جسم أبو الهول. الجزء السفلي من الجسم، بما في ذلك الساقين، مكون من صخرة صلبة. أما باقي جسم الحيوان حتى رقبته فيتكوّن من طبقات أكثر ليونة تعرضت لتفكك كبير. الطبقة التي نحت فيها الرأس هي أصعب بكثير. من المعروف وجود عدد من الأعمدة «المسدودة» داخل وأسفل جسد أبو الهول العظيم، على الأرجح حفرها صائدي الكنوز ولصوص القبور قبل عام 1925، كان هناك فجوة كبير مماثلة لتلك الموجودة في الجزء العلوي من رأس أبو الهول، يُعتقد أنها ربما كانت نقطة تثبيت لتاج أو غطاء رأس منحوت تمت إضافته خلال فترة المملكة المصرية الحديثة.",
        english_content:"The Sphinx is a statue carved from one of the rocks of the Giza Plateau, which also served as a quarry for the Pyramids of Giza and other monuments in the area. The Nimolite limestone of the area consists of layers with varying resistance to wind erosion, which explains the uneven deterioration seen in the body of the Sphinx. The lower body, including the legs, is made of solid rock. The rest of the animal's body, up to its neck, consists of softer layers that have undergone significant disintegration. The layer where the head is sculpted is much more difficult. There are known to be a number of 'bolted' shafts inside and below the body of the Great Sphinx, most likely dug by treasure hunters and grave robbers before 1925. There was a large recess similar to that at the top of the Sphinx's head, which is believed to have been a mounting point for a crown or A carved headdress added during the New Kingdom period.",
        event_id: event_6.id,
    )
    EventSection.create(
        arabic_title:"الأصل والهوية",
        english_title:"Origin and Identity",
        arabic_content:"يعد تمثال أبو الهول أحد أكبر وأقدم التماثيل في العالم، لكن بعض الحقائق الأساسية عنه، مثل تاريخ بنائه، ومن قام به ولأي غرض، لا تزال محل نقاش.
        من المستحيل تحديد الاسم الذي أطلقه بناة أبو الهول على تمثالهم، حيث لا يظهر تمثال أبو الهول في أي نقش معروف لـ المملكة المصرية القديمة ولا توجد نقوش في أي مكان تصف بنائه أو الغرض الأصلي منه. في المملكة المصرية الحديثة يتم تبجيل أبو الهول باعتباره الإله الشمسي حور -إم-أخيت ((بالعربية: حورس في الأفق) ، (بالقبطية: ϩⲁⲣⲙⲁϣⲓ) ، (بالهيلينية: هارماشيس).
        الاسم الشائع الاستخدام 'سفنكس' أُعطي له في العصور الكلاسيكية القديمة، بعد حوالي 2000 عام من التاريخ المقبول عمومًا لبناءه واسم سفنكس هو إشارة إلى سفنكس الوحش الأسطوري اليوناني مع رأس إنسان أو صقر أو قطة أو شاة وجسم أسد بجناحي نسر. (على الرغم من أن أبو الهول الكبير، مثل باقي تماثيل أبو الهول المصرية الأخرى، له رأس رجل وليس له أجنحة مثل سفنكس اليوناني). تأتي الكلمة الإنجليزية سفنكس من الكلمة اليونانية القديمة سفنكس، على اسم الكائن الأسطوري اليوناني.",
        english_content:"The Great Sphinx is one of the largest and oldest statues in the world, but some basic facts about it, such as when it was built, who built it and for what purpose, are still subject to debate.
        It is impossible to determine what name the Sphinx's builders gave their statue, as the Sphinx does not appear in any known inscription of the Old Kingdom of Egypt and there are no inscriptions anywhere describing its construction or original purpose. In New Kingdom Egypt the Sphinx is venerated as the solar god Hor-em-Akhet (Arabic: Horus on the Horizon), (Coptic: ϩⲁⲣⲙⲁϣⲓ), (Hellenized: Harmachis).
        The commonly used name 'Sphynx' was given to it in classical antiquity, about 2,000 years after the generally accepted date of its construction. The name Sphinx is a reference to the Greek mythological monster Sphinx with the head of a human, hawk, cat or sheep and the body of a lion with the wings of an eagle. (Although the Great Sphinx, like other Egyptian sphinxes, has the head of a man and does not have wings like the Greek Sphinx.) The English word sphynx comes from the ancient Greek word sphinx, after the Greek mythological creature.",
        event_id: event_6.id,
    )
    event_7 = Event.create(
        type: "PeaceTreaty",
        arabic_title: "بناء هرم منكاورع",
        english_title: "Building the Menkaure Pyramid",
        start_date: "2532",
        end_date: "2503",
        arabic_info:"هرم منكاورع أو كما هو معروف باسمه المحرّف هرم منقرع، هو أصغر الأهرامات الثلاثة الرئيسية لمجمع أهرامات الجيزة يقع على هضبة الجيزة في الضواحي الجنوبية الغربية للقاهرة، مصر. يُعتقد أنه بني ليكون بمثابة مقبرة للفرعون المصري منكاورع (ابن الملك خفرع) من الأسرة المصرية الرابعة. يبلغ طول كل ضلع من أضلاعه 108.5 متراً وارتفاعه 65.5 متراً، يبلغ طوله حاليا 62 متراً وذلك بعد سقوط كسوته الخارجية.",
        english_info:"The Pyramid of Menkaure, or as it is known by its distorted name, the Pyramid of Menkaure, is the smallest of the three main pyramids of the Giza pyramid complex located on the Giza Plateau in the southwestern suburbs of Cairo, Egypt. It is believed to have been built to serve as a tomb for the Egyptian Pharaoh Menkaure (son of King Khafre) of the Fourth Dynasty of Egypt. The length of each side is 108.5 meters and its height is 65.5 metres. Its length is currently 62 metres, after the fall of its outer covering.",
        character_id: character_18.id,
        sub_era: sub_era_2
    )
    event_7.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/3/3b/Pyramid_1.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"الحجم والبناء",
        english_title:"Size and Construction",
        arabic_content:"كان هرم منكاورع يبلغ ارتفاعه الأصلي 65.5 متر (215 قدم) ، وكان أصغر الأهرامات الثلاثة الرئيسية في مجمع أهرامات الجيزة. يبلغ ارتفاعه الآن 61 متر (200 قدم) وقاعدتها 108.5 متر (356 قدم). زاوية ميله حوالي 51 درجة 20-25 درجة مئوية. شيد من الحجر الجيري من طرة والجرانيت من أسوان. تم صنع الدورات الستة عشر الأولى من الخارج من الجرانيت الأحمر. تم تغليف الجزء العلوي بالطريقة العادية مع الحجر الجيري من طرة. ترك جزء من الجرانيت في الخام. تساعد المشاريع غير المكتملة مثل هذا الهرم علم الآثار في فهم الأساليب المستخدمة لبناء الأهرامات والمعابد. تقع جنوب هرم منكاورع ثلاثة أهرامات تابعة، ويصاحب كل منها معبد وبنية تحتية. أقصى الشرق هو أكبر هرم حقيقي. غلافه مصنوع جزئيًا من الجرانيت، مثل الهرم الرئيسي، ويُعتقد أنه اكتمل بسبب هرم الحجر الجيري الذي تم العثور عليه بالقرب منه. لم يتقدم أي من الاثنين الآخرين بعد بناء اللب الداخلي.
        قبل الوصول إلى حجرة الدفن الجرانيتية بفترة وجيزة، يؤدي باب في الجدار الشمالي لقاعة المدخل عبر درج مكون من ست درجات إلى سلسلة من ستة متاجر مرتبة بأسنان مشط منحوتة في الصخر ووجهتها هي عادة ما يتم تفسيرها على أنها الغرف التي تم فيها الاحتفاظ بالجرار الكانوبية وتيجان مصر العليا ومصر السفلى.
        لذلك يبدو أن ثلاثة مشاريع اتبعت بعضها البعض في قبر الملك. أول حجم متواضع يتوافق مع الممر غير المكتمل. توسيع ثانٍ للمشروع الأول مع غرفة انتظار وغرفة مسلفة وغرفة كبيرة تسبق حجرة الدفن التي سيتم التخلي عنها في النهاية. أخيرًا، تم تضمين مشروع ثالث في الثاني من خلال تكملة ممر تحت الأرض يؤدي مباشرة إلى حجرة الدفن الجرانيتية المجهزة بالمخازن لإيواء جنازة الملك. إذا بدا أن المشروع الأول قد تم التخلي عنه بالفعل، فمن الممكن أن يكون الثاني والثالث قد تم التخطيط لهما وتنفيذهما في نفس الوقت مما يفسر أبعاد الغرفة المستطيلة الكبيرة التي من شأنها أن تكون بمثابة غرفة مناورة من أجل ترتيب الكتل. وعوارض من الجرانيت تغطي حجرة دفن الملك.
        هذه هي المرة الأولى التي يتم فيها تطوير الشقق الجنائزية لهرم ملكي. سوف تتولى المقابر الملكية المعاصرة وتطور مكونات الشقق الجنائزية لهرم منكاورع. يمكننا الاستشهاد بأمثلة لمقابر خنت كاوس وشبسسكاف وستحتفظ الأهرامات الملكية الأسرة المصرية الخامسة بالعناصر الإرشادية، بما في ذلك غرفة الانتظار التي تسبق حجرة الأمشاط، القبة مقسمة إلى غرفة انتظار وغرفة تابوت وغرف تخزين لم يتم توضيح دورها بعد اليوم.
        من ناحية أخرى، لا تزال زخرفة غرفة الانتظار الأولى وتابوت منكاورع فريدة من نوعها ولن نجد مثل هذه الزخارف المتقنة في الأهرامات الملكية قبل الأسرة المصرية السادسة ، بعد أكثر من قرن ونصف. بهذا المعنى، فإن هرم منكاورع هو استثناء ويمثل النموذج الأولي للأهرامات الكلاسيكية في العصور اللاحقة.",
        english_content:"The Pyramid of Menkaure had an original height of 65.5 meters (215 ft), and was the smallest of the three main pyramids in the Giza pyramid complex. It now stands 61 meters (200 ft) high and has a base of 108.5 meters (356 ft). Its inclination angle is about 51° 20-25°. It was constructed of limestone from Tura and granite from Aswan. The first sixteen courses on the outside are made of red granite. The upper part was covered in the usual way with limestone from Tura. Leave part of the granite in the rough. Unfinished projects like this pyramid help archeology understand the methods used to build pyramids and temples. South of the Pyramid of Menkaure are three satellite pyramids, each accompanied by a temple and infrastructure. Farther east is the largest true pyramid. Its casing is partly made of granite, like the main pyramid, and is believed to have been completed due to the limestone pyramid that was found nearby. Neither of the other two progressed after the inner core was constructed.
        Shortly before reaching the granite burial chamber, a door in the north wall of the entrance hall leads via a six-step staircase to a series of six shops arranged with comb teeth carved into the rock whose destination is usually interpreted as the rooms in which the Canopic jars and crowns of Egypt were kept. Upper and Lower Egypt.
        So it seems that three projects followed each other into the king's tomb. The first modest size corresponds to the unfinished corridor. A second expansion of the first project with an antechamber, harrow room, and large chamber precedes the burial chamber that will eventually be abandoned. Finally, a third project was included in the second by completing an underground passage leading directly to the granite burial chamber equipped with storerooms to house the king's funeral. If the first project appears to have already been abandoned, it is possible that the second and third were planned and implemented at the same time which explains the dimensions of the large rectangular room that would have served as a maneuvering room for the arrangement of the blocks. Granite beams cover the king's burial chamber.
        This is the first time that funerary apartments have been developed for a royal pyramid. The contemporary royal tombs will take over and develop the funerary apartment components of the Menkaure Pyramid. We can cite examples of the tombs of Khent-Kaos and Shepseskaf. The royal pyramids of the Fifth Dynasty of Egypt will retain indicative elements, including the antechamber that preceded the comb chamber. The dome is divided into an antechamber, a sarcophagus chamber, and storage rooms whose role has not yet been clarified.
        On the other hand, the decoration of the first antechamber and the sarcophagus of Menkaure is still unique and we will not find such elaborate decorations in the royal pyramids before the Sixth Dynasty of Egypt, more than a century and a half later. In this sense, the Pyramid of Menkaure is an exception and represents the prototype of the classical pyramids of later eras.",
        event_id: event_7.id,
    )
    EventSection.create(
        arabic_title:"الطريق",
        english_title:"The Way",
        arabic_content:"من الجسر الذي يبلغ طوله ستمائة وخمسة أمتار، لم يتبق سوى الموقع الذي ربط المعبد في وادي مجمع الهرم المصري بالمعبد الجنائزي الملحق به محيط هرم الملك. كان الوصول إلى هذا الطريق عبر بابين. وضع أحدهما في الفناء الأمامي لمعبد الوادي والثاني إلى الجنوب من الغرف الداخلية الواقعة إلى الغرب من فناء المعبد نفسه. لقد سمحوا بالوصول إلى ممر يتجاوز المعبد على جانبه الجنوبي ويلحق بالمحور المركزي للمجمع في الخلف. لذلك يمكن للمواكب أن تأخذ الجسر مباشرة لتتسلق إلى الهرم ومعبدها الجنائزي، أو بعد أن تقوم بطقوس التطهير للقرابين في الفناء الكبير لمعبد الوادي، تمر عبر الغرف الغربية وتأخذ الممر. عموديًا على محور المعبد، انضم إلى الجسر قبل وقت قصير من تفرعه باتجاه الجزء الخلفي من المعبد.
        ربما لم يكتمل هذا الجسر أبدًا بسبب الوفاة المبكرة للملك. في الواقع، يبدو أن كل شيء يشير من الطلاء غير المكتمل للهرم، من خلال مرحلتي بناء المعبد الجنائزي وحالة الطريق، إلى أن منكاورع لم يكن لديه وقت لإكماله مجمع جنازته. كان شبسسكاف خليفته هو الذي تعهد بإكمال المجموعة باستخدام الطوب اللبن للجدران التي تعلو الطريق. شكل ممرًا طويلًا، ربما كان غطاءه مصنوعًا من نفس المواد وشكل قوسًا. يؤدي الممر الطويل مباشرة إلى الفناء الكبير المكشوف للمعبد العالي، الموضوعة في محور النصب، مروراً بممر تشير سماكة الأساسات والممرات الأولى إلى أن هذا الجزء قد تم تصميمه لدعم قوي. جدران قادرة على دعم ألواح السقف الكبيرة.",
        english_content:"Of the bridge, which was six hundred and five meters long, only the site remained that connected the temple in the valley of the Egyptian pyramid complex with the mortuary temple attached to it surrounding the king's pyramid. Access to this road was through two doors. One of them was placed in the front courtyard of the Valley Temple and the second to the south of the inner rooms located to the west of the courtyard of the temple itself. They allowed access to a corridor that bypassed the temple on its southern side and joined the central axis of the complex at the rear. So the processions could take the bridge directly to climb to the pyramid and its mortuary temple, or, after performing the purification rites of sacrifice in the great courtyard of the valley temple, pass through the western chambers and take the passage. Perpendicular to the temple axis, join the bridge shortly before it branches off towards the back of the temple.
        This bridge was probably never completed due to the early death of the king. In fact, everything from the incomplete painting of the pyramid, through the two stages of construction of the mortuary temple and the condition of the road, seems to indicate that Menkaure did not have time to complete his funerary complex. It was Shepsskav, his successor, who undertook to complete the ensemble by using mud bricks for the walls above the road. It formed a long corridor, the cover of which was probably made of the same materials and formed an arch. The long corridor leads directly to the large open courtyard of the High Temple, placed in the axis of the monument, passing through a corridor. The thickness of the foundations and the first aisles indicates that this part was designed for strong support. Walls capable of supporting large roof panels.",
        event_id: event_7.id,
    )
    event_8 = Event.create(
        type: "PeaceTreaty",
        arabic_title: "بناء معبد الشمس",
        english_title: "Building the Sun Temple",
        start_date: "2455",
        end_date: "2420",
        arabic_info:"معبد الشمس كان معبدًا مصريًا قديمًا مكرسًا لعبادة إله الشمس رع، بناه الفرعون أوسركاف مؤسس الأسرة الخامسة في مصر في بداية القرن الخامس والعشرين قبل الميلاد. يقع معبد الشمس بين جنوب أهرامات أبوصير وشمال مدينة أبو غراب على بعد حوالي 15 كم (9.3 ميل) جنوب مدينة القاهرة. كان الاسم القديم للمعبد «نخن رع» والذي يعني «معقل رع». يتكون مجمع المعبد من عدة أجزاء أهمها المعبد الرئيسي المبني على تل منخفض يقع على حافة الصحراء، ويمكن الوصول إليه عبر جسر من معبد وادي يقع بالقرب من منطقة الزراعة ونهر النيل.",
        english_info:"The Temple of the Sun was an ancient Egyptian temple dedicated to the worship of the sun god Ra, built by Pharaoh Userkaf, founder of the Fifth Dynasty in Egypt, at the beginning of the twenty-fifth century BC. The Temple of the Sun is located between the south of the Abusir pyramids and the north of the city of Abu Ghurab, about 15 km (9.3 mi) south of Cairo. The ancient name of the temple was 'Nekhenre', which means 'stronghold of Ra'. The temple complex consists of several parts, the most important of which is the main temple built on a low hill located on the edge of the desert, and can be reached via a bridge from a valley temple located near the agricultural area and the Nile River.",
        character_id: character_19.id,
        sub_era: sub_era_2
    )
    event_8.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f5/Temple-solaire-abousir.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"التنقيب",
        english_title:"Excavation",
        arabic_content:"اكتُشف معبد الشمس من قبل العالم كارل ريتشارد لبسيوس رئيس البعثة البروسية إلى مصر في عام 1842. لم يتعرف لبسيوس على معبد الشمس في البداية وقام بإدارجه في قائمته للأهرامات تحت الرقم السابع عشر. قام لبسيوس باستكشاف المعبد من سطحه الخارجي فقط. بدأت أولى عمليات الحفر للمعبد بعد ذلك بكثير (في عامي 1907 و 1913) تحت إشراف العالم الألماني لودفيج بورشاردت الذي كان يعمل بشكل أساسي في المقبرة الملكية القريبة في أبو صير. أما عمليات التنقيب الدقيقة في المعبد فلم تبدأ إلا بعد 40 عاما (بين عامي 1954 و 1957) وكانت هذه المرة بواسطة بعثة ألمانية سويسرية مشتركة بقيادة العالم الألماني هربرت ريك ونُشرت نتائجها في مجلدين.",
        english_content:"The Temple of the Sun was discovered by the scientist Karl Richard Lepsius, head of the Prussian expedition to Egypt, in 1842. Lepsius did not recognize the Temple of the Sun at first and included it in his list of pyramids under the number seventeen. Lepsius explored the temple only from its outer surface. The first excavations of the temple began much later (in 1907 and 1913) under the supervision of the German scientist Ludwig Borchardt who was working mainly in the nearby royal cemetery at Abusir. As for meticulous excavations in the temple, they did not begin until 40 years later (between 1954 and 1957), and this time it was by a joint German-Swiss mission led by the German scientist Herbert Reich, and its results were published in two volumes.",
        event_id: event_8.id,
    )
    EventSection.create(
        arabic_title:"وصف المعبد",
        english_title:"Description of the Temple",
        arabic_content:"عُثر على المعبد مدمرًا بشدة بحيث كانت أي عملية لإعادة بناءه تعتبر مشكلة كبيرة. كان المعبد الرئيسي في الأصل يتألف من هيكل صلب كبير يشبه المصطبة مع سارية على قمته. يمكن تخمين ذلك من المراجع الموجودة في النصوص حيث تم تصوير المعبد على أنه مصطبة مع سارية. كان المعبد محاطًا بجدار، وقد بُنيت مصليتين صغيرتين أو مصليات قرابين على مدخله الرئيسي. كان كل مصلية (غرفة صلاة) تتكون من غرفة واحدة فقط. في مرحلة لاحقة أضيف على الهيكل الرئيسي ما يشبه المسلة. وأضيف مذبح أمام المبنى. شُيِّد المعبد على الأرجح في العام الخامس أو السادس من عهد الملك أوسركاف كما هو مذكور على حجر باليرمو. على الأرجح لم تبنى هذه المسلة في عهد أوسركاف، ولكن ربما في عهد أحد خلفائه وهو الملك نفر إر كا رع. يمكن استنتاج شكل المسلة من الأعلى من كتابة اسم المعبد في نصوص المملكة القديمة، فبدأً من عهد آخر ملك في الأسرة الخامسة أصبح الأسماء تُكتب دائما على المسلات. علاوة على ذلك، هناك أدلة أثرية مؤكدة على وجود هذه المسلة فقد عُثر على قطعة زاوية من الحافة العلوية للمسلة مصنوعة من الجرانيت. عُثر أيضاً على بقايا تمثالين على الأقل مصنوعة من الجرواق ومزينان بنقوش.
        عُثر على معبد الوادي وكان مدمر بشدة أيضًا. كان على الأرجح ساحة مفتوحة بها أعمدة والعديد من المصليات في الخلف. عدد هذه المصليات غير معروف. كما عُثر في حطام المعبد على رأس حجري لملك على الأرجح أنه لأوسركاف. من المحتمل أن المعبد الحجري لم يبنى في عهد أوسركاف، ولكن ربما لاحقًا تحت حكم ني أوسر رع. لم يزين أي من المعبدين بأي نقوش أو رسومات، وربما من المحتمل أنها تعرضت للتلف مع تقادم الزمن.",
        english_content:"The temple was found so badly damaged that any reconstruction was considered a major problem. The main temple originally consisted of a large mastaba-like solid structure with a mast on its top. This can be guessed from references in texts where the temple is depicted as a mastaba with a mast. The temple was surrounded by a wall, and two small chapels, or offering chapels, were built over its main entrance. Each musalla (prayer room) consisted of only one room. At a later stage, something resembling an obelisk was added to the main structure. An altar was added in front of the building. The temple was probably built in the fifth or sixth year of the reign of King Userkaf as mentioned on the Palermo Stone. Most likely, this obelisk was not built during the reign of Userkaf, but perhaps during the reign of one of his successors, King Neferirkare. The shape of the obelisk from the top can be deduced from the writing of the name of the temple in the texts of the Old Kingdom. Starting from the era of the last king in the Fifth Dynasty, names were always written on the obelisks. Moreover, there is confirmed archaeological evidence of the existence of this obelisk, as a corner piece of the upper edge of the obelisk made of granite was found. The remains of at least two statues made of jarwaq and decorated with carvings were also found.
        The Valley Temple was found and was also badly damaged. It was most likely an open court with columns and several chapels at the back. The number of these chapels is unknown. A stone head of a king, most likely Userkaf, was also found in the ruins of the temple. The stone temple was probably not built during the reign of Userkaf, but perhaps later under Nyuserre. Neither temple was decorated with any inscriptions or drawings, and they may have been damaged over time.",
        event_id: event_8.id,
    )

    # event_2 = Event.create(
    #     type: "",
    #     arabic_title: "",
    #     english_title: "",
    #     start_date: "",
    #     end_date: "",
    #     arabic_info:"",
    #     english_info:"",
    #     character_id: character_12.id,
    #     sub_era: sub_era_3
    # )
    # event_2.cover_image.attach(io: URI.open(""), filename: 'image.jpg', content_type: 'image/jpg')
    # EventSection.create(
    #     arabic_title:"",
    #     english_title:"",
    #     arabic_content:"",
    #     english_content:"",
    #     event_id: event_2.id,
    # )
    # EventSection.create(
    #     arabic_title:"",
    #     english_title:"",
    #     arabic_content:"",
    #     english_content:"",
    #     event_id: event_2.id,
    # )


#! Create Products
    product_1 = Product.create(
        price: 130,
        arabic_title: "كوب مصري قديم",
        english_title: "Ancient Egyptian Mug",
        arabic_description: "دليل على غسالة الصحون: لا
        العلامة التجارية: لا
        الخامة: سيراميك
        النوع: أكواب
        هل هناك حاجة إلى بطاريات لتشغيل المنتج أم أن هذا المنتج عبارة عن بطارية: 0
        هل هذا منتج خطير أو مادة أو مادة أو نفايات خطرة تخضع لأنظمة النقل و/أو التخزين و/أو التخلص منها؟ : لا",
        english_description: "Dishwasher proof : no
        Brand : no
        Material : Ceramic
        Type : Mugs
        Are batteries needed to power the product or is this product a battery : 0
        Is this a Dangerous Good or a Hazardous Material, Substance or Waste that is regulated for transportation, storage, and/or disposal? : no",
        era: ancientEra,
        sub_era_id: sub_era_1.id,
        catigory:"antiques",
        # character: character,
        # event: event
    )
        product_1.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61W27GMpK0L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_1.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61W27GMpK0L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_1.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61W27GMpK0L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
            Review.create(user:user, product:product_1, stars: 3,comment:"This is a good product")   
    product_2 = Product.create(
        price: 67,
        arabic_title: "محفظة قماش مصرية فرعونية - شكل متنوع صنع في مصر",
        english_title: "Cloth Pharaonic Egyptian wallet - a diverse shape made in Egypt",
        arabic_description: "محفظة قماش مصرية فرعونية هدية عيد الحب تذكارية راقية عصرية - متنوعة الشكل
        نوع الإغلاق: إبزيم
        المواد: القماش
        نوع الإغلاق: إبزيم
        المواد: القماش
        نوع الإغلاق: إبزيم",
        english_description: "cloth Pharaonic egyption wallet Souvenir valentine gift sophisticated fashionable - diverse shape
        Closure Type: Buckle
        Material: cloth
        Closure Type: Buckle
        Material: cloth
        Closure Type: Buckle",
        era: ancientEra,
        sub_era_id: sub_era_2.id,
        catigory:"antiques",
        # character: character,
        # event: event
    )
        product_2.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/712GbTFUVuL._AC_SL1012_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_2.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61UWDFL0kgL._AC_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_2.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/71Ua3I9wURL._AC_SL1026_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
            Review.create(user:user, product:product_1, stars: 5,comment:"I love this product")   
