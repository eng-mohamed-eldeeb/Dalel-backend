require 'open-uri'
#! Create a default admin user
    AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
    user = User.create(email: "mo@mo.mo", password: "momomo", name: "mohamed Eldeeb")

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
    # sub_era_3
# Section.create(
#     arabic_title:"",
#     english_title:"",
#     arabic_content:"",
#     english_content:"",
#     sub_era: sub_era_2,
# )


#! Create Characters
#! Create Evetns
# file =URI.open("https://1.bp.blogspot.com/-MnYr5ykw2b4/XqdYhwxWoQI/AAAAAAAAAG0/YCPPDe0oXIIyJOWhGP9iv-zrjHEknZLnwCLcBGAsYHQ/s400/photo-jpg.webp")
# event = Event.create(type: "War", arabic_title: "معركه ابو بكر", english_title: "Battle of Badr", start_date: "624-03-13", sub_era: sub_era)
# event.cover_image.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


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
            Review.create(user:user, product:product_1, stars: 3,comment:"Tis is a good product")   
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
            # Review.create(user:user, product:product_1, stars: 3,comment:"Tis is a good product")   