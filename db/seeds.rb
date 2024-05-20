require 'open-uri'
#! Create a default admin user
    AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
    user = User.create(email: "saeed@gmail.com", password: "momomo", name: "Mohammed Saeed")
    user_1 = User.create(email: "deeb@gmail.com", password: "momomo", name: "Mohammed Eldeeb")
    user_2 = User.create(email: "yousef@gmail.com", password: "momomo", name: "Yousef Ghouneim")
    user_3 = User.create(email: "khaled@gmail.com", password: "momomo", name: "Khaled Ramadan")

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
        arabic_info:"تُعرف المملكة المصرية الحديثة أو الدولة الحديثة، التي يشار إليها أيضًا باسم الإمبراطورية المصرية باسم عصر المجد الحربي، وهي الفترة في تاريخ مصر القديمة بين القرن السادس عشر قبل الميلاد والقرن الحادي عشر قبل الميلاد، وتغطي الثامنة عشرة، التاسعة عشرة، والأسرة العشرين في مصر. يضع التأريخ بالكربون المشع البداية الدقيقة للمملكة الحديثة بين 1570 قبل الميلاد و 1544 قبل الميلاد. اتبعت المملكة الحديثة الفترة الانتقالية الثانية وخلفتها الفترة الانتقالية الثالثة. كان هذا أكثر الأوقات ازدهارًا في مصر وشهد ذروة قوتها.
        صاغ عالم المصريات الألماني كريستيان تشارلز جوسياس فون بنسن مفهوم المملكة المصرية الحديثة كواحد من ثلاثة عصور ذهبية، وكان تعريفه تطور بشكل ملحوظ خلال القرنين التاسع عشر والعشرين. يُعرف أيضًا الجزء الأخير من هذه الفترة، تحت حكم الأسرتين التاسعة عشرة والعشرين (1292-1077 قبل الميلاد)، باسم عصر الرعامسة. سميت على اسم أحد عشر ملك الذين أخذوا اسم رمسيس، على اسم رمسيس الأول، مؤسس الأسرة التاسعة عشرة. ربما كنتيجة لأجنبي حكم الهكسوس خلال الفترة الانتقالية الثانية، شهدت المملكة الحديثة محاولة مصر لإنشاء حاجز بين بلاد الشام ومصر، وخلال هذا الوقت حققت مصر أقصى امتداد إقليمي لها. وبالمثل، ردًا على الهجمات الناجحة جدًا في القرن السابع عشر قبل الميلاد خلال الفترة الانتقالية الثانية من قبل مملكة كوش شعر حكام المملكة الحديثة بأنهم مضطرون للتوسع جنوبًا في النوبة والاحتفاظ بأراضي واسعة في الشرق الأدنى. في الشمال، حاربت الجيوش المصرية جيوش الحيثيين للسيطرة على سوريا الحديثة.",
        english_info:"The New Kingdom of Egypt or the New Kingdom, also referred to as the Egyptian Empire as the Age of Military Glory, was the period in the history of ancient Egypt between the sixteenth century BC and the eleventh century BC, covering the Eighteenth, Nineteenth, and Twentieth Dynasties of Egypt. Radiocarbon dating places the precise beginning of the New Kingdom between 1570 BC and 1544 BC. The New Kingdom followed the Second Intermediate Period and was succeeded by the Third Intermediate Period. This was Egypt's most prosperous time and witnessed the peak of its power.
        The German Egyptologist Christian Charles Gosias von Bunsen formulated the concept of the Egyptian New Kingdom as one of three golden ages, and his definition evolved significantly during the nineteenth and twentieth centuries. The latter part of this period, under the Nineteenth and Twentieth Dynasties (1292-1077 BC), is also known as the Ramesside Era. It is named after the eleven kings who took the name Ramesses, after Ramesses I, the founder of the Nineteenth Dynasty. Perhaps as a result of foreign Hyksos rule during the Second Intermediate Period, the New Kingdom saw Egypt attempt to create a barrier between the Levant and Egypt, and it was during this time that Egypt achieved its greatest territorial extension. Likewise, in response to the very successful attacks in the 17th century BC during the Second Intermediate Period by the Kingdom of Kush the New Kingdom rulers felt compelled to expand south into Nubia and retain extensive territory in the Near East. In the north, Egyptian armies fought Hittite armies for control of modern-day Syria."
    )
    sub_era_7 = SubEra.create(
        era: ancientEra,
        arabic_name: "العصر المتأخر (الأسرات من 21 إلى 30)",
        english_name: "Late Period (Dynasties 21 to 30)" ,
        arabic_info:"كان هذا العصر فصل الختام في التاريخ الفرعوني حيث تعرضت مصر منذ حكم الأسرة 21 وحتى الأسرة 28 لاحتلال كل من الآشوريين عام 670 ق.م ، ثم الفرس حتى انتهى حكم الفراعنة مع الأسرة الــ 30 ودخول الإسكندر الأكبر مصر .",
        english_info:"This era was the closing chapter in Pharaonic history, as Egypt, from the rule of the 21st Dynasty until the 28th Dynasty, was subjected to occupation by the Assyrians in 670 BC, then the Persians, until the rule of the Pharaohs ended with the 30th Dynasty and the entry of Alexander the Great into Egypt."
    )
    sub_era_8 = SubEra.create(
        era: greekEra,
        arabic_name: "فتح الأسكندر الأكبر لمصر",
        english_name: "Alexander the Great's conquest of Egypt" ,
        arabic_info:"وصل الإسكندر إلى الفرما، بوابة مصر الشرقية، في خريف عام 332 ق.م، ولم يجد أي مقاومة من المصريين ولا من الحامية الفارسية عند الحدود ففتحها بسهولة، ثم عبر النيل ووصل إلى العاصمة منف، فاستقبله أهلها كمحرر منتصر، ثم أقام مهرجانًا ثقافيًا ترفيهيًا على النمط الإغريقي احتفالاً بهذا الفوز العظيم. بعد ذلك سار بقواته بحذاء الفرع الكانوبي للنيل، متجهًا إلى ساحل البحر المتوسط، وحط رحاله بالقرب من بحيرة مريوط، وراعه أهمية المكان المحصور بين البحيرة والبحر المتوسط، خاصة إن المكان قريب من نهر النيل الذي يمده بالمياه العذبة. لقد وجد في المكان جزيرة صغيرة قريبة من الشاطيء تُسمى «فاروس»، ومن ثم كلف أحد معاونيه ويدعى «ديموقراطيس» لكي يشرف على بناء مدينة في هذا ووصل الشاطيء بالجزيرة بطريق من الحجارة والرمل ، على أن تحمل المدينة الجديدة اسم القائد المقدوني، ألا وهي الإسكندرية؛ التي قُدّر لها أن تصبح عاصمة مصر لاحقًا خلال عهد البطالمة خلفاء الإسكندر.",
        english_info:"Alexander arrived at Al-Farma, the eastern gate of Egypt, in the fall of 332 BC. He did not find any resistance from the Egyptians or from the Persian garrison at the border, so he opened it easily. Then he crossed the Nile and reached the capital, Memphis, and its people welcomed him as a victorious liberator. Then he held an entertaining cultural festival. In the Greek style, celebrating this great victory. After that, he marched with his forces along the canopic branch of the Nile, heading to the Mediterranean coast, and landed near Lake Mariout. He was taken into consideration the importance of the place sandwiched between the lake and the Mediterranean Sea, especially since the place was close to the Nile River, which supplies it with fresh water. He found in the place a small island close to the coast called “Pharos”, and then he assigned one of his assistants called “Democritus” to supervise the construction of a city in this place and connected the beach to the island by a road of stones and sand, with the new city bearing the name of the Macedonian leader, namely Alexandria. ; Which was destined to become the capital of Egypt later during the reign of the Ptolemies, successors of Alexander."
    )
    sub_era_9 = SubEra.create(
        era: greekEra,
        arabic_name: "مصر في عصر البطالمة",
        english_name: "Egypt in the Ptolemaic era" ,
        arabic_info:"البطالمة هم عائلة من أصل مقدوني نزحت إلى مصر بعد وفاة الإسكندر الأكبر سنة 323 ق.م، حيث تولى أحد قادة جيش الإسكندر الأكبر وهو «بطليموس» حكم مصر. أهتم بطليموس الأول ببناء مدينة الإسكندرية التي أسسها الأسكندر الأكبر قبل مغادرته مصر في حملة عسكرية إلى بلاد الفرس وأفغانستان والهند. وجعل بطليموس الأول الإسكندرية عاصمة لمصر. لا يعرف أين توجد مقبرة الإسكندر الأكبر حيث أصابته المنية في خارج مصر. وظلت أسرة بطليموس تحكم مصر حتى دخلها الرومان في عام 30 ق.م. وآخر البطالمة كانت الملكة كليوباترا وابنها بطليموس الخامس عشر (قيصرون).

        وصل نفوذ الدولة البطلمية إلى فلسطين، قبرص وشرق ليبيا، وقد عرفت ازدهارا خلال عهود بطليموس الأول وبطليموس الثاني وبطليموس الثالث. كون البطالمة ذوي أصول إغريقية لم يمنعهم من التشبع بالتقاليد والعادات المصرية، فمعمارهم المصري ومعابدهم للآلهة المصرية وطريقة عيشهم مصرية وساعد ذلك تزاوجهم من المصريين. جميع ملوك البطالمة حملوا اسم بطليموس. واتخذوا من الإسكندرية عاصمة لهم وظلت كذلك حتى معركة أكتيوم البحرية عام 31 ق.م عندما انتصر اكتافيوس قادما من روما على أنطونيوس وكليوباترا لتصبح مصر ولاية رومانية منذ هذا التاريخ وحتى الفتح الإسلامي على يد عمرو بن العاص . تتكون أسرة البطالمة من 16 حاكما إذا أضفنا ابن كليوباترا السابعة وابنها بطليموس الخامس عشر (قيصرون) ابن يوليوس قيصر * 51 ق.م - 30 ق.م",
        english_info:"The Ptolemies are a family of Macedonian origin that migrated to Egypt after the death of Alexander the Great in 323 BC, where one of the leaders of Alexander the Great’s army, “Ptolemy,” assumed the rule of Egypt. Ptolemy I was interested in building the city of Alexandria, which was founded by Alexander the Great before he left Egypt on a military campaign to Persia, Afghanistan, and India. Ptolemy I made Alexandria the capital of Egypt. It is not known where the tomb of Alexander the Great is located, as he died outside Egypt. The Ptolemy family continued to rule Egypt until the Romans entered it in 30 BC. The last of the Ptolemies was Queen Cleopatra and her son, Ptolemy XV (Caesaron).

        The influence of the Ptolemaic state reached Palestine, Cyprus and eastern Libya, and it flourished during the reigns of Ptolemy I, Ptolemy II, and Ptolemy III. The fact that the Ptolemies were of Greek origins did not prevent them from imbibing Egyptian traditions and customs. Their architecture, their temples to the Egyptian gods, and their way of life were Egyptian, and this was helped by their intermarriage with Egyptians. All Ptolemaic kings bore the name Ptolemy. They made Alexandria their capital and it remained so until the naval battle of Actium in 31 BC, when Octavius, coming from Rome, defeated Antony and Cleopatra, making Egypt a Roman province from this date until the Islamic conquest at the hands of Amr ibn al-Aas. The Ptolemaic dynasty consists of 16 rulers if we add the son of Cleopatra VII and her son Ptolemy XV (Caesarion), son of Julius Caesar * 51 BC - 30 BC"
    )
    sub_era_10 = SubEra.create(
        era: romanEra,
        arabic_name: "الحكم الروماني لمصر",
        english_name: "Roman rule of Egypt" ,
        arabic_info:"أصبحت مصر (باللاتينية: Aegyptus، باليونانية العامية المختلطة: Αἴγυπτος، وتنطق: إيجبتوس) مقاطعة رومانية في 30 ق.م. بعد أن هَزَمّ أوكتافيوس (الإمبراطور الروماني المستقبلي باسم أغسطس) خصمه مارك أنطوني وأطاح بعرش الملكة الفرعونية كليوباترا وضم المملكة البطلمية إلى الإمبراطورية الرومانية. شملت المقاطعة معظم مناطق مصر الحديثة باستثناء شبه جزيرة سيناء، التي غزاها تراجان لاحقاً. كانت مقاطعة كريت وبرقة تحد إيجبتوس غرباً ويهودا (العربية البترائية لاحقاً) شرقاً.",
        english_info:"Egypt (Latin: Aegyptus, mixed colloquial Greek: Αἴγυπτος, pronounced: Aegyptus) became a Roman province in 30 BC. After Octavius (the future Roman Emperor named Augustus) defeated his opponent Mark Antony, overthrew the throne of the Pharaonic Queen Cleopatra, and annexed the Ptolemaic Kingdom to the Roman Empire. The province included most of modern Egypt with the exception of the Sinai Peninsula, which Trajan later conquered. The province of Crete and Cyrenaica bordered Egypt to the west and Judea (later Arabia Petraea) to the east."
    )
    sub_era_11 = SubEra.create(
        era: islamicEra,
        arabic_name: "الفتح الإسلامي لمصر",
        english_name: "Islamic conquest of Egypt" ,
        arabic_info:"الفَتْحُ الإسْلَامِيُّ لِمِصْر ، وفي بعض المصادر ذات الصبغة القوميَّة خُصُوصًا يُعرفُ هذا الحدث باسم الفَتْحُ العَرَبِيُّ لِمِصْر، هو سِلسلةٌ من الحملات والمعارك العسكريَّة التي خاضها المُسلمون تحت راية دولة الخِلافة الراشدة ضدَّ الإمبراطوريَّة البيزنطيَّة بين عامي 640م و642م، وانتُزعت على إثرها ولاية مصر الروميَّة من يد الروم ودخلت في دولة الإسلام، بعد عِقدٍ من عودتها لِلإمبراطوريَّة البيزنطيَّة، إذ كان الفُرس الساسانيّون قد انتزعوها من الأخيرة لِفترةٍ وجيزة.",
        english_info:"The Islamic conquest of Egypt, and in some sources of a nationalistic nature in particular, this event is known as the Arab conquest of Egypt, is a series of campaigns and military battles that Muslims fought under the banner of the Rightly Guided Caliphate against the Byzantine Empire between the years 640 AD and 642 AD, after which the state was seized Roman Egypt from the hands of the Romans It entered the Islamic state, a decade after its return to the Byzantine Empire, as the Sassanian Persians had wrested it from the latter for a short period."
    )
    sub_era_12 = SubEra.create(
        era: islamicEra,
        arabic_name: "الدوله الأمويه",
        english_name: "Umayyad state" ,
        arabic_info:"ٱلدَّوْلَةُ ٱلأُمَوِيَّةُ أو ٱلْخِلَافَةُ ٱلأُمَوِيَّةُ أو دَوْلَةُ بَنِي أُمَيَّة (41 - 132 هـ / 662 - 750 م) هي أكبر دولة وثاني خلافة في تاريخ الإسلام، وواحدةٌ من أكبر الدُّوَلِ الحاكِمة في التَّاريخ. كان بنو أُميَّة أُولى الأُسر الحجازية المُسلمة الحاكِمة؛ إذ حكموا من سنة 41هـ (662م) إلى 132 هـ (750م)، وكانت عاصمةُ الدَّولة في مدينة دمشق. بلغت الدَّولة الأُمويَّة ذروة اتساعها في عهد الخليفة العاشر هشام بن عبد الملك؛ إذ امتدت حُدودها من أطراف الصين شرقاً حتى جنوب فرنسا غرباً، وتمكنت من فتح إفريقية والمغرب والأندلُس وجنوب الغال والسند وما وراء النهر.",
        english_info:"The Umayyad State, the Umayyad Caliphate, or the Umayyad State (41 - 132 AH / 662 - 750 AD) is the largest state and the second caliphate in the history of Islam, and one of the largest ruling states in history. The Banu Umayyads were the first ruling Muslim Hijazi families. They ruled from the year 41 AH (662 AD) to 132 AH (750 AD), and the capital of the state was in the city of Damascus. The Umayyad state reached the peak of its expansion during the reign of the tenth Caliph Hisham bin Abdul Malik. Its borders extended from the outskirts of China in the east to southern France in the west, and it was able to conquer Africa, Morocco, Andalusia, southern Gaul, Sindh, and Transoxiana."
    )
    sub_era_13 = SubEra.create(
        era: islamicEra,
        arabic_name: "الدوله العباسيه",
        english_name: "Abbasid state" ,
        arabic_info:"الدَّولَةُ العَبَّاسِيَّةُ أو الخِلافةُ العبَّاسيَّة أو دَوْلَةُ بَني العبَّاس هو الاسم الذي يُطلق على ثالث خلافة إسلامية في التاريخ، وثاني السلالات الحاكمة الإسلامية. استطاع العباسيون أن يزيحوا بني أمية من دربهم ويستفردوا بالخلافة عبر سلسلة من الثورات المسلحة التي أنطلقت من خراسان، وقد قضوا على تلك السلالة الحاكمة، وطاردوا أبناءها حتى قضوا على أغلبهم، ولم ينج منهم إلا من لجأ إلى الأندلس، وكان من ضمنهم عبد الرحمن بن معاوية بن هشام بن عبد الملك؛ فاستولى على شبه الجزيرة الأيبيرية، وبقيت في عقبه لسنة 1029م.",
        english_info:"The Abbasid state, the Abbasid Caliphate, or the state of Bani Abbas is the name given to the third Islamic caliphate in history, and the second Islamic ruling dynasty. The Abbasids were able to dislodge the Umayyads from their path and gain monopoly over the caliphate through a series of armed revolutions that started from Khorasan. They eliminated that ruling dynasty and pursued its sons until they eliminated most of them. Only those who took refuge in Andalusia survived, and among them was Abd al-Rahman ibn Muawiyah. Bin Hisham bin Abdul Malik; He seized control of the Iberian Peninsula, and it remained in his possession until the year 1029 AD."
    )
    sub_era_14 = SubEra.create(
        era: islamicEra,
        arabic_name: "الدوله الفاطميه",
        english_name: "Fatimid state" ,
        arabic_info:"الدَّوْلَةُ الفَاطِمِيَّةُ أو الخِلَافَةُ الفَاطِمِيَّةُ أو الدَّوْلَةُ العُبَيْدِيَّةُ هي إحدى دُولِ الخِلافةُ الإسلاميَّة، والوحيدةُ بين دُولِ الخِلافةِ التي اتخذت من المذهب الشيعي الإسماعيلي مذهبًا رسميًّا لها. قامت هذه الدولة بعد أن نشط الدُعاة الإسماعيليّون في إذكاء الجذوة الحُسينيَّة ودعوة الناس إلى القتال باسم الإمام المهديّ المُنتظر، الذين تنبؤوا جميعًا بظُهوره في القريب العاجل، وذلك خلال العهد العبَّاسي فأصابوا بذلك نجاحًا في الأقاليم البعيدة عن مركز الحُكم خُصوصًا، بسبب مُطاردة العبَّاسيين لهم واضطهادهم في المشرق العربي، فانتقلوا إلى المغرب حيثُ تمكنوا من استقطاب الجماهير وسط قبيلة كتامة البربريَّة خصوصًا، وأعلنوا قيام الخِلافةِ بعد حين. شملت الدولة الفاطميَّة مناطق وأقاليم واسعة في شمال أفريقيا والشرق الأوسط، فامتدَّ نطاقها على طول الساحل المُتوسطيّ من بلاد المغرب إلى مصر، ثُمَّ توسَّع الخُلفاء الفاطميّون أكثر فضمّوا إلى مُمتلكاتهم جزيرة صقلية، والشَّام، والحجاز، فأصبحت دولتهم أكبر دولةٍ استقلَّت عن الدولة العبَّاسيَّة، والمُنافس الرئيسيّ لها على زعامة الأراضي المُقدَّسة وزعامة المُسلمين.",
        english_info:"The Fatimid state, the Fatimid Caliphate, or the Ubaid state is one of the Islamic caliphate states, and the only one among the caliphate states that took the Ismaili Shiite sect as its official doctrine. This state was established after the Ismaili preachers were active in fanning the Husseini flame and calling on people to fight in the name of the Awaited Imam Mahdi, all of whom predicted his appearance in the near future, during the Abbasid era. They achieved success in the regions far from the center of government, especially because of the Abbasids’ persecution and persecution of them in The Arab Levant, so they moved to Morocco, where they were able to attract the masses among the Berber Kutama tribe in particular, and they announced the establishment of the Caliphate after a while. The Fatimid state included large areas and territories in North Africa and the Middle East, and its scope extended along the Mediterranean coast from the Maghreb to Egypt. Then the Fatimid caliphs expanded further, annexing to their possessions the island of Sicily, the Levant, and the Hijaz, so their state became the largest state independent of the Abbasid state, and the main competitor. She has the leadership of the Holy Lands and the leadership of Muslims."
    )
    sub_era_15 = SubEra.create(
        era: islamicEra,
        arabic_name: "الدوله الأيوبيه",
        english_name: "Ayyubid state" ,
        arabic_info:"الدولة الأيوبية هي دولة إسلامية نشأت في مصر، وامتدت لتشمل الشام والحجاز واليمن والنوبة وبعض أجزاء بلاد المغرب. يعد صلاح الدين يوسف بن أيوب مؤسس الدولة الأيوبية، كان ذلك بعد أن عُيِّن وزيرًا للخليفة الفاطمي العاضد لدين الله ونائبًا عن السلطان نور الدين محمود في مصر، فعمل على أن تكون كل السلطات تحت يده، وأصبح هو المتصرف في الأمور، وأعاد مصر إلى تبعية الدولة العباسية، فمنع الدعاء للخليفة الفاطمي ودعا للخليفة العباسي، وأغلق مراكز الشيعة الفاطمية، ونشر المذهب السني.",
        english_info:"The Ayyubid state is an Islamic state that originated in Egypt, and extended to include the Levant, Hijaz, Yemen, Nubia, and some parts of the Maghreb. Saladin Yusuf bin Ayyub is considered the founder of the Ayyubid state. This was after he was appointed minister of the Fatimid Caliph Al-Adid li-Din Allah and representative of Sultan Nur al-Din Mahmud in Egypt. He worked to ensure that all powers were under his control, and he became the one in charge of affairs, and returned Egypt to state subordination. Abbasid, he banned supplication for the Fatimid Caliph and prayed for the Abbasid Caliph, closed the Fatimid Shiite centers, and spread the Sunni doctrine."
    )
    sub_era_16 = SubEra.create(
        era: islamicEra,
        arabic_name: "الدوله المملوكيه",
        english_name: "Mamluk state" ,
        arabic_info:"الدَّولَةُ المَملُوكِيَّةُ أوِ السَّلطَنَةُ المَملُوكِيَّةُ أو دَولَةُ المَمَالِيكِ أو سَلطَنَةُ المَمَالِيكِ هي إحدى الدُول الإسلاميَّة التي قامت في مصر خِلال أواخر العصر العبَّاسي الثالث، وامتدَّت حُدُودها لاحقًا لِتشمل الشَّام والحجاز، ودام مُلكُها مُنذُ سُقُوط الدولة الأيوبيَّة سنة 648 هـ المُوافقة لِسنة 1250 مـ، حتَّى بلغت الدولة العُثمانيَّة ذُروة قُوَّتها وضمَّ السُلطان سليم الأوَّل الديار الشَّاميَّة والمصريَّة إلى دولته بعد هزيمة المماليك في معركة الريدانيَّة سنة 923 هـ المُوافقة لِسنة 1517 مـ.",
        english_info:"The Mamluk state, Mamluk sultanate, Mamluk state, or Mamluk sultanate is one of the Islamic states that established in Egypt during the late third Abbasid era. Its borders later extended to include the Levant and the Hijaz, and its rule lasted since the fall of the Ayyubid state The year 648 AH, corresponding to the year 1250 AD, until the Ottoman Empire reached The peak of its power was when Sultan Selim I annexed the Levant and Egypt to his state after defeating the Mamluks in the Battle of Raydaniya in the year 923 AH, corresponding to the year 1517 AD."
    )
    sub_era_17 = SubEra.create(
        era: islamicEra,
        arabic_name: "الدوله العثمانيه",
        english_name: "Ottoman state" ,
        arabic_info:"الدَّوْلَةُ العُثمَانِيَّة أو الدَّوْلَةُ العَلِيَّةُ العُثمَانِيَّة (بالتركية العثمانية: دَوْلَتِ عَلِيّهٔ عُثمَانِيّه؛ بالتركية الحديثة: Yüce Osmanlı Devleti)، أو الخِلَافَةُ العُثمَانِيَّة، هي دولة إسلامية أسسها عثمان الأول بن أرطغرل، واستمرت قائمة لأكثر من 600 سنة، وبالتحديد من 27 يوليو 1299م حتى 29 أكتوبر 1923م. نشأت الدولة العُثمانيَّة بدايةً كإمارة حُدود تُركمانيَّة تعمل في خدمة سلطنة سلاجقة الروم، وترد الغارات البيزنطيَّة عن ديار الإسلام، وبعد سُقُوط السلطنة سالفة الذِكر استقلَّت الإمارات التُركمانيَّة التابعة لها، بما فيها الإمارة العُثمانيَّة، التي قُدِّر لها أن تبتلع سائر الإمارات بِمُرور الوقت. عبر العُثمانيُّون إلى أوروبا الشرقيَّة لأوَّل مرَّة بعد سنة 1354م، وخلال السنوات اللاحقة تمكَّن العُثمانيُّون من فتح أغلب البلاد البلقانيَّة، فتحوَّلت إمارتهم الصغيرة إلى دولة كبيرة، وكانت أوَّل دولةٍ إسلاميَّة تتخذ لها موطئ قدم في البلقان، كما قُدِّر لِلعُثمانيين أن يفتتحوا القسطنطينية سنة 1453م، ويُسقطوا الإمبراطوريَّة البيزنطيَّة بعد أن عاشت أحد عشر قرنًا ونيِّفًا، وذلك تحت قيادة السُلطان محمد الفاتح.",
        english_info:"The Ottoman Empire, or the Ottoman Empire, is an Islamic state founded by Osman I bin Ertugrul, and it continued for more than 100 years 600 years, specifically from July 27, 1299 AD until October 29 1923 AD. The Ottoman Empire initially emerged as a Turkmen border emirate working in the service of the Seljuk Sultanate of Rum, and repelling Byzantine raids from the lands of Islam. After the fall of the aforementioned Sultanate, the Turkmen emirates affiliated with it became independent, including the Ottoman Emirate, which was destined to swallow the rest of the emirates over time. The Ottomans crossed into Eastern Europe for the first time after the year 1354 AD, and during the following years the Ottomans were able to conquer most of the Balkan countries, so their small emirate turned into a large state, and it was the first Islamic country to take a foothold in the Balkans. The Ottomans were also destined to conquer Constantinople in the year 1453 AD, and overthrow The Byzantine Empire after living for more than eleven centuries, under the leadership of Sultan Mehmed the Conqueror."
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
    # sub_era_4
    Section.create(
            arabic_title:"العصر المتوسط",
            english_title:"The Middle Ages",
            arabic_content:"العصر المتوسط في تاريخ مصر القديمة هو الفترة التي تلي العصور القديمة وتسبق العصور الحديثة، ويمتد تقريبًا من القرن الثاني عشر قبل الميلاد إلى القرن السابع عشر قبل الميلاد. خلال هذه الفترة، تعاقبت العديد من الأسر الفرعونية، بما في ذلك الأسرة الحادية عشر والثانية عشر.",
            english_content:"The Middle Ages in the history of ancient Egypt is the period that follows antiquity and precedes modern times, extending roughly from the twelfth century BC to the seventeenth century BC. During this period, several Pharaonic dynasties succeeded each other, including the Eleventh and Twelfth Dynasties.",
            sub_era: sub_era_4,
    )
    Section.create(
        arabic_title:"الأسرة الحادية عشر (العصور الوسطى)",
        english_title:"The Eleventh Dynasty (Middle Ages)",
        arabic_content:"بدأت الأسرة الحادية عشر في العام 2134 قبل الميلاد واستمرت حتى العام 1991 قبل الميلاد تقريبًا. كانت هذه الفترة مليئة بالازدهار الاقتصادي والثقافي، حيث ازدهرت العلوم والفنون والهندسة والأدب. وقد بنت الأسرة الحادية عشر العديد من المعابد والمقابر الضخمة.",
        english_content:"The Eleventh Dynasty began in 2134 BC and continued until approximately 1991 BC. This period was full of economic and cultural prosperity, as sciences, arts, engineering, and literature flourished. The Eleventh Dynasty built many huge temples and tombs.",
        sub_era: sub_era_4,
    )
    Section.create(
        arabic_title:"الأسرة الثانية عشر (العصور الوسطى المتأخرة)",
        english_title:"The Twelfth Dynasty (Late Middle Ages)",
        arabic_content:"تلت الأسرة الثانية عشر الحادية عشر، وبدأت في العام 1991 قبل الميلاد تقريبًا واستمرت حتى العام 1802 قبل الميلاد. شهدت هذه الفترة ازدهارًا في الفنون والثقافة والهندسة، حيث تم بناء العديد من المعابد والمقابر الفخمة، وتطورت الأدبية والشعرية.",
        english_content:"The Twelfth Dynasty was followed by the Eleventh Dynasty, which began in approximately 1991 BC and continued until 1802 BC. This period witnessed a flourishing of arts, culture and architecture, many magnificent temples and tombs were built, and literature and poetry developed.",
        sub_era: sub_era_4,
    )
    Section.create(
        arabic_title:"التوسع الإمبراطوري",
        english_title:"Imperial expansion",
        arabic_content:"خلال العصور المتوسطة، شهدت مصر القديمة فترات من التوسع الإمبراطوري والتوجه نحو تأسيس إمبراطورية مصرية أكبر. قامت بعض الأسر بحملات عسكرية ناجحة لتوسيع الحدود وتوحيد البلاد تحت سلطتها.",
        english_content:"During the Middle Ages, ancient Egypt experienced periods of imperial expansion and a drive toward establishing a larger Egyptian empire. Some families undertook successful military campaigns to expand the borders and unify the country under their authority.",
        sub_era: sub_era_4,
    )
    Section.create(
        arabic_title:"الابتكارات الدينية",
        english_title:"Religious innovations",
        arabic_content:"تطورت المفاهيم الدينية خلال العصور المتوسطة، حيث تغيرت الآلهة الرئيسية وتطورت المعتقدات الدينية. وشهدت بناء المعابد وتوسيعها، وازدهرت الممارسات الدينية والطقوس.",
        english_content:"Religious concepts evolved during the Middle Ages, as the main gods changed and religious beliefs evolved. Temples were built and expanded, religious practices and rituals flourished.",
        sub_era: sub_era_4,
    )
    Section.create(
        arabic_title:"التطور الثقافي",
        english_title:"Cultural evolution",
        arabic_content:"شهدت العصور المتوسطة تطوراً ثقافياً هاماً، حيث تبادلت مصر القديمة العديد من العلاقات الثقافية مع الشعوب المجاورة، مما أثر على اللغة والفنون والعادات والتقاليد.",
        english_content:"The Middle Ages witnessed significant cultural development, as ancient Egypt exchanged many cultural relations with neighboring peoples, affecting language, arts, customs, and traditions.",
        sub_era: sub_era_4,
    )
    Section.create(
        arabic_title:"التجارة والتبادل الثقافي",
        english_title:"Trade and cultural exchange",
        arabic_content:"نتيجة للتوسع الإمبراطوري، تزايدت الفرص للتجارة والتبادل الثقافي مع الشعوب الأخرى في المنطقة الشرق الأوسط والبحر الأبيض المتوسط. وقد ساهم هذا التبادل في إثراء الحضارة المصرية بالعديد من الفكر والفنون والتقاليد الجديدة.",
        english_content:"As a result of imperial expansion, opportunities for trade and cultural exchange with other peoples in the Middle East and the Mediterranean region increased. This exchange contributed to enriching Egyptian civilization with many new ideas, arts, and traditions.",
        sub_era: sub_era_4,
    )
    Section.create(
        arabic_title:"التطورات التكنولوجية",
        english_title:"Technological developments",
        arabic_content:"خلال العصور المتوسطة، شهدت مصر القديمة تطورات تكنولوجية هامة في مجالات مثل الهندسة والبناء والزراعة والحرف اليدوية، مما أدى إلى تحسين ظروف الحياة وتطوير البنية التحتية للمجتمع.",
        english_content:"During the Middle Ages, ancient Egypt witnessed important technological developments in areas such as engineering, construction, agriculture, and handicrafts, leading to improved living conditions and the development of the community's infrastructure.",
        sub_era: sub_era_4,
    )
    # sub_era_5
    Section.create(
        arabic_title:"فترة مصرية انتقالية ثانية",
        english_title:"Second Transitional Egyptian Period",
        arabic_content:"الفترة المصرية الانتقالية الثانية هو الاسم الذي اطلقه علماء المصريات في القرن العشرين على الفترة ما بين نهاية المملكة الوسطى وحلول المملكة المصرية الحديثة، يعود تاريخ الفترة الانتقالية الثانية إلى الفترة من 1700 إلى 1550 ق.م  وهي الفترة التي انقسمت فيها مصر القديمة إلى سلالات أصغر للمرة الثانية. عرف هذا العصر بعصر الفوضى والإضمحلال الثاني، وفيه حكم مصر الملوك الرعاة أو ماعرف بالهكسوس واتخذوا من أواريس بشرق الدلتا عاصمة لهم، تشمل الفترة الانتقالية الثانية عمومًا الأسرة الثالثة عشر حتى الأسرة السابعة عشر ولأنهم كانوا حكاماً غير مصريين لم يسمهم المصريين بالفراعنة إنما أطلق على الحاكم منهم لفظ الملك.
        تُعرف هذه الفترة بأنها الفترة التي أسس فيها شعب الهكسوس في غرب آسيا الأسرة الخامسة عشرة وحكموا من أواريس، والتي أسسها (وفقًا لكتاب مانيتون إيجيبتياكا)، ملك يُدعى ساليتيس.
        يعتقد البعض، ضمن بضعة نظريات، ربطاً بالقصص الديني، أنه في عصر حكم الهكسوس لمصر حدثت مجاعة عالمية كان الفضل ليوسف بن يعقوب العبراني في حلها وعلى أثرها جاء بني إسرائيل إلى مصر وظلوا بها بالرغم من خروج الهكسوس الذين استقبلوهم بها حتى خرجوا منها في عصر الدولة الحديثة بزعامة النبي موسى في عصر الرعامسة.",
        english_content:"The Second Intermediate Egyptian Period is the name given by Egyptologists in the twentieth century to the period between the end of the Middle Kingdom and the advent of the New Kingdom of Egypt. The Second Intermediate Period dates back to the period from 1700 to 1550 BC  which is the period in which ancient Egypt was divided into smaller dynasties for the first time. the second. This era was known as the Second Age of Chaos and Decay, in which Egypt was ruled by shepherd kings, or what was known as the Hyksos, and they took Avaris in the eastern Delta as their capital. The second transitional period generally included the Thirteenth Dynasty until the Seventeenth Dynasty, and because they were non-Egyptian rulers, the Egyptians did not call them pharaohs, but rather called the ruler from among them. The word king.
        This period is known as the period in which the Hyksos people of western Asia founded the Fifteenth Dynasty and ruled from Avaris, which was founded (according to Manetho's Egyptica) by a king called Salitis.
        Some believe, among a few theories, in connection with religious stories, that during the era of the Hyksos’ rule of Egypt, a global famine occurred, which was credited to Joseph ibn Jacob the Hebrew, who solved it. As a result, the children of Israel came to Egypt and remained there despite the departure of the Hyksos, who welcomed them there until they left it in the era of the state. Modernism under the leadership of the Prophet Moses in the Ramesside era.",
        sub_era: sub_era_5,
    )
    Section.create(
        arabic_title:"نهاية الدولة الوسطى",
        english_title:"End of the Middle Kingdom",
        arabic_content:"انتهت الأسرة الثانية عشرة في مصر في نهاية القرن التاسع عشر قبل الميلاد بوفاة الملكة سبك نفرو (1806-1802 قبل الميلاد). ومن الواضح أنها لم يكن لديها ورثة، مما تسبب في نهاية الأسرة الثانية عشرة فجأة، وبالتالي نهاية العصر الذهبي للمملكة الوسطى؛ وقد خلفتها الأسرة الثالثة عشرة الأضعف بكثير. احتفظت الأسرة الثالثة عشرة بمقر الأسرة الثانية عشرة، وحكمت من إيتجتاوي لمعظم فترة وجودها، ومع ذلك، ربما في عهد مرنفر رع آي، حولت عاصمتها إلى طيبة في أقصى الجنوب.",
        english_content:"The Twelfth Dynasty in Egypt ended at the end of the nineteenth century BC with the death of Queen Sobekneferu (1806-1802 BC). She obviously had no heirs, causing the Twelfth Dynasty to end abruptly, and thus the end of the Golden Age of the Middle Kingdom; It was succeeded by the much weaker Thirteenth Dynasty. The Thirteenth Dynasty retained the seat of the Twelfth Dynasty, ruling from Itjtawi for most of its existence, however, probably during the reign of Merneferre Ai, it shifted its capital to Thebes farther south.",
        sub_era: sub_era_5,
    )
    Section.create(
        arabic_title:"إعادة التوحيد",
        english_title:"Reunification",
        arabic_content:"في نهاية الفترة الانتقالية الثانية، وصلت الأسرة الثامنة عشرة إلى السلطة في مصر. أكمل أحمس الأول (أول ملوك الأسرة الثامنة عشرة) طرد الهكسوس من مصر وفرض هيمنته على الأرض. وبذلك بدأ فترة جديدة من الازدهار في مصر عرفت بالمملكة الحديثة.",
        english_content:"At the end of the Second Intermediate Period, the Eighteenth Dynasty came to power in Egypt. Ahmose I (the first king of the Eighteenth Dynasty) completed the expulsion of the Hyksos from Egypt and imposed his dominance on the land. Thus began a new period of prosperity in Egypt known as the New Kingdom.",
        sub_era: sub_era_5,
    )
    Section.create(
        arabic_title:"أسرة أبيدوس",
        english_title:"Abydos Dynasty",
        arabic_content:"ربما كانت أسرة أبيدوس (حوالي 1640 إلى 1620 قبل الميلاد) سلالة محلية قصيرة العمر حكمت جزءًا من صعيد مصر خلال الفترة الانتقالية الثانية في مصر القديمة وكانت معاصرة للأسرة الخامسة عشرة والسادسة عشرة. ظلت أسرة أبيدوس صغيرة جدًا وحكمت أبيدوس أو ثينيس فقط. لا يُعرف سوى القليل جدًا عن أسرة أبيدوس لأنها كانت سلالة قصيرة العمر. بالرغم من أننا لدينا بعض أسماء الملوك التي تتعلق بأسرة أبيدوس إلا أن الأسماء تظهر في قائمة ملوك تورينو، لكنها لا تظهر في أي مصادر أخرى. تضم السلالة مؤقتًا أربعة حكام: ويب واوتيمساف ، بانتجيني  ، سنايب  ، سينبكاي. انتهى عهد أسرة أبيدوس عندما وسع الهكسوس نفوذهم إلى صعيد مصر.",
        english_content:"The Abydos Dynasty (ca. 1640 to 1620 BC) was probably a short-lived local dynasty that ruled part of Upper Egypt during the Second Intermediate Period in ancient Egypt and was contemporary with the Fifteenth and Sixteenth Dynasties. The Abydos dynasty remained very small and ruled only Abydos or Thinis. Very little is known about the Abydos Dynasty as it was a short-lived dynasty. Although we have some king names related to the Abydos dynasty, the names appear in the Turin king list, but they do not appear in any other sources. The dynasty provisionally includes four rulers: Webb, Utimsaf, Pantjeni, Snaib, and Senbekai. The era of the Abydos dynasty ended when the Hyksos expanded their influence into Upper Egypt.",
        sub_era: sub_era_5,
    )
    # sub_era_6
    Section.create(
        arabic_title:"صعود المملكة الحديثة",
        english_title:"Rise of the New Kingdom",
        arabic_content:"تضمنت الأسرة الثامنة عشرة بعض أشهر ملوك مصر، ومنهم أحمس الأول وحتشبسوت وتحتمس الثالث وأمنحتب الثالث، اخناتون وتوت عنخ آمون. ركزت حتشبسوت على توسيع التجارة الخارجية في مصر، بما في ذلك إرسال بعثة تجارية إلى بلاد بونت، وجعلت المملكة مزدهرة.
        يُنظر إلى أحمس الأول على أنه مؤسس الأسرة الثامنة عشرة. واصل حملات والده سقنن رع وكاموس ضد الهكسوس حتى قام بإعادة توحيد البلاد مرة أخرى. ثم يواصل أحمس حملته في بلاد الشام، موطن الهكسوس، لمنع أي غزو مستقبلي لمصر.
        بدأت حملات أحمس لطرد الهكسوس من دلتا نهر النيل واستعادة الأراضي المصرية السابقة إلى الجنوب في حوالي عام حكمه العاشر. بعد أن دمر معقل الهكسوس في أفاريس في شرق الدلتا، قادهم أخيرًا إلى ما وراء الحدود الشرقية ثم حاصر شاروهين (تل الفارعة) في جنوب فلسطين؛ قد يكون المدى الكامل لغزواته أكبر بكثير. جاء اختراقه للشرق الأوسط في وقت لم تكن فيه قوة رئيسية راسخة في المنطقة. هذه الفجوة السياسية سهلت إنشاء إمبراطورية مصرية.
        تمت مكافأة ضباط وجنود أحمس بالغنائم والأسرى، الذين أصبحوا شخصية عبيد. كان هذا بمثابة علامة على إنشاء طبقة عسكرية مؤثرة. مثل كاموس، شن أحمس حملته جنوبا حتى بوهين في النوبة شمال السودان. لإدارة الأراضي المستعادة، أنشأ وظيفة جديدة مشرفة على الأراضي الأجنبية الجنوبية، والتي احتلت المرتبة الثانية بعد الوزير. مُنح شاغل الوظيفة اللقب الشرفي ابن الملك في كوش، مما يشير إلى أنه كان مسؤولاً بشكل مباشر أمام الملك كنائب.
        تمت صياغة بيروقراطية المملكة المصرية الحديثة المبكرة على غرار ما كانت عليه في المملكة المصرية الوسطى. كان الوزير هو المسؤول الرئيسي وأعلى قاضٍ في المملكة. بحلول منتصف القرن الخامس عشر قبل الميلاد، تم تقسيم المنصب إلى قسمين، وزير واحد لمصر العليا والآخر لمصر السفلى. خلال الأسرة المصرية الثامنة عشر، تلقى بعض البيروقراطيين الشباب تعليمهم في مدارس المعابد، مما عزز التكامل بين القطاعات المدنية والكهنوتية. في وقت مبكر من الأسرة، تم توريث العديد من المناصب الإدارية، لكن التعيين الملكي للمسؤولين الأكفاء، غالبًا ما يتم اختيارهم من ضباط الجيش الذين خدموا الملك في حملاته، أصبح لاحقًا هو القاعدة. وهكذا كان الاتجاه بعيدًا عن العائلات البيروقراطية ووراثة المنصب.",
        english_content:"The Eighteenth Dynasty included some of Egypt's most famous kings, including Ahmose I, Hatshepsut, Thutmose III, Amenhotep III, Akhenaten, and Tutankhamun. Hatshepsut focused on expanding Egypt's foreign trade, including sending a trade mission to the Land of Punt, and made the kingdom prosperous.
        Ahmose I is seen as the founder of the Eighteenth Dynasty. He continued the campaigns of his father Seqenenre and Kamos against the Hyksos until he reunified the country again. Ahmose then continues his campaign in the Levant, home of the Hyksos, to prevent any future invasion of Egypt.
        Ahmose's campaigns to expel the Hyksos from the Nile River Delta and restore former Egyptian lands to the south began around the year of his tenth reign. After destroying the Hyksos stronghold of Avaris in the eastern delta, he finally drove them beyond the eastern border and then besieged Sharuhin (Tell el-Far'a) in southern Palestine; The full extent of his conquests may have been much greater. His breakthrough into the Middle East came at a time when no major power was entrenched in the region. This political gap facilitated the creation of an Egyptian empire.
        Ahmose's officers and soldiers were rewarded with spoils and captives, who became personal slaves. This marked the creation of an influential military class. Like Kamus, Ahmose campaigned as far south as Buhin in Nubia, northern Sudan. To administer the restored territories, he created a new post of Superintendent of Southern Foreign Territories, which ranked second only to the Minister. The incumbent was given the honorific title Son of the King of Kush, indicating that he was directly accountable to the king as deputy.
        The early New Kingdom Egyptian bureaucracy was modeled on that of the Middle Kingdom. The vizier was the chief official and highest judge of the kingdom. By the middle of the 15th century BC, the office was divided into two, one vizier for Upper Egypt and the other for Lower Egypt. During the Eighteenth Dynasty, some young bureaucrats were educated in temple schools, promoting integration between the civil and priestly sectors. Early in the dynasty, many administrative positions were inherited, but the royal appointment of competent officials, often chosen from army officers who had served the king on his campaigns, later became the norm. Thus the trend was away from bureaucratic families and inheritance of office.",
        sub_era: sub_era_6,
    )
    Section.create(
        arabic_title:"امنحتب الاول",
        english_title:"Amenhotep I",
        arabic_content:"تبع أحمس أمنحتب الأول الذي دفع الحدود المصرية جنوبا إلى الشلال الثالث، بالقرب من عاصمة الالكرمة، بينما كان يجمع الجزية من ممتلكاته الآسيوية وربما قام بحملات في سوريا. ربما تكون مملكة ميتاني الناشئة في شمال سوريا، والتي ذُكرت لأول مرة على لوحة لأحد جنود أمنحتب وكانت تُعرف أيضًا باسم نهرين، قد هددت الفتوحات المصرية في الشمال.
        كانت المملكة المصرية الحديثة فترة من التفاني المتزايد لإله المملكة آمون رع، الذي استفادت عبادة منه إلى حد كبير حيث تم إثراء مصر بغنائم الحرب. تم تحويل الثروات إلى خزائن الإله، وكدليل على تقوى الأبناء، قام الملك ببناء آثار مقدسة في الأقصر. في عهد أمنحتب الأول، تم التخلي عن الشكل الهرمي للمقبرة الملكية لصالح مقبرة منحوتة في الصخر، وباستثناء أخناتون، تم دفن جميع حكام المملكة الحديثة اللاحقين في مقابر مخفية في وادي الملوك الشهير في غرب طيبة. منفصلة عن المقابر، أقيمت المعابد الجنائزية الملكية على حافة الصحراء. ربما بسبب هذا الابتكار، أصبح أمنحتب الأول فيما بعد الإله الراعي للعمال الذين حفروا وزينوا المقابر الملكية.",
        english_content:"Ahmose followed Amenhotep I who pushed the Egyptian border south to the Third Cataract, near the capital of Alkarma, while collecting tribute from his Asian possessions and perhaps campaigning in Syria. The emerging kingdom of Mitanni in northern Syria, first mentioned in a stela of one of Amenhotep's soldiers and also known as Two Rivers, may have threatened Egyptian conquests to the north.
        The Egyptian New Kingdom was a period of increasing devotion to the god of the kingdom, Amun-Ra, whose cult benefited greatly as Egypt was enriched by the spoils of war. Riches were transferred to the god's treasuries, and as a sign of filial piety, the king built sacred monuments in Luxor. During the reign of Amenhotep I, the pyramidal form of the royal cemetery was abandoned in favor of a rock-cut tomb, and with the exception of Akhenaten, all subsequent New Kingdom rulers were buried in hidden tombs in the famous Valley of the Kings in western Thebes. Separate from the tombs, royal mortuary temples were erected on the edge of the desert. Perhaps because of this innovation, Amenhotep I later became the patron god of the workers who dug and decorated the royal tombs.",
        sub_era: sub_era_6,
    )
    Section.create(
        arabic_title:"تحتمس الاول",
        english_title:"Thutmose I",
        arabic_content:"وتبع أمنحتب الثاني تحتمس الأول الذي قاد في عامه الثاني رحلة استكشافية عبر النهر في عمق النوبة، خارج حدود سلفه. كما يتضح من النقوش المنحوتة على طول الطريق، فقد اجتاز الشلال الرابع وأقام حدودًا جديدة في كرجس بالقرب من الشلال الخامس. تم إثبات المشروع من خلال السير الذاتية لاثنين من مصر العليا كانا من بين القوى التي قامت بالحملة. كان أحد أسباب التوغل العميق في النوبة هو رواسب الذهب الغنية في الأرض، والتي تم استغلالها بشكل مكثف خلال الأسرة المصرية الثامنة عشر. كان الدافع الآخر هو حقيقة أن مملكة كوش المعادية لمصر، متمركزة بالقرب من الشلال الثالث، كانت تهدد مصر بشكل خطير خلال الأسرة المصرية السابعة عشر ومتحالفة مع الهكسوس. بعد حرب النوبة توغل تحتمس في نهر الفرات في محيط كركميش في سوريا حيث واصل مطاردة الهكسوس. داخل مصر، قام تحتمس بتجديد الكرنك في طيبة. أقام جدارًا مغلقًا وأبراجين في الطرف الغربي، مع قاعة أعمدة صغيرة بينهما. تمت إضافة مسلتين أمام الصرح الخارجي. خلال هذه الحملة أعلن الأمراء السوريون الولاء لتحتمس. ومع ذلك، بعد عودته، توقفوا عن الجزية وبدأوا في التحصين ضد التوغلات المستقبلية.",
        english_content:"Amenhotep II was followed by Thutmose I, who in his second year led an expedition across the river deep into Nubia, outside the borders of his predecessor. As is evident from the inscriptions carved along the way, he crossed the Fourth Cataract and established a new border at Kerges near the Fifth Cataract. The project is substantiated by the biographies of two Upper Egyptians who were among the forces that undertook the campaign. One of the reasons for the deep penetration into Nubia was the rich gold deposits in the land, which were intensively exploited during the 18th Dynasty. Another motivation was the fact that the anti-Egyptian Kingdom of Kush, centered near the Third Cataract, was seriously threatening Egypt during the 17th Dynasty and allied with the Hyksos. After the Nubia War, Thutmose penetrated the Euphrates River in the vicinity of Carchemish in Syria, where he continued to pursue the Hyksos. Inside Egypt, Thutmose renovated Karnak at Thebes. He erected an enclosed wall and two towers at the western end, with a small hypostyle hall between them. Two obelisks were added in front of the outer edifice. During this campaign, the Syrian princes declared loyalty to Tuthmosis. However, after his return, they stopped paying tribute and began to fortify against future incursions.",
        sub_era: sub_era_6,
    )
    Section.create(
        arabic_title:"تحتمس الثاني",
        english_title:"Thutmose II",
        arabic_content:"خلف تحتمس الثاني والده تحتمس الأول، وفي عامه الأول قام زعيم من شمال كوش، حول شلال النيل الثاني، بإثارة ثورة ضد السيادة المصرية وهدد الحاميات المتمركزة في النوبة. أرسل تحتمس الثاني قوة بأوامر لقمع المتمردين وإعدام رجالهم. تم أسر أحد أبناء الزعيم إلى مصر، ربما ليتم تمصيرها وإعادتها إلى بلاده كحاكم تابع. بعد مرور بعض الوقت، كما يتضح من سيرة أحد الجنود الذين رافقوا والده، أرسل تحتمس الثاني قوات ضد بعض البدو في جنوب فلسطين. إلى جانب هذه المراجع، لا يُعرف سوى القليل عن عهد تحتمس الثاني. أقام في الكرنك ساحة احتفالية أمام بوابة مدخل المعبد، وكان البلاط يزين باستمرار بالآثار الملكية حتى تم هدمه أثناء تجديدات أمنحتب الثالث. في طيبة الغربية، بنى معبدًا جنائزيًا صغيرًا، قام ابنه بتوسيعه لاحقًا. لم يتم تحديد أي مقبرة بشكل إيجابي على أنها تنتمي إلى تحتمس الثاني، على الرغم من اكتشاف مومياءه وقد أعيد دفنها في المخبأ الملكي.",
        english_content:"Thutmose II succeeded his father Thutmose I, and in his first year a leader from northern Kush, around the second cataract of the Nile, raised a revolt against Egyptian sovereignty and threatened the garrisons stationed in Nubia. Thutmose II sent a force with orders to suppress the rebels and execute their men. One of the leader's sons was taken captive to Egypt, perhaps to be Egyptianized and returned to his country as a vassal ruler. Some time later, as evidenced by the biography of one of the soldiers who accompanied his father, Thutmose II sent troops against some Bedouins in southern Palestine. Besides these references, little is known about the reign of Thutmose II. In Karnak, he established a ceremonial square in front of the entrance gate of the temple, and the tiles were constantly decorated with royal relics until it was demolished during the renovations of Amenhotep III. In western Thebes, he built a small mortuary temple, which his son later expanded. No tomb has been positively identified as belonging to Tuthmosis II, although his mummy was discovered to have been reburied in the royal cache.",
        sub_era: sub_era_6,
    )
    Section.create(
        arabic_title:"حتشبسوت",
        english_title:"Hatshepsut",
        arabic_content:"حتشبسوت كانت أحد أقوى ملوك في هذه الأسرة. كانت ابنة تحتمس الأول والزوجة الملكية لـ تحتمس الثاني. عند وفاة زوجها، حكمت بالاشتراك مع ابنه من قبل زوجة قاصر، تحتمس الثالث، التي صعدت إلى العرش وهي طفلة تبلغ من العمر حوالي عامين، لكنها في النهاية حكمت بنفسها بصفتها ملك. بنيت حتشبسوت على نطاق واسع في معبد الكرنك في الأقصر وفي جميع أنحاء مصر  لم تشرح حتشبسوت أبدًا سبب توليها العرش أو كيف أقنعت النخبة في مصر بقبول منصبها الجديد. ومع ذلك، كان أحد العناصر الأساسية لنجاحها هو وجود مجموعة من المسؤولين المخلصين، الذين تم اختيار العديد منهم بعناية، والذين سيطروا على جميع المناصب الرئيسية في حكومتها. وكان من أبرز هؤلاء سننموت، المشرف على جميع الأعمال الملكية والمعلم لنفرورع. اقترح بعض المراقبين أن حتشبسوت وسينموت ربما كانا عاشقين، لكن لا يوجد دليل يدعم هذا الادعاء. تقليديا، دافع الملوك المصريون عن أرضهم ضد الأعداء المتربصين على حدود مصر. كان حكم حتشبسوت سلميًا بشكل أساسي، وكانت سياستها الخارجية قائمة على التجارة بدلاً من الحرب. لكن المشاهد على جدران معبدها الدير البحري في طيبة الغربية توحي بأنها بدأت بحملة عسكرية قصيرة وناجحة في النوبة. تُظهر المشاهد الأكثر اكتمالاً رحلة حتشبسوت التجارية المحمولة بحراً إلى بونت، وهي مركز تجاري على ساحل شرق إفريقيا وراء أقصى جنوب البحر الأحمر. أعيد الذهب، والأبنوس، وجلود الحيوانات، والبابون، والمر المعالج، وأشجار المر الحية إلى مصر، وزُرعت الأشجار في حدائق الدير البحري. وأعادت تأسيس شبكات التجارة التي تعطلت أثناء احتلال الهكسوس لمصر خلال الفترة الانتقالية الثانية وبالتالي بناء ثروة الأسرة الثامنة عشر. أشرفت على الاستعدادات والتمويل لمهمة إلى بلاد بونت. كان إنجازها الأسمى هو معبدها الرائع في الدير البحري التي صُممت لتكون نصبًا جنائزيًا لحتشبسوت، وقد تم تخصيصها لآمون رع وتضمنت سلسلة من المصليات المخصصة لأوزوريس ورع وحتحور وأنوبيس وأسلاف العائلة المالكة. كان من المقرر أن تُدفن حتشبسوت في وادي الملوك، حيث قامت بتوسيع قبر والدها حتى يستلقي الاثنان معًا.",
        english_content:"Hatshepsut was one of the most powerful kings in this dynasty. She was the daughter of Thutmose I and the royal wife of Thutmose II. On her husband's death, she ruled jointly with his son by an underage wife, Tuthmosis III, who ascended to the throne as a child of about two years of age, but eventually ruled in her own right as king. Hatshepsut built extensively on the Karnak Temple in Luxor and throughout Egypt. Hatshepsut never explained why she took the throne or how she convinced Egypt's elite to accept her new position. However, an essential element of its success was the presence of a group of loyal officials, many of them carefully selected, who controlled all the key positions in its government. The most prominent of these was Senenmut, the supervisor of all royal affairs and mentor to Neferure. Some observers have suggested that Hatshepsut and Senmut may have been lovers, but there is no evidence to support this claim. Traditionally, Egyptian kings defended their land against enemies lurking on Egypt's borders. Hatshepsut's rule was mainly peaceful, and her foreign policy was based on trade rather than war. But the scenes on the walls of her temple at Deir el-Bahri in Western Thebes suggest that she began a short and successful military campaign in Nubia. The most complete scenes show Hatshepsut's seaborne trading voyage to Punt, a trading post on the East African coast beyond the southernmost tip of the Red Sea. Gold, ebony, animal hides, baboons, processed myrrh, and live myrrh trees were returned to Egypt, and trees were planted in the gardens of Deir el-Bahari. It re-established the trade networks that had been disrupted during the Hyksos occupation of Egypt during the Second Intermediate Period, thus building the wealth of the Eighteenth Dynasty. She supervised the preparations and financing for a mission to the country of Punt. Its supreme achievement was its magnificent temple at Deir el-Bahari which was designed as a funerary monument to Hatshepsut, was dedicated to Amun-Ra and included a series of chapels dedicated to Osiris, Ra, Hathor, Anubis and the ancestors of the royal family. Hatshepsut was scheduled to be buried in the Valley of the Kings, where she enlarged her father's tomb so that the two could lie together.",
        sub_era: sub_era_6,
    )
    Section.create(
        arabic_title:"تحتمس الثالث",
        english_title:"Thutmose III",
        arabic_content:"بعد وفاة حتشبسوت تولى تحتمس الثالث الحكم وقامت انتفاضة في مجدو ضد الحكم المصري ووقف أمير مدينة قادش السورية إلى جانب 330 من أمراء التحالف السوري الفلسطيني في مجيدو. كانت هذه القوة أكثر من مجرد دفاعية، وربما كانت النية هي التقدم ضد مصر. يجب أن يكون 330 قد مثل جميع الأماكن من أي حجم في المنطقة التي لم تكن خاضعة للحكم المصري وقد يكون رقمًا تخطيطيًا مشتقًا من قائمة أسماء الأماكن. يشار إلى أن ميتاني نفسه لم يكن متورطا بشكل مباشر.
        تقدم تحتمس الثالث إلى غزة مع جيشه ثم إلى يهم، وأخضع البلدات الفلسطينية المتمردة على طول الطريق. تروي تاريخه كيف، في استشارة تتعلق بأفضل طريق عبر سلسلة جبال الكرمل، تجاوز الملك ضباطه واختار طريقًا أقصر ولكنه أكثر خطورة عبر ممر العرينة ثم قاد القوات بنفسه. سارت المسيرة بسلاسة، وعندما هاجم المصريون فجرًا، تغلبوا على قوات العدو وحاصروا مجدو.
        في هذه الأثناء، نسق تحتمس الثالث إنزال فرق الجيش الأخرى على الساحل السوري الفلسطيني، حيث ساروا إلى الداخل، بحيث كانت الاستراتيجية تشبه تقنية الكماشة. وانتهى الحصار بمعاهدة أقسم بموجبها الأمراء السوريون قسم الاستسلام للملك. كما كان معتادًا في الدبلوماسية القديمة وفي الممارسة المصرية، كان القسم ملزمًا فقط لمن أقسمه، وليس للأجيال القادمة.
        مع نهاية الحملة الأولى، امتدت الهيمنة المصرية شمالًا إلى خط يربط بيبلوس ودمشق. على الرغم من أن أمير قادش ظل مهزومًا، إلا أن آشور أرسلت اللازورد كجزية؛ سلم الأمراء الآسيويون أسلحتهم، بما في ذلك عدد كبير من الخيول والعربات. أخذ تحتمس الثالث عددًا محدودًا من الأسرى. عين أمراء آسيويين لحكم المدن وأخذ إخوتهم وأبنائهم إلى مصر، حيث تعلموا في البلاط",
        english_content:"After the death of Hatshepsut, Thutmose III assumed power, and an uprising broke out in Megiddo against Egyptian rule, and the prince of the Syrian city of Kadesh stood alongside 330 princes of the Syrian-Palestinian alliance in Megiddo. This force was more than just defensive, and the intention may have been to advance against Egypt. 330 must have represented all places of any size in the region that were not under Egyptian rule and may have been a schematic number derived from a list of place names. It is noteworthy that Mitani himself was not directly involved.
        Thutmose III advanced to Gaza with his army and then to Yahm, subduing the rebellious Palestinian towns along the way. His history tells how, in a consultation concerning the best route across the Carmel Range, the king bypassed his officers and chose a shorter but more dangerous route via the Arina Pass and then led the troops himself. The march went smoothly, and when the Egyptians attacked at dawn, they overpowered the enemy forces and besieged Megiddo.
        Meanwhile, Thutmose III coordinated the landing of other army divisions on the Syrian-Palestinian coast, where they marched inland, with the strategy resembling a pincer technique. The siege ended with a treaty under which the Syrian princes swore an oath of surrender to the king. As was usual in ancient diplomacy and in Egyptian practice, the oath was binding only on the one who swore it, not on posterity.
        By the end of the first campaign, Egyptian hegemony extended north to a line connecting Byblos and Damascus. Although the Prince of Kadesh remained defeated, Assyria sent lapis lazuli as tribute; The Asian princes surrendered their weapons, including a large number of horses and chariots. Thutmose III took a limited number of prisoners. He appointed Asian princes to rule the cities and took their brothers and sons to Egypt, where they were educated at court",
        sub_era: sub_era_6,
    )
    # sub_era_7
    Section.create(
        arabic_title:"الأسرة الحادية والعشرون",
        english_title:"Twenty-first Dynasty",
        arabic_content:"تتميز فترة الأسرة الحادية والعشرين بتفكك الملكية في البلاد. وخلال عهد رمسيس الحادي عشر، كانت الأسرة العشرين في مصر تفقد قبضتها على مدينة طيبة، التي أصبح كهنتها يزدادون نفوذًا. وبعد وفاة رمسيس الحادي عشر، حكم خليفته، سمندس الأول، من مدينة تانيس، لكن نفوذه اقتصر في الغالب فقط على مصر السفلى، التي كان يسيطر عليها. وفي غضون ذلك، حكم كبار كهنة آمون في طيبة وسط وصعيد مصر في كل شيء، إلا اسميًا. ومع ذلك، كان هذا التقسيم أقل أهمية مما يبدو، لأن الكهنة والفراعنة ينتمون إلى نفس العائلة.",
        english_content:"The Twenty-First Dynasty period is characterized by the disintegration of the monarchy in the country. During the reign of Ramesses After the death of Ramesses Meanwhile, the high priests of Amun at Thebes ruled central and upper Egypt in all but nominal terms. However, this division was less important than it seems, because priests and pharaohs belonged to the same family.",
        sub_era: sub_era_7,
    )
    Section.create(
        arabic_title:"الأسرتان الثانية والعشرون والثالثة والعشرون",
        english_title:"Twenty-second and Twenty-third Dynasties",
        arabic_content:"جرى توحيد البلاد بقوة من قبل الأسرة الثانية والعشرين التي أسسها شيشنق الأول في عام 945 قبل الميلاد (أو 943 قبل الميلاد)، وينحدر شيشنق من المهاجرين المشواش، وتعود أصولهم إلى ليبيا القديمة. وبذلك عم الاستقرار البلاد لأكثر من قرن، ولكن بعد عهد أوسوركون الثاني، على وجه الخصوص، انقسمت البلاد فعليًا إلى دولتين، حيث سيطر شيشنق الثالث من الأسرة الثانية والعشرين على مصر السفلى بحلول عام 818 قبل الميلاد، بينما حكم تاكيلوت الثاني و ابنه أوسوركون (أوسوركون الثالث المستقبلي) مصر الوسطى والعليا. وفي طيبة اجتاحت المدينة حرب أهلية، حرضت قوات بيدوباست الأول، الذي نصب نفسه فرعونًا، ضد السلالة الحاكمة لتاكيلوت الثاني\أوسوركون بي. اصطدم الطرفان باستمرار ولم يُحل النزاع إلا في العام 39 من عهد شيشنق الثالث عندما هزم أوسوركون بي أعدائه بشكل نهائي. وشرع بتأسيس الأسرة المصرية الثالثة والعشرين في صعيد مصر من أسرة أوسوركون الثالث - تاكيلوت الثالث - رودامون، لكن هذه المملكة سرعان ما تفككت بعد وفاة رودامون، مع ظهور دول المدن المحلية تحت حكم ملوك مثل بفتجاويباست من هيراكليوبولس، ونيملوت من هرموبوليس، وإني في طيبة.",
        english_content:"The country was firmly unified by the Twenty-Second Dynasty, which was founded by Sheshenq I in 945 BC (or 943 BC). Sheshenq is descended from Meshwesh immigrants, and their origins go back to ancient Libya. Thus stability prevailed over the country for more than a century, but after the reign of Osorkon II, in particular, the country effectively split into two states, with Sheshenq III of the Twenty-Second Dynasty controlling Lower Egypt by 818 BC, while Takelot II and his son Osorkon (Osorkon) ruled Future III) Middle and Upper Egypt. In Thebes, a civil war engulfed the city, pitting the forces of Pedobast I, the self-proclaimed pharaoh, against the ruling dynasty of Takelot II/Osorkon B. The two sides clashed constantly and the conflict was not resolved until the 39th year of Sheshenq III's reign when Osorkun Bey defeated his enemies once and for all. He proceeded to establish the Twenty-Third Egyptian Dynasty in Upper Egypt from the dynasty of Osorkon III - Takelot III - Rhudamon, but this kingdom quickly disintegrated after the death of Rhudamon, with the emergence of local city-states under the rule of kings such as Peftegaebast of Heracleopolis, Nemelot of Hermopolis, and Enni in Thebes.",
        sub_era: sub_era_7,
    )
    Section.create(
        arabic_title:"الأسرة الرابعة والعشرون",
        english_title:"Twenty-fourth Dynasty",
        arabic_content:"كان هذا الانقسام وما تبعه من عدم الاستقرار السياسي في صالح المملكة النوبية بشكل كامل. قبل حملة بعنخي التي استمرت 20 عامًا في مصر، كان الحاكم النوبي السابق – كاشتا - قد وسع بالفعل نفوذ مملكته إلى طيبة عندما أجبر شبنؤبت، المتعبدة الإلهية الخادمة لآمون وأخت تاكيلوت الثالث، على تبني ابنته أماني ريديس، لتكون هي الخليفة. ثم بعد 20 عامًا، نحو عام 732 قبل الميلاد، اتجه خليفته، بعنخي، شمالًا وهزم القوة المشتركة للعديد من الحكام المصريين الأصليين: بفتجاويباست، وأوسوركون الرابع من تانيس، ويوبوت الثاني من ليونتوبوليس، وتف ناخت من سايس.",
        english_content:"This division and the subsequent political instability were entirely to the advantage of the Nubian Kingdom. Before Baankhi's 20-year campaign in Egypt, the previous Nubian ruler - Kashta - had already extended his kingdom's influence into Thebes when he forced Shepenupet, the divine servant-worshipper of Amun and sister of Takelot III, to adopt his daughter, Amani-Redes, as the successor. Then 20 years later, around 732 BC, his successor, Pankhe, turned north and defeated the combined force of several indigenous Egyptian rulers: Pfethegaebast, Osorkon IV of Tanis, Eubut II of Leontopolis, and Tephnakht of Sais.",
        sub_era: sub_era_7,
    )
    Section.create(
        arabic_title:"الأسرة الخامسة والعشرون",
        english_title:"Twenty-fifth Dynasty",
        arabic_content:"أسس بعنخي الأسرة الخامسة والعشرين وعين الحكام المهزومين حكام مقاطعات له. وخلفه في البداية أخوه شباكا ثم ابناه شبتكو وطهارقة. كانت إمبراطورية وادي النيل للأسرة الخامسة والعشرين التي جرى توحيدها كبيرة، مثلما كانت منذ الدولة الحديثة. وبدأ فراعنة الأسرة الحاكمة، ومن بينهم طهارقة، ببناء أو ترميم المعابد والآثار في جميع أنحاء وادي النيل، بما في ذلك ممفيس والكرنك وكوة وجبل البركل. انتهت الأسرة الخامسة والعشرون بتراجع حكامها إلى موطنهم الروحي في مدينة نبتة. وهناك (في الكرو ونوري) دفن جميع فراعنة الأسرة الخامسة والعشرين تحت الأهرامات الأولى التي شُيدت في وادي النيل عبر مئات السنين. أفضت السلالة النبتية عن مملكة كوش التي ازدهرت في نبتة ومروي حتى القرن الثاني الميلادي على الأقل.

        كانت المكانة الدولية لمصر قد تراجعت بشكل كبير بحلول هذا الوقت. وكان الحلفاء الدوليون للبلاد قد سقطوا بقوة تحت نفوذ آشور، ومنذ نحو 700 قبل الميلاد أصبح السؤال هو متى ستقوم حرب بين الدولتين، كما أدرك آسرحدون أن غزو مصر السفلى كان ضروريًا لحماية مصالح الآشوريين في بلاد الشام.
        
        على الرغم من حجم مصر وثروتها، كان لدى آشور كمية أكبر من الأخشاب، بينما كانت مصر تعاني من نقص مزمن، ما سمح لآشور بإنتاج المزيد من الفحم اللازم لصهر الحديد، وبالتالي منح آشور قدرًا أكبر من الأسلحة الحديدية. وقد أصبح هذا التفاوت حرجًا خلال الغزوات الآشورية لمصر خلال الفترة 670-663 قبل الميلاد. ونتيجة لذلك، كان عهد الفرعون طهارقة، وعهد خليفته تنوت أماني، مليئين بالصراع المستمر مع الآشوريين. وفي عام 664 قبل الميلاد وجه الآشوريون ضربة قاتلة، إذ نهبوا طيبة وممفيس. وبعد هذه الأحداث، وبدءًا من عهد أتلانيرسا، لم يحكم أي حاكم كوشي مصر مرة أخرى.",
        english_content:"Ankhi founded the Twenty-Fifth Dynasty and appointed defeated rulers as governors of his provinces. He was succeeded at first by his brother Shabaka, then by his two sons Shebatku and Taharqa. The Nile Valley Empire of the reunited Twenty-Fifth Dynasty was large, as it had been since the New Kingdom. The pharaohs of the dynasty, including Taharqa, began building or restoring temples and monuments throughout the Nile Valley, including Memphis, Karnak, Kuwa, and Jebel Barkal. The Twenty-Fifth Dynasty ended with its rulers retreating to their spiritual home in the city of Napata. There (in El-Kurru and Nuri) all the pharaohs of the Twenty-Fifth Dynasty were buried under the first pyramids that were built in the Nile Valley over hundreds of years. The Napatan dynasty gave rise to the Kingdom of Kush, which flourished in Napata and Meroë until at least the second century AD.

        Egypt's international standing had declined significantly by this time. The country's international allies had fallen strongly under the influence of Assyria, and from about 700 BC the question became when a war would break out between the two countries, as Esarhaddon realized that the conquest of Lower Egypt was necessary to protect the interests of the Assyrians in the Levant.
        
        Despite Egypt's size and wealth, Assyria had a greater supply of timber, while Egypt was chronically in short supply, allowing Assyria to produce more charcoal for smelting iron, thus giving Assyria a greater capacity for iron weapons. This disparity became critical during the Assyrian invasions of Egypt during the period 670-663 BC. As a result, the reign of Pharaoh Taharqa, and that of his successor Tanu-Amani, were filled with constant conflict with the Assyrians. In 664 BC, the Assyrians dealt a fatal blow, sacking Thebes and Memphis. After these events, beginning with the reign of Atlanirsa, no Kushite ruler ruled Egypt again.",
        sub_era: sub_era_7,
    )
    Section.create(
        arabic_title:"نهاية الفترة الانتقالية الثالثة",
        english_title:"End of the Third Intermediate Period",
        arabic_content:"ظل صعيد مصر لفترة من الوقت تحت حكم طهارقة وتنوت أماني، بينما حكمت مصر السفلى من عام 664 قبل الميلاد من قبل الأسرة السادسة والعشرين الوليدة، التي أسسها الآشوريون. في عام 663 قبل الميلاد، شن تنوت أماني غزوًا واسع النطاق على مصر السفلى، حيث استولى على ممفيس في أبريل من ذلك العام، ما أسفر عن مقتل نخاو الأول من سايس في هذه العملية، إذ ظل نخاو مخلصًا لآشوربانيبال. بالكاد كان لدى تنوت أماني الوقت الكافي لاستسلام بعض ملوك الدلتا وطرد الآشوريين المتبقين حتى عاد جيش كبير بقيادة آشوربانيبال وابن نخاو بسماتيك الأول. هُزِمَ تنوت أماني شمال ممفيس ونُهبت طيبة تمامًا بعد فترة وجيزة. انسحب الملك الكوشي إلى النوبة بينما تضاءل النفوذ الآشوري في صعيد مصر. أضعفت طيبة بشكل دائم بسبب عملية النهب، واستسلمت بسلام لأسطول بسماتيك في 656 قبل الميلاد. ولتأكيد سلطته، وضع بسماتيك ابنته في موقع لتكون المتعبدة الإلهية المستقبلية لآمون، وبالتالي أيضًا قدم الطاعة لكهنوت آمون ووحد مصر بشكل فعال. لم يكن أتلانيرسا، خليفة تنوت أماني، في وضع يسمح له بمحاولة إعادة احتلال مصر، حيث آمن بسماتيك أيضًا الحدود الجنوبية في إلفنتين وربما أرسل حملة عسكرية إلى نبتة. وفي الوقت نفسه، تمكن بسماتيك من تحرير نفسه من التبعية الآشورية بينما ظل على علاقة طيبة مع آشوربانيبال، ربما بسبب التمرد المستمر في بابل. ومن خلال القيام بذلك، جلب مزيدًا من الاستقرار إلى البلاد خلال فترة حكمه التي استمرت 54 عامًا من مدينة سايس.

        واصل أربعة ملوك متعاقبين من سايس حمل مصر إلى فترة أخرى من السلام والازدهار منذ عام 610 حتى عام 525 قبل الميلاد. ولسوء حظ هذه السلالة، كانت هناك قوة جديدة تنمو في الشرق الأدنى - الإمبراطورية الأخمينية في بلاد فارس. حكم الفرعون بسماتيك الثالث بعد والده أحمس الثاني لمدة 6 أشهر فقط قبل أن يواجه الإمبراطورية الفارسية في الفرما. كان الفرس قد احتلوا بابل بالفعل ولم تكن مصر بذات القوة. هُزم بسماتيك الثالث وهرب لفترة وجيزة إلى ممفيس، قبل أن يُسجن في نهاية المطاف، ثم أُعدم لاحقًا في شوشان، عاصمة الملك الفارسي قمبيز، الذي توج آنذاك باللقب الرسمي للفرعون.",
        english_content:"Upper Egypt remained for a time under the rule of Taharqa and Tanut-Amani, while Lower Egypt was ruled from 664 BC by the nascent Twenty-Sixth Dynasty, founded by the Assyrians. In 663 BC, Tenut-Amani launched a large-scale invasion of Lower Egypt, capturing Memphis in April of that year, killing Necho I of Sais in the process, as Necho remained loyal to Ashurbanipal. Tanut-Amani barely had time for some of the Delta kings to surrender and expel the remaining Assyrians when a large army led by Ashurbanipal and Necho's son Psamtach I returned. Tanutamani was defeated north of Memphis and Thebes was completely sacked soon after. The Kushite king withdrew to Nubia while Assyrian influence in Upper Egypt diminished. Permanently weakened by plunder, Thebes surrendered peacefully to a Psammatic fleet in 656 BC. To assert his authority, Psamtik placed his daughter in a position to be the future divine worshiper of Amun, thus also offering obedience to the priesthood of Amun and effectively unifying Egypt. Atlanersa, Tenut-Amani's successor, was in no position to attempt to reconquer Egypt, as Psamtik also secured the southern border at Elephantine and may have sent a military expedition to Napata. At the same time, Psamtik managed to free himself from Assyrian subordination while remaining on good terms with Ashurbanipal, perhaps due to the ongoing rebellion in Babylon. In doing so, he brought greater stability to the country during his 54-year rule from Sais.

        Four successive kings of Sais continued to carry Egypt into another period of peace and prosperity from 610 until 525 BC. Unfortunately for this dynasty, a new power was growing in the Near East - the Achaemenid Empire in Persia. Pharaoh Psamtik III ruled after his father Ahmose II for only 6 months before confronting the Persian Empire at Al-Farma. The Persians had already occupied Babylon and Egypt was not as powerful. Psamtik III was defeated and briefly fled to Memphis, before eventually being imprisoned and later executed in Shushan, the capital of the Persian king Cambyses, who was then crowned with the official title of pharaoh.",
        sub_era: sub_era_7,
    )


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

    character_24 = Character.create(
        arabic_name: "خيتي الأول",
        english_name: "Kheti I",
        arabic_info: "واح كا رع خيتي الأول، (بالإنجليزية: Kheti I)، أو خيتي الأول، هو أول فرعون تولى عرش الأسرة المصرية التاسعة في أهناسيا. قد كانت له شهرة سيئة في التاريخ حسبما جاء في الروايات التي رواها عنه مانيتون وأنه ارتكب مظالم كثيرة.",
        english_info: "Wahkare Kheti I, or Kheti I, was the first pharaoh to assume the throne of the Ninth Dynasty of Ahanasia. He had a bad reputation in history, according to the stories told about him by Maniton, and that he committed many injustices.",
        date_of_birth: "2181",
        date_of_death: "2055",
        sub_era_id: sub_era_3.id,
    )
    character_24.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/4/4c/Abydos_KL_07-03_n42.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_24.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/4/4c/Abydos_KL_07-03_n42.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
            arabic_title:"حكمه لمصر",
            english_title:"His reign over Egypt",
            arabic_content:"يقول الباحث الأثرى الطيب عبد الله الملك نفر كا رع حكم مصر لفترة تقارب 94 عاما وهى أطول فترة حكم فى التاريخ المصرى وغالبا حكم فى سنه السادسه من عمره خلفا لوالده الملك مرى-إن-رع الأول وارتبط ايضا اسمه بالحملات التى كان يقودها بارونات جزيرة الفنتين الى افريقيا الأستوائيه
            في أواخر عهد الملك حوالي عام 2280ق.م دب الوهن والضعف في أوصال المملكة مما ادى الى انهياره حيث تقدم به السن وأصبح لا يقوى على حكم البلاد كما قويت حكام الأقاليم وزادت رغبتهم في الوصول إلى كرسي الحكم وزادت الفقر وأصبح الناس في كرب .",
            english_content:"The good archaeological researcher Abdullah says King Neferkare ruled Egypt for a period of approximately 94 years, which is the longest period of rule in Egyptian history. He probably ruled in the sixth year of his life, succeeding his father, King Mer-en-Ra I. His name was also associated with the campaigns that were led by the barons of Elephantine Island to Equatorial Africa
            At the end of the king’s reign, around the year 2280 BC, weakness and weakness spread throughout the kingdom, which led to its collapse, as he grew old and became unable to rule the country. The governors of the regions also became stronger, their desire to reach the throne increased, poverty increased, and the people became distressed.",
            character_id: character_24.id,
    )
    CharacterSection.create(
            arabic_title:"أول ثورة اجتماعية في التاريخ فى عهده",
            english_title:"The first social revolution in history during his reign",
            arabic_content:"وعادت هجمات بدو الصحراء من الشرق والغرب فقامت في البلاد ثورة اجتماعيه ضخمة هى الأولى في التاريخ حوالي عام 2280ق.م حتى أن بعضهم يطلق عليها (الثورة البلشفية الأولى) خرجت الجموع تنادي بعودة العدل والنظام والمساواة وانهارات السلطة المركزية وأصبحت الحدود مفتوحة وتوافدت جماعات كبيرة من بدو الصحراء على الحدود الشرقية كانوا ينهبون الناس ويذيعون الذعر في النفوس ورجال الأمن فقدوا السيطرة على حفظ الامن ولم يسلم منها مدفن أو معبد أو ديوان حكومي وامتد غضب الشعب إلى بيوت الأثرياء فنهبوها وشردوهم”هكذا كان الوضع في مصر حاله من الفوضى والضعف والتحلل وبرزت في تلك الفترة عدد من البيوت القوية الحاكمة في صعيد مصر ودلتاها استأثرت كل منها بإقليم تحكمه، وكانت البلاد مفككة العرى، خاصة فى الوجه البحري التي أشاعت الذعر والخوف بين الأهالي أما في مصر الوسطى فكان الحال أفضل حيث استقل كل حاكم بإقليم وفرض عليه سلطانه.
            وقام عدد من كبار الموظفين وحكام الأقاليم المخلصين تشكيل هيئة من 70 شخص لتحكم البلاد ولكنها لم تلبث سوى 70 يوما وانهارت الدولة المركزية وقسمت البلاد واندلعت الحرب الأهلية بين الأقاليم بغية السيطرة على أراضي الأقاليم المجاورة.",
            english_content:"Desert Bedouin attacks returned from the east and west, and a huge social revolution took place in the country, the first in history, around the year 2280 BC. Some even called it (the first Bolshevik revolution). Crowds came out calling for the return of justice, order, and equality. Central authority collapsed, the borders became open, and large groups of Bedouins arrived. In the desert on the eastern border, they were plundering people and spreading fear in the souls. The security men lost control over maintaining security, and no cemetery, temple, or government office was spared. The anger of the people extended to the homes of the wealthy, so they looted them and displaced them. Thus, the situation in Egypt was a state of chaos, weakness, and decay, and a number of people emerged during that period. Of the powerful ruling houses in Upper Egypt and its delta, each of them controlled a region under its control, and the country was disjointed, especially in Lower Egypt, which spread panic and fear among the people. However, in Middle Egypt, the situation was better, as each ruler became independent of a region and imposed his authority on it.
            A number of senior officials and loyal governors of the regions formed a body of 70 people to govern the country, but within only 70 days the central state collapsed, the country was divided, and civil war broke out between the regions in order to control the lands of the neighboring regions.",
            character_id: character_24.id,
    )
    CharacterSection.create(
            arabic_title:"الأمر ببناء معبد لشهداء الثورة",
            english_title:"Order to build a temple for the martyrs of the revolution",
            arabic_content:"وعثر أثناء الحفريات بعين أصيل بقرية بلاط (واحة الداخلة) حائط من الطوب اللبن المخلوط على حجر ترجم محتواه 'بانتالاتشى' وترجمته رساله من الفرعون الى الأدميرال حاكم الواحه وكبير الكهنه، أمرنا حضرتنا أن يتم بناء معبد للطقوس الجنائزية لحكام الواحة الذين ماتوا فى الثورة وقد عهدت اليكم من خلال السلطات المخولة من الفرعون المنسق الأكبر للطقوس الجنائزيه ببناء هذا المعبد وعلى حاكم الواحه أن يعد العده لإتمام هذا البناء الذى سيكون مخصصا لأجداده حكام الواحه ايدى دونى وابنه ديكرو وابنه خينتيكا.",
            english_content:"During excavations in Ain Asil in the village of Balat (Dakhla Oasis), a wall of mud bricks mixed on a stone was found, the contents of which were translated as 'Pantalachi' and translated as a letter from the pharaoh to the admiral, the ruler of the oasis and the chief priest. Our Holiness ordered that a temple be built for the funerary rituals of the rulers of the oasis who died in the revolution, and I have known Through the authorities delegated by the Pharaoh, you are the Grand Coordinator of the funerary rituals to build this temple. The ruler of the oasis must prepare to complete this building, which will be dedicated to his grandfathers, the rulers of the oasis, Eddie Doni, his son Dekru, and his son Khintika.",
            character_id: character_24.id,
    )
    character_25 = Character.create(
        arabic_name: "منتوحوتب الأول",
        english_name: "Mentuhotep I",
        arabic_info: "منتوحوتب الأول، (بالإنجليزية: Mentuhotep I). هو ملك فرعونى في طيبة خلال عهد الأسرة الحادية عشر في أوائل الفترة الانتقالية الأولى (2072 - 2064 ق.م). ويعتبر منتوحوتب الأول الأب المؤسس للأسرة الحادية عشر. أطلق على نفسه لقب حاكم مصر العليا ثم اتخذ بعد ذلك لقب ملك مصر كلها.",
        english_info: "Mentuhotep I. He was a Pharaonic king in Thebes during the Eleventh Dynasty in the early First Intermediate Period (2072 - 2064 BC). Mentuhotep I is considered the founding father of the Eleventh Dynasty. He called himself the ruler of Upper Egypt and later assumed the title of King of all Egypt.",
        date_of_birth: "2069",
        date_of_death: "2061",
        sub_era_id: sub_era_4.id,
    )
    character_25.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/fd/Statue_Mentuhotep-aa_by_Khruner.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_25.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/f/fd/Statue_Mentuhotep-aa_by_Khruner.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"عائلته",
        english_title:"His family",
        arabic_content:"زوجة منتوحوتب ربما كانت نيف رع الأولى، وقد كان والد كل من الملك إنتف الأول، وإنتف الثاني حسب قائمة ملوك الكرنك. والده هو إنتف الأكبر - (أنتف بن إكو). وجد اسمه في قائمة الملوك تحت الرقم 12.",
        english_content:"Mentuhotep's wife was probably Neferu I, and he was the father of both King Intef I and Intef II according to the Karnak Kings List. His father is Intef the Elder - (Intef son of Iku). His name was found on the list of kings under number 12.",
        character_id: character_25.id,
    )
    CharacterSection.create(
        arabic_title:"حكمه",
        english_title:"His reign",
        arabic_content:"حكم منتوحوتب الأول خلال الفترة الانتقالية الأولى المتوسطة قبل الميلاد (2135 ق.م). ذكر في قائمة ملوك الكرنك لتماثيل الفراعنة برقم 12. كان على تحالف كبير مع كوبتوس ضد ملوك وحكام الأسرة العاشرة في مصر السفلى. خلفه في الحكم على مصر الوسطى ابنه إنتف الأول.",
        english_content:"Mentuhotep I ruled during the early Middle Intermediate Period (2135 BC). He was mentioned in the Karnak Kings List of Pharaohs statues under number 12. He was in a large alliance with Koptos against the kings and governors of the Tenth Dynasty in Lower Egypt. His son Intef I succeeded him in ruling Middle Egypt.",
        character_id: character_25.id,
    )
    character_26 = Character.create(
        arabic_name: "إنتف الأول",
        english_name: "Intef I",
        arabic_info: "إنتف الأول، (بالإنجليزية: Intef I)، ويسمى أيضا (سحر تاوى - إنتف) بمعني (حور مهدئ الأرضين) ويعتبر هذا الفرعون الأمير الأول من الأمراء الستة الذين تتالف منهم الأسرة الحادية عشر. في الفترة الانتقالية الأولى. وهم الذين حكموا نصف البلاد قبل مجيء الأسرة الثانية عشر بما يقرب من 143 سنة.",
        english_info: "Intef I, (Intef I), also called (Sahar Tawi - Intef) meaning (Horus, the pacifier of the two lands), and this pharaoh is considered the first prince of the six princes that make up the Eleventh Dynasty. In the early transitional period. They ruled half the country before the arrival of the Twelfth Dynasty for about 143 years.",
        date_of_birth: "2120",
        date_of_death: "2070",
        sub_era_id: sub_era_4.id,
    )
    character_26.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/4/42/Intef_I.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_26.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/4/42/Intef_I.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"حكمه",
        english_title:"His reign",
        arabic_content:"حكم انتف الأول من 4 إلى 16 خلال الفترة 2120 - 2070 قبل الميلاد. بعد الملك منتوحوتب الأول، وقد كان أول حاكم طيبي يكتب اسمه داخل شن (المناظر للطغراء السلطانية في عهد العثمانيين) وكان مناهضا للفرعون الذي كان يحكم البلاد في اهناسيا ومنف في تلك الفترة. خلفه في الحكم إنتف الثاني.",
        english_content:"Intef I ruled from 4 to 16 during the period 2120 - 2070 BC. After King Mentuhotep I, he was the first Theban ruler to write his name inside the shen (the views of the sultanate in the Ottoman era) and was opposed to the pharaoh who ruled the country in Ahanasia and Manf at that time. Intef II succeeded him in ruling.",
        character_id: character_26.id,
    )
    CharacterSection.create(
        arabic_title:"تعريفه",
        english_title:"His definition",
        arabic_content:"الملك الفرعوني إنتف الأول كان حاكمًا مهمًا في تاريخ مصر القديمة. يعود حكمه إلى الأسرة الحادية عشر في العصر الوسيط من عصور الأسر المصرية القديمة، وتحديدًا حوالي القرن الثاني عشر قبل الميلاد. يُعتقد أنه كان يحكم من 2116 إلى 2055 قبل الميلاد تقريبًا.
        من المعروف أن إنتف الأول قاد حملات عسكرية ناجحة وقام بتوسيع نفوذ مصر إلى المناطق المجاورة. كما أنه شهد بعض التطورات الثقافية والدينية خلال حكمه.
        تشير الآثار والنقوش إلى أنه قد قام بتوسيع السلطة الملكية وربما قام بتنظيم الإدارة الحكومية بشكل أكبر. للأسف، ليست لدي الكثير من المعلومات المحددة حول سيرته الذاتية أو الأحداث البارزة خلال فترة حكمه، ولكن يبدو أنه كان ملكًا قويًا وناجحًا في توسيع نفوذ مصر في ذلك الوقت.",
        english_content:"Pharaonic King Entef I was an important ruler in the history of ancient Egypt. His rule dates back to the Eleventh Dynasty in the Middle Ages of ancient Egyptian dynastic times, specifically around the twelfth century BC. He is believed to have ruled from approximately 2116 to 2055 BC.
        It is known that Intef I led successful military campaigns and expanded Egypt's influence into neighboring regions. He also witnessed some cultural and religious developments during his rule.
        Monuments and inscriptions indicate that he expanded royal authority and perhaps further organized governmental administration. Unfortunately, I do not have much specific information about his biography or notable events during his reign, but he appears to have been a powerful king and successful in expanding Egypt's influence at the time.",
        character_id: character_26.id,
    )
    character_27 = Character.create(
        arabic_name: "إنتف الثاني",
        english_name: "Intef II",
        arabic_info: "إنتف الثاني، (بالإنجليزية: Intef II) (وح عنخ -إنتف). هو أحد أبناء الملك منتوحوتب الأول، وحكام من الأسرة الحادية عشر الفرعونية في مصر القديمة. لم يترك من مخلفاته إلا لوحة واحدة وقد عثر عليها مريد عام 1860م ولكنه تركها في مكانها ومعظمها مهشم.",
        english_info: "Intef II (in English: Intef II), (Wahankh-Intef). He is one of the sons of King Mentuhotep I, and a ruler of the Eleventh Pharaonic Dynasty in ancient Egypt. He left only one painting left behind, and it was found by Murid in 1860 AD, but he left it in place, most of it broken.",
        date_of_birth: "2069",
        date_of_death: "2118",
        sub_era_id: sub_era_4.id,
    )
    character_27.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/0/03/Funerary_stele_of_Intef_II.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_27.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/0/03/Funerary_stele_of_Intef_II.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"حكمه",
        english_title:"His reign",
        arabic_content:"فترة حكم أنتف الثاني الطويلة (2115 – 2066 ق.م). تميزت بالحرب مع مملكة هراكليوبوليس. ولقد تقابل جيشاهما في منطقة أبيدوس، بحيث استولى كل واحد منهما بالتتابع على مدينة ثينيس ثم فقداها.وأخيرا استطاع أنتف الثاني أن يمد أطراف مملكته جهة الشمال عند حدود مقاطعة هيبسيليس.",
        english_content:"The long reign of Antef II (2115 - 2066 BC). It was marked by the war with the Kingdom of Herakleopolis. Their two armies met in the Abydos region, so that each one of them sequentially captured the city of Thinis and then lost it. Finally, Antef II was able to extend the outskirts of his kingdom to the north, at the borders of the Hypsilis province.",
        character_id: character_27.id,
    )
    CharacterSection.create(
        arabic_title:"اللوحة",
        english_title:"The painting",
        arabic_content:"لوحة الموظف العظيم هي لشخص عاصر هذا الملك ففيها ما يمكن ان يستشف في هذا الملك وهذا العصر بالإضافة إلى أشياء تخص نتى نفسه. ويتحدث عن أخلاصه لمليكه في مقاطعة طيبة. وعن نفسه قائلا: (لم أحدث تقصير استحق عليه عقاباً لأننى كنت حازماً موضع ثقة حقيقية عند سيدي وحاكما غاية في العقل هادئ في الاخلاق في بيت سيده. ولم أتعود البحث وراء الشر الذي بسببه تـُكره الرجال وإننى إنسان يحب الخير ويكره الشر وشخصية محبوبة في بيت سيدها وإنسان تعوّد أن ينفذ كل واجب حسب إرادة سيده. وإذا وليت عمل مثل تحقيق شكاية أو فحص ملتمس إنسان في حاجة كنت عادلاً ولم أكن متغطرساً لما أوتيت من ثراء ولم آخذ شيئا اختلاسا لأجل أن أنهى عملاً.).",
        english_content:"The painting of the Great Servant is of a person who was a contemporary of this king. It contains what can be learned about this king and this era, in addition to things related to Nitti himself. He talks about his loyalty to his king in the province of Thebes. Concerning himself, he said: (I did not commit a negligence that deserved punishment for it, because I was firm, truly trusted by my master, and a very rational ruler, calm in morals, in his master’s house. I was not accustomed to searching for evil, for which men hated me, and I am a person who loves goodness and hates evil, and a beloved character in her master’s house. A person is accustomed to carrying out every duty according to the will of his master. If I undertake a task such as investigating a complaint or examining someone who seeks a need, I will be fair and not arrogant due to the wealth I have been given, and I will not take anything by embezzlement in order to complete a job.)",
        character_id: character_27.id,
    )
    CharacterSection.create(
        arabic_title:"مقبرته",
        english_title:"His tomb",
        arabic_content:"عثرت بعثات الاكتشاف على مقبرته، وقد تعرضت للسلب والنهب خلال الأسرة العشرين، مقبرة إنتف الثاني وإن كانت أضيق بقليل من مقبرة والده يمتد طولها في داخل الصحراء إلى الوراء ما بين 180و 200 متر تقريبًا، وليس هناك أي أثر ظاهر لهرم حيث وجد بداخلها على لوحة الموظف العظيم، ولوحة صور عليها وهو بصحبة كلابه التي أطلق عليها أسماء من أصل بربري.",
        english_content:"The discovery missions found his tomb, which was looted and plundered during the Twentieth Dynasty. The tomb of Intef II, although slightly narrower than his father's tomb, extends inside the desert to the rear between approximately 180 and 200 meters. There is no visible trace of a pyramid, as found inside it on the painting of the Great Servant, and a painting with pictures on it, with him accompanied by his dogs, which he named after names of Berber origin.",
        character_id: character_27.id,
    )
    character_28 = Character.create(
        arabic_name: "منتوحتب الثاني",
        english_name: "Mentuhotep II",
        arabic_info: "منتوحوتپ الثاني ملك مصري قديم حكم في الفترة (2061 - 2010 ق.م.)، ومعنى اسمه الملكي هو (الإله مونتو راضٍ)، ويُعرف أيضاً بلقب التتويج نب-حابت-رع أي (ربان دفة رع)، وهو مؤسس الاسرة الحادية عشر، وهو ابن انتف الثالث. يرجع إليه الفضل في إعادة توحيد البلاد بعد نهاية فترة إضطرابات عصر الاضمحلال الأول وأصبح أول ملك مصري في الدولة الوسطى. واستمرت ولايته 51 عاماً وفقا لقائمة ملوك تورين. فمنتوحتب الثاني خلف والدة إنتف الثالث على العرش ومن بعده خلفه إبنه منتوحتب الثالث.
        صعد منتوحتب الثاني على عرش مصر في مدينة طيبة بمصر العليا خلال فترة عصر الانتقال الأول. فمصر لم تكن موحدة في ذلك الوقت، والأسرة العاشرة المناوئة لأسرة منتوحتب الحادية عشر كانت تحكم مصر السفلى من مدينة هيراكليوبوليس. وبعد أن قام ملوك هيراكليوبوليس بتدنيس الجبانة الملكية المقدسة الموجودة في منطقة أبيدوس بمصر العليا في العام الرابع عشر من حكم منتوحتب الثاني، قام الأخير بإرسال جيوشه شمالاً لإحتلال مصر السفلى. وإستمراراً لحملات أبيه إنتف الثالث نجح منتوحتب في توحيد بلاده ربما قبل نهاية عامه التاسع والثلاثين من جلوسه على العرش. وبعد الإعتراف بالوحدة في العام التاسع والثلاثين قام بتغيير لقبه إلى سما-ناوي أي (موحد الأرضين).
        قام منتوحتب الثاني بعمل إصلاحات في الحكومة المصرية فور الإنتهاء من توحيد البلاد. فألغى عدم مركزية السلطة التي ساهمت في إنهيار الدولة القديمة وكانت علامة مميزة للفترة الإنتقالية الأولى، وذلك عن طريق تجريد حكام الأقاليم من بعض سلطتهم وتركيز الحكم في طيبة. كما إبتكر أيضاً مناصب حكومية جديدة قد شغلها رجال طيبة المخلصين له، مما منح الملك مزيداً من السلطة على بلاده. كما سافر المسئولين عبر البلاد بصفة منتظمة لمراقبة حكام الأقاليم.
        تم دفن منتوحتب الثاني في جبانة طيبة بالدير البحري. وكان معبده الجنائزي من أكثر المشاريع المعمارية الطموحة لمنتوحتب الثاني، حيث أنه إشتمل على العديد من الإبتكارات المعمارية والدينية. فإحتوى على سبيل المثال على شرفات وممرات مغطاة حول المبنى المركزي، وكان أول معبد جنائزي يتم تمثيل الملك فيه على هيئة المعبود أوزير. وألهم معبده المعابد التي جائت من بعده مثل معبد حتشبسوت ومعبد تحتمس الثالث من الأسرة الثامنة عشر.
        بقايا معبده بالدير البحرى لا زالت موجودة بجوار معبد حتشبسوت، أحبه المصريون كثيرا واعتبروه مثل مينا (موحد الوجهين القبلي والبحري) ومؤسس الأسرة الأولى، ومثل أحمس طارد الهكسوس ومؤسس الدولة الحديثة) ويوجد صورة له بجانب الملك مينا وأحمس.",
        english_info: "Mentuhotep II is an ancient Egyptian king who ruled in the period (2061 - 2010 BC). The meaning of his royal name is (the god Montu is satisfied). He is also known by the coronation title Neb-Hapet-Ra, meaning (the captain of the helm of Ra). He is the founder of the Eleventh Dynasty. He is the son of Intef III. He is credited with reuniting the country after the end of the turmoil of the First Decline and becoming the first Egyptian king of the Middle Kingdom. His rule lasted 51 years, according to the Turin King List. Mentuhotep II succeeded Intef III's mother on the throne, and after him, his son Mentuhotep III succeeded him.
        Mentuhotep II ascended to the throne of Egypt in the city of Thebes in Upper Egypt during the First Intermediate Period. Egypt was not unified at that time, and the Tenth Dynasty, opposed to the Eleventh Dynasty of Mentuhotep, ruled Lower Egypt from the city of Heracleopolis. After the kings of Heracleopolis desecrated the sacred royal cemetery located in the Abydos region of Upper Egypt in the fourteenth year of the reign of Mentuhotep II, the latter sent his armies north to occupy Lower Egypt. In continuation of the campaigns of his father Entef III, Mentuhotep succeeded in unifying his country, perhaps before the end of his thirty-ninth year on the throne. After recognizing the unity in the thirty-ninth year, he changed his title to Sama-Nawi, meaning (Uniter of the Two Lands).
        Mentuhotep II made reforms in the Egyptian government immediately after the unification of the country was completed. He abolished the decentralization of power that contributed to the collapse of the Old Kingdom and was a distinctive feature of the first transitional period, by stripping the governors of the regions of some of their authority and concentrating rule in Thebes. He also created new government positions that were filled by loyal Theban men, giving the king more power over his country. Officials also traveled across the country on a regular basis to monitor regional governors.
        Mentuhotep II was buried in the Theban cemetery in Deir el-Bahri. His mortuary temple was one of the most ambitious architectural projects of Mentuhotep II, as it included many architectural and religious innovations. For example, it contained balconies and covered corridors around the central building, and it was the first funerary temple in which the king was represented in the form of the god Osiris. His temple inspired the temples that came after him, such as the Temple of Hatshepsut and the Temple of Tuthmosis III of the Eighteenth Dynasty.
        The remains of his temple in Deir el-Bahari are still present next to the Temple of Hatshepsut. The Egyptians loved him very much and considered him like Menes (the unifier of the tribal and maritime sides) and the founder of the First Dynasty, and like Ahmose, who expelled the Hyksos and the founder of the modern state. There is a picture of him next to King Menes and Ahmose.",
        date_of_birth: "2061",
        date_of_death: "1995",
        sub_era_id: sub_era_4.id,
    )
    character_28.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c8/MentuhotepII.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_28.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c8/MentuhotepII.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"عائلته",
        english_title:"His family",
        arabic_content:"كان منتوحتب الثاني ابن إنتف الثالث، وربما كانت زوجة إنتف الثالث إعح هي أيضاً أخته. ويوضح هذا النسب لوحة حننو (متحف القاهرة 36346) الذي كان مسئولاً في القصر الملكي تحت ولاية إنتف الثاني، وإنتف الثالث، وإبنه الذي تعرفه اللوحة باللقب الحوري سعنخ-إب-تاوي أي (محيي قلب الأرضين)، وهو أول لقب حوري لمنتوحتب الثاني. أما إعح فقد حملت لقب موت-نسوت أي (الأم الملكية). كما تم تأكيد نسب منتوحتب الثاني أيضاً بطريقة غير مباشرة من خلال نقش موجود في منطقة شط الرجال. وكان لمنتوحتب الثاني العديد من الزوجات اللاتي تم دفنهن معه أو بجواره في معبدة الجنائزي.
        تم التي ربما كانت الزوجة الرئيسية لمنتوحتب الثاني حيث كانت تحمل لقب حمت-نسوت أي (الزوجة الملكية)، و حمت-نسوت-مريت.ف أي (محبوبته الزوجة الملكية)، و ورت-حتس-نبوي أي (عظيمة صولجان السيدين). وقد إنجبت لمنتوحتب الثاني طفلين، بالتاكيد أحدهما كان منتوحتب الثالث نظراً لأن 'تم' كانت تُدعى أيضاً 'موت-نسوت' أي (الأم الملكية). ويبدوا أنها قد توفت بعد زوجها وقام إبنها بدفنها في معبد منتوحتب الثاني. وإكتشف قبرها اللورد دوفرين عام 1859، وأتم أرنولد حفر القبر عام 1968.
        نفرو الثانية وتعني (جميلة الثانية)، وكانت تُدعى 'حمت-نسوت-مريت.ف' أي (الزوجة الملكية ومحبوبته)، وربما كانت أخت منتوحتب الثاني نظراً لأنها تحمل أيضاً ألقاب مثل 'سات-نسوت-سمسوت-ن-خت.ف' أي (الأخت الملكية الكبيرة المنتمية إلى جسده)، و 'حموت-نبوت' أي (سيدة كل النساء). وتم دفنها في المقبرة رقم TT319 بالدير البحري.
        كاويت كانت إحدى زوجات منتوحتب الثاني الثانوية. وكانت تحمل الألقاب 'حمت-نسوت-مريت.ف' أي (الزوجة الملكية ومحبوبته)، و 'غكرت-نسوت' أي (المحظية الملكية). وكانت 'إحدى كاهنات المعبودة حتحور'. ويعتقد أنها كانت نوبية. وقد تم دفنها تحت شرفة معبد منتوحتب الثاني الجنائزي، حيث كشف نافيل عن تابوتها في عام 1907.
        سادة، وعاشيت، وهنهنيت، وكمسيت كلهن كانوا زوجات ثانويات لمنتوحتب الثاني. وكانوا يحملون
        الألقاب 'حمت-نسوت-مريت.ف' أي (الزوجة الملكية ومحبوبته)، و 'غكرت-نسوت-وعتت' أي (المحظية الملكية الوحيدة). وكانوا كاهنات المعبودة حتحور، وكل واحدة منهن تم دفنها في حفرة منفردة محفورة تحت شرفة معبد منتوحتب الثاني. مع ملاحظة أنه توجد نظرية بديلة ترى أن هنهنيت هي إحدى الزوجات الثانويات لإنتف الثالث، وربما كانت أم نفرو الثانية، وتوفت أثناء ولادتها.
        ماويت، وهي طفلة ذات خمسة سنوات تم دفنها مع زوجات منتوحتب الثاني الثانويات، وعلى الأرجح أنها إحدى بناته.",
        english_content:"Mentuhotep II was the son of Intef III, and the wife of Intef III Iah may also have been his sister. This lineage is illustrated by the painting of Hannu (Cairo Museum 36346), who was an official in the royal palace under the rule of Intef II and Intef III, and his son, whom the painting identifies with the Hurrian title of Sankh-ib-Tawi, meaning (Giver of the Heart of the Two Lands), which is the first Hurrian title of Mentuhotep II. As for Iah, she bore the title of Mut-Nesut, meaning (Royal Mother). The lineage of Mentuhotep II was also confirmed indirectly through an inscription found in the Shatt al-Rijal area. Mentuhotep II had many wives who were buried with him or next to him in his funerary temple.
        Tam was probably the main wife of Mentuhotep II, as she held the title of Hemet-Nesut, meaning (the royal wife), Hemet-Nesut-meret.f., meaning (his beloved, the royal wife), and Wort-hetes-nebwy, meaning (the great scepter of the two masters). She bore Mentuhotep II two children, one of whom was certainly Mentuhotep III, given that 'Tamm' was also called 'Mut-Nesut', meaning (the royal mother). It seems that she died after her husband, and her son buried her in the temple of Mentuhotep II. Her grave was discovered by Lord Dufferin in 1859, and Arnold completed the excavation of the grave in 1968.
        Neferu II, which means (beautiful the second), was called 'Hamat-Nesut-Merit.f', meaning (the royal wife and his beloved), and she may have been the sister of Mentuhotep II since she also had titles such as 'Sat-Nesut-Semsut-N-Khat.f'. That is, (the senior royal sister belonging to his body), and 'Hamut-Neboth', that is, (the mistress of all women). She was buried in Cemetery No. TT319 in Deir el-Bahri.
        Kawit was one of Mentuhotep II's secondary wives. She had the titles 'Hamt-Nesut-Mrit.f', meaning (the royal wife and his beloved), and 'Ghakert-Nsut', meaning (the royal concubine). She was 'one of the priestesses of the goddess Hathor'. It is believed that she was Nubian. She was buried under the balcony of the mortuary temple of Mentuhotep II, where Naville unveiled her sarcophagus in 1907.
        Sada, Ashit, Hanhinit, and Kamset were all secondary wives of Mentuhotep II. And they were carrying
        The titles are 'Hamt-Nesut-Mrit.f', meaning (the royal wife and his lover), and 'Ghakert-Nsut-Watat', meaning (the only royal concubine). They were priestesses of the goddess Hathor, and each of them was buried in a separate hole dug under the balcony of the temple of Mentuhotep II. Note that there is an alternative theory that holds that Hehnenit was one of the secondary wives of Entef III, and perhaps she was the mother of Neferu II, and she died during childbirth.
        Mawit, a five-year-old girl who was buried with Mentuhotep II's secondary wives, is most likely one of his daughters.",
        character_id: character_28.id,
    )
    CharacterSection.create(
        arabic_title:"حقبته",
        english_title:"His era",
        arabic_content:"يُعتبر منتوحتب الثاني أول حاكم للمملكة المصرية الوسطى. ولائحة تورين تنسب إليه ولاية عهد استمرت 51 عاماً. ظل كثيراً من علماء المصريات يأخذون بعين الإعتبار لفترة طويلة محتوى نقشين على الصخر، تظهر منتوحتب الثاني يعلوا شخصية أصغر منه مكتوب عليها الملك 'إنتف'، على أنه دليلاً قاطعا بأن سلفه 'إنتف الثالث' كان والده؛ إلا أن ذلك لم يتم تأكيده بشكل قطعى، حيث أن هذه النقوش قد تكون لها دوافع دعائية أخرى، كما أن منتوحتب تحيط به مشاكل أخرى متعلقة بأصله الحقيقي، وتغير أسمه ثلاثة مرات، ومحاولاته المتكررة التي إدعى فيها أنه منحدر من سلالات إلهية مختلفة.",
        english_content:"Mentuhotep II is considered the first ruler of the Middle Kingdom of Egypt. The Turin List attributes to him a reign that lasted 51 years. For a long time, many Egyptologists considered the content of two rock inscriptions, showing Mentuhotep II above a smaller figure bearing the inscription King 'Intef', as conclusive evidence that his predecessor 'Intef III' was his father; However, this has not been confirmed definitively, as these inscriptions may have other propaganda motives, and Mentuhotep is also surrounded by other problems related to his true origin, the change of his name three times, and his repeated attempts in which he claimed that he descended from different divine lineages.",
        character_id: character_28.id,
    )
    CharacterSection.create(
        arabic_title:"إعادة توحيد مصر",
        english_title:"Reunification of Egypt",
        arabic_content:"لقد حدثت إنتفاضة في شمال مصر وذلك في العام الرابع عشر من ولايته. وهذه الإنتفاضة على الأرجح متعلقة بالنزاع المتواصل بين منتوحتب الثاني المتمركز في طيبة والأسرة العاشرة المناوئة له والمتمركزة في هيراكليوبوليس التي هددت بإجتياح مصر العليا. والعام الرابع عشر من ولاية منتوحتب الثاني بالفعل قد تم تسميتها عام جريمة ثني. وبالتأكيد يشير ذلك إلى إستيلاء ملوك هيراكليوبوليس على منطقة ثني، ويبدوا أنهم قاموا بتدنيس الجبانة الملكية المقدسة بأبيدوس في هذه العملية، وجبانة أبيدوس هي جبانة ملكية عتيقة. وبناء عليه أرسل منتوحتب الثاني على الفور جيشه إلى شمال البلاد. ومقبرة المحاربين المشهورة بالدير البحري والتي تم إكتشافها في عشرينيات القرن العشرن تحتوي على رفاة 60 جثة من جثث الجنود الذين قتلوا في معركة، وهي جثث لم يتم تحنيطها وتم لفها بالكتان وعليها الخرطوش الملكي للملك منتوحتب الثاني. ونظراً لقربها من مقابر طيبة الملكية يُعتقد أن مقبرة المحاربين هي مقبرة الأبطال الذين قتلوا خلال الصراع بين منتوحتب الثاني وعدوه في الشمال. وأن 'مري-كا-رع' حاكم مصر السفلى في ذلك الوقت ربما قد توفى خلال هذا الصراع، مما زاد من ضعف مملكته وأعطى منتوحتب الثاني الفرصة لإعادة توحيد مصر. والتاريخ الذي تحقق فيه هذا التوحيد غير معروف بشكل دقيق، إلا أنه من المفترض حدوثه قبل العام التاسع والثلاثون من ولايته بفترة وجيزة. وتظهر الأدلة بالفعل أن عملية التوحيد قد إستغرقت وقاتاً طويلاً، ربما نتيجة إنعدام الأمن بشكل عام في البلاد في ذلك الوقت: فالعامة قد تم دفنهم بالأسلحة، وأظهرت اللوحات الجنائزية المسئولين يحملون الأسلحة بدلاً من الشعارات الملكية المعتادة، وعندما أرسل خليفة منتوحتب الثاني حملته إلى بلاد بونت بعد حوالي 20 عاماً من التوحيد كان عليهم تطهير وادي الحمامات من المتمردين.
        إن رعايا منتوحتب الثاني إعتبروه إله أو نصف إله بعد إعادة التوحيد. واستمر هذا هو الحال خلال أواخر الأسرة الثانية عشر بعد حوالي 200: فأقام سنوسرت الثالث وأمنمحات الثالث لوحات تذكارية لشعائر فتح الفم المقامة عند تماثيل منتوحتب الثاني.",
        english_content:"An uprising occurred in northern Egypt in the fourteenth year of his term. This uprising is most likely related to the ongoing conflict between Mentuhotep II, based in Thebes, and the opposing Tenth Dynasty, based in Heracleopolis, which threatened to invade Upper Egypt. The fourteenth year of the reign of Mentuhotep II has already been called the year of the crime of Thinni. This certainly indicates that the kings of Heracleopolis took over the Theni region, and it seems that they desecrated the sacred royal cemetery in Abydos in the process, and the Abydos cemetery is an ancient royal cemetery. Accordingly, Mentuhotep II immediately sent his army to the north of the country. The famous warriors' cemetery in Deir el-Bahari, which was discovered in the 1920s, contains the remains of 60 bodies of soldiers who were killed in battle. These bodies were not mummified and were wrapped in linen and bearing the royal cartouche of King Mentuhotep II. Due to its proximity to the Royal Tombs of Thebes, it is believed that the Warriors’ Cemetery is the cemetery of the heroes who were killed during the conflict between Mentuhotep II and his enemy in the north. And that 'Meri-Ka-Ra', the ruler of Lower Egypt at that time, may have died during this conflict, which increased the weakness of his kingdom and gave Mentuhotep II the opportunity to reunite Egypt. The date on which this unification was achieved is not known precisely, but it is assumed to have occurred shortly before the thirty-ninth year of his term. Evidence does show that the unification process took a long time, perhaps as a result of the general insecurity in the country at the time: commoners were buried with weapons, funerary stelae showed officials carrying weapons instead of the usual royal regalia, and when Mentuhotep II's successor sent his expedition to Punt After about 20 years of unification, they had to clear Wadi Hammamet of rebels.
        Mentuhotep II's subjects considered him a god or demigod after reunification. This continued to be the case during the late Twelfth Dynasty, after about 200: Senusret III and Amenemhat III erected memorial plaques for the mouth-opening ritual performed at the statues of Mentuhotep II.",
        character_id: character_28.id,
    )
    CharacterSection.create(
        arabic_title:"النشاط العسكري خارج مصر",
        english_title:"Military activity outside Egypt",
        arabic_content:"لقد شن منتوحتب الثاني حملات عسكرية في العام التاسع والعشرين والواحد والثلاثين من ولايته تحت قيادة وزيره ختي في إتجاه الجنوب إلى النوبة، التي قد حصلت على إستقلالها خلال عصرالإنتقال الأول. وهي المرة الأولى التي يظهر فيها مصطلح كوش بشكل موثق لمنطقة النوبة في السجلات المصرية. ونجد على وجه التحديد أن منتوحتب الثاني قد وضع حامية عسكرية في قلعة جزيرة الفنتين حتى يتمكن من نشر قواته العسكرية بسرعة في إتجاه الجنوب. كما توجد شواهد على أعمال عسكرية ضد الكنعانيين. وتم العثور على نقش يحمل اسم الملك في جبل العوينات القريب من الحدود مع ليبيا والسودان وتشاد يشهد بحد أدنى على وجود اتصالات تجارية في هذه المنطقة.",
        english_content:"Mentuhotep II launched military campaigns in the twenty-ninth and thirty-first years of his rule under the leadership of his vizier Khiti towards the south towards Nubia, which had gained its independence during the First Intermediate Period. This is the first time that the term Kush appears documented in the Nubia region in Egyptian records. Specifically, we find that Mentuhotep II placed a military garrison in the castle of Elephantine Island so that he could quickly deploy his military forces towards the south. There is also evidence of military actions against the Canaanites. An inscription bearing the king's name was found in Jabal Al-Owaynat, near the borders with Libya, Sudan, and Chad, attesting at a minimum to the existence of commercial contacts in this region.",
        character_id: character_28.id,
    )
    CharacterSection.create(
        arabic_title:"إعادة تنظيم الحكومة",
        english_title:"Reorganization of the government",
        arabic_content:"لقد شغل حكام الأقاليم سلطات هامة في جميع أرجاء مصر وذلك خلال عصر الانتقال الأول حتى ولاية منتوحتب الثاني. وأصبح منصبهم هو منصب وراثي خلال الأسرة السادسة، وإنهيار السلطة المركزية ضمن لهم سلطة مطلقة على أراضيهم. إلا أن منتوحتب الثاني بعد توحيد البلاد قد شرع بقوة في تطبيق سياسة المركزية، وتدعيم سلطتة الملكية من خلال إنشاء مناصب حاكم مصر العليا وحاكم مصر السفلى، اللذين كان لهما سلطة على حكام الأقاليم المحلية.
        كما أعتمد منتوحتب الثاني على قوة متنقلة من مسئولين البلاط الملكي الذين كان لهم مزيد من السيطرة على أفعال حكام الأقاليم. وبالتأكيد قد فقد حكام الأقاليم الذين دعموا الأسرة العاشرة سلطتهم لصالح الملك، مثل حاكم إقليم أسيوط. كما بدأ منتوحتب الثاني في نفس الوقت برنامج موسع لتقديس الذات مؤكداً على الطبيعة اللاهوتية للحاكم.",
        english_content:"Regional governors held important powers throughout Egypt during the First Intermediate Period until the reign of Mentuhotep II. Their position became hereditary during the Sixth Dynasty, and the collapse of central authority granted them absolute authority over their lands. However, after the unification of the country, Mentuhotep II began vigorously implementing the policy of centralization and strengthening the authority of the monarchy by establishing the positions of the ruler of Upper Egypt and the ruler of Lower Egypt, who had authority over the rulers of the local regions.
        Mentuhotep II also relied on a mobile force of royal court officials who had more control over the actions of provincial governors. Certainly, the provincial governors who supported the Tenth Dynasty lost their power to the king, such as the governor of the Assiut province. At the same time, Mentuhotep II also began an extensive program of self-sanctification, emphasizing the theological nature of the ruler.",
        character_id: character_28.id,
    )
    character_29 = Character.create(
        arabic_name: "منتوحتب الثالث",
        english_name: "Mentuhotep III",
        arabic_info: "منتحوتب الثالث كان فرعون مصري من الأسرة الحادية عشرة خلال المملكة الوسطى.",
        english_info: "Mentuhotep III was an Egyptian pharaoh from the Eleventh Dynasty during the Middle Kingdom.",
        date_of_birth: "",
        date_of_death: "",
        sub_era_id: sub_era_4.id,
    )
    character_29.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9c/Mentuhotep-OsirideStatue-CloseUp_MuseumOfFineArtsBoston.png"), filename: 'image.jpg', content_type: 'image/jpg')
    character_29.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9c/Mentuhotep-OsirideStatue-CloseUp_MuseumOfFineArtsBoston.png"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"النشأة",
        english_title:"His upbringing",
        arabic_content:"إشترك منتوحتب الثالث في الحروب والغزوات التي شنها والده على ملوك هيراكليوبوليس إذ نشاهده في منظر من مناظر معبد الدير البحرى. مرسوما خلف والده مباشرة بوصفه ابن الملك ويظهر في ملابسه الحربية ويحمل بلطة وقوس.",
        english_content:"Mentuhotep III participated in the wars and invasions waged by his father against the kings of Heracleopolis, as we see him in a scene from the temple of Deir el-Bahari. He is depicted behind his father directly as the son of the king, wearing military clothes and carrying a mace and bow.",
        character_id: character_29.id,
    )
    CharacterSection.create(
        arabic_title:"أسماؤه",
        english_title:"His names",
        arabic_content:"على أثر وفاة والده تقلد الألقاب الفرعونية المعتادة مسميا نفسه خور - سعنخ تاوى -أف (الذي يجعل أرضيه تحييان وصاحب الإلهتين) و(سعنخ تاوى إف) واسم حور الذهبى: حتب السلام ملك الوجة القبلى والبحرى. سخنع كا رع بمعنى (الذي يجعل روح رع تعيش). ابن الشمس منو حتب وفي القرون التالية كان اسمه ذائع الصيت فنجده في نقوش الكرنك يسمى (الإله الطيب رب الأرضين وسيد القربان سعنخ كا رع) المبرئ. وقد ذكرت هذة التسمية بعد ذكر اسم نب حتب رع مباشرة وقد ظهر إسمه كذلك على لوحة (يتيزى)التي عثر عليها في مقبرته في سقارة.",
        english_content:"Following the death of his father, he assumed the usual Pharaonic titles, calling himself Khor-Saankh-tawi-af (He who makes his lands come to life and the owner of the two goddesses) and (Saankh-tawi-if), and the name of Hor al-Dhahabi: Hetepe the peace, king of the tribal and sea region. Sekhenkare means (the one who makes Ra's soul live). The son of the sun, Menohotep, and in the following centuries his name was very famous. We find him in the Karnak inscriptions called (the good god, Lord of the Two Lands and Master of Sacrifice, Sankhkare), the Exonerator. This name was mentioned directly after the name of Nebhotepre, and his name also appeared on the stela (Yatizi) that was found in his tomb in Saqqara.",
        character_id: character_29.id,
    )
    CharacterSection.create(
        arabic_title:"سنوات حكمه",
        english_title:"Years of his rule",
        arabic_content:"بردية تورين تنص على أنه حكم إثنتا عشرة سنة وقد كانت أعوام سلام وهدوء إذ كان قد إنقضى على السنين الأولى المملوءة بالثورات والعصيان من حكم والده نب حتب رع جيل وخلفها عهد سكينة وإستقرار إستمتع به سعنخ كا رع",
        english_content:"The Turin Papyrus states that he ruled for twelve years, and the years were peaceful and calm, as he had passed the first years filled with revolutions and rebellions from the rule of his father, Nebhotepre, and succeeded by an era of tranquility and stability enjoyed by Sankhkare.",
        character_id: character_29.id,
    )
    CharacterSection.create(
        arabic_title:"أعماله",
        english_title:"His works",
        arabic_content:"أقام معبد في الفنتين (أسوان) واقام بعض المبانى في أرمنت وفي الطود بنى جزئا كبيرا في معبدها وفي الكرنك عثر على جزء من تمثال صغير من المرمر له.",
        english_content:"He built a temple in Elephantine (Aswan) and built some buildings in Armant and in Tod, he built a large part of his temple, and in Karnak, a small marble statue of him was found.",
        character_id: character_29.id,
    )
    CharacterSection.create(
        arabic_title:"اثاره",
        english_title:"His artifacts",
        arabic_content:"بقى لنا عدد محدود من الآثار الصغيرة التي تحمل أسمه ففى سقارة عثر له على تمثال محفوظ الآن في متحف اللوفر ويقال إن له كذلك خاتما من الذهب نقش عليه (ملك الوجة القبلى والوجة البحرى )سعنخ كا رع محبوب (منتو) رب طيبة وعثر على خرزة كرية الشكل لونها أزرق قاتم تحمل اسمه أما معبد الفرعون فكان يتألف من جدار رخيص ملتو بنى من اللبن .",
        english_content:"We have a limited number of small artifacts bearing his name. In Saqqara, a statue was found for him, now preserved in the Louvre Museum, and it is said that he also had a gold ring engraved with (King of the tribal and sea region) Sankhkare, beloved (Mentu) Lord of Thebes, and a dark blue spherical bead bearing his name. As for the Pharaoh's temple, it consisted of a cheap wall made of mud bricks.",
        character_id: character_29.id,
    )
    character_30 = Character.create(
        arabic_name: "أمنمحات الأول",
        english_name: "Amenemhat I",
        arabic_info: "أمنمحات الأول (باللغة المصرية في الدولة الوسطى: إمن-م-حات) وأطلقت عليه الحضارة الهيلينية اسم أمنمس، هو أول ملوك الأسرة الثانية عشرة التي تُعتبر العصر الذهبي للدولة الوسطى بمصر. وحكم في الفترة من 1991 ق.م إلى 1962 ق.م (1939 ق.م إلى 1910 ق.م).
        ربما كان أمنمحات الأول هو نفسه الوزير المدعو أمنمحات، الذي قاد حملة إلى وادي الحمامات تحت إمرة سلفه منتوحتب الرابع. وربما أطاح أمنمحات الأول بمنتوحتب الرابع من على راس السلطة في مصر. ولذلك يختلف العلماء فيما إذا كان أمنمحات الأول قد قام بقتل منتوحتب الرابع من عدمه، إلا أنه لا توجد أدلة مستقلة تدعم هذه القضية، وربما كانت هناك فترة حكم مشترك تفصل بين عهديهما.
        بدأ به عهد الأسرة الثانية عشرة. قام بتنظيم الحكومة والحد من سلطة النبلاء وازدهرت مصر في عهده. وقد واجه مشاكل كثيرة في بداية حكمه واضطر إلى أن يُقنع الشعب باللين تارة وبالقوة تارة. وقضى أمنمحات الأول على غارات الليبيين والآسيويين. وحَكَمَ آخر عشر سنوات من حكمه بالاشتراك مع ابنه سنوسرت الأول.
        لم يكن أمنمحات الأول من السلالة الملكية، ولذلك غالباً ما تُعتبر محاولات تأليف بعض الأعمال الأدبية (مثل نبوءة نفرتي، ووصايا أمنمحات)، والعودة في العمارة إلى طراز المجمعات الهرمية التي إشتهر بها حكام الأسرة السادسة هي محاولات لإضفاء الشرعية على حكمه. ولقد قام أمنمحات الأول بنقل العاصمة من طيبة إلى إيثت-تاوي، وتم دفنه في اللشت.
        وطد أمنمحات الأول نفوذ حكمه على حكام الأقاليم عن طريق عزل أي حاكم لا يطيع أوامره، واستطاع حكم مصر هو وابنه سنوسرت الأول وحفيدة أمنمحات الثاني وابن حفيده سنوسرت الثاني، وكانوا من الملوك العظماء الذين ازدهرت في عهدهم البلاد المصرية وعمها الرخاء. فقد اهتم الملك سنوسرت الثاني بالزراعة وأقام السدود في منطقة الفيوم لحجز مياه الفيضان واستغلالها خلال أشهر الجفاف. كما عمل ملوك تلك الأسرة على تأمين مصر من هجمات الليبيين والأسيويين. وامتد نفوذهم إلى حدود وادي حلفا. إلا إنه قد حدثت مشكلة في عهد الملك أمنمحات الأول بخصوص القائد سنوحي الذي أصبحت أسطورة فيما بعد.",
        english_info: "Amenemhat I (in Egyptian language in the Middle Kingdom: Amen-M-hat), and the Hellenic civilization called him Amenemes, was the first king of the Twelfth Dynasty, which is considered the golden age of the Middle Kingdom in Egypt. He ruled from 1991 BC to 1962 BC (1939 BC to 1910 BC).
        Amenemhat I may have been the same vizier called Amenemhat, who led an expedition to Wadi Hammamet under the command of his predecessor, Mentuhotep IV. Amenemhat I may have overthrown Mentuhotep IV from the helm of power in Egypt. Therefore, scholars differ as to whether Amenemhat I killed Mentuhotep IV or not, but there is no independent evidence to support this issue, and perhaps there was a period of joint rule separating their reigns.
        The Twelfth Dynasty began with it. He organized the government and limited the power of the nobility, and Egypt flourished during his reign. He faced many problems at the beginning of his rule and had to persuade the people sometimes with leniency and sometimes with force. Amenemhat I eliminated the raids of the Libyans and Asians. He ruled the last ten years of his rule jointly with his son Senusret I.
        Amenemhat I was not of the royal line, and therefore attempts to compose some literary works (such as The Prophecy of Neferti, The Testaments of Amenemhat), and a return in architecture to the style of pyramidal complexes for which the rulers of the Sixth Dynasty were famous are often considered attempts to legitimize his rule. Amenemhat I moved the capital from Thebes to Itath-tawi, and was buried in Lisht.
        Amenemhat I consolidated the influence of his rule over the regional rulers by removing any ruler who did not obey his orders. He was able to rule Egypt with his son, Senusret I, the granddaughter of Amenemhat II, and his great-grandson, Senusret II. They were among the great kings during whose reign the Egyptian country flourished and was filled with prosperity. King Senusret II was interested in agriculture and built dams in the Fayoum region to retain flood water and exploit it during the dry months. The kings of that dynasty also worked to secure Egypt from attacks by Libyans and Asians. Their influence extended to the borders of Wadi Halfa. However, a problem occurred during the reign of King Amenemhat I regarding the leader Sinuhe, who later became a legend.",
        date_of_birth: "1991",
        date_of_death: "1962",
        sub_era_id: sub_era_4.id,
    )
    character_30.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/96/Funerary_relief_of_Amenemhet_I_from_El-Lisht_by_John_Campana.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_30.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/96/Funerary_relief_of_Amenemhet_I_from_El-Lisht_by_John_Campana.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"بداية العهد",
        english_title:"The beginning of the era",
        arabic_content:"تشير بعض الأدلة إلى أن بداية عهد أمنمحات الأول قد عانت من الفوضى السياسية، وذلك وفقاً لما أشارت إليه نقوش الحاكم المحلي نهري. كما كانت هناك بعض المعارك البحرية التي شارك فيها خنوم-حتب الأول رفيق أمنمحات الأول وساعده في تحقيق الإنتصار. وبعدها تم تنصيبه حاكماً محلياً هاماً على منطقة بني حسن، وأسس سلالة من الحكام المحليين هناك، فكان حفيده هو خنوم-حتب الثالث.
        كما أيضاً قد تم ذكر الحملات العسكرية ضد الأسيويين والنوبيين في نقوش خنوم-حتب.",
        english_content:"Some evidence suggests that the beginning of the reign of Amenemhat I was plagued by political chaos, as indicated by inscriptions of the local ruler Nohri. There were also some naval battles in which Khnum-hotep I, the companion of Amenemhat I, participated and helped him achieve victory. After that, he was installed as an important local ruler of the Beni Hassan region, and he established a dynasty of local rulers there. His grandson was Khnum-hotep III.
        Military campaigns against the Asians and Nubians were also mentioned in the inscriptions of Khnum-hotep.",
        character_id: character_30.id,
    )
    CharacterSection.create(
        arabic_title:"الاسم",
        english_title:"The name",
        arabic_content:"إرتبط اسم أمنمحات الأول بواحدة من إثنين لا غير من 'السبايت' أو 'التعاليم' الأخلاقية المنسوبة إلى الحكام المصريين، وهي تعاليم معروفة تحت عنوان 'وصايا أمنمحات'، وذلك على الرغم من الإعتقاد حالياً وبشكل عام أن أحد الكتاب قد قام بتأليفها بتوصية من الملك.
        إن اللقب الحوري لأمنمحات الأول هو 'وحم-مسو'، والذي يعني النهضة أو الإحياء، وذلك تلميحاً بعصر الدولة القديمة التي نماذجها وأيقوناتها الثقافية (مثل المعابد الهرمية والأفكار الفنية المتعلقة بالدولة القديمة) قد قد قام بمحاكاتها ملوك الأسرة الثانية عشر بعد نهاية الفترة الإنتقالية الأولى. كما تم الترويج لعبادة الملك خلال هذه الفترة التي شهدت عودة هادئة إلى حكومة أكثر مركزية من سابقتها.",
        english_content:"The name of Amenemhat I is associated with only one of two 'sabayt' or moral 'teachings' attributed to Egyptian rulers, which are known under the title 'The Commandments of Amenemhat', although it is currently generally believed that one of the writers composed them on the recommendation of the king. .
        The Hurrian title of Amenemhat I is 'Wahm-mesu', which means renaissance or revival, alluding to the Old Kingdom era, whose cultural models and icons (such as pyramidal temples and artistic ideas related to the Old Kingdom) were emulated by the kings of the Twelfth Dynasty after the end of the First Intermediate Period. . The cult of the king was also promoted during this period, which saw a quiet return to a more centralized government than its predecessor.",
        character_id: character_30.id,
    )
    CharacterSection.create(
        arabic_title:"الخلافة",
        english_title:"His caliphate",
        arabic_content:"إن الحكم الذي قام به أمنمحات الأول كان مركزياً بشكل كبير، وقد قام بتنظيم الحكومة وتقليص سلطة النبلاء. وقد أدى ذلك إلى ازدهار مصر في عهده. وقد واجه العديد من المشاكل في بداية حكمه واضطر إلى إقناع الشعب باللين تارة وبالقوة تارة. وقد قضى على غارات الليبيين والآسيويين. وقد حكم آخر عشر سنوات من حكمه بالاشتراك مع ابنه سنوسرت الأول.",
        english_content:"The rule of Amenemhat I was largely centralized, and he organized the government and reduced the power of the nobility. This led to the flourishing of Egypt during his reign. He faced many problems at the beginning of his rule and had to persuade the people sometimes with leniency and sometimes with force. He eliminated the raids of the Libyans and Asians. He ruled the last ten years of his rule jointly with his son Senusret I.",
        character_id: character_30.id,
    )
    CharacterSection.create(
        arabic_title:"الإقتباسات الحديثة",
        english_title:"Modern quotes",
        arabic_content:"إن الكاتب نجيب محفوظ الحائز على جائزة نوبل في الأدب قد أدرج شخصية الملك أمنمحات الأول في إحدى رواياته المنشورة عام 1941 بعنوان 'عودة سنوهي'. وهذه القصة قد ظهرت في النسخة التي ترجمها إلى الإنجليزية ريموند ستوك عام 2003 من ضمن مجموعة نجيب محفوظ للقصص القصيرة التي عنوانها 'أصوات من العالم الآخر'. والقصة مبنية بشكل مباشر على 'قصة سنوهي'، على الرغم من إضافة تفاصيل مثلث الحب الرومانسي التي تضم أمنمحات الأول وسنوهي ولم تظهر في النسخة الأصلية. كما أن محفوظ قد أدرج أيضاً الملك أمنمحات الأول في روايته عن حكام مصر 'أمام العرش'. ونجد من خلال هذا العمل أن الكاتب الحاصل على جائزة نوبل جعل الآلهة المصرية القديمة تحاكم حكام البلاد بدايةً من الملك مينا وإنتهاءً بالرئيس أنور السادات.",
        english_content:"The writer Naguib Mahfouz, winner of the Nobel Prize in Literature, included the character of King Amenemhat I in one of his novels published in 1941 entitled 'The Return of Sinuhe'. This story appeared in the version translated into English by Raymond Stock in 2003 from Naguib Mahfouz's collection of short stories entitled 'Voices from the Other World'. The story is based directly on 'The Story of Sinuhe', although details of a romantic love triangle involving Amenemhat I and Sinuhe were added that did not appear in the original version. Mahfouz also included King Amenemhat I in his novel about the rulers of Egypt, 'Before the Throne'. We find through this work that the Nobel Prize-winning writer made the ancient Egyptian gods judge the country’s rulers, starting with King Menes and ending with President Anwar Sadat.",
        character_id: character_30.id,
    )
    CharacterSection.create(
        arabic_title:"سياسته الخارجية",
        english_title:"His foreign policy",
        arabic_content:"هددت بلاد الجوار مصر في ذلك الوقت مما دعا الملك إلى توجيه حملة على النوبة جنوب البلاد ولكنه لم يحتفظ بمكاسبه على الأرض. كما توجد أدلة على إرساله الحملات على الليبيين غرب البلاد وإقامة ما أسموه حائط الأمير أو أسوار امنمحات المبجل وكانت على هيئة عدة حصون منفردة.",
        english_content:"Neighboring countries threatened Egypt at that time, prompting the king to launch a campaign against Nubia in the south of the country, but he did not retain his gains on the ground. There is also evidence of his sending campaigns against the Libyans in the west of the country and establishing what he called the Prince's Wall or the revered Amenemhat's walls, which were in the form of several individual fortresses.",
        character_id: character_30.id,
    )
    character_31 = Character.create(
        arabic_name: "سنوسرت الأول",
        english_name: "Senusret I",
        arabic_info: "سنوسرت الأول (الدولة المصرية الوسطى: س-ن-وسرت وتعني الرجل ذو القوة) كما إن الاسم أيضاً في صيغته الإنجليزية يُنطق سيزوستريس الأول، وهو ثانى ملوك الأسرة الثانية عشر. تولى حكم مصر من عام 1971 إلى عام 1926 قبل الميلاد (1920 إلى 1875 قبل الميلاد)، وكان واحد من أقوى ملوك هذه الأسرة. اشترك في حكم مصر مع والده الملك أمنمحات الأول خلال الأعوام 1975 إلى 1965 قبل الميلاد. وانفرد بحكم مصر بعد وفاة والده وامتدت فترة حكمه إلى 43 سنة ازدهرت خلالها الحياة في مصر. وأشرك ابنه في الحكم خلال الثلاثة أعوام الاخيرة من حكمه، من 1932 إلى 1930 قبل الميلاد والذي أصبح امنمحات الثاني. وس-ن-وسرت كان معروف بلقبه التتويجي 'كا-خبر-رع'، والذي يعني (تجلي 'روح' رع).
        لقد واصل سياسات والده التوسعية ذات الطابع الهجومي في النوبة، وذلك بالمبادرة بإرسال حملتين إلى هذه المنطقة، الأولى كانت في عامه العاشر والثانية كانت في عامه الثامن عشر من حكم مصر، وأقر حدود مصر الجنوبية الرسمية بالقرب من الشلال الثاني حيث وضع فيها حامية دفاعية وأقام عليها لوحة النصر. كما نظم حملة إلى واحات الصحراء الغربية. وأقر علاقات دبلوماسية مع بعض حكام المدن في سوريا والأراضي الكنعانية. كما أن له محاولات في ترسيخ مركزية الهيكل السياسي للبلاد عن طريق دعم القبائل البدوية الموالين له. وشهدت فترة حكمه استقراراً وتطوراً في العديد من المجالات. فكانت مستويات الأدب والصناعة في أوجّهما. كما تميزت هذه الفترة بازدهار الثروة المعدنية واستخراج الذهب وإنتشار المشغولات الذهبية الدقيقة بوفرة. وهذا بالإضافة إلى الجهد الكبير الذي تم بذله في تدبير الأحجار الكريمة والفيروز والنحاس اللازمة لعمل الحلى وما تتطلبها أعمال النحت. وكان من نتائج هذه الفترة أقامة هرمه ومعبده الجنائزي في اللشت بالقرب من الفيوم، وهي العاصمة الجديدة التي أقامتها الأسرة الثانية عشر بعد مغادرة طيبة، وتم العثور له فيها على العديد من التماثيل هناك. وتم ذكر شخصية الملك س-ن-وسرت الأول في قصة سنوهي عندما قالت أنه قد أسرع بالرجوع من حملته العسكرية في ليبيا إلى القصر الملكي في منف بعد سماعه واقعة إغتيال والده أمن-م-حات الأول.",
        english_info: "Senusret I (Middle Egyptian State: S-N-USRET, meaning man with strength) and the name, in its English form, is also pronounced Sesostris I. He was the second king of the Twelfth Dynasty. He ruled Egypt from 1971 to 1926 BC (1920 to 1875 BC), and was one of the most powerful kings of this dynasty. He participated in ruling Egypt with his father, King Amenemhat I, during the years 1975 to 1965 BC. He became the sole ruler of Egypt after the death of his father, and his rule extended to 43 years, during which life flourished in Egypt. He included his son in power during the last three years of his rule, from 1932 to 1930 BC, who became Amenemhat II. S-N-Usret was known by his coronation title 'Ka-Kheper-Ra', which means (the manifestation of the 'soul' of Ra).
        He continued his father's expansionist policies of an offensive nature in Nubia, by taking the initiative to send two campaigns to this region, the first was in his tenth year and the second was in his eighteenth year of rule of Egypt, and he established Egypt's official southern borders near the Second Cataract, where he placed a defensive garrison and established it. Victory painting. He also organized an expedition to the oases of Western Sahara. He established diplomatic relations with some city rulers in Syria and the Canaanite lands. He also attempts to consolidate the centrality of the country's political structure by supporting the Bedouin tribes loyal to him. His rule witnessed stability and development in many areas. The levels of literature and industry were at their peak. This period was also characterized by the prosperity of mineral wealth, the extraction of gold, and the spread of fine gold jewelry in abundance. This is in addition to the great effort that was made in procuring the precious stones, turquoise and copper needed to make the jewelry and what is required for sculpture work. One of the results of this period was the establishment of his pyramid and his funerary temple in Lisht near Fayoum, which is the new capital established by the Twelfth Dynasty after leaving Thebes, and many statues of him were found there. The character of King S-N-Usret I was mentioned in the story of Sinuhe when she said that he had hurried back from his military campaign in Libya to the royal palace in Memphis after hearing about the assassination of his father, Amen-Mhat I.",
        date_of_birth: "1971",
        date_of_death: "1926",
        sub_era_id: sub_era_4.id,
    )
    character_31.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/2/2e/Statue_Senusret_I_Petrie.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_31.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/2/2e/Statue_Senusret_I_Petrie.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"العائلة",
        english_title:"The family",
        arabic_content:"إن علاقات الملك الأسرية معروفة جيداً. فالملك س-ن-وسرت الأول هو ابن الملك أمن-م-حات الأول. ووالدته كانت أميرة من الأميرات إسمها نفريتانن. وزوجته الرئيسية كان إسمها نفرو الثالثة، وكانت أخته في نفس الوقت، ووالدة خليفته الملك أمن-م-حات الثاتي. وإبنه المعروف هو الملك أمن-م-حات الثاني والأميرات إيتاكايت وسبات. أما هذه الأميرة الأخيرة فكانت على الأرجح بنت الملكة نفرو الثالثة حيث أنها قد ظهرت معها في إحدى النقوش.",
        english_content:"The king's family relations are well known. King S-N-Usret I is the son of King Amen-Mhat I. His mother was a princess named Nefertanen. His main wife was named Neferu III, and she was his sister at the same time, and the mother of his successor, King Amenemhat II. His known son is King Amenemhat II and the princesses Itakite and Sabat. As for this last princess, she was most likely the daughter of Queen Neferu III, as she appeared with her in one of the inscriptions.",
        character_id: character_31.id,
    )
    CharacterSection.create(
        arabic_title:"البرنامج الإنشائي",
        english_title:"The construction program",
        arabic_content:"لقد أرسل س-ن-وسرت الأول العديد من حملات استخراج المعادن إلى سيناء ووادي الحمامات، وقام ببناء العديد من المزارات والمعابد في جميع أنحاء مصر والنوبة خلال فترة حكمه الطويلة. وأعاد بناء معبد 'رع-أتوم' في هليوبوليس، الذي كان مركزاً لعبادة الشمس. وأقام هناك مسلتين مصنوعتين من الجرانيت الأحمر بمناسبة الإحتفال بعيد يوبيل 'الحب سد' الموافق لعامه الثلاثيني على حكم مصر. ولا تزال إحدى هاتين المسلتين باقيةً في موقعها، وهي تُعتبر أقدم مسلة قائمة في مصر. ومكان هذه المسلة هو منطقة 'المسلة' بالمطرية بالقرب من حي عين شمس (هليوبوليس). وإرتفاعها هو 67 قدم، وتزن 120 طن أو 240,000 رطل.
        لقد تم توثيق بناء س-ن-وسرت الأول لعدد من المعابد الكبرى في مصر القديمة، بما في ذلك معبد 'من' بقفط، ومعبد 'ساتت' بالفنتين، ومعبد الشهر في أرمنت، ومعبد الشهر في الطود حيث يوجد له نقش طويل محفوظ هناك.",
        english_content:"S-N-Usret I sent numerous mining expeditions to Sinai and Wadi Hammamet, and built many shrines and temples throughout Egypt and Nubia during his long reign. He rebuilt the Temple of Ra-Atum in Heliopolis, which was a center for sun worship. He erected two obelisks there made of red granite on the occasion of the celebration of the Jubilee of 'Love Dam', corresponding to his thirtieth year of ruling Egypt. One of these two obelisks still remains in its location, and it is considered the oldest existing obelisk in Egypt. The location of this obelisk is the 'Obelisk' area in Matareya, near the Ain Shams neighborhood (Heliopolis). Its height is 67 feet, and it weighs 120 tons, or 240,000 pounds.
        The construction of a number of major temples in ancient Egypt by S-N-Usret I has been documented, including the Temple of 'Min' in Qeft, the Temple of 'Satet' in Palestine, the Temple of Al-Shahr in Armant, and the Temple of Al-Shahr in Al-Tud, for which a long inscription is preserved there.",
        character_id: character_31.id,
    )
    CharacterSection.create(
        arabic_title:"البلاط الملكي",
        english_title:"Royal court",
        arabic_content:"إن بعض الأعضاء الرئيسين في بلاط الملك س-ن-وسرت الأول معروفين. فنجد أن الوزير إنتف-إقر قد تقلد هذا المنصب في بداية حكمه، وهذه الشخصية تم التعرف عليها من خلال العديد من النقوش ومن خلال قبرة المجاور لهرم أمن-م-حات الأول. ويبدوا أنه قد شغل هذا المنصب لفترة طويلة من الزمن وجاء من بعده وزير إسمه س-ن-وسرت. وبخصوص أمناء الخزانة فنعرف عنهم إثنين كانوا في عهد الملك: سوبك-حتب (في العام الثاني والعشرين) ومنتو-حتب. أما هذا الأخير فيوجد له مقبرة ضخمة بجوار هرم الملك، ويبدوا أنه كان المهندس المعماري الرئيسي لمعبد آمون بالكرنك. كما تم توثيق العديد من المدراء الساميين. فنجد من بينهم حور، وهي شخصية تم التعرف عليها من خلال العديد من اللوحات ومن خلال نقش موجود في وادي الهودي حيث من الواضح أنه كان قائداً لحملة الغرض منها هو جمع حجر الجمشت. وإحدى هذه اللوحات ترجع إلى العام التاسع من حكم الملك. وقد تقلد هذا المنصب من بعده أحد الشخصيات التي تدعى ناخر في حوالي العام الثاني عشر من حكم الملك. ولديه مقبرة في منطقة اللشت. وشخصية تدعى إنتف، وكان إبناً لإمرأة إسمها سات-آمون، وتم التعرف عليها مرة آخرى من خلال العديد من اللوحات، إحداهما ترجع إلى العام الرابع والعشرين والأخرى ترجع إلى العام الخامس والعشرين من حكم الملك س-ن-وسرت الأول. وشخصية أخرى إسمها إنتف كان إبناً لإمرأة تدعى سات-وسر، وعلى الأرجح أنه كان أيضاً مديراً سامياً في عهد الملك.",
        english_content:"Some of the key members of the court of King S-N-usret I are known. We find that Vizier Intef-Iqr held this position at the beginning of his reign, and this character was identified through many inscriptions and through his tomb next to the pyramid of Amen-em-Hat I. It seems that he held this position for a long period of time, and after him came a minister named S-N-Usret. Regarding the treasurers, we know of two of them who were during the reign of the king: Sobek-hotep (in the twenty-second year) and Mentu-hotep. As for the latter, there is a huge tomb next to the king’s pyramid, and it seems that he was the main architect of the Temple of Amun in Karnak. Several high administrators have also been documented. Among them we find Hour, a character identified through many paintings and through an inscription found in Wadi el-Hudi, where it is clear that he was the leader of an expedition whose purpose was to collect amethyst stones. One of these paintings dates back to the ninth year of the king's rule. This position was held after him by a person called Nakher, around the twelfth year of the king’s rule. He has a cemetery in the Lasht area. And a character called Entef, who was the son of a woman named Sat-Amun, was identified again through several paintings, one dating back to the twenty-fourth year and the other dating back to the twenty-fifth year of the reign of King S-N-usret I. Another character named Entef was the son of a woman named Sat-user, and he was probably also a high administrator during the reign of the king.",
        character_id: character_31.id,
    )
    CharacterSection.create(
        arabic_title:"الخلافة الملكية",
        english_title:"Royal caliphate",
        arabic_content:"لقد تم تتويج س-ن-وسرت الأول شريكاً في الحكم مع والده أمن-م-حات الأول في العام العشرين من حكمه. وهو بدوره قد عين إبنه أمن-م-حات الثاني شريكاً له في نهاية حياته. فمسلة 'وب-واوت' تعود إلى العام الرابع والأربعين من حكم س-ن-وسرت الأول والعام الثاني من حكم أمن-م-حات الثاني، وبالتالي يكون قد عينه في وقت ما في عامه الثالث والأربعين من حكم مصر. ويُعتقد أن س-ن-وسرت الأول قد توفى خلال عامه السادس والأربعين من توليه العرش حيث أن قائمة تورين تنسب إليه عهداً يمتد إلى 45 عاماً.",
        english_content:"S-N-Usret I was crowned co-ruler with his father, Amen-Mhat I, in the twentieth year of his reign. He, in turn, appointed his son Amenemhat II as his partner at the end of his life. The obelisk of 'Web-Wawt' dates back to the forty-fourth year of the reign of S-N-usret I and the second year of the reign of Amen-em-Hat II, and therefore he was appointed at some point in his forty-third year of rule in Egypt. It is believed that S-N-Usret I died during the forty-sixth year of his accession to the throne, as the List of Turin attributes to him a reign extending to 45 years.",
        character_id: character_31.id,
    )
    character_32 = Character.create(
        arabic_name: "سنوسرت الثاني",
        english_name: "Senusret II",
        arabic_info: "خع-خبر-رع س-ن-وسرت الثاني أو سيزوستريس الثاني (1897 ق.م. - 1878 ق.م.) كان رابع ملوك الأسرة الثانية عشر المصرية، الذي خلف أبيه الملك امنمحات الثانى واشترك معه في الحكم خلال سنواته الأخيرة. و من قام ببناء هرمه في اللاهون. و أكثر ما يتميز به س-ن-وسرت الثاني هو إهتمامه الكبير بمنطقة واحة الفيوم، فقد شرع في بناء منظومة ري ضخمة تبدأ من بحر يوسف و تنتهي في بحيرة موريس (اسم أمن-م-حات الثاني في الحضارة اليونانية)، و ذلك عن طريق تشييد قناطر في منطقة اللاهون و إضافة شبكة من القنوات لتصريف مياه الري. و كان الهدف من ذلك المشروع هو زيادة مساحة الأراضي الزراعية في تلك المنطقة. و قام س-ن-وسرت الثاني بالتأكيد على أهمية هذا المشروع من خلال نقل الجبانة الملكية من منطقة دهشور إلى منطقة اللاهون التي بنى على أرضها هرمه. و ظلت هذه المنطقة هي العاصمة السياسية للبلاد خلال الأسرة الثانية عشر والثالثة عشر المصرية. كما أسس الملك س-ن-وسرت الثاني أول مدينة معروفة للعمال المجاورة لمدينة اللاهون. و مدينة اللاهون كان يُطلق عليها في مصر القديمة اسم س-ن-وسرت-حتب.
        إن س-ن-وسرت الثاني قد حافظ على علاقات جيدة مع العديد من حكام الأقاليم المصرية الذين كانوا على نفس مستوى ثراء الملك تقريباً، وذلك على عكس سياسية خليفته س-ن-وسرت الثالث. و توجد رسومات جدارية في قبر حاكم إقليمي يُدعى خنوم-حتب الثاني في منطقة بني حسن تشهد على أعماله التي أنجزها في عامه السادس.",
        english_info: "Kha-Kheper-Ra S-N-Usret II or Sesostris II (1897 BC - 1878 BC) was the fourth king of the Twelfth Dynasty of Egypt. He succeeded his father, King Amenemhat II, and shared his rule during his final years. And who built his pyramid in Lahun. What is most distinctive about S-N-Usret II is his great interest in the Fayoum Oasis region. He began building a huge irrigation system starting from Bahr Yusuf and ending in Lake Maurice (the name of Amen-M-Hat II in Greek civilization). By constructing bridges in the Lahoun area and adding a network of canals to drain irrigation water. The goal of that project was to increase the area of agricultural land in that region. S-N-Wasret II emphasized the importance of this project by moving the royal cemetery from the Dahshur area to the Lahun area, on whose land he built his pyramid. This region remained the political capital of the country during the Twelfth and Thirteenth Dynasties of Egypt. King S-N-Usret II also founded the first known city for workers adjacent to the city of Lahun. The city of Lahun was called in ancient Egypt by the name S-N-Wesret-Hotep.
        S-N-Wesret II maintained good relations with many Egyptian provincial governors who were almost at the same level of wealth as the king, in contrast to the politics of his successor S-N-Wesret III. There are wall drawings in the tomb of a regional ruler called Khnum-hotep II in the Beni Hassan region, attesting to the work he accomplished in his sixth year.",
        date_of_birth: "1897",
        date_of_death: "1878",
        sub_era_id: sub_era_4.id,
    )
    character_32.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/6/65/Copenhagen_2018-01-14_%2839149415244%29.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_32.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/6/65/Copenhagen_2018-01-14_%2839149415244%29.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"توليه مسئولية الحكم",
        english_title:"Assuming the responsibility of ruling",
        arabic_content:"تُعد قضية الاشتراك في الحكم من القضايا الرئيسية التي حازت على إهتمام علماء الآثار بغرض فهم تاريخ الدولة الوسطى وخصوصاً ما يتعلق بالأسرة الثانية عشر. فعالم الآثار الفرنسي Claude Obsomer يرفض رفضاً تاماً إمكانية وجود حكم مشترك في الأسرة الثانية عشر. أما المؤلف Robert D. Delia، و عالم الآثار الألماني Karl Jansen-Winkeln فقد قاما بدراسة أعمال Obsomer و توصلوا إلى نتيجة تصب في صالح وجود فترة الحكم المشتركة. كما أن Jansen-Winkeln قد إستشهد بلوحة حجرية تم العثور عليها في منطقة كونوسو على أنها دليل لا يقبل الجدل يصب في صالح وجود فترة حكم مشتركة بين س-ن-وسرت الثاني وأمن-م-حات الثاني، وإثباتاً كبيراً على وجود فترات حكم مشتركة في الأسرة الثانية عشر. و عالم الآثار الأمريكي William J. Murnane قد نص على أن «تم التعرف على كل فترات الحكم المشتركة في ذلك العصر من خلال وثائق تحتوي على تأريخ مزدوج». و خَلُصً عالم الأثار الألماني Schneider إلى أن الوثائق المُكتشفة حديثاً والأدلة الأثرية تثبت بالفعل وجود فترات حكم مشتركة في هذا العصر.
        تنسب بعض المصادر فترة الحكم المشتركة إلى عهد س-ن-وسرت الثاني حيث كان والده أمن-م-حات الثاني مشتركاً معه في الحكم. و عالم الآثار البريطاني Peter Clayton ينسب إليه على الأقل ثلاثة سنوات من حكم س-ن-وسرت الثاني المشترك. أما عالم الآثار الفرنسي Nicolas Grimal فيخصص له خمسة أعوام من الحكم المشترك قبل إعتلاءه عرش مصر منفرداً.",
        english_content:"The issue of participation in governance is one of the main issues that has attracted the attention of archaeologists for the purpose of understanding the history of the Middle Kingdom, especially with regard to the Twelfth Dynasty. The French archaeologist Claude Obsomer completely rejects the possibility of joint rule in the Twelfth Dynasty. Author Robert D. Delia and German archaeologist Karl Jansen-Winkeln studied Obsomer's work and came to a conclusion in favor of the existence of a joint ruling period. Jansen-Winkeln also cited a stone plaque found in the Konusu region as indisputable evidence in favor of the existence of a joint ruling period between S-N-Usret II and Amen-M-Hat II, and significant proof of the existence of joint ruling periods in Twelfth Dynasty. The American archaeologist William J. Murnane has stated that 'all the common reigns of this era are recognized by documents containing double dating.' German archaeologist Schneider concluded that newly discovered documents and archaeological evidence indeed prove the existence of common ruling periods in this era.
        Some sources attribute the period of joint rule to the reign of S-N-Usret II, where his father, Amen-Mhat II, shared the rule with him. British archaeologist Peter Clayton attributes to him at least three years of the joint rule of S-N-Usret II. As for the French archaeologist Nicolas Grimal, he allocates five years of joint rule before he ascends to the throne of Egypt alone.",
        character_id: character_32.id,
    )
    CharacterSection.create(
        arabic_title:"فترة حكمه",
        english_title:"His rule",
        arabic_content:"تُعد فترات حكم الملك س-ن-وسرت الثاني و الثالث من ضمن الإعتبارات الرئيسية التي تحدد التسلسل الزمني للأسرة الثانية عشر. و يُعتقد أن قائمة تورين قد خصصت 19 عاما لحكم الملك س-ن-وسرت الثاني و 30 عاماً للملك س-ن-وسرت الثالث. إلا أن هذه الرؤية التقليدية تم الطعن فيها عام 1972 عندما لاحظ عالم الآثار الأمريكي William Kelly Simpson أن آخر سنة تم تدوينها من سنوات حكم س-ن-وسرت الثاني كانت هي السنة السابعة، وبالمثل كانت السنة التاسعة عشر للملك س-ن-وسرت الثالث.
        يقترح أستاذ علم المصريات بجامعة كوبنهاجن Kim Ryholt إمكانية أن هذه الأسماء في قائمة تورين قد حدث خطأ في ترتيبها، وقدم فترتين محتملتين للملك س-ن-وسرت الثاني بإضافة 10 سنوات على التسعة سنوات المذكورة أو ما يعني 19 عاماً. كما أن العديد من علماء الآثار (على سبيل المثال Thomas Schneider) يستشهدون بمقالة Mark C. Stone التي تم نشرها في Göttinger Miszellen عام 1997و التي تحدد أقصى سنة حكم قد تم توثيقها للملك س-ن-وسرت الثاني هي العام الثامن، وذلك بناء على اللوحة المعروضة في متحف القاهرة تحت رقم JE 59485.",
        english_content:"The reigns of King S-N-usret II and III are among the main considerations that determine the chronology of the Twelfth Dynasty. It is believed that the Turin List allocated 19 years for the rule of King S-N-Wasret II and 30 years for King S-N-Wasret III. However, this traditional view was challenged in 1972 when the American archaeologist William Kelly Simpson noted that the last recorded year of the reign of S-N-Wasret II was the seventh year, and similarly it was the nineteenth year of King S-N-Wasret III.
        Professor of Egyptology at the University of Copenhagen, Kim Ryholt, suggests the possibility that these names in the Turin list may have been arranged incorrectly, and presents two possible periods for King S-N-usret II by adding 10 years to the nine years mentioned, or 19 years. Many archaeologists (e.g. Thomas Schneider) cite Mark C. Stone's article published in Göttinger Miszellen in 1997, which places the maximum documented year of reign of King S-n-usret II as year 8, based on the stela. Displayed in the Cairo Museum under No. JE 59485.",
        character_id: character_32.id,
    )
    CharacterSection.create(
        arabic_title:"إهتمامه بالزراعة",
        english_title:"His interest in agriculture",
        arabic_content:"وقد اهتم سنوسرت الثاني كثيراً بمنطقة الفيوم. اهتم بالزراعة، وبنى القنوات ونظاماً كبيراً للري من بحر يوسف إلى ما سيصبح فيما بعد بحيرة قارون، وبني هناك قناطر لحجز وتخزين المياه خلال فترة الفيضان لاستغلالها بعد ذلك وأضاف شبكة صرف. وكان هدف مشروعه هو زيادة الرقعة المزروعة. واستغلال مياه فيضان النيل لمدة أطول. أهمية هذا المشروع تتضح من قرار سنوسرت الثاني بنقل المقبرة الملكية من دهشور إلى اللاهون حيث بنى هرمه. ولذلك أصبحت اللاهون العاصمة السياسية في مصر خلال الأسرتين الثانية عشر والثالثة عشر. وقد أسس الفرعون أول قرية عمال في مدينة كاهون القريبة، والتي بنت الدولة الحديثة على نمطها دير المدينة للصناع والفنانين.",
        english_content:"Senusret II was very interested in the Fayoum region. He took an interest in agriculture, and built canals and a large irrigation system from Bahr Youssef to what would later become Lake Qarun. He built bridges there to retain and store water during the flood period to exploit it later, and added a drainage network. The goal of his project was to increase the cultivated area. And exploiting the Nile flood waters for a longer period. The importance of this project is clear from Senusret II's decision to move the royal cemetery from Dahshur to Lahun, where he built his pyramid. Therefore, Lahun became the political capital in Egypt during the Twelfth and Thirteenth Dynasties. The Pharaoh founded the first workers' village in the nearby city of Kahun, after which the modern state built Deir el-Medina for craftsmen and artists.",
        character_id: character_32.id,
    )
    CharacterSection.create(
        arabic_title:"علاقاته الخارجية",
        english_title:"His foreign relations",
        arabic_content:"وعلى العكس من خليفته، فقد حافظ سنوسرت الثاني على علاقات طيبة مع الحكام المحليين وزعماء القبائل البدوية المحيطة والذين وصلوا إلى درجة عالية من الثراء. وهناك شهادة على ذلك من العام السادس لحكمه على رسم جداري من مقبرة حاكم محلي في بني حسن.",
        english_content:"In contrast to his successor, Senusret II maintained good relations with local rulers and leaders of the surrounding Bedouin tribes who had reached a high degree of wealth. There is evidence of this from the sixth year of his reign in a mural from the tomb of a local ruler in Beni Hassan.",
        character_id: character_32.id,
    )
    CharacterSection.create(
        arabic_title:"هرمه",
        english_title:"His pyramid",
        arabic_content:"هو أحد أهرامات مصر. بناه الملك سنوسرت الثاني من الطوب اللبن فوق ربوة عالية ارتفاعها 12 مترا على مشارف مدينة اللاهون (بمحافظة الفيوم)، والتي تبعد 22 كيلو مترا عن مدينة الفيوم. كان مكسوا بالحجر الجيري ويبلغ ارتفاعه 48 متراً وطول قاعدته 106 متر ويقع مدخله في الجانب الجنوبي عكس بقية الأهرامات المصرية. عثر بداخله على الصل الذهبي الذي كان يوضع فوق التاج الملكى. اكتشفت بجوار الهرم مصطبة مقبرة الأميرة سات حتحورات أيونت ومقبرة مهندس الهرم إنبى في الجنوب و8 مصاطب كانت مقابر لأفراد الأسرة المالكة، وفي منطقة الهرم توجد جبانة اللاهون ومدينة عمال اللاهون.",
        english_content:"It is one of the pyramids of Egypt. King Senusret II built it from mud brick on a high mound 12 meters high on the outskirts of the city of Lahun (in the Fayoum Governorate), which is 22 kilometers from the city of Fayoum. It was covered with limestone and was 48 meters high and 106 meters long, with its entrance on the south side, unlike the rest of the Egyptian pyramids. Inside it was found the golden seal that was placed above the royal crown. Next to the pyramid, the burial platform of Princess Sat-Hathor-Iunet and the burial platform of the pyramid engineer Inbi in the south were discovered, as well as 8 platforms that were tombs for members of the royal family. In the area of the pyramid, there is the Lahun cemetery and the city of Lahun workers.",
        character_id: character_32.id,
    )
    character_33 = Character.create(
        arabic_name: "سوبك حتب الأول",
        english_name: "Sobekhotep I",
        arabic_info: "سخم رع خوتاوي سبك حوتب (بالإنجليزية: Sekhemre Khutawy Sobekhotep)، (بالإنجليزية: Sobekhotep I)، عاش في مصر منذ قرابة 3800 عام. يرجح أن يكون أول من تولى حكم مصر في بداية الأسرة الثالثة عشر من عصر الانتقال الثاني، 1786 - 1763 ق.م. التي شهدت غزو الهكسوس للبلاد قبل نحو 38 قرنا.",
        english_info: "Sekhemre Khutawy Sobekhotep (in English: Sobekhotep I), lived in Egypt approximately 3,800 years ago. He is likely to have been the first to rule Egypt at the beginning of the Thirteenth Dynasty of the Second Intermediate Period, 1786 - 1763 BC. Which witnessed the Hyksos invasion of the country about 38 centuries ago.",
        date_of_birth: "1808",
        date_of_death: "1799",
        sub_era_id: sub_era_5.id,
    )
    character_33.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/6/66/Sobekhotep_I.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_33.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/6/66/Sobekhotep_I.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"اكتشاف المقبرة",
        english_title:"The discovery of the tomb",
        arabic_content:"اكتشف قبر الملك سوبك حتب الأول، أثناء عمل بعثة جامعة بنسلفانيا بالولايات المتحدة بالتعاون مع وزارة الآثار في الجنوب من مدينة أبيدوس بمحافظة سوهاج. اتضح أن الخيوط الأولى لهذا الكشف بدأت تتضح حينما تم العثور على تابوت ضخم من الكوارتزيت يزن 60 طن في عام 2013 ، إلي أن تم العثور علي كسرات للوحة منقوشة تحمل اسم الملك وتصوره جالساً علي العرش.
        كما تم العثور أيضا على كسرات لأواني كانوبية تخص الملك والتي كان يحفظ بداخلها الأعضاء الداخلية لجسد المتوفى، بالإضافة إلي عدد من العناصر المذهبة لمتاعه الجنائزي. وتسعى وزارة الأثار المصرية لاتمام الانتهاء من استكمال أعمال الحفائر بالموقع والكشف عن كافة العناصر المعمارية للمقبرة، كما تؤكد على ضرورة وضع خطة سريعة لترميمها وتأهيلها للافتتاح أمام السياحة المحلية والعالمية، في إطار مساعي وزارة الآثار لافتتاح مقاصد أثرية جديدة تعمل على تنشيط حركة السياحة الوافدة إلي مصر.
        ويشير قطاع الآثار المصرية إلي أن المقبرة المكتشفة مصممة على الشكل الهرمي، كما أنها تتشابه مع إحدى الأهرامات المعروفة والتي تخص 'أمني كماو' أحد ملوك مصر في بدايات عصر الأسرة 13 والموجود بدهشور بالقرب من مدينة منف، كما أن المقبرة مشيدة من الداخل من كتل حجرية ضخمة مستخرجة من محاجر طره، أما غرفة الدفن فمبنية من جحر الكوارتزيت الأحمر الذي تم نقله من الجبل الأحمر بالقرب من القاهرة الي ابيدوس أوضح أيمن الضمراني الأثاري المرافق للبعثة: يعد إحدى الاكتشافات الهامة في الفترة الأخيرة، حيث لم يعثر لصاحب المقبرة على أي آثار تذكر إلا النذر القليل، من بينها الإشارة إلي اسمه علي أحدي الجدران الأثرية بأبيدوس وما ورد في بردية تورين بايطاليا يشير إلي أنه تولى حكم مصر لمده 4 سنوات ونصف ، والتي تعد أطول فترة حكم في ذلك العصر، مما يعكس أهمية الكشف عن مقبرته لما تحتويه من نقوش قد تساهم في التعرف على المزيد من التفاصيل الخاصة بحياته وفترة حكمه.
        كما ان احدث الاكتشافات التي حققتها البعثة تتمثل في اكتشاف تابوت مهم يعود لزمن الاسرة 13 في ذراع أبو النجا مشيرا إلي ان اهمية التابوت تظهر في النقوش والمناظر التي تعلوه إضافة إلي ندرة الآثار التي تخص الاسرة 13. وان التابوت عليه نصوص مهمة تمثل تطورا لنصوص الاهرامات، وان المعهد الألماني قد قام بترميم التابوت باحدث النظم وتم وضعه في متحف الأقصر.
        المقبرة المكتشفة مؤخراً مصممة على الشكل الهرمى، وتشبه إلى حد بعيد أحد الأهرامات التي تخص الماك 'أمنى كماو' أحد ملوك الأسرة الثالثة عشر والموجود بمنطقة دهشور بالقرب من مدينة منف، كما أنها مشيدة من الداخل من كتل حجرية ضخمة، أما غرفة الدفن فيها، مبنية من جحر الكوارتزيت الأحمر الذي تم نقله من الجبل الأحمر بالقرب من القاهرة إلى أبيدوس.",
        english_content:"The tomb of King Sobekhotep I was discovered during the work of a mission from the University of Pennsylvania in the United States in cooperation with the Ministry of Antiquities in the south of the city of Abydos in Sohag Governorate. It turned out that the first clues to this revelation began to become clear when a huge quartzite coffin weighing 60 tons was found in 2013, until fragments of an engraved plaque bearing the king’s name and depicting him sitting on the throne were found.
        Fragments of canopic vessels belonging to the king, in which the internal organs of the deceased’s body were kept, were also found, in addition to a number of gilded items for his funerary belongings. The Egyptian Ministry of Antiquities is seeking to complete the excavation work at the site and reveal all the architectural elements of the cemetery. It also stresses the necessity of developing a rapid plan to restore it and prepare it for opening to local and international tourism, within the framework of the Ministry of Antiquities’ efforts to open new archaeological destinations that work to stimulate the tourism movement coming to Egypt. .
        The Egyptian Antiquities Sector indicates that the discovered tomb is designed in a pyramidal shape, and is similar to one of the well-known pyramids that belongs to 'Amni Kamau', one of the kings of Egypt in the early 13th Dynasty, located in Dahshur, near the city of Memphis. The tomb is also built from the inside of stone blocks. Huge quarries extracted from Tora quarries, while the burial chamber was built from red quartzite pits that were transported from the Red Mountain near Cairo to Abydos. Ayman Al-Damrani, the archaeologist accompanying the mission, explained: It is one of the important discoveries in the recent period, as the owner of the tomb did not find any significant traces except... The few signs, including the reference to his name on one of the archaeological walls in Abydos, and what was mentioned in the Turin Papyrus in Italy indicate that he ruled Egypt for a period of 4 and a half years, which is the longest period of rule in that era, which reflects the importance of uncovering his tomb because of the inscriptions it may contain. It contributes to learning more details about his life and period of rule.
        The latest discoveries made by the mission are the discovery of an important coffin dating back to the 13th Dynasty in the arm of Abu al-Naga, indicating that the importance of the coffin appears in the inscriptions and scenes above it, in addition to the scarcity of antiquities related to the 13th Dynasty. The coffin contains important texts that represent an evolution of the pyramid texts. The German Institute restored the coffin using the latest systems and placed it in the Luxor Museum.
        The recently discovered tomb is designed in a pyramidal shape, and is very similar to one of the pyramids that belonged to Al-Mak 'Amni Kamau', one of the kings of the Thirteenth Dynasty, located in the Dahshur region near the city of Memphis. It was also built from the inside of huge stone blocks, and the burial chamber in it was built From the red quartzite terrier that was transported from the Red Mountain near Cairo to Abydos.",
        character_id: character_33.id,
    )
    character_34 = Character.create(
        arabic_name: "نفر حتب الأول",
        english_name: "Neferhotep I",
        arabic_info: "نفر حتب الأول فرعون من الأسرة الثالثة عشر خلف نفر حتب الملك سوبك حتب الثالث على عرش البلاد وتخبرنا بردية تورين أن حكمه أمتد مدة 11 عاما، وهذا يجعله من أحد أطول الملوك حكما في هذه الأسرة.",
        english_info: "Neferhotep I, a pharaoh from the Thirteenth Dynasty, succeeded Neferhotep III on the throne of the country, and the Turin Papyrus tells us that his rule lasted 11 years, making him one of the longest reigning kings in this dynasty.",
        date_of_birth: "1705",
        date_of_death: "1694",
        sub_era_id: sub_era_5.id,
    )
    character_34.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/a/a1/Neferhotep_I_-_Bologna_-_By_Stefano_Bolognini.JPG"), filename: 'image.jpg', content_type: 'image/jpg')
    character_34.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/a/a1/Neferhotep_I_-_Bologna_-_By_Stefano_Bolognini.JPG"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"عائلته",
        english_title:"His family",
        arabic_content:"ينحدر نفر حتب الأول من عائلة عسكرية من طيبة، والده يدعى حاعنخف واسم ووالدته كمي، وكان والده يحمل لقب أبا الإله، ولنفر حتب أخوين تولى كل منهما العرش فيما بعد وهما سوبك حتب الرابع ومن وازرع زوجة نفر حتب تدعى سنسنب أنجب منها عدد من الأبناء هم ساحتحور وهو أول أولاده وسوبك حتب وحاعنخف وحرحتب.",
        english_content:"Neferhotep I comes from a military family from Thebes, his father is called Haankhaf and his mother's name is Kemi, and his father held the title of Father of God, and Neferhotep had two brothers, each of whom later ascended the throne, they are Sobekhotep IV and from his wife Senusenb, Neferhotep had a number of children, including Sahathor, his first son, Sobekhotep, Haankhaf, and Harhotep.",
        character_id: character_34.id,
    )
    CharacterSection.create(
        arabic_title:"آثاره",
        english_title:"His effects",
        arabic_content:"للملك نفر حتب آثارا هامة في كل أنحاء مصر وخارجها فقد عثر في بلدة ببلوص (جبيل الواقعة على شاطئ فينقية) قطعة حجر منقوش عليها رسم الملك نفر حتب ومعه أمير ببلوص والذي يدعى بنتن كما يذكر النقش وهو يقوم بتقديم فروض الطاعة والولاء للملك نفر حتب مما يشير إلى أن فينقية كانت خاضعة للملك نفر حتب.
        ومن أهم الآثار التي وجدت للملك نفر حتب لوحة كبيرة عثر عليها في العرابة المدفونة (أبيدوس) ترجع إلى العام الثاني من حكمه أمر بنقشها إحياء لذكرى الإله أوزير ذكر فيها نفر حتب الأعمال التي قام بها للأحتفاء بالإله أوزير، وهذه اللوحة من الآثار القليلة التي توضح لنا الأجرءات التي تتخذ لصنع ونقش اللوحات الحجرية بناء على أوامر الملك.
        وقد وجد عدد من النقوش على الصخور في أسوان وجزيرة سهل (بالقرب من أسوان) التي تحمل اسم الملك وأسماء أفراد عائلته وزوجته، ومن هذه النقوش تم التعرف على عائلته.
        وقد عثر على محراب عليه صورة له في معبد الكرنك، كما عثر على رأس عمود ذكر عليه اسمه يوجد حاليا في متحف برلين، وعثر أيضا على عدد من الجعارين منقوش عليها اسمه وتوجد في متاحف اللوفر ومتحف تورين ومتحف شتوتغارت بألمانيا.",
        english_content:"King Neferhotep has important monuments in all parts of Egypt and abroad. In the town of Beblos (Byblos, located on the coast of Phenicia), a piece of stone was found engraved with a drawing of King Neferhotep, and with him was the prince of Beblos, who is called Benten, as the inscription mentions. He was performing the duties of obedience and loyalty to King Neferhotep, which indicates Until Phoenicia was subject to King Neferhotep.
        One of the most important antiquities found for King Neferhotep is a large plaque found in the buried Al-Araba (Abydos). It dates back to the second year of his reign. He ordered it to be engraved in memory of the god Osiris, in which Neferhotep mentioned the deeds he had undertaken to celebrate the god Osiris. This plaque is one of the few antiquities that explain to us The procedures taken to make and engrave stone tablets on the orders of the king.
        A number of inscriptions were found on rocks in Aswan and Sahl Island (near Aswan) bearing the name of the king and the names of his family members and his wife, and from these inscriptions his family was identified.
        A niche bearing a picture of him was found in the Karnak Temple, and the head of a column bearing his name was found, which is currently in the Berlin Museum. A number of scarabs with his name inscribed were also found in the Louvre Museum, the Turin Museum, and the Stuttgart Museum in Germany.",
        character_id: character_34.id,
    )
    CharacterSection.create(
        arabic_title:"نهاية حكمه",
        english_title:"The end of his rule",
        arabic_content:"نهاية حكم نفر حتب أو ظروف وفاته غير معروفة، وقد خلفه على العرش أخاه سوبك حتب الرابع الذي يعتقد أنه شارك أخاه في الحكم فقد عثر في الكرنك على قطعة حجر عليها نقش أسميهما معا.
        ولكن يعتقد أيضا طبقا لما ذكر في بردية تورين التي وضعت بين اسم الملك نفر حتب وسوبك ختب الرابع اسم ساحتحور وهو نفس اسم أبن نفر حتب أنه شارك والده الحكم ولكنه توفي قبل والده ولكن لم يعثر له على أي آثار تؤيد هذا الأفتراض.",
        english_content:"The end of Neferhotep's rule or the circumstances of his death are unknown. He was succeeded on the throne by his brother Sobekhotep IV, who is believed to have shared his brother's rule. A piece of stone was found in Karnak with both their names engraved on it.
        However, it is also believed, according to what was mentioned in the Turin Papyrus, which placed between the name of King Neferhotep and Sobekhotep IV the name of Sahhor, which is the same name as the son of Neferhotep, that he shared the rule with his father, but he died before his father, but no traces of him have been found to support this assumption.",
        character_id: character_34.id,
    )
    character_35 = Character.create(
        arabic_name: "مونتومحات",
        english_name: "Mentuhotep",
        arabic_info: "مونتومحات ، (بالإنجليزية: Seankhenre Mentuhotepi) خدم ملوك النوبة، طهرقا وتانوت آمون، من أسرة مصرية خامسة وعشرين، (672–525 ق.م). وحمل لقب عمدة طيبة، والكاهن الرابع لآمون. وكان أيضا مسئولا عن المهام الكهنوتية، بالإضافة إلى النشاطات الإنشائية في طيبة. كما أشرف على الأعمال الخاصة بالملك طهرقا وتانوت أمون بمدينة هابو والكرنك.",
        english_info: "Montumhat, (English: Seankhenre Mentuhutepi) served the kings of Nubia, Taharqa and Tanut-Amun, from the Twenty-fifth Dynasty of Egypt (672–525 BC). He held the title of Mayor of Thebes, and the fourth priest of Amun. He was also responsible for priestly duties, in addition to construction activities in Thebes. He also supervised the works of King Taharqa and Tanut Amun in Medinet Habu and Karnak.",
        date_of_birth: "672",
        date_of_death: "525",
        sub_era_id: sub_era_5.id,
    )
    character_35.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/99/Sphinx_Seankhenre_by_Khruner.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_35.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/99/Sphinx_Seankhenre_by_Khruner.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"فترة حكمة",
        english_title:"His reign",
        arabic_content:"بعد تدمير طيبة من قبل الآشوريين، حكم مونتومحات جنوب مصر حتى هرموبوليس أو الأشمونين، في مصر الوسطى. ثم وصل إلى أعلى سلطة في طيبة، في فترة حكم إبسماتيك الأول، من أسرة مصرية سادسة وعشرين.",
        english_content:"After the destruction of Thebes by the Assyrians, Montumhat ruled southern Egypt to Hermopolis or the Ashmunins, in Middle Egypt. Then he reached the highest authority in Thebes, during the reign of Ibsmatak I, of the Twenty-sixth Dynasty of Egypt.",
        character_id: character_35.id,
    )
    CharacterSection.create(
        arabic_title:"التمثال",
        english_title:"The statue",
        arabic_content:"يظهر تمثال منتو إم حات في وضع القرفصاء مع وجود بعض الاختلافات غير المعتادة. خلافا للتمثال شبه المستقل لأوزوريس الواقف على قاعدة بين ساقي منتو-إم-حات، فإنه يبدو عارياً. وهذا العري البادي يخالف الأسلوب الموروث بالنسبة لهذا النوع من التماثيل مما يجعله متفرداً.
        وعلى يمين ويسار التمثال نحت شكلان للربتين إيزيس ونفتيس، يحيط بهما عمود من الكتابة على كل جانب. ويضع منتو-ام-حات شعراً مستعاراً مزدوجاً عريضاً وأملساً يغطي النصف العلوي من أذنيه. والرأس مائلة قليلاً لأعلى، في حين أن اللحية تنزل حتى الصدر.
        والوجه المثالي للتمثال منحوت أفضل من المعتاد. والفم مستقيم بشفاة رفيعة، كما أن الأنف رفيعة ومعقوفة باعتدال. أما العينان فهي واسعة ولوزية ومائلة، يعلوها حواجب مستديرة. ويعد هذا التمثال مثالاً للروح الخلاقة لبعض الفنانين المصريين الذين -رغم التزامهم بالتقاليد القديمة- إلا أنهم كانوا قادرين على إبداع تقاليد مستحدثة. ارتفاعه 40 سم",
        english_content:"The statue of Mentu-emhat is shown in a squatting position, with some unusual variations. Unlike the semi-independent statue of Osiris standing on a pedestal between Mentu-em-hat's legs, he appears naked. This apparent nudity contradicts the inherited style of this type of statue, which makes it unique.
        To the right and left of the statue are carved figures of the goddesses Isis and Nephthys, surrounded by a column of writing on each side. Mentu-em-hat wears a wide, straight double wig that covers the upper half of his ears. The head is slightly tilted upward, while the beard descends to the chest.
        The perfect face of the statue is sculpted better than usual. The mouth is straight with thin lips, and the nose is thin and moderately hooked. The eyes are wide, almond-shaped and slanted, topped with round eyebrows. This statue is an example of the creative spirit of some Egyptian artists who - despite their commitment to ancient traditions - were able to create new traditions. Its height is 40 cm",
        character_id: character_35.id,
    )
    character_36 = Character.create(
        arabic_name: "انتف السابع",
        english_name: "Intef VII",
        arabic_info: "الملك انتف السابع والاسم الملكى نب خبر رع أحد ملوك الأسرة السابعة عشر في عصر الانتقال الثاني، وكان حاكما في فترة أحتلال الهكسوس لمصر وكان يحكم من مدينة طيبة، وقد خلف أخاه الملك انتف السادس في الحكم، وهو ابن الملك سوبك ام ساف الأول.",
        english_info: "King Intef VII, whose royal name is Nebkhaperre, was one of the kings of the Seventeenth Dynasty in the era of the Second Intermediate Transition. He was a ruler during the period of the Hyksos occupation of Egypt and ruled from the city of Thebes. He succeeded his brother, King Intef VI, in power. He is the son of King Sobek emsaf I.",
        date_of_birth: "1560",
        date_of_death: "1250",
        sub_era_id: sub_era_5.id,
    )
    character_36.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/2/26/WoodenCoffinOfIntef-BritishMuseum-August21-08.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_36.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/2/26/WoodenCoffinOfIntef-BritishMuseum-August21-08.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"تعريفه",
        english_title:"His definition",
        arabic_content:"الملك انتف السابع والاسم الملكى نب خبر رع أحد ملوك الأسرة السابعة عشر في عصر الانتقال الثاني، وكان حاكما في فترة أحتلال الهكسوس لمصر وكان يحكم من مدينة طيبة، وقد خلف أخاه الملك انتف السادس في الحكم، وهو ابن الملك سوبك ام ساف الأول.
        وقد قام الملك انتف السابع بإعادة بناء العديد من المعابد التي قد تهدمت مثل معبد قفط وبعض المبانى في العرابة.
        وقد اكتشف مقبرته في جبانة ذراع أبو النجا في الطرف الشمالي من الجبانة، وجاء في بردية أبوت والموجودة حاليا في المتحف البريطاني في لندن، عن قبره انه نحت على شكل هرم صغير بطول 13 متر، وقد وجد أوجست ماريت مسلتين كانتا قائمتين أمام الهرم طول الأولى 3.50 متر والثانية 3.70 متر.",
        english_content:"King Intef VII, whose royal name is Nebkhaperre, was one of the kings of the Seventeenth Dynasty in the era of the Second Intermediate Transition. He was a ruler during the period of the Hyksos occupation of Egypt and ruled from the city of Thebes. He succeeded his brother, King Intef VI, in power. He is the son of King Sobek emsaf I.
        King Antef VII rebuilt many temples that had been destroyed, such as the Temple of Qeft and some buildings in Al-Araba.
        His tomb was discovered in the cemetery of Dra` Abu al-Naga at the northern end of the cemetery. The Abbott Papyrus, which is currently in the British Museum in London, states that his tomb was carved in the shape of a small pyramid 13 meters long. Auguste Maret found two obelisks that were standing in front of the pyramid, the length of the first was 3.50 meters. One meter and the second is 3.70 metres.",
        character_id: character_36.id,
    )
    CharacterSection.create(
        arabic_title:"أكتشاف المقبرة",
        english_title:"Discovering the tomb",
        arabic_content:"لقد أعيد أكتشاف مقبرة الملك انتف السابع بواسطة بعثة المركز الألماني للآثار المصرية يشاركها عدد من العلماء المصريين والتي كانت تقوم بالتنقيب في منطقة ذراع أبو النجا تحت إدارة عالم الآثار د. دانيل بولتز حيث أستطاعت هذه البعثة العثور على بقايا هرم الملك انتف السابع في 29 مايو عام 2001م.
        وقد أستدلت البعثة الأثرية على وجود هرم انتف السابع في منطقة ذراع أبو النجا عن طريق بردية أبوت لكن العديد من الصعاب المتمثلة في التحديد الدقيق لمكانه إضافة إلى كبر حجم الردم، جعل من مهمة البعثة في غاية الصعوبة.
        وفي مقابلة هاتفية مع بولتز قال: نستطيع الآن أن نجزم بوجود اهرامات حقيقية استخدمت كمقابر لدفن ملوك الأسرة السابعة عشرة، حيث أن منطقة ذراع أبو النجا هي منطقة كانت مقدسة أثناء الأسرة الثالثة عشرة، لكن وجود هرم الملك نب خبر رع انتف يؤكد استمرار قدسيتها حتي نهاية عصر الأسرة السابعة عشرة.",
        english_content:"The tomb of King Antef VII was rediscovered by a mission from the German Center for Egyptian Antiquities, with the participation of a number of Egyptian scientists, which was excavating in the Draa Abu al-Naga area under the direction of archaeologist Dr. Daniel Boltz, as this mission was able to find the remains of the pyramid of King Antef VII on May 29, 2001 AD.
        The archaeological mission inferred the existence of the Seventh Pyramid of Intef in the Dra’ Abu al-Naga area through the Abbot Papyrus, but many difficulties represented in precisely determining its location, in addition to the large size of the backfill, made the mission’s mission extremely difficult.
        In a telephone interview with Boltz, he said: We can now confirm the existence of real pyramids that were used as tombs to bury the kings of the Seventeenth Dynasty, as the area of Abu al-Naga’s arm is an area that was sacred during the Thirteenth Dynasty, but the presence of the pyramid of King Nebkheperre Entef confirms its continued sanctity until the end of the year. The Seventeenth Dynasty.",
        character_id: character_36.id,
    )
    character_37 = Character.create(
        arabic_name: "سقنن رع تاعا الثاني",
        english_name: "Seqenenre Tao II",
        arabic_info: "سقنن رع تاعا الثاني من أعظم ملوك مصر حيث انه أول من بدأ القتال الفعلى لطرد الهكسوس من مصر، والذي أنهاه ابنه أحمس الأول.
        وهو ابن الملك سانخت ان رع تاعا الأول ويسمى أيضا سقنن رع تاعا الأول والملكة تتي شري وتواريخ حكمه غير مؤكده ولكن يعتقد انه تولى الحكم في 1560 ق.م أو 1558 ق.م",
        english_info: "Seqenenra Taa II is one of the greatest kings of Egypt, as he was the first to start the actual fight to expel the Hyksos from Egypt, which was ended by his son Ahmose I.
        He is the son of King Sankhenre Taa I, also called Seqenenre Taa I, and Queen Titi-Shre. The dates of his reign are uncertain, but it is believed that he assumed power in 1560 BC or 1558 BC.",
        date_of_birth: "1560",
        date_of_death: "1558",
        sub_era_id: sub_era_5.id,
    )
    character_37.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/7/78/Linceul_iahmes_turin_6.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_37.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/7/78/Linceul_iahmes_turin_6.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"بداية حربه مع الهكسوس",
        english_title:"The beginning of his war with the Hyksos",
        arabic_content:"الملك سقننن رع تاعا الثاني هو أول ملك بدأ القتال مع الهكسوس وتوجد وثيقة هي ورقة سالييه جاءت في شكل قصة منسوبة إلى عصر سقنن رع تخبرنا كيف بدأ الخلاف بين ملك الهكسوس عاقنن رع أبوفيس والملك سقنن رع، حيث أرسل أبوفيس من أواريس الواقعة في شمال الدلتا رسالة إلى سقنن رع يخبره أن أصوات أفراس النهر في بحيرة طيبة تزعجه وتقض مضجعه بالرغم من انه بينه وبين طيبة 500 ميل، ويأمره بأن يجد أي وسيلة للقضاء عليها، فكانت هذه الرسالة بمثابة إعلان للحرب.",
        english_content:"King Seqenenra Taa II is the first king to start fighting with the Hyksos, and there is a document, the Sallier Papyrus, which came in the form of a story attributed to the era of Seqenenra Taa, telling us how the dispute began between the Hyksos king Aqenenra Abuvis and King Seqenenra, where Abuvis sent from Avaris, located in the north of the Delta, a message to Seqenenra telling him that the sounds of the river horses in Lake Thebes disturb him and disturb his sleep, although he is 500 miles between him and Thebes, and orders him to find any means to eliminate it, so this message was a declaration of war.",
        character_id: character_37.id,
    )
    CharacterSection.create(
        arabic_title:"عائلته",
        english_title:"His family",
        arabic_content:"تزوج سقنن رع تاعا الثاني من الملكة إياح حتب وأنجب منها كامس أخر ملوك الأسرة السابعة عشر وأحمس الأول أول ملوك الأسرة الثامنة عشر.",
        english_content:"Seqenenra Taa II married Queen Iahhotep and had from her Kamose, another king of the Seventeenth Dynasty, and Ahmose I, the first king of the Eighteenth Dynasty.",
        character_id: character_37.id,
    )
    CharacterSection.create(
        arabic_title:"وفاته",
        english_title:"His death",
        arabic_content:"هناك عدة نظريات لكيفية وفاة سقنن رع أكثرها شيوعا انه قتل في معركته مع الهكسوس وبعض النظريات ترى انه قتل بينما كان نائما، حيث انه كان راقدا على جنبه الأيمن حين تعرض للهجوم اما لأنه كان نائما أو لأنه كان قد اصيب بالفعل وسقط على جنبه الأيمن قبل أن تأتيه الضربة المميتة.للبيلبي
        وقد تم تحنيط جثته بتعجل وباختصار ويعتقد ان السبب انه تم تحنيطه في مكان المعركة للحفاظ عليه من التعفن حتى ينقل إلى طيبة حيث تمت هناك محاولة ثانية لتحنيطه، وكانت مومياءه في المتحف المصري بميدان التحرير بالقاهرة حتى تم نقلها يوم السبت 3 أبريل عام 2021 إلى المتحف القومي للحضارة المصرية بالفسطاط.
        تم العثور على مقبرته في خبيئة دراع أبو النجا عام 1881 م، وقد كشفت المومياء لاحقا في 9 يونيو عام 1886 بواسطة جاستون ماسبيرو
        مات الملك سقنن رع وهو يحارب الهكسوس، كما توجد آثار ميتتة البشعة على جمجمته المليئة بالجروح والكسور نتيجة الضرب بالحراب والبلاطي، ووجدت أسنانه في وضع ضاغط بشدة على اللسان نتيجة الألم الشديد في اللحظات الأخيرة من عمر الملك.
        وتملأ رأس الملك الكثير من الجروح الشديدة فيوجد طعنة خنجر خلف الأذن اليسرى للملك وصلت إلى عنقه، وتحطم صدره وأنفه بضربات بالمقامع. ويوجد أيضاً قطع نتج عن بلطة حرب مخترقاً العظم أعلى جبهة الملك.
        كان الملك سقنن رع معتدل القامة حيث كان طوله يبلغ 170 سم، عظيم الرأس وكان مفتول العضلات، وشعره أسود كثيفا مجعدا، ولم يكن تجاوز الثلاثين من عمره عند وفاته إلا بقليل.",
        english_content:"There are several theories about how Seqenenre died, the most common of which is that he was killed in his battle with the Hyksos, and some theories believe that he was killed while he was sleeping, as he was lying on his right side when he was attacked, either because he was sleeping or because he had already been injured and fell on his right side before he died. The fatal blow comes to the bilbi
        His body was embalmed hastily and briefly, and it is believed that the reason was that he was embalmed at the battlefield to protect him from rotting until he was transported to Thebes, where a second attempt was made to embalm him. His mummy was in the Egyptian Museum in Tahrir Square in Cairo until it was transferred on Saturday, April 3, 2021 to the National Museum. of Egyptian civilization in Fustat.
        His tomb was found in Daraa Abu al-Naga's cache in 1881 AD, and the mummy was later revealed on June 9, 1886 by Gaston Maspero.
        King Seqenenre died while fighting the Hyksos, and there are hideous traces of his death on his skull, which is full of wounds and fractures as a result of being struck with spears and tiles, and his teeth were found in a position strongly pressing against the tongue as a result of severe pain in the last moments of the king’s life.
        The king's head is filled with many severe wounds. There is a dagger stab behind the king's left ear that reached his neck, and his chest and nose were shattered by blows with hammers. There is also a cut resulting from a war ax penetrating the bone above the king's forehead.
        King Seqenenre was of moderate stature, 170 cm tall, with a large head and muscular muscles, and thick, curly black hair. He was only a little over thirty years old when he died.",
        character_id: character_37.id,
    )
    character_38 = Character.create(
        arabic_name: "كامس",
        english_name: "Kamose",
        arabic_info: "كامس الفرعون الأخير من أسرة طيبة السابعة عشر. من المُمكن أن يكون ابن الفرعون سقنن رع والملكة إياح حتب وشقيق أحمس الأول، مؤسس الأسرة الثامنة عشر. سقط حُكمه في نهاية الفترة الانتقالية الثانية. تُعزي فترة حُكم كامس بثلاث سنوات، لكن يفضل العلماء إعطائه فترة حكم أطول وصلت إلى خمس سنوات.
        حقبته مُهمة جدًا لما كان بها من مبادرات عسكرية ضد الهكسوس، الذين وصلوا ليحكموا مصر القديمة. كان والده سقنن رع قد بدأ بهذه المبادرات، لكن سرعان ما فقد حياته بأحد المعارك معهم. يُعتقد بأن والدته (كوصية) أكملت المعارك بعد وفاة كامس، وأكمل شقيقه أحمس الأول الغزو حتى استطاع طرد الهكسوس ووحد مصر.",
        english_info: "Kamis, the last pharaoh of the 17th Theban Dynasty. He may have been the son of Pharaoh Seqenenre and Queen Iahhotep and brother of Ahmose I, founder of the Eighteenth Dynasty. His rule fell at the end of the second transitional period. Kamose's reign is attributed to three years, but scholars prefer to give him a longer reign of five years.
        His era is very important because of its military initiatives against the Hyksos, who came to rule ancient Egypt. His father, Seqenenre, had begun these initiatives, but he soon lost his life in one of the battles with them. It is believed that his mother (as regent) completed the battles after the death of Kamose, and his brother Ahmose I completed the invasion until he was able to expel the Hyksos and unify Egypt.",
        date_of_birth: "1555",
        date_of_death: "1550",
        sub_era_id: sub_era_5.id,
    )
    character_38.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/8/8e/Sarcophage-Kamose.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_38.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/8/8e/Sarcophage-Kamose.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"إنجازاته",
        english_title:"His achievements",
        arabic_content:"قام كامس في العام الثالث لحكمه بالإبحار شمالا من طيبة في النيل وكان يقاتل تجمعات الهكسوس الصغيرة ويهدم تحصيناتهم في طريقه إلى الشمال اما مدن الهكسوس الكبرى التي كانت تقابله بمواجهة قوية كان يقوم بحصارها وقطعها عن باقى مملكة الهكسوس حتى وصل إلى أواريس وقد عثر في عام 1954م على لوحتبن أقيمتا في الكرنك لتمجيد انتصارات الملك كامس على أبوفيس ملك الهكسوس وتتحدث إحدى هاتين الوحتين عن انتصار كامس في أواريس عاصمة الهكسوس في الدلتا وتفاصيل الأستراتيجية التي أتبعها وعودته منتصرا إلى طيبة.",
        english_content:"In the third year of his reign, Kamose sailed north from Thebes on the Nile and was fighting the small Hyksos groups and demolishing their fortifications on his way to the north. As for the major Hyksos cities that were facing him with strong confrontation, he was besieging them and cutting them off from the rest of the Hyksos kingdom until he reached Avaris. In 1954 AD, he found... Two stelae were erected in Karnak to glorify the victories of King Kamose over Apophis, the Hyksos king. One of these two stelae talks about Kamose's victory in Avaris, the capital of the Hyksos in the Delta, and the details of the strategy he followed and his victorious return to Thebes.",
        character_id: character_38.id,
    )
    CharacterSection.create(
        arabic_title:"وفاته",
        english_title:"His death",
        arabic_content:"توفى كامس في أثناء حربه مع الهكسوس عام 1540 ق.م على مشارف مدينة (امبوس) بعد أن كان داخلها منتصرا مظفرا جاءته ضربة الغدر من أحد جرحى الهكسوس فوافته المنية وآخر ما نطق به أن وصى أخوه احمس أن يبلغ الجدة العظيمة توتيشيري انه لحق أباه ومات ميتة سقنن رع.
        ذكرت مقبرة كامس في بردية أبوت حيث يذكر انه تم نقل تابوت كامس من مقبرته ودفن في ذراع أبو النجا خوفا عليه من اللصوص في عصر رمسيس الرابع حيث اكتشفه مريت في ديسمبر عام 1857 م تحت كومة من التراب، وذكر مريت ان المومياء كانت في حالة سيئة جدا، وقد وجد مع المومياء خنجر من الذهب والفضة، ومرآه من البرونز، وبردية مجدولة على أعلى ذراع كامس، كما وجد أيضا جعران وبعض التعاويذ، وقد ظل الكفن في مصر بينما يوجد الخنجر في متحف بروكسل ببلجيكا، والمرآه في متحف اللوفر.",
        english_content:"Kamose died during his war with the Hyksos in 1540 BC, on the outskirts of the city of Ambos. After he had been inside it victorious, he was struck by a treacherous blow from one of the wounded Hyksos, so he passed away. The last thing he said was that he instructed his brother Ahmose to inform his great-grandmother Tutishiri that he had followed his father and died. The death of Seqenenre.
        The tomb of Kames was mentioned in the Abbot Papyrus, where it is mentioned that the coffin of Kames was transported from his tomb and buried in the arm of Abu al-Naga out of fear of thieves in the era of Ramesses IV. It was discovered by Merit in December 1857 AD under a pile of dirt. Meret mentioned that the mummy was in a very bad condition. A dagger of gold and silver, a bronze mirror, and a papyrus braided on Kams’ upper arm were found with the mummy. A scarab and some amulets were also found. The shroud remained in Egypt, while the dagger is in the Brussels Museum in Belgium, and the mirror is in the Louvre Museum.",
        character_id: character_38.id,
    )
    character_39 = Character.create(
        arabic_name: "أحمس الأول",
        english_name: "Ahmose I",
        arabic_info: "أحمس الأول، (تعنى ولد من ياه) كان ملكًا من ملوك من مصر القديمة ومؤسس الأسرة الثامنة عشرة، وكان عضوًا في العائلة المالكة لطيبة، ابن الملك سقنن رع وشقيق الملك الأخير من الأسرة السابعة عشر، الملك كامس. في عهد والده أو جده، تمردت طيبة ضد الهكسوس، حكام مصر السفلى. عندما كان في السابعة من عمره قتل والده، وفي حوالي عشرة عندما توفي شقيقه لأسباب غير معروفة، ولم يحكم سوى لثلاث سنوات فقط. تولى أحمس الأول العرش بعد وفاة أخيه، وبعد توليه أصبح يعرف باسم نب-بتي-رع (سيد القوة رع). أحمس اسم ثيوفوري مزيج من مقطع لفظي 'آه' وشكل الجمع بين '-موسى'. مقطع 'آه' يشير إلى ياه.
        انهي خلال فترة حكمه على غزو الهكسوس وطردهم من منطقة الدلتا، واستعادت طيبة سيادتها على جميع أنحاء مصر وأراضيها خاضعة لها سابقًا من النوبة وكنعان. اعاد تنظيم إدارة البلاد وفتحت المحاجر والمناجم وطرق جديدة للتجارة، وبدأت مشاريع البناء الضخمة من النوع الذي لم يجر منذ ذلك الوقت من عصر الدولة الوسطى. وضع عهد أحمس الأسس لعصر الدولة الحديثة، والتي بموجبها وصلت الدولة المصرية ذروتها.",
        english_info: "Ahmose I, (meaning son of Yah) was a king of ancient Egypt and the founder of the Eighteenth Dynasty. He was a member of the royal family of Thebes, the son of King Seqenenre and brother of the last king of the Seventeenth Dynasty, King Kamose. During the reign of his father or grandfather, Thebes rebelled against the Hyksos, the rulers of Lower Egypt. When he was seven years old, his father was killed, and at about ten when his brother died of unknown causes, and he ruled for only three years. Ahmose I assumed the throne after his brother's death, and after his accession he became known as Neb-pity-Ra (Master of Power, Ra). The name Ahmose is a combination of the syllable 'ah' and the plural form '-muse'. The syllable 'ah' refers to Yah.
        During his reign, the Hyksos invaded and expelled them from the Delta region, and Thebes regained its sovereignty over all of Egypt and its lands previously subject to it from Nubia and Canaan. He reorganized the country's administration, opened quarries, mines, and new trade routes, and began massive construction projects of a kind that had not been undertaken since the Middle Kingdom. Ahmose's reign laid the foundations for the New Kingdom, under which the Egyptian state reached its zenith.",
        date_of_birth: "",
        date_of_death: "",
        sub_era_id: sub_era_6.id,
    )
    character_39.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/1/18/AhmoseI-StatueHead_MetropolitanMuseum.png"), filename: 'image.jpg', content_type: 'image/jpg')
    character_39.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/1/18/AhmoseI-StatueHead_MetropolitanMuseum.png"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"العائلة",
        english_title:"His family",
        arabic_content:"ينحدر أحمس من الأسرة السابعة عشر بطيبة. جده سقنن رع تاعا، وجدته تتي شري، كان لديهم من الأبناء ما يتجاوز الأثنى عشر، بمن فيهم سقنن رع و إياح حتب. تزوج الأخ والأخت وفقًا لتقاليد الملكات في مصر القديمة، أنجبا أحمس الأول وكامس والكثير من الإناث. تبع أحمس تقاليد والده وتزوج العديد من أخواته، وجعل أخته أحمس-نفرتاري زوجته الرئيسية. أنجبا العديد من الأبناء بمن فيهم من الإناث أحمس ميرت آمون وأحمس سيت آمونومن الذكور سي آمون وأمنحتب الأول وأحمس عنخ ورع موس وقد يكونوا أيضًا أبًا لموتون فرت التي تزوجت من تحتمس الأول. على ما يبدو أن أحمس عنخ كان ولي عهد أحمس الأول، لكنه توفي ما بين العام 17 و22 من حكم أحمس. تبع أحمس الأول في الحكم ابنه الأكبر المتبقي على قيد الحياة أمنحتب الأول.
        لم يكن هناك خط فاصل واضح بين الأسرة السابعة عشر والأسرة الثامنة عشر. كتب المؤرج مانيتون لاحقًا خلال عهد البطالمة، معتبرًا طرد الهكسوس النهائي بعد ما يقرب من القرن لتواجدهم واستعادة الحكم المصري على كامل أنحاء البلاد كان حدثًا كبيرًا بما يكفي لتبرير بداية أسرة جديدة.",
        english_content:"Ahmose descends from the Seventeenth Dynasty of Thebes. His grandfather, Seqenenre Taa, and his grandmother, Titi-Shri, had more than twelve children, including Seqenenre and Iahhotep. The brother and sister married according to the traditions of queens in ancient Egypt, and they gave birth to Ahmose I, Kames, and many female daughters. Ahmose followed his father's traditions and married several of his sisters, making his sister Ahmose-Nefertari his main wife. They had many children, including females, Ahmose-mertamun and Ahmose-Set-Amun, and males, Si-Amun, Amenhotep I, Ahmose-ankh, and Ra-mus, and they may also be the father of Motonfert, who married Tuthmosis I. It seems that Ahmose Ankh was the crown prince of Ahmose I, but he died between the years 17 and 22 of the reign of Ahmose. Ahmose I was succeeded in ruling by his eldest surviving son, Amenhotep I.
        There was no clear dividing line between the Seventeenth Dynasty and the Eighteenth Dynasty. Writing later during the Ptolemaic era, Manetho argued that the eventual expulsion of the Hyksos after nearly a century of presence and the restoration of Egyptian rule over the entire country was an event large enough to justify the beginning of a new dynasty.",
        character_id: character_39.id,
    )
    CharacterSection.create(
        arabic_title:"طرد الهكسوس",
        english_title:"Expelling the Hyksos",
        arabic_content:"كان الملك سقنن رع أول من بدأ بمهاجمة الهكسوس لمحاربتهم وخروجهم من مصر وقتل في إحدى معاركه مع الهكسوس، ثم استكمل ولده كامس الحرب حتى طهر الصعيد من الهكسوس ثم أحمس طرد الهكسوس خارج البلاد. جرى احمس بجيوشه عندما كان عمره حوالي 19 سنة واستخدم بعض الأسلحة الحديثة مثل العجلات الحربية وانضم إلى الجيش كثير من شعب طيبة وذهب هو وجيوشه إلى أواريس (صان الحجرحاليا) عاصمة الهكسوس وهزمهم هناك ثم لاحقهم إلى فلسطين وحاصرهم في حصن شاروهين وفتت شملهم هناك حتى استسلموا ولم يظهر الهكسوس بعدها في التاريخ، كانت هذه المعركة حوالي عام 1580 ق.م.",
        english_content:"King Seqenenra was the first to start attacking the Hyksos to fight them and get them out of Egypt. He was killed in one of his battles with the Hyksos. Then his son Kames continued the war until Upper Egypt was cleansed of the Hyksos. Then Ahmose expelled the Hyksos out of the country. Ahmose went with his armies when he was about 19 years old. He used some modern weapons, such as chariots, and many of the people of Thebes joined the army. He and his armies went to Avaris (currently San al-Hajar), the capital of the Hyksos, and defeated them there. Then he pursued them to Palestine and besieged them in the fortress of Sharuhin, and reunited them there until they surrendered and did not The Hyksos then appear in history. This battle was around 1580 BC.",
        character_id: character_39.id,
    )
    CharacterSection.create(
        arabic_title:"فترة حكمه",
        english_title:"His reign",
        arabic_content:"قام الملك احمس بتطوير الجيش المصري فكان أول من ادخل عليه العجلات الحربية «والتي كان يستخدمها الهكسوس وهي سبب تغلب الهكسوس على مصر» وكان يجرها الخيول وطور كذلك من الأسلحة الحربية باستخدام النبال المزودة بقطعة حديد على الأسهم ثم بدأ بمحاربة الهكسوس بدءا من صعيد مصر والتف حوله الشعب فقام بتدريبهم بكفاءة حتى أصبحوا محاربين اقوياء ومهرة وظل يحارب الهكسوس من صعيد مصر حتى وصل إلى عاصمة مصر آنذاك التي اقامها الهكسوس بجوار مدينة الزقازيق الحالية وظل يحاربهم حتى فروا إلى شمال الدلتا وهو خلفهم فسيناء ثم إلى فلسطين ولم يرجع احمس إلا أن اطمئن على حدود مصر الشرقية انها امنه منهم ومن هجماتهم بعد القضاء عليهم بعد طرد الهكسوس وصل أحمس بجيشه إلى بلاد فينيقيا، كما هاجم بلاد النوبة لاستردادها مرة أخرى إلى المملكة المصرية التي وصلت حدودها جنوبا إلى الشلال الثاني، وصورت حملات احمس في مقبرة اثنين من جنوده هما أحمس بن إبانا وأحمس بن نخبت
        وبعد انتهاء احمس من حروبه لطرد الأعداء وتأمينه لحدود مصر وجه اهتمامه إلى الشئون الداخلية التي كانت متهدمة خلال فترة احتلال الهكسوس، فأصلح نظام الضرائب وأعد فتح الطرق التجارية وأصلح القنوات المائية ونظام الرى.
        كما قام بإعادة بناء المعابد التي تحطمت واتخذ من طيبة عاصمة له، وكان آمون هو المعبود الرسمي في عصره. واستمر حكم أحمس مدة ربع قرن وتوفى وعمره تقريبا 35 عاما. بعد طرد أحمس للهكسوس من مصر عاد إلى البلاد عام 1571 واتجه للإصلاح الداخلي مما جعل المؤرخون يعدونه مؤسس الدولة الحديثة .",
        english_content:"King Ahmose developed the Egyptian army. He was the first to introduce it to chariots, which were used by the Hyksos and were the reason for the Hyksos’ victory over Egypt. They were drawn by horses. He also developed military weapons by using arrows equipped with a piece of iron on the arrows. Then he began to fight the Hyksos, starting from Upper Egypt and wrapping around him. The people, so he trained them efficiently until they became strong and skilled warriors. He continued to fight the Hyksos from Upper Egypt until he reached the capital of Egypt at that time, which the Hyksos established next to the current city of Zagazig. He continued to fight them until they fled to the north of the Delta, which was behind them, Sinai, and then to Palestine. Ahmose did not return until he was reassured about the borders of Egypt. The eastern part is safe from them and from their attacks after eliminating them. After the expulsion of the Hyksos, Ahmose arrived with his army to the country of Phoenicia. He also attacked Nubia to restore it again to the Kingdom of Egypt, whose borders reached the south to the second cataract. Ahmose’s campaigns were depicted in the cemetery of two of his soldiers, Ahmose Ibn Ebana and Ahmose. Bin Nekhbat
        After Ahmose finished his wars to expel the enemies and secure the borders of Egypt, he turned his attention to internal affairs, which were dilapidated during the period of the Hyksos occupation. He reformed the tax system, reopened the commercial roads, and repaired the water canals and the irrigation system.
        He also rebuilt the temples that had been destroyed and made Thebes his capital, and Amun was the official deity of his time. Ahmose's rule lasted for a quarter of a century and he died when he was approximately 35 years old. After Ahmose expelled the Hyksos from Egypt, he returned to the country in 1571 and headed for internal reform, which made historians consider him the founder of the modern state.",
        character_id: character_39.id,
    )
    CharacterSection.create(
        arabic_title:"مومياؤه",
        english_title:"His mummy",
        arabic_content:"يعتقد أن لأحمس مقبرتان أحدهما في أبيدوس وتتكون من معبد منحدر ومقبرة جنائزية وبقايا هرم اكتشفت عام 1899، وعُرف أنه هرمه عام 1902 ومعبد للهرم والأخرى في طيبة وقد تعرضت للنهب بواسطة اللصوص. وقد اكتشفت مومياؤه عام 1881 في خبيئة الدير البحرى مع مومياوات بعض من ملوك الأسر الثامنة عشر والتاسعة عشر والواحد والعشرون، وتم التعرف على مومياؤه في 9 يونيه عام 1886 بواسطة جاستون ماسبيرو، وكان طول المومياء1.63 سم ولها وجه صغير نسبيا بالقياس مع حجم للصدر.",
        english_content:"It is believed that Ahmose had two tombs, one of which was in Abydos and consisted of a slope temple, a funerary cemetery, and the remains of a pyramid discovered in 1899. It was known that it was his pyramid in 1902 and a pyramid temple. The other was in Thebes and was looted by thieves. His mummy was discovered in 1881 in the Deir el-Bahari cache, along with the mummies of some of the kings of the Eighteenth, Nineteenth and Twenty-One Dynasties. His mummy was identified on June 9, 1886 by Gaston Maspero. The mummy was 1.63 cm tall and had a relatively small face compared to the size of the chest.",
        character_id: character_39.id,
    )
    character_40 = Character.create(
        arabic_name: "أمنحتب الأول",
        english_name: "Amenhotep I",
        arabic_info: "أمنحُتِپ الأول (أحياناً يكتب أمنوفيس الأول) (ت. 1504 ق.م.) كان ابن أحمس الأول و ثاني فراعنة الأسرة الثامنة عشر. وحكم من 1525 ق.م. حتى 1504 ق.م. بعد أن طرد والده الهكسوس من مصر.",
        english_info: "Amenhotep I (sometimes written Amenophis I) (d. 1504 BC) was the son of Ahmose I and the second pharaoh of the Eighteenth Dynasty. He ruled from 1525 BC. Until 1504 BC. After his father expelled the Hyksos from Egypt.",
        date_of_birth: "1555",
        date_of_death: "1555",
        sub_era_id: sub_era_6.id,
    )
    character_40.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/6/6d/58_I_Amenhotep_I.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_40.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/6/6d/58_I_Amenhotep_I.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"عائلته",
        english_title:"His family",
        arabic_content:"أمنحتب الأول هو ابن أحمس الأول وأحمس نفرتاري. توفي قبله إخوته الأكبر منه سنًا، ولي العهد أحمس صبير وأحمس عنخ، مما مهد الطريق لصعوده إلى العرش. من المحتمل أن أمنحتب وصل إلى السلطة عندما كان لا يزال شابًا، ويبدو أن والدته ،أحمس نفرتاري، كانت وصية عليه لفترة قصيرة على الأقل. والدليل على هذه الوصاية هو أنه ولوالدته الفضل في تأسيس مستوطنة للعمال في مقبرة طيبة في دير المدينة.
        تزوج أمنحتب أخته الكبرى،أحمس ميريت آمون و يُعتقد انه تزوج ايضًا من احمس سات كاموس.  ليس من المؤكد ما إذا كان أمنحتب الأول قد أنجب أي أطفال في فترة حكمه التي استمرت 21 عامًا. يعتقد بعض العلماء أن له ابنًا واحدًا على الأقل اسمه أمنمحات، والذي توفي وهو لا يزال صغيرًا جدًا، لكن هذا غير مؤكد إلى حد كبير ويجادل علماء آخرون ضد هذه الفكرة.
        نظرًا لأن أمنحتب الأول هو نتاج 'ثلاثة أجيال من زواج الأخوة والأقارب'، فمن المحتمل أن تأثيرات زواج الأقارب هذا كان لها تأثير سلبي على صحة وعدد ذرية أمنحتب الأول الناتجة. مع عدم وجود ورثة أحياء، خلف أمنحتب قائده العسكري تحتمس الأول، الذي كان أيضًا صهره من أخته المحتملة أحمس. ",
        english_content:"Amenhotep I was the son of Ahmose I and Ahmose Nefertari. His older brothers, Crown Prince Ahmosebeer and Ahmoseankh, died before him, paving the way for his ascension to the throne. Amenhotep likely came to power while still a young man, and his mother, Ahmose-Nefertari, appears to have been his regent for at least a short time. Evidence of this guardianship is that he and his mother are credited with establishing a workers’ settlement in the Theban cemetery in Deir el-Medina.
        Amenhotep married his older sister, Ahmose-Meretamun, and it is believed that he also married Ahmose-satkamus. It is not certain whether Amenhotep I fathered any children during his 21-year reign. Some scholars believe he had at least one son named Amenemhat, who died while still very young, but this is highly uncertain and other scholars argue against this idea.
        Since Amenhotep I was the product of 'three generations of fraternal marriage', it is likely that the effects of this inbreeding had a negative impact on the health and number of Amenhotep I's resulting offspring. With no living heirs, Amenhotep was succeeded by his military leader Thutmose I, who was also his brother-in-law by his possible sister Ahmose.",
        character_id: character_40.id,
    )
    CharacterSection.create(
        arabic_title:"حكمه",
        english_title:"His reign",
        arabic_content:"عادةً ما يبدأ حكم أمنحتب الأول في عام 1526، مع احتمالات ف عام 1516 أو 1546. تنص خلاصة مانيتون على أن أمنحتب حكم مصر لمدة 20 عامًا و7 أشهر، وتشير السيرة الذاتية لمقبرة أمنمحات إلى أنه خدم تحت قياده امنحتب الأول لمدة 21 عامًا. ",
        english_content:"Amenhotep I's reign usually began in 1526, with possibilities in 1516 or 1546. Manetho's Compendium states that Amenhotep I ruled Egypt for 20 years and 7 months, and the Amenhotep I tomb biography states that he served under Amenhotep I for 21 years.",
        character_id: character_40.id,
    )
    CharacterSection.create(
        arabic_title:"حملات عسكرية",
        english_title:"Military campaigns",
        arabic_content:"يتم تفسير لقبين الذي حمله امنحتب الاول 'الثور الذي يغزو الأراضي' و'الذي يلهم الرعب' بشكل عام على أنها تعني أن أمنحتب الأول كان ينوي السيطرة على الأمم المحيطة.  ويشير نصان مقبران إلى أنه قاد حملات إلى النوبة. وفقًا لنصوص قبر أحمس، ابن إيبانا، سعى أمنحتب لاحقًا إلى توسيع حدود مصر جنوبًا إلى النوبة وقاد قوة غزو هزمت الجيش النوبي. تقول سيرة مقبرة أحمس بنخبت أنه قاتل أيضًا في حملة على كوش. بنى أمنحتب معبدًا في ساي، مما يدل على أنه أنشأ مستوطنات مصرية حتى الشلال الثالث تقريبًا. كما قام بحملات ضد ليبيا، حيث انتصر فيها ضد قبائل الليبو. ",
        english_content:"Amenhotep I's two titles 'the bull who conquers lands' and 'he who inspires terror' are generally interpreted to mean that Amenhotep I intended to dominate the surrounding nations. Two grave texts indicate that he led campaigns into Nubia. According to the tomb texts of Ahmose, son of Ebana, Amenhotep later sought to expand Egypt's borders south into Nubia and led an invasion force that defeated the Nubian army. The tomb biography of Ahmose Bennekhbet says that he also fought in a campaign against Kush. Amenhotep built a temple at Sai, indicating that he established Egyptian settlements almost up to the Third Cataract. He also carried out campaigns against Libya, where he was victorious against the Libo tribes.",
        character_id: character_40.id,
    )
    CharacterSection.create(
        arabic_title:"مشاريع البناء",
        english_title:"Construction projects",
        arabic_content:"بدأ أمنحتب و واصل عددًا من مشاريع البناء في مواقع المعابد في صعيد مصر، لكن معظم المباني التي بناها تم تفكيكها أو طمسها لاحقًا على يد خلفائه. ومعلوم من المصادر المكتوبة أنه كلف المهندس المعماري إنيني بتوسيع معبد الكرنك. تشير السيرة الذاتية لمقبرة إنيني إلى أنه أنشأ بوابة من الحجر الجيري طولها 20 ذراعًا على الجانب الجنوبي من الكرنك. قام ببناء معبد صغير مقدسة لآمون من المرمر وقام ببناء هياكل المعابد في صعيد مصر في الفنتين، وكوم أمبو، وأبيدوس، ومعبد نخبت 
        كما كان أمنحتب الأول أول ملك مصري يفصل معبده الجنائزي عن مقبرته، ربما في محاولة للحفاظ على مقبرته في مأمن من اللصوص. يقع هذا المعبد في الطرف الشمالي من الدير البحري. يبدو أن الدير البحري كان له نوع من الأهمية الجنائزية لأمنحوتب، حيث تم العثور أيضًا في مكان قريب على مقبرة طيبة رقم 358، مقبرة الملكة أحمس ميريت امون.",
        english_content:"Amenhotep initiated and continued a number of building projects at temple sites in Upper Egypt, but most of the buildings he built were later dismantled or obliterated by his successors. It is known from written sources that he commissioned the architect Inini to expand the Karnak Temple. Inini's tomb biography indicates that he created a 20 cubit tall limestone gate on the south side of Karnak. He built a small sacred temple to Amun from alabaster and built temple structures in Upper Egypt in Elephantine, Kom Ombo, Abydos, and the Temple of Nekhbet.
        Amenhotep I was also the first Egyptian king to separate his funerary temple from his tomb, perhaps in an attempt to keep his tomb safe from looters. This temple is located at the northern end of Deir el-Bahri. Deir el-Bahari appears to have had some sort of funerary significance for Amenhotep, as Thebes' tomb No. 358, the tomb of Queen Ahmose-Meretamun, was also found nearby.",
        character_id: character_40.id,
    )
    CharacterSection.create(
        arabic_title:"الطائفة الجنائزية",
        english_title:"Funerary cult",
        arabic_content:"تم تأليه وتقديس أمنحتب بعد وفاته وجعله الإله الراعي للقرية التي افتتحها في دير المدينة. والدته، التي عاشت أكثر منه بسنة واحدة على الأقل، تم تأليهها أيضًا عند وفاتها وأصبحت جزءًا من طقوسه. 
        حيث يظهر ان الغالبية العظمى من تماثيل أمنحتب تأتي على شكل صنم جنائزي كانت من فترات لاحقة أي بعد وفاته. عند عبادته، كان له ثلاثة مظاهر إلهية: 'أمنحتب المدينة'، و'أمنحتب محبوب آمون'، و'أمنحتب الفناء'، وكان يُعرف بأنه الإله الذي يصدر الوحي. 
        خلال الشهر الأول، تم الاحتفال بمهرجان تكريمًا لظهور أمنحتب أمام عمال الجبانة، وهو ما يعني على الأرجح أن معبوده قد تم نقله إلى دير المدينة.وأقيم عيد آخر في الثلاثين من الشهر الرابع، ثم أُقيم عيدان آخران في الشهر السابع. 
        الأول كان 'فرش الأريكة الجنائزية للملك أمنحتب'، والذي من المحتمل أن يكون إحياء لذكرى يوم وفاته. أما الثاني، والذي يتم الاحتفال به لمدة أربعة أيام في نهاية الشهر، فهو 'العيد الكبير للملك أمنحتب سيد المدينة'. وفي وقت لاحق من التاريخ المصري، سمي الشهر السابع 'فامينوث' على اسم هذا المهرجان. وأقيم مهرجان آخر في 27 من الشهر التاسع، وكان آخر مهرجان معروف يقام لعدة أيام بين اليومين الحادي عشر والثالث عشر من الشهر الحادي عشر على الأقل، وهو على الأرجح يوافق تاريخ اعتلاء أمنحتب للعرش.
        كما تم تسليط المزيد من الضوء على عبادة أمنحتب الجنائزية من خلال وثائق متعددة يبدو أنها تشرح بالتفصيل الطقوس المخصصة لأمنحوتب.",
        english_content:"Amenhotep was deified and canonized after his death and made him the patron god of the village he opened in Deir el-Medina. His mother, who outlived him by at least one year, was also deified upon her death and became part of his rituals.
        It appears that the vast majority of Amenhotep’s statues come in the form of funerary idols and were from later periods, that is, after his death. When worshiped, he had three divine appearances: 'Amenhotep the City', 'Amenhotep the Beloved of Amun', and 'Amenhotep the Court', and he was known as the god who issues revelations.
        During the first month, a festival was celebrated in honor of Amenhotep's appearance before the necropolis workers, which likely meant that his idol had been moved to Deir el-Medina. Another festival was held on the thirtieth of the fourth month, and then two more in the seventh month.
        The first was 'King Amenhotep's funerary couch upholstery', which likely commemorated the day of his death. The second, which is celebrated for four days at the end of the month, is 'the great feast of King Amenhotep, the lord of the city'. Later in Egyptian history, the seventh month was named 'Famenoth' after this festival. Another festival was held on the 27th of the ninth month, and the last known festival was held for several days between at least the eleventh and thirteenth days of the eleventh month, which most likely coincides with the date of Amenhotep’s accession to the throne.
        Further light on Amenhotep's funerary cult has also been shed by multiple documents that appear to detail rituals dedicated to Amenhotep.",
        character_id: character_40.id,
    )
    CharacterSection.create(
        arabic_title:"مومياء",
        english_title:"His mummy",
        arabic_content:"وجدت مقبرة هذا الملك في وادي الملوك حيث دفن في دراع أبو النجا في أقدم قبر ملكي في طيبة، ولكن تم نقل مومياؤه إلى خبيئة بالدير البحري في عصر الأسرة الواحدة والعشرين تقريبا.  حيث انتقلت مومياء أمنحتب الأول عبر عدد من المحطات منذ اكتشافها عام 1881 في مخبأ الدير البحري الملكي في الأقصر؛ حيث حُفظت أولًا في متحف بولاق، ثم انتقلت إلى قصر إسماعيل باشا في الجيزة، وفي عام 1902 نُقلت مع المومياوات الملكية إلى المتحف المصري بالتحرير في القاهرة.
        خضعت المومياء لعدد من الدراسات منذ اكتشافها، ولجمال هيئتها كانت من بين عدد قليل من المومياوات التي لم يفك علماء العصر الحديث لفائفها حتى الآن، ومن بين الأبحاث التي أجريت عليها؛ تصويرها بالأشعة السينية عام 1932، من قِبل دوجلاس ديري، الأستاذ بكلية طب قصر العيني في القاهرة آنذاك، والذي قدّر عمر أمنحتب الأول عند الوفاة بين 40 و50 عامًا.",
        english_content:"The tomb of this king was found in the Valley of the Kings, where he was buried in the armor of Abu al-Naga in the oldest royal tomb in Thebes, but his mummy was transferred to a cache in Deir el-Bahari around the age of the Twenty-First Dynasty. The mummy of Amenhotep I has moved through a number of stations since its discovery in 1881 in the cache of the Royal Monastery of Bahri in Luxor. It was first preserved in the Boulaq Museum, then moved to Ismail Pasha Palace in Giza, and in 1902 it was transferred with the royal mummies to the Egyptian Museum in Tahrir in Cairo.
        The mummy has been subjected to a number of studies since its discovery, and due to the beauty of its appearance, it was among the few mummies that modern-day scientists have not yet unwrapped, and among the research conducted on it: It was X-rayed in 1932, by Douglas Derry, a professor at the Kasr Al-Aini Medical School in Cairo at the time, who estimated the age of Amenhotep I at death to be between 40 and 50 years.",
        character_id: character_40.id,
    )
    character_41 = Character.create(
        arabic_name: "تحتمس الأول",
        english_name: "Thutmose I",
        arabic_info: "تحتمس الأول أو تحوتمس الأول الفرعون الثالث خلال الأسرة الثامنة عشر. اعتلى العرش وهو قد جاوز الأربعين من عمره بعد وفاة الفرعون أمنحتب الأول. خلال فترة حكمه، كان يقوم بحملات في عمق بلاد الشام والنوبة، ودفع حدود مصر إلى أبعد من أي وقت مضى. بنى أيضًا العديد من المعابد في مصر وبنى لنفسه مقبرة في وادي الملوك، فهو أول من قرر ألا يدفن في هرم أو ما شابه، وفضل أن يدفن في مكان بعيد (ربمَّا يكون أمنحتب قد سبقه في ذلك). خلفه إبنه تحتمس الثاني، وشقيقته حتشبسوت التي شاركت تحتمس الثاني في الحكم لفترة. تؤرخ لحقبته عمومًا 1506-1493 ق.م، ولكن هناك أقلية من العلماء يعتقدون بأن الملاحظات الفلكية المستخدمة لحساب الخط الزمني من السجلات المصرية القديمة في عهد تحتمس الأول من مدينة ممفيس وليس من طيبة، وترجح أن حكمه كان في الفترة من 1526 ق.م إلى 1513 ق.م.",
        english_info: "Tuthmosis I or Thutmose I, the third pharaoh during the Eighteenth Dynasty. He ascended the throne when he was over forty years old after the death of Pharaoh Amenhotep I. During his reign, he campaigned deep into the Levant and Nubia, pushing Egypt's borders further than ever before. He also built many temples in Egypt and built a tomb for himself in the Valley of the Kings. He was the first to decide not to be buried in a pyramid or something similar, and preferred to be buried in a remote place (Amenhotep may have preceded him in this). He was succeeded by his son Thutmose II, and his sister Hatshepsut, who participated in rule with Thutmose II for a period. His era is generally dated to 1506-1493 BC, but there is a minority of scholars who believe that the astronomical observations used to calculate the time line are from ancient Egyptian records during the reign of Tuthmosis I from the city of Memphis and not from Thebes, and it is likely that his reign was in the period from 1526 BC to 1513 BC.",
        date_of_birth: "1526",
        date_of_death: "1513",
        sub_era_id: sub_era_6.id,
    )
    character_41.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/e/ea/ColossalSandstoneHeadOfThutmoseI-BritishMuseum-August19-08.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_41.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/e/ea/ColossalSandstoneHeadOfThutmoseI-BritishMuseum-August19-08.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"سُلالته",
        english_title:"His dynasty",
        arabic_content:"يُعتقد أن والد تحتمس هو أمنحتب الأول. والدته سنسنب، من أبوين خارج العائلة المالكة وربما كانت الزوجة غير الرئيسية أو السُّرية. أحمس، التي حملت لقب الزوجة الملكية (ملكة) لتحتمس، ربمَّا كانت ابنة أحمس الأول وأخت أمنحتب الأول؛ ومع ذلك، لم تكن تلقب أبدًا تحت سمى «ابنة الملك»، لذلك هناك بعض الشك حول هذا الموضوع، ويعتقد بعض المؤرخين أنها كانت أخت تحتمس. وعلى افتراض أنها كانت مُنْتَسِبه لأمنحتب، فإن زواجها من تحتمس كان من أجل ضمان وراثة العرش. لكن، لن يكون هذا هو الحال لسببين. أولًا، مبنى أمنحتب في الكرنك يشرك اسم أمنحتب مع اسم تحتمس أيضًا وكان ذلك قبل وفاة أمنحتب. ثانيًا، أول أبناء تحتمس من أحمس، آمون مس، على ما يبدو أنه ولد قبل فترة طويلة من تتويج تحتمس. ويمكن ملاحظته على اللوحة التذكارية من العام الرابع له في الحكم يصطاد بالقرب من ممفيس، وأصبح 'قائد جيش والده' في وقت ما قبل وفاته، والذي قد لا يتجاوز وفاة تحتمس في العام الثاني عشر له في الحكم. كان لتحتمس من الملكة أحمس ابن آخر، واج مس، وابنتان، حتشبسوت ونفروبتي. توفي واج مس قبل والده، وتوفيت نفروبتي وهي رضيعه. كان لتحتمس ابن واحد من الزوجة الأخرى، موت نفرت. خلفه هذا الابن وعرف باسم تحتمس الثاني، الذي زوجه تحتمس الأول من ابنته، حتشبسوت. سجلت حتشبسوت لاحقًا أن تحتمس ولى العرش إلى كل من تحتمس الثاني وحتشبسوت. ويعتبر هذا دعاية من قبل أنصار حتشبسوت لإضفاء الشرعية على أحقّيتها بالعرش عندما تولت السلطة لاحقًا.",
        english_content:"Thutmose's father is believed to be Amenhotep I. His mother, Senseb, was of non-royal parentage and may have been the non-principal or secret wife. Ahmose, who held the title of royal wife (queen) of Thutmose, was probably the daughter of Ahmose I and sister of Amenhotep I; However, she was never titled 'the king's daughter', so there is some doubt about this, and some historians believe she was Thutmose\'s sister. Assuming that she was a relative of Amenhotep, her marriage to Thutmose was in order to ensure the inheritance of the throne. However, this will not be the case for two reasons. First, the Amenhotep building in Karnak shares the name Amenhotep with the name Thutmose as well, and this was before Amenhotep’s death. Second, Thutmose\'s first son with Ahmose, Amunmes, was apparently born long before Thutmose\'s coronation. He can be seen on a stele from his fourth year of rule hunting near Memphis, and becoming \'commander of his father\'s army\' sometime before his death, which may not have been later than the death of Thutmose in his twelfth year of rule. Thutmose and Queen Ahmose had another son, Wajmes, and two daughters, Hatshepsut and Nephropti. Waj Mas died before his father, and Neferupti died as an infant. Thutmose had one son by the other wife, Mut-Neferet. This son succeeded him and was known as Thutmose II, who married Thutmose I to his daughter, Hatshepsut. Hatshepsut later recorded that Thutmose passed the throne to both Thutmose II and Hatshepsut. This is considered propaganda by Hatshepsut\'s supporters to legitimize her claim to the throne when she later took power.",
        character_id: character_41.id,
    )
    CharacterSection.create(
        arabic_title:"تأريخ حقبته",
        english_title:"His era",
        arabic_content:"سُجل شروق نجمي لنجم سيريوس إبان فترة حُكم سلف تحوتمس، أمنمحتب الأول، والذي أورخ له بـ1517 ق.م، وبفرض أنها لوحظت في طيبة. في عام وفاة أمنحتب تويج تحتمس كفرعون، ويمكن أن يكون ذلك بسبب نسبه للفرعون المتوفي، ويؤرخ لذلك معظم الباحثين بعام 1506 ق.م. بالرغم من ذلك، لو كانت الملاحظة بمنف أو أون، كما يرجع لذلك اقلية من الباحثين لتوج تحتمس في 1526 ق.م. سجل مانيتون أن حقبة تحتمس استمرت 12 عام و9 شهور (أو 3 سنوات). دُعمت هذه البيانات بنقشين مؤرخين من العام الثامن أو التاسع من عهده موضوعه خرطوشة وجدت منقوشه على كتلة حجرية في الكرنك. طبقًا لذلك، عادة ما يؤرخ العلماء لعهد تحتمس من 1506 ق.م إلى 1493 ق.م في التسلسل الزمني المنخفض، ولكن أقلية من العلماء تؤرخ له من 1526 ق.م إلى 1513 ق.م.",
        english_content:"A stellar rising of the star Sirius was recorded during the reign of Thutmose's predecessor, Amenhotep I, which he dated to 1517 BC, and it was assumed that it was observed in Thebes. In the year of Amenhotep’s death, Thutmose was crowned as pharaoh, and this could be due to his lineage to the deceased pharaoh, and most researchers date this to 1506 BC. However, if the observation had been in Memphis or On, as a minority of researchers believe, Thutmose would have been crowned in 1526 BC. Manetho recorded that Thutmose's reign lasted 12 years and 9 months (or 3 years). These data are supported by two inscriptions dated from the eighth or ninth year of his reign, the subject of a cartouche found engraved on a stone block in Karnak. Accordingly, scholars usually date Thutmose's reign from 1506 BC to 1493 BC in the lower chronology, but a minority of scholars date him from 1526 BC to 1513 BC.",
        character_id: character_41.id,
    )
    CharacterSection.create(
        arabic_title:"",
        english_title:"",
        arabic_content:"بعد تولي تحتمس الحُكم، تمردت النوبة ضد الحكم المصري. فوفقًا لسيرته الذاتية من مقبرة أحمس بن إبانا، سافر تحتمس إلى أعلى نهر النيل وقاتل شخصيًا في المعركة، وقتل الملك النوبي. بعد الانتصار، قام بتعليق جسد الملك النوبي على مقدمة مركبه، قبل أن يعود إلى طيبة. بعد تلك الحملة، قاد حملة ثانية ضد النوبة في عامه الثالث وفي أثنائها أمر بتجريف القناة عند الجندل الأول ـ التي قد بُنيت في عهد سيزوستريس الثالث من الأسرة الثانية عشر - من أجل تسهيل تدفق المياة التي تسير ضِدُّ التَّيَّار من مصر إلى النوبة. ساعد هذا في اندماج النوبة في الإمبراطورية المصرية. سُجلت هذه الحملة على نقشين منفصلين من قبل ابنه توري:
        العام الثالث، الشهر الأول من الموسم الثالث، يوم 22، وتحت حكم جلالة ملك مصر العليا والسفلى، عح خبري الذي يُعطى الحياة. أمر جلالة الملك بحفر هذه القناة بعد أن وجد أنها توقفت عند الحجارة [بحيث] لم [تبحر السفينة فيه]؛ السنة 3، الشهر الأول من الموسم الثالث، يوم 22. أبحر جلالته خلال هذه القناة وبقوة عودته بعد الإطاحة بالصُعْلُوك الكوشي.
        
        في السنة الثانية من عهد تحتمس، وقطع الملك لوحات تذكارية في طومبس (بالنوية)، الذي يسجل أنه بنى قلعة في طومبس، بالقرب من الشلال الثالث، وبالتالي تمدُد الوجود العسكري المصري، الذي توقف سابقًا في بوهين، عند الشلال الثاني بشكل دائم. هذا يدل على أنه خاض بالفعل حملة على سوريا؛ ومن هنا، ربما وقعت حملته على سوريا في بداية عامه الثاني بالحكم. كان الحملة الثانية ابعد ما وصل إليه حاكم مصري بحملة من جهة الشمال. على الرغم من أنه لم يعثر عليها في العصر الحديث، فقد وضع على ما يبدو حتى لوحة تذكارية عندما عبر نهر الفرات. خلال هذه الحملة، أعلن الأمراء السورين الولاء لتحتمس. بعد عودته، أوقف الضريبة المفروضه وبدأ إنشاء التحصينات ضد الغارات في المستقبل. احتفل تحتمس بانتصاراته باصتياده للفيله في منطقة نيا ، بالقرب من أفاميا بسوريا، وعاد إلى مصر مع حكايات غريبة من الفرات، 'أن المياه مقلوب وتتدفق من المنبع بدلًا من أن تتدفق من المصب'، وبات نهر الفرات يُعرف 'المياه المعكوسه'.
        
        واجهه تحتمس تهديد عسكري بتمرد نوبي آخر في سنته الرابعة. توسعت نفوذه حتى أقصى الجنوب، عُثِر على نقشًا يعود إلى فترة حكمه جنوبًا إلى كاراجوس، جنوب الشلال الرابع. بدأ خلال فترة حكمه عددًا من المشاريع التي انتهت فعليا باستقلال النوبة على مدى السنوات الـ 500 المقبلة. وسع معبد لسنوسرت الثالث وخنوم، في الجهة المقابلة للنيل من سمنة. عين أيضًا رجل يدعى الطيري بمنصب نائب الملك في كوش، والمعروف أيضا باسم 'ابن الملك في كوش'. مع ممثل مدني للملك بشكل دائم في النوبة نفسها، لم تثور النوبة بعد ذلك وتمت السيطرة بسهولة من قبل الملوك المصريين في المستقبليين.",
        english_content:"After Tuthmosis took power, Nubia rebelled against Egyptian rule. According to his autobiography from the tomb of Ahmose ibn Ebana, Thutmose traveled up the Nile River and personally fought in the battle, killing the Nubian king. After the victory, he hung the body of the Nubian king on the prow of his boat, before returning to Thebes. After that campaign, he led a second campaign against Nubia in his third year, during which he ordered the dredging of the canal at the First Cataract - which had been built during the reign of Sesostris III of the Twelfth Dynasty - in order to facilitate the flow of water moving against the current from Egypt to Nubia. This helped Nubia's integration into the Egyptian Empire. This campaign was recorded on two separate inscriptions by his son Ture:
        The third year, the first month of the third season, on the 22nd, under the rule of His Majesty the King of Upper and Lower Egypt, Ah Khepri, who gives life. His Majesty ordered the digging of this canal after he found that it stopped at the stones [so that] the ship would not [navigate in it]; Year 3, first month of the third season, day 22. His Majesty sailed through this channel with the force of his return after the overthrow of the Kushite tramp.
        
        In the second year of Thutmose's reign, the king cut down memorial stelae at Tombas (in Nawiyya), which records that he built a castle at Tombas, near the Third Cataract, thus permanently expanding the Egyptian military presence, which had previously stopped at Buhen, at the Second Cataract. This indicates that he actually fought a campaign in Syria; Hence, his campaign against Syria may have occurred at the beginning of his second year in power. The second campaign was the furthest an Egyptian ruler had ever gone with a campaign from the north. Although it has not been found in modern times, he apparently even placed a commemorative plaque when he crossed the Euphrates River. During this campaign, the Syrian princes declared loyalty to Tuthmosis. After his return, he stopped the tax and began constructing fortifications against future raids. Thutmose celebrated his victories by hunting elephants at Neia, near Apamea in Syria, and returned to Egypt with strange tales of the Euphrates, 'that the waters are inverted and flow from the source instead of downstream', and the Euphrates became known as 'reversed waters'.
        
        Thutmose faced the military threat of another Nubian rebellion in his fourth year. His influence expanded to the far south. An inscription was found dating back to his reign as far south as Karagos, south of the Fourth Cataract. During his reign, he initiated a number of projects that effectively ended Nubia's independence for the next 500 years. Expanded the temple of Senusret III and Khnum, on the opposite side of the Nile from Semna. He also appointed a man called Al-Tiri to the position of Viceroy of Kush, also known as 'The King's Son of Kush'. With the king's civilian representative permanently in Nubia itself, Nubia never revolted and was easily controlled by future Egyptian kings.",
        character_id: character_41.id,
    )
    CharacterSection.create(
        arabic_title:"آثاره",
        english_title:"His legacy",
        arabic_content:"بعد أن توسعت حدود ملك تحتمس الأول، قام بالاحتفال بما حققه من انتصارات فبنى قاعة فسيحة في معبد آمون بعد قيامه بتجديد وتعمير المعبد في طيبة.
        وأقام مسلتين أمام البوابة الرابعة في معبد آمون لا تزال إحدهما قائمة بمعبد الكرنك، وقد صُنعتا من الجرانيت الذي أحضره تحتمس من مصر العليا محملا على قارب طوله حوالي 60 مترا وعرضه حوالي 22 مترا ويحمل كتلتان هائلتان من الجرانيت تبلغ كل منهما حوالي 22 متر طولا ومترين حول القاعدة وتزن حوالي 143 طن، كما شيد الصرحان الرابع والخامس في معبد الكرنك.
        ومن لوحة أبيدوس يبدو أن تحتمس أضاف إلى معبد أوزوريس، وله آثار في الجيزة والفنتين وأرمنت ومنف وفي سيناء في منطقة شرابة الخادم.",
        english_content:"After the borders of King Tuthmosis I expanded, he celebrated the victories he had achieved by building a spacious hall in the Temple of Amun after renovating and rebuilding the temple in Thebes.
        He erected two obelisks in front of the fourth gate in the Temple of Amun, one of which is still standing in the Karnak Temple. They were made of granite that Thutmose brought from Upper Egypt, loaded on a boat about 60 meters long and about 22 meters wide, and carrying two huge blocks of granite, each about 22 meters long and two meters around. The base weighs about 143 tons, and the fourth and fifth pylons were built in the Karnak Temple.
        From the Abydos painting, it appears that Thutmose added to the Temple of Osiris, and he has monuments in Giza, Elephantine, Arment, Memphis, and in Sinai in the Sharabat al-Khadim area.",
        character_id: character_41.id,
    )
    CharacterSection.create(
        arabic_title:"عائلته",
        english_title:"His family",
        arabic_content:"أنجب تحتمس الأول من الملكة أحموس ابنته حتشبسوت وولديه أمون-مس ووازمس اللذين توفيا في سن صغير. كما أنجب من زوجته الثانية موت نفرت ابنه تحتمس الثاني. وأنجب أيضا العديد من الأبناء من زوجات أخريات. مات أولاده الذكور في حياته ولم يعش له إلا تحتمس الثاني الذي تزوج أخته من أبيه حتشبسوت.",
        english_content:"",
        character_id: character_41.id,
    )
    CharacterSection.create(
        arabic_title:"مقبرته",
        english_title:"His tomb",
        arabic_content:"توفى تحتمس الأول وهو في سن الخمسين تقريبا وقد دفن في وادي الملوك، ويعتبر أول ملك يدفن بهذا المكان بالمقبرة التي أعدها له إنني مدير أعماله وهي مكسوة بالجص ومنقوشة بنص قصير ملون عنوانه (رسائل الحجرة السرية) ويشتهر بعنوانه الفرعى (كتاب ما هو موجود في العالم السفلى)وهو مكتوب بالعلامات الهيروغليفية المتصلة، والمناظر بأشكال تخطيطية، ولم يتبق من هذه المقبرة سوى شظايا قليلة، ثم نقل جثمانه بعد ذلك ببضع سنين إلى قبر ابنته حتشبسوت الذي أعدته لها ولوالدها، وتوجد مومياؤه الآن في المتحف المصري، وتظهر الفحوصات التي تمت على مومياؤه انه كان يعانى من التهاب المفاصل الروماتيزمى وانه في وقت ما من حياته اصيب بكسر في الحوض.",
        english_content:"Tuthmosis I died when he was approximately fifty years old and was buried in the Valley of the Kings. He is considered the first king to be buried in this place in the tomb that I, his manager, prepared for him. It is covered with plaster and inscribed with a short, colorful text entitled (Messages of the Secret Chamber). It is famous for its subtitle (The Book of What Exists in the World). The lower part) is written in cursive hieroglyphic signs, and the scenes are in schematic forms. Only a few fragments remained of this tomb. Then, a few years later, his body was transferred to the tomb of his daughter Hatshepsut, which it prepared for her and her father. His mummy is now in the Egyptian Museum, and the examinations that were carried out on his mummy show He was suffering from rheumatoid arthritis and that at some point in his life he had suffered a pelvic fracture.",
        character_id: character_41.id,
    )
    character_42 = Character.create(
        arabic_name: "تحتمس الثاني",
        english_name: "Thutmose II",
        arabic_info: "تحتمس الثاني الفرعون الرابع من الأسرة الثامنة عشرة من مصر القديمة خلال عصر الدولة الحديثة. شيّد بعض الآثار الطفيفة وقام بحملتين طفيفتين لكنه لم يفعل شيئا آخر خلال فترة حكمه وربمًا كان يتأثر بقوة زوجته حتشبسوت. تأريخ حكمه خلال 1493-1481 ق.م. عثر على جثة تحتمس الثاني في مخبأ بالدير البحري فوق المعبد الجنائزي للملكة حتشبسوت ويمكن مُشاهدتها في المتحف المصري في القاهرة.",
        english_info: "Thutmose II was the fourth pharaoh of the Eighteenth Dynasty of Ancient Egypt during the New Kingdom. He built some minor monuments and carried out two minor campaigns but did nothing else during his reign and may have been influenced by the power of his wife Hatshepsut. Dating his rule during 1493-1481 BC. The body of Thutmose II was found in a cache in Deir el-Bahri above the funerary temple of Queen Hatshepsut and can be viewed at the Egyptian Museum in Cairo.",
        date_of_birth: "1493",
        date_of_death: "1481",
        sub_era_id: sub_era_6.id,
    )
    character_42.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/0/0c/Stone_block_with_relief_at_Karnak_Temple_Thutmosis_II.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_42.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/0/0c/Stone_block_with_relief_at_Karnak_Temple_Thutmosis_II.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"حكمه",
        english_title:"His rule",
        arabic_content:"اعتلى العرش بعد موت والده وتزوج من أخته غير الشقيقة حتشبسوت، وحدث أن مرض تحتمس الثاني بمجرد اعتلائه للعرش، ولما لم يكن لهُ ابن في ذلك الوقت فقد قامت زوجته وأخته حتشبسوت بالحكم من وراء الستار.
        قام تحتمس الثاني بعد توليه الحكم بالقضاء على العصيان والتمرد في كوش بالنوبة ونصب لوحة بانتصاراته عند الشلال الثالث. وقد عمد إلى تأمين حدود مصر الشرقية ومناجم النحاس في سيناء، كما قام بحملة إلى سورية على البدو (شاسو) الذين يعيشون على الحدود السورية، وكانت فلسطين منطقة نفوذ المصريين وكان الحال فيها آمنا على وجه العموم، حيث أن المصريون لم يتدخلوا في شؤون عبادات سكان بلاد الفتوحات.",
        english_content:"He ascended the throne after the death of his father and married his half-sister Hatshepsut. It happened that Tuthmosis II fell ill as soon as he ascended the throne, and since he did not have a son at that time, his wife and his sister Hatshepsut ruled from behind the scenes.
        After assuming power, Tuthmosis II eliminated disobedience and rebellion in Kush, Nubia, and erected a plaque depicting his victories at the Third Cataract. He sought to secure Egypt's eastern borders and the copper mines in Sinai. He also launched a campaign into Syria against the Bedouins (Shasu) who lived on the Syrian border. Palestine was the area of influence of the Egyptians and the situation there was generally safe, as the Egyptians did not interfere in the religious affairs of the inhabitants. Land of conquests.",
        character_id: character_42.id,
    )
    CharacterSection.create(
        arabic_title:"آثاره",
        english_title:"His legacy",
        arabic_content:"حكم تحتمس الثاني لفترة قصيرة وعلى الرغم من قصر مدة حكمة، إلا أنه عُثر على لوحتين بجوار الشلال الثالث كانت نتيجة للحملة الحربية التي شنها ضد النوبيين. وهم بمثابة تأكيد لوصول نفوذه إلى نفس المكان الذي وصل إليه نفوذ من سبقوه من الملوك. ولكنه توفى بعد فترة وجيزة من وضع اللوحات.
        كما ساهم تحتمس الثاني في البناء لمعبد الكرنك حيث أقام البوابة الثامنة ونحت تمثالين له أمام هذه البوابة، وأقام معبد في شمال مدينة هابو بالأقصر أكمله ابنه تحتمس الثالث، كما توجد له آثار في معبد قمة وفي سمنه بالنوبة، كما وجد له تمثال في الفنتين.",
        english_content:"Tuthmosis II ruled for a short period, and despite his short reign, two stelae were found next to the third waterfall that were the result of the war campaign he launched against the Nubians. They serve as confirmation that his influence reached the same place as the influence of his predecessors. But he died shortly after to put paintings.
        Thutmose II also contributed to the construction of the Karnak Temple, where he erected the eighth gate and carved two statues of him in front of this gate. He also built a temple north of Medinet Habu in Luxor, completed by his son Thutmose III. There are also traces of him in the Qemma Temple and in Semneh in Nubia, and a statue of him was found in Elephantine.",
        character_id: character_42.id,
    )
    CharacterSection.create(
        arabic_title:"مومياؤه",
        english_title:"His mummy",
        arabic_content:"وقد عُثر على مومياء تحتمس الثاني في خبيئة بالدير البحري بعد أن عبث ناهبوا القبور بمومياء هذا الملك حيث أعيد لفها وترميمها.
        وكغيره من الفراعنة، فلقد انعقدت يدا الملك فوق صدره في الوضع الذي اتبع لأجيال عديدة.
        ولقد أوضحت الأشعة السينية التي أجريت على المومياء أنها لرجل في الثلاثينيات من العمر، ويغطي جلده طبقة داكنة، لا يظن أنها مرض، ربما كانت ناتجة عن عملية التحنيط. كما عثر على الرجل اليمنى مفصوله تماماً عن الجسد. وعلى غير العادة في مومياوات الفراعنة، فإن أظافر الأيدى والأرجل كانت مقلمة ونظيفة.",
        english_content:"The mummy of Thutmose II was found in a cache in Deir el-Bahari after tomb looters tampered with the mummy of this king, where it was re-wrapped and restored.
        Like other pharaohs, the king's hands were crossed over his chest in a position that had been followed for many generations.
        The X-rays performed on the mummy showed that it was a man in his thirties, and his skin was covered with a dark layer. He did not think it was a disease, but it may have been the result of the mummification process. The right leg was also found completely separated from the body. Unusually for the mummies of the Pharaohs, the fingernails and toenails were trimmed and clean.",
        character_id: character_42.id,
    )
    character_46 = Character.create(
        arabic_name: "تحتمس الثالث",
        english_name: "Thutmose III",
        arabic_info: "من خبر رع، تحتمس الثالث (1425 ق.م.) سادس فراعنة الأسرة الثامنة عشر، ويعتبر مؤسس الإمبراطورية المصرية الحديثة في ذلك الوقت. ظلت تلك الأمبراطورية حتى نحو عام 1070 قبل الميلاد لغاية عهد رمسيس الحادي عشر.",
        english_info: "From the news of Ra, Thutmose III (1425 BC) was the sixth pharaoh of the Eighteenth Dynasty and is considered the founder of the modern Egyptian Empire at that time. That empire lasted until around 1070 BC until the reign of Ramesses XI.",
        date_of_birth: "1481",
        date_of_death: "1425",
        sub_era_id: sub_era_6.id,
    )
    character_46.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/5/57/Thutmosis_III-2.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_46.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/5/57/Thutmosis_III-2.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"حياته العسكرية",
        english_title:"His military life",
        arabic_content:"اهتم تحتمس الثالث بالجيش وجعله نظاميا وزوده بالفرسان والعربات الحربية، كما في عهده أتقن المصريون القدماء بفضله صناعة النبال والأسهم. بخلاف عهد تحتمس، في الوقت الذي كانت تحكم فيه حتشبسوت اتبعت سياسة سلمية مع مناطق النفوذ المصري في فلسطين والنوبة ومع جيرانها، وكانت تهتم بالبحرية وترسل الحملات البحرية إلى بلاد بونت وإلى سواحل لبنان للتبادل التجاري، انتهزت بعض المحميات في سوريا وميتاني للتمرد على الحكم المصري. وبمجرد أن اعتلى تحتمس الثالث العرش بعد وفاة حتسبسوت كان لا بد وان يعيد السيطرة المصرية على تلك المناطق تأمينا لحدود البلاد. شن تحتمس ستة عشرة حملة عسكرية على آسيا (منطقة سورية وفلسطين) استطاع من خلالها تثبيت نفوذه هناك كما ثبت نفوذ مصر حتى بلاد النوبة جنوباً.

        وقد كان أمير مدينة قادش في سوريا يتزعم حلفا من أمراء البلاد الأسيوية في الشام ضد مصر وصل عددهم إلى ثلاثة وعشرين جيشا وكان من المتوقع أن يدعم تحتمس الثالث دفاعاته وقواته على الحدود المصرية قرب سيناء إلا أن تحتمس قرر الذهاب بجيوشه الضخمة لمواجهة هذه الجيوش في أراضيهم ضمن خطة توسيع الامبراطورية المصرية إلى أقصى حدود ممكنة وتأمين الحدود ضد جيوش المتحرشين.",
        english_content:"Tuthmosis III took care of the army, made it regular, and provided it with knights and chariots. Also, during his reign, the ancient Egyptians mastered the manufacture of arrows and arrows thanks to him. Unlike the reign of Thutmose, at the time when Hatshepsut was ruling, she followed a peaceful policy with the areas of Egyptian influence in Palestine and Nubia and with its neighbors, and she cared for the navy and sent naval expeditions to the country of Punt and to the coasts of Lebanon for commercial exchange. She took advantage of some protectorates in Syria and Mitanni to rebel against Egyptian rule. As soon as Thutmose III ascended the throne after the death of Hatshepsut, he had to restore Egyptian control over those areas to secure the country’s borders. Thutmose launched sixteen military campaigns against Asia (the region of Syria and Palestine), through which he was able to establish his influence there, just as he established Egypt’s influence as far south as Nubia.

        The prince of the city of Kadesh in Syria was leading an alliance of the princes of the Asian countries in the Levant against Egypt. Their number reached twenty-three armies, and Thutmose III was expected to support his defenses and forces on the Egyptian border near Sinai, but Thutmose decided to go with his huge armies to confront these armies in their lands within The plan to expand the Egyptian Empire to the greatest possible extent and secure the borders against the armies of harassers.",
        character_id: character_46.id,
    )
    CharacterSection.create(
        arabic_title:"معركة مجدو",
        english_title:"The Battle of Megiddo",
        arabic_content:"بنى تحتمس الثالث القلاع والحصون، وقام بتدريب الجنود على أفضل التدريبات وأمدادهم بأسلحة مبتكرة قوية مثل النبال المستحدثة والتوسع في استخدام العربات في القتال. وفي حملة معركة مجدو قسم جيشه إلى قلب وجناحين واستخدم تكتيكات عسكرية ومناورات لم تكن معروفة من قبل. ثم قام على رأس جيشه من القنطرة وقطع مسافة 150 ميلا في عشرة أيام وصل بعدها إلى غزة ثم قطع ثمانين ميلا أخرى في أحد عشر يوما بين غزة وأحد المدن عند سفح جبل الكرمل، هناك عقد تحتمس الثالث مجلس حرب مع ضباطه بعد أن علم أن أمير قادش قد جاء إلى مدينة مجدو وجمع حوله 230 أميرا بجيوشهم وعسكروا في مجدو المحصنة ليوقفوا تقدم تحتمس الثالث وجيشه.

        كان هناك ثلاثة طرق للوصول إلي مجدو اثنان منهما يدوران حول سفح جبل الكرمل والثالث ممر ضيق ولكنه يوصل مباشرة إلى مجدو وقد أستقر رأى تحتمس على أن يمر الجيش من الممر الثالث في مغامرة قلبت موازيين المعركة فيما بعد.
        
        كانت قوات أمير قادش وحلفاءه قد تمركزت عند نهاية طريقين فسيحين معتقدة أن الجيش المصري سيأتي من أحدهما أو من كليهما. في فجر اليوم التالي أمر الملك تحتمس الثالث الجيش بإعادة تركيب العربات الحربية والاستعداد للهجوم المفاجئ. وهجمت قواته وكان على رأسهم في المقدمة على شكل نصف دائرة على مجدو فكانت المفاجأة أن يبادرهم المصريين بهذا الهجوم الكاسح فاضطربوا وفقدوا توازنهم حتى أصبحت جيوشهم في حالة من الفوضى وعدم النظام وبدأ قادة الجيوش والسرايا في الهروب تاركين وراءهم عرباتهم الكبيرة ومعسكرهم الملئ بالغنائم ليدخلوا المدينة المحصنة. وبسبب انشغال أفراد الجيش المصري بجمع الغنائم تمكن الآسيويون من الهروب إلى المدينة وتحصنوا فيها. كانت تبعة انصراف الجيش في جمع المغانم في الوقت الذي كانوا بإمكانهم القضاء على جيوش أمير قادش وتحقيق النصر الكامل أن اضطر تحتمس الثالث لحصار مجدو سبعة شهور طويلة حتى أستسلم الأمراء وأرسلوا أبنائهم حاملين الأسلحة لتسليمها إلى الملك تحتمس الثالث.",
        english_content:"Tuthmosis III built castles and forts, trained soldiers in the best exercises, and provided them with powerful innovative weapons such as modern arrows and expanded the use of chariots in combat. In the Battle of Megiddo campaign, he divided his army into a heart and two wings and used military tactics and maneuvers that were not known before. Then he rose at the head of his army from Qantara and covered a distance of 150 miles in ten days, after which he reached Gaza, then he covered another eighty miles in eleven days between Gaza and one of the cities at the foot of Mount Carmel. There, Tuthmosis III held a war council with his officers after he learned that the Emir of Kadesh He came to the city of Megiddo and gathered around him 230 princes with their armies and camped in the fortified Megiddo to stop the advance of Tuthmosis III and his army.

        There were three ways to reach Megiddo, two of which revolved around the foot of Mount Carmel, and the third was a narrow corridor, but it led directly to Megiddo. Thutmose decided that the army would pass through the third corridor in an adventure that later turned the tide of the battle.
        
        The forces of the Emir of Kadesh and his allies were stationed at the end of two wide roads, believing that the Egyptian army would come from one or both of them. At dawn the next day, King Thutmose III ordered the army to reassemble the chariots and prepare for a surprise attack. His forces attacked Megiddo, led by them in the forefront in the form of a semi-circle, and it was a surprise that the Egyptians initiated this sweeping attack. They were disturbed and lost their balance until their armies became in a state of chaos and disorganization, and the leaders of the armies and companies began to flee, leaving behind their large vehicles and their camp full of spoils to enter the fortified city. Because the Egyptian army was busy collecting spoils, the Asians were able to escape to the city and barricade themselves there. The consequence of the army's departure to collect spoils at a time when they could have eliminated the armies of the Prince of Kadesh and achieved complete victory was that Thutmose III was forced to besiege Megiddo for seven long months until the princes surrendered and sent their sons carrying weapons to deliver them to King Thutmose III.",
        character_id: character_46.id,
    )
    CharacterSection.create(
        arabic_title:"الهجوم على ميتاني",
        english_title:"The attack on Mitanni",
        arabic_content:"يمكن الاسنتاج أن حملة تحتمس الأول (1492- 1504 ق.م) على سوريا، كانت بداية المواجهة بين مصر الفرعونية والمملكة الميتانية، حتى أنه نصب تذكاراً له غرب الفرات في الجزيرة السورية، وسار تحتمس الثالث على دربه بإرسال الحملات إلى هناك.

        إلا أنه ليس واضحاً الدور الذي لعبته ميتاني في التحالف السوري الذي قاده ملك قادش في معركة مجدو عام 1456 ق.م ضد الملك المصري تحتمس الثالث، لكن الواضح أن المواجهات المصرية الميتانية السورية القديمة كانت في العام 1446 ق.م حيث تقابل الجيشان إلى الغرب من حلب.
        
        لم يكن سهلاً على الجيش المصري التحكم في كامل غرب وشمال الهلال الخصيب وإن كان قد وضع حاميات عسكرية في بعض المدن كما في جبيل، إلا أن ذلك لم يحد من ثورة بعض مدن الساحل الكنعاني. وكذلك شهدت هذه الفترة زيادة نفوذ ميتاني في كامل شمال الهلال الخصيب، حتى أن أوغاريت كانت إحدى الدويلات التابعة لميتاني في بعض الفترات، كما أن بعض الدويلات التابعة سابقاَ للممكة الحيثية أنضمت إلى ميتاني مع نهاية القرن الخامس عشر ق.م. وكانت ميتاني قد أخضعت آشور وعقدت تحالفا مع الدولة البابلية.
        
        لاحقاً بدأت العلاقات الميتانية المصرية بالتحسن في أواخر عهد تحتمس الثالث، واستمرت تلك العلاقات الطيبة بينهما. ويشهد على ذلك الزيجات المتبادلة بين ملوك مصر وبنات أمراء سوريا والرسائل المتبادلة بين طيبة وواشوكانو/ واشوكاني (سوريا) في رسائل تل العمارنة، كما في رسالة من الملك الحوري شوتارنا الثاني ملك ميتاني إلى الملك المصري أمنحوتب الثالث.",
        english_content:"It can be concluded that the campaign of Thutmose I (1492-1504 BC) against Syria was the beginning of the confrontation between Pharaonic Egypt and the Mitanni Kingdom. He even erected a memorial to him west of the Euphrates on the Syrian Peninsula, and Thutmose III followed in his footsteps by sending campaigns there.

        However, it is not clear what role Mitanni played in the Syrian alliance led by the King of Kadesh in the Battle of Megiddo in 1456 BC against the Egyptian King Thutmose III, but it is clear that the ancient Egyptian-Mittani-Syrian confrontations took place in the year 1446 BC, when the two armies met to the west of Aleppo.
        
        It was not easy for the Egyptian army to control the entire west and north of the Fertile Crescent, although it had placed military garrisons in some cities, such as in Byblos, but that did not limit the revolt of some cities on the Canaanite coast. This period also witnessed an increase in the influence of Mitanni throughout the entire north of the Fertile Crescent, to the point that Ugarit was one of the states affiliated with Mitanni in some periods, and some of the states formerly affiliated with the Hittite Kingdom of Mecca joined Mitanni at the end of the fifteenth century BC. Mitanni had subjugated Assyria and made an alliance with the Babylonian state.
        
        Later, Egyptian Mitanni relations began to improve in the late reign of Tuthmosis III, and these good relations between them continued. This is attested to by the mutual marriages between the kings of Egypt and the daughters of the princes of Syria, and the letters exchanged between Thebes and Washocano/Washocane (Syria) in the Amarna letters, as well as in a letter from the Hurrian king Shutarna II, king of Mitanni, to the Egyptian king Amenhotep III.",
        character_id: character_46.id,
    )
    CharacterSection.create(
        arabic_title:"مقبرته",
        english_title:"His tomb",
        arabic_content:"مات تحتمس وعمره 82 سنة بعد أن حكم أربعة وخمسين عاما كما جاء في نص امنمحات «... من العام الأول حتى العام الرابع والخمسين في الشهر الثالث من فصل الشتاء اليوم الأخير من عهد فخامة الملك» من خبر رع 'ملك دولة مصر الشمالية ومصر الجنوبية' ودفن في مقبرة بوادي الملوك كان قد أعدها لنفسه وهي المقبرة رقم 34، حيث يعد من أوائل الملوك الذين بنوا مقابر لأنفسهم في وادى الملوك، وقد اكتشفت مقبرته في عام 1898 على يد العالم فيكتور لوريت ووجد المقبرة قد تعرضت للنهب ولم تكن بها المومياء التي عثر عليها في الدير البحري عام 1881. و من أشهر مقولاته لوزيره الشهير رخمى رع 'لا يرضى الرب بالتحيز (الفساد)، كن يقظا فمنصب الوزير عماد الأرض كلها فليس للوزير أن يستعبد الناس، استمع للشاكى من الجنوب والدلتا أو أي بقعة.. تصرف بالعدل فالمحاباة يمقتها الرب.. كن عادلا مع من تعرفه ومن لا تعرفه...'.",
        english_content:"Thutmose died when he was 82 years old, after ruling for fifty-four years, as stated in the text of Amenemhat: “...from the first year until the fifty-fourth year in the third month of winter, the last day of the reign of His Excellency the King,” from the news of Ra, “King of the State of Northern and Southern Egypt.” He was buried in a cemetery in the Valley of the Kings that he had prepared for himself, which is Cemetery No. 34. He was considered one of the first kings to build tombs for themselves in the Valley of the Kings. His tomb was discovered in 1898 by the scientist Victor Loret. He found that the tomb had been looted and the mummy that was found was not in it. On it in Deir el-Bahari in 1881. One of his most famous sayings to his famous minister, Rakhmi-Ra, is: “The Lord is not satisfied with partiality (corruption). Be vigilant. The position of the minister is the pillar of the entire earth. The minister does not have the right to enslave people. Listen to the complainant from the south, the delta, or any other region... Act with justice, for it is favoritism.” The Lord hates it... Be fair to those you know and those you do not know...'.",
        character_id: character_46.id,
    )

    character_43 = Character.create(
        arabic_name: "حتشبسوت",
        english_name: "Hatshepsut",
        arabic_info: "غنمت آمون أو حتشبسوت أي خليلة آمون المفضلة على السيدات، أو خليلة آمون درة الأميرات. أبرز الملكات اللاتي حكمن مصر، وأقواهن نفوذًا؛ فقد كان حكمها نقطة بارزة ليس في تاريخ الأسرة الثامنة عشرة فحسب، بل وفي تاريخ مصر القديم كله.",
        english_info: "The sheep of Amun or Hatshepsut, that is, Amun’s favorite concubine among women, or Amun’s concubine, the jewel of princesses. The most prominent and influential queens who ruled Egypt. Her rule was a prominent point not only in the history of the Eighteenth Dynasty, but also in the entire history of ancient Egypt.",
        date_of_birth: "1479",
        date_of_death: "1458",
        sub_era_id: sub_era_6.id,
    )
    character_43.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/7/7b/Seated_Statue_of_Hatshepsut_MET_Hatshepsut2012.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_43.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/7/7b/Seated_Statue_of_Hatshepsut_MET_Hatshepsut2012.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"أصلها وتاريخ أسرتها",
        english_title:"Her origin and family history",
        arabic_content:"ولدت حتشبسوت في عام 1508 قبل الميلاد، وهي الابنة الكبرى للملك (تحوتمس الأول)، والملكة (أحمس)،كانت ملكة حاكمة مصرية قديمة، وهي الخامسة ضمن تسلسل ملوك الأسرة الثامنة عشرة، حكمت بعد وفاة زوجها الملك تحتمس الثاني كوصية على الملك الصغير تحتمس الثالث في البداية ثم كملكة وابنة الإله آمون بعد أن نشرت قصة نقشتها في معبدها بالدير البحري تقول فيها إنها كانت نتيجة لقاء حميم بين آمون وأمها الملكة أحمس، ويخلط مانيتون في ترتيبها فيضعها بعد أمنحوتب الأول في منتصف الأسرة الثامنة عشرة.
        يعتبر الملك (أحمس الأول) صاحب الانتصار العظيم في تحرير مصر من الهكسوس، هو الجد الأكبر لحتشبسوت، ومؤسس الأسرة الثامنة عشر الفرعونية التي تنتمي إليها.
        ولقد كانت (حتشبسوت) الوريثة الشرعية لعرش البلاد، حيث لم يكن هناك وريث شرعي من الذكور، ولكن كان لها أخ غير شقيق من أبيها هو (تحوتمس الثاني)، من زوجة ثانوية تدعى (موت نفرت).",
        english_content:"Hatshepsut was born in 1508 BC. She is the eldest daughter of King (Thutmose I) and Queen (Ahmose). She was an ancient Egyptian ruling queen, and the fifth in the series of kings of the Eighteenth Dynasty. She ruled after the death of her husband, King Thutmose II, as guardian of the young king, Thutmose III. In the beginning, then as a queen and daughter of the god Amun, after she published a story that she had inscribed in her temple in Deir el-Bahari, in which she said that it was the result of an intimate meeting between Amun and her mother, Queen Ahmose. Manetho mixed up its arrangement and placed it after Amenhotep I in the middle of the Eighteenth Dynasty.
        King (Ahmose I) is considered the owner of the great victory in liberating Egypt from the Hyksos. He is the great-grandfather of Hatshepsut, and the founder of the Eighteenth Pharaonic Dynasty to which she belongs.
        Hatshepsut was the legitimate heir to the throne of the country, as there was no legitimate male heir, but she had a half-brother from her father, Thutmose II, from a secondary wife called Mut-Neferet.",
        character_id: character_43.id,
    )
    CharacterSection.create(
        arabic_title:"تعليمها",
        english_title:"Her education",
        arabic_content:"تلقت حتشبسوت تعليماً عن علوم الأخلاق والسلوك الصحيح، بالإضافة إلى القراءة والكتابة، والحساب والفلسفة، والطقوس الدينية، وقواعد اللغة والإنشاء.
        ولقد كان عليها أن تثابر على نقل وتعلم الحكم المأثورة عن الحكماء المصريين القدماء، كأي فرد من زملائها، مثل أخيها غير الشقيق (تحوتمس الثاني)، والأمراء والأميرات الصغار، وعدد من أبناء الوزراء والأسر النبيلة؛ وما من شك في أنها كانت تخشى المعلم الذي كان يلقنها الدروس، وتخشى أساليبه العنيفة مع تلاميذه مهما كانت منزلتهم، ولقد كان هذا مثالاً للعدالة التي تطبق على الجميع بالتساوي بدون خوف أو محاباة، والتي أصبحت جزءاً أساسياً في حياة المجتمع المصري في ذلك الوقت، ولم يكن لحتشبسوت أن تطالب بأي امتيازات خاصة في معاملتها، وقد كانت المدرسة الملكية قي بيت فرعون كغيرها من مدارس البلاد، تبدأ في الصباح الباكر وتنتهي عند الظهيرة، كما تفعل الكثير من مدارس مصر في الوقت الحاضر.",
        english_content:"Hatshepsut received education in the sciences of morals and correct behavior, in addition to reading and writing, arithmetic, philosophy, religious rituals, grammar, and composition.
        She had to persevere in transmitting and learning the wisdom of the ancient Egyptian sages, like any of her colleagues, such as her half-brother (Thutmose II), the young princes and princesses, and a number of the children of ministers and noble families. There is no doubt that she was afraid of the teacher who was teaching her lessons, and feared his violent methods with his students, regardless of their status. This was an example of justice that was applied equally to everyone without fear or favour, and which became an essential part of the life of Egyptian society at that time. Hatshepsut could not demand any special privileges in her treatment, and the royal school in the house of Pharaoh was like other schools in the country, starting early in the morning and ending at noon, as many schools in Egypt do at the present time.",
        character_id: character_43.id,
    )
    CharacterSection.create(
        arabic_title:"زواجها",
        english_title:"Her marriage",
        arabic_content:"تزوجت حتشبسوت من أخيها غير الشقيق (تحتمس الثاني)، على عادة الملوك الفراعنة، الذي لم يكن أمامه كي يقبض على صولجان الحكم سوى أن يتزوج من حتشبسوت، وأنجبت منه ابن وبنتان، فأما الابن فمات في طفولته، ولم يبق اسمه على أي أثر من الآثار، وأما الابنتان فاسمهما (نفرو رع)، و (مريت رع حتشبسوت).

        وقد أنجب زوجها (تحوتمس الثاني)، ابنه (تحوتمس الثالث)، من أحد محظيات البلاط الملكي، والتي كانت تدعى (إيزة).",
        english_content:"Hatshepsut married her half-brother (Thutmose II), according to the custom of the Pharaoh kings, who had no choice but to marry Hatshepsut to seize the scepter of power, and she bore him a son and two daughters. As for the son, he died in infancy, and his name did not remain on any traces. As for the two daughters, their names are (Neferu Ra) and (Meritare Hatshepsut).

        Her husband, Thutmose II, gave birth to a son, Thutmose III, from one of the concubines of the royal court, who was called Iza.",
        character_id: character_43.id,
    )
    CharacterSection.create(
        arabic_title:"توليها الحكم",
        english_title:"Her assumption of power",
        arabic_content:"لم يكن الطريق ممهداً أمام حتشبسوت، ومفروشاً بالورود كي تصل إلى الحكم، فقد واجهت بكل إصرار وعناد مجتمعاً وسلطة دينية ذكورية، أبت أن ترى الحاكم إلا في صورة رجل.
        بدأت حتشبسوت وقتاً عصيباً من حياتها وهي في عمر العشرين، عند وفاة والدها (تحوتمس الأول)، فقد كانت من قبل شريكة مع أبيها في الحكم، والوريثة الشرعية للعرش؛ لذا فإنه كان من المعقول أن تكون هي الفرعون الذي يلي تحوتمس الأول على العرش. لكن، تقاليد البلاط ودسائس الكهنة بدأت تتدخل في الأمور لأن فكرة حكم امرأة ووضع جميع السلطات في يدها كان أمراً على غير هواهم؛ لهذا السبب كان من المحتم أن يشرك معها أخوها غير الشقيق (تحوتمس الثاني) في الحكم، ذاك الشخص النحيل واهن الصحة، قليل الخبرة بإدارة شؤون البلاد، وأن يكون شريكاً معها في الملك كفرعون للبلاد، بينما تصبح هي زوجة ملكية لا أكثر من هذا.
        ولم يكن هناك فائدة ترجى من وراء الاحتجاج، فقد كانت كل الظروف ضدها، وبدئوا يعدون لزواجها من تحوتمس الثاني وبهذا حصل تحوتمس الثاني على شرعية الحكم، ولسنا نعرف إلا القليل عن فترة حكمه قصيرة المدة، اللهم إلا ثورة قامت في الجنوب. ولكنه، بدلاً من أن يقود الجيش بنفسه ويسير إلى الأعداء كما كان يفعل أبوه، أعطى تعاليمه لجنوده أن يكونوا قساة لأبعد درجة عن الخارجين عن حكمه.
        كان تحوتمس الثاني شخصاً ضعيفاً وربما كان مريضاً في نفس الوقت، وكانت في الحقيقة حتشبسوت هي التي تدير أمور الدولة، وتحكم البلاد باِسمه من وراء ستار، وكانت صاحبة الأمر والنهي، وبعد وقت قصير أصبح واضحاً أنه سائر في طريق الموت، وأخذ رجال البلاط وكبار الموظفين يتساءلون ما الذي سيحدث عندما يموت؟ لم يكن هناك أمير آخر يستطيع أن يخلفه على العرش، كما لو أنها ستحكم البلاد في النهاية بمفردها، بينما سُر أصدقاؤها الذين يعرفون قدرتها وقوتها من هذه الفكرة، وكانوا على أتم استعداد ليخدموها بإخلاص عندما يحين الوقت.
        لكن، زوجها (تحوتمس الثاني) كان يريد أن يمنح ابنه (تحوتمس الثالث)، حق تولي العرش من بعده، وقد كان هناك شخصاً يدبر المؤامرات مع معبد آمون بالكرنك، مثيراً الشعور العام بين الكهنة والناس ضد فكرة قيام امرأة بحكمهم، وقد كان هذا الشخص هو (تحوتمس الثالث) نفسه، الذي كان يعيش في المعبد كأحد كهنته.
        لقد مات تحوتمس الثاني عام 1501 قبل الميلاد، وفي أحد الأيام بعد موته بوقتٍ قصير، وعندما كانت حتشبسوت في المعبد لتشهد احتفالاً يخرج فيه موكب الإله آمون، وقفت المحفة التي كانت تحمل تمثال (آمون)، أمام كاهن صغير، وأبت أن تتزحزح بعد ذلك، ووافق جميع الحاضرين على أن ما حدث ليس إلا علامة بأن آمون قد اختاره ليشاركها الحكم.
        وقد كان هذا الكاهن الذي وقفت محفة (آمون) أمامه، هو (تحوتمس الثالث) ابن زوجها المتوفى.
        وفي اليوم الثالث من شهر مايو 1501 قبل الميلاد، ترك تحوتمس عمله كأحد صغار الكهنة في معبد آمون، ليدخل القصر الملكي للفراعنة، وقد كان عمر حتشبسوت في ذلك الوقت أربعاً وثلاثين سنة، ومنذ اليوم الأول وسادت بينهم المنافسة والمرارة، ولم تلبث حتشبسوت إلا وأن جمعت حولها مناصرين وكونت حزباً مناصراً لها، ولم يلبث هذا الحزب إلا وقتاً قليلاً حتى اشتد نفوذه، وأصبح قوياً لدرجة أن الفرعون الذي لم تكن لديه الخبرة الكافية أصبح عاجزاً عجزاً تاماً عن حكم البلاد، واضطر لإخلاء المكان لحتشبسوت.
        وأخيراً تم إعلان حتشبسوت في عام 1478 قبل الميلاد، ملكاً على الصعيد والدلتا، وحكمت مصر وممتلكاتها في الخارج وحدها كفرعون.
        وفي أغاني المديح التي كانت تغني في مدحها، كانوا يسمونها (حورس الأنثى)، وأضافوا علامة التأنيث في آخر الكلمة التي تدل على (الجلالة).
        ولقد كانت الخانات الملكية التي كتب اسم حتشبسوت في داخلها، والتي تظهر على جدران الدير البحري والكرنك وفي غيرها من الأماكن في مصر صريحة في معانيها، فقد أضيف بجوار اسمها (ملك الصعيد والدلتا، ابنة الشمس، صديقة آمون حتشبسوت، حورس الذهبي، مانحة السنين، إلهة الاشراقات، هازمة جميع البلاد، التي تحيي القلوب، السيدة القوية).
        ولقد كانت هذه اللحظة هي لحظة النصر بالنسبة لها، ويقدر المؤرخ المصري القديم (مانيتون)، فترة حكمها بـ 21 سنة، وتسعة أشهر.
        وقد يثار هنا تساؤل ماذا فعلت حتشبسوت بتحوتمس الثالث، بعد أن أطاحت به، وقد يظن البعض أنها قتلته أو نفته لمكان بعيد عن مصر. لكن، الحقيقة أنها عهدت إلى تربية وتعليم هذا الفرعون الذي كان قبل ذلك كاهناً صغيراً في السن تربية عسكرية، وعلمته فنون إدارة الدولة، ليقود بعض الحملات العسكرية ضد الثائرين على الحكم المصري خارج البلاد في أواخر حكمها، وقد تولى الحكم بعد موتها، بعد زواجه من ابنتها (مريت رع حتشبسوت)، مما أعطى له شرعية الحكم، وقد كان من أقوى الفراعنة المحاربين الذين حكموا مصر، وكون أول وأقوى إمبراطورية مصرية عرفها التاريخ.",
        english_content:"The road was not paved for Hatshepsut and strewn with roses to reach power. She faced, with all determination and stubbornness, a society and a male religious authority that refused to see the ruler except in the form of a man.
        Hatshepsut began a difficult time in her life when she was twenty years old, upon the death of her father (Thutmose I). She had previously been a partner with her father in power, and the legitimate heir to the throne. Therefore, it was reasonable that she was the pharaoh who would succeed Thutmose I on the throne. However, the traditions of the court and the intrigues of the priests began to interfere in matters because the idea of a woman ruling and placing all powers in her hands was something they did not like; For this reason, it was inevitable that her half-brother (Thutmose II), a thin, frail person with little experience in managing the country’s affairs, should participate with her in power, and be a partner with her in the kingship as pharaoh of the country, while she would become a royal wife and nothing more than that.
        There was no benefit to be gained from the protest, as all circumstances were against her, and they began to prepare for her marriage to Thutmose II, and thus Thutmose II obtained the legitimacy of rule, and we know little about his short reign, except for a revolution that took place in the south. But, instead of leading the army himself and marching against the enemies as his father did, he taught his soldiers to be as cruel as possible to those outside his rule.
        Thutmose II was a weak person and may have been sick at the same time. In fact, Hatshepsut was the one who ran the affairs of the state and ruled the country in his name from behind a curtain. She was the one who commanded and forbade. After a short time, it became clear that he was on the path to death, and the courtiers and senior officials took They wonder what will happen when he dies? There was no other prince who could succeed him on the throne, as if she would finally rule the country alone, while her friends who knew her ability and power were pleased with this idea, and were more than willing to serve her loyally when the time came.
        However, her husband (Thutmose II) wanted to give his son (Thutmose III) the right to assume the throne after him, and there was a person plotting conspiracies with the Temple of Amun in Karnak, arousing general feeling among the priests and people against the idea of a woman ruling over them, and this person was He (Thutmose III) himself, lived in the temple as one of its priests.
        Thutmose II died in 1501 BC, and one day shortly after his death, when Hatshepsut was in the temple to witness a celebration in which the procession of the god Amun took place, the palanquin that was carrying the statue of Amun stood in front of a young priest, and refused to budge after that. All those present agreed that what happened was only a sign that Amun had chosen him to share the rule with her.
        This priest, before whom the palanquin of Amun stood, was Thutmose III, the son of her deceased husband.
        On the third day of May 1501 BC, Thutmose left his work as one of the junior priests in the Temple of Amun, to enter the royal palace of the Pharaohs. Hatshepsut was thirty-four years old at that time, and from the first day competition and bitterness prevailed between them, and Hatshepsut did not hesitate to gather Supporters surrounded her and she formed a party supporting her. It was only a short time before this party’s influence increased and became so powerful that the pharaoh, who did not have sufficient experience, became completely unable to rule the country, and was forced to vacate the place for Hatshepsut.
        Finally, in 1478 BC, Hatshepsut was declared king of Upper Egypt and the Delta, and she ruled Egypt and its overseas possessions alone as pharaoh.
        In the praise songs that were sung in praise of her, they called her (female Horus), and they added a feminine sign at the end of the word that indicates (majesty).
        The royal boxes inside which Hatshepsut’s name was written, and which appear on the walls of Deir el-Bahri, Karnak and other places in Egypt, were clear in their meanings. Next to her name was added (King of Upper Egypt and the Delta, Daughter of the Sun, Friend of Amun Hatshepsut, Golden Horus, Giver of Years, Goddess of radiance, conqueror of all lands, reviver of hearts, powerful lady.)
        This moment was the moment of victory for her, and the ancient Egyptian historian (Manetho) estimates the period of her rule at 21 years and nine months.
        A question may arise here: What did Hatshepsut do to Thutmose III, after she overthrew him? Some may think that she killed him or exiled him to a place far from Egypt. However, the truth is that she was entrusted with the military education and education of this pharaoh, who had previously been a young priest, and taught him the arts of state administration, so that he could lead some military campaigns against those rebelling against Egyptian rule outside the country at the end of her reign. He assumed power after her death, after his marriage to Her daughter (Meritare Hatshepsut), which gave him legitimacy to rule, and he was one of the most powerful warrior pharaohs who ruled Egypt, and formed the first and most powerful Egyptian empire in history.",
        character_id: character_43.id,
    )
    CharacterSection.create(
        arabic_title:"أعمالها في فترة حكمها",
        english_title:"Her actions during her reign",
        arabic_content:"اتسمت فترة حكم حتشبسوت بالسلام والرفاهية، وتميز عهدها بقوة الجيش ونشاط البناء والرحلات البحرية العظيمة التي أرسلتها للتجارة مع بلاد الجوار، وتحت صولجان الفرعون المرأة استطاعت مصر أن تغتني وتزدهر، فقد أعادت فتح المحاجر والمناجم التي أهملت لفترة طويلة، وخاصةً مناجم النحاس والملاخيت في شبه جزيرة سيناء، فقد كان قد توقف العمل في تلك المناجم في فترة حكم الهكسوس لمصر وما تلاه، ومازلنا نجد في سيناء لوحة عليها كتابة توثق هذا العمل، وتمجد ما فعلته.

        ونشـّطت حتشبسوت كذلك حركة التجارة مع جيران مصر حيث كانت التجارة في حالة سيئة خصوصا في عهد الملك تحتمس الثانى، وأعادت استخدام قناة تربط بين النيل عند نهاية الدلتا بالبحر الأحمر، حيث قامت بتنظيف هذه القناة بعد أن حفرها المصريون أيام الدولة الوسطى، وذلك لتسيير أسطول مصر البحري بها ليخرج إلى خليج السويس وبعدها إلى مياه البحر الأحمر. وأمرت ببناء عدة منشآت بمعبد الكرنك، كما أنشأت معبدها في الدير البحرى بالأقصر.
        
        اهتمت حتشبسوت بالأسطول التجارى المصرى فأنشأت السفن الكبيرة ، واستغلتها في النقل الداخلى لنقل المسلات التي أمرت بإضافتها إلى معبد الكرنك تمجيدا للإله آمون ، وفي بعثات التبادل التجارى مع جيرانها، واتسم عهدها بالرفاهية في مصر ، وزاد الإقبال على مواد ترفيهية أتت بها الأساطيل التجارية من البلاد المجاورة، ومن أهمها البخور والعطور والتوابل والنباتات والأشجار الاستوائية والحيوانات المفترسة والجلود.
        
        بعثة المحيط الأطلسى: أرسلت الملكة حتشبسوت أسطولًا كبيرًا إلى المحيط الأطلسى، وازدهرت التجارة مع المحيط الأطلسى لاستيراد بعض أنواع السمك النادر.
        
        بعثة بلاد بونت: أرسلت الملكة حتشبسوت بعثة تجارية على متن سفن كبيرة تقوم بالملاحة في البحر الأحمر محملة بالهدايا والبضائع المصرية مثل البردى والكتان إلى بلاد بونت (الصومال حاليا ، وجنوب اليمن)، فاستقبل ملك بونت البعثة استقبالا جيدا، ثم عادت محملة بكميات كبيرة من الحيوانات المفترسة والأخشاب والبخور والأبنوس والعاج والجلود والأحجار الكريمة. وصورت الملكة حتشبسوت أخبار تلك البعثة على جدران معبد الدير البحرى على الضفة الغربية من النيل عند الأقصر ، ولا تزال الألوان التي تزين رسومات هذا المعبد زاهرة ومحتفظة برونقها وجمالها إلى حد كبير.
        
        بعثة أسوان: أيضا صورت على جدران معبد الدير البحرى وصف بعثة حتشبسوت إلى محاجر الجرانيت عند أسوان لجلب الأحجار الضخمة للمنشآت، وقامت بإنشاء مسلتين عظيمتين من الجرانيت بأسوان تمجيدا للإله أمون يبلغ كل منهما نحو 35 طنا، ثم تم نقلهما على النيل حتى طيبة وأخذت المسلتان مكانهما في معبد الكرنك بالأقصر، وعند زيارة نابوليون أثناء الحملة الفرنسية على مصر عام 1879 أمر بنقل إحدى المسلتين إلى فرنسا، وهي تزين حتى الآن ميدان الكونكورد في العاصمة الفرنسية باريس.
        
        ويعجب المؤرخون والمهندسون حتى يومنا هذا بقدرة المصريين على نقل تلك المسلتين من أسوان إلى الأقصر، فعملية تحميل المسلتين على السفن ثم نقلهما على النيل وإنزالهما على البر، ثم نقلهما على الأرض إلى مكان تشييدهما ليست بالسهلة على الإطلاق، وما يفوق ذلك أيضا هو تشييد المسلتان في المكان المختار لهما بالضبط أمام الصرح الذي شيدته الملكة حتشبسوت بمعبد الكرنك على بعد أمتار قليلة من الصرح، ولا يزال المهندسون حتى الآن يضعون النظريات للطريقة التي اتبعها المهندس المصرى القديم للقيام بهذا العمل الجبار، ليس هذا فقط، فقد أصدرت حتشبسوت أوامرها بإنشاء مسلة تعتبر أكبر مسلة في تاريخ البشرية مكونة من قطعة واحدة من الحجر تزن فوق 1000 طن لوضعها بمعبد الكرنك، إلا أن المهندسين المصريين القدماء تركوها بعدما اكتشفوا فيها شرخا يحول دون استخدامها. ويزور حاليا سياح من جميع أنحاء العالم لمشاهدة أعجوبة تلك المسلة غيرالكاملة التجهيز في محجر أسوان، ويسألون أنفسهم: كيف أراد المصريون القدماء نقل هذه المسلة العملاقة إلى معبد الكرنك؟ ويصف أحد علماء المصريات الألمان طرق تقطيع الحجر أن المصريين القدماء كانوا يتعاملون مع الحجر كما لو كان زبدا، وفعلا يمكن مشاهدة ذلك في محجر أسوان ، وتسمى الآن بـ (المسلة الناقصة).",
        english_content:"The period of Hatshepsut's rule was characterized by peace and prosperity. Her reign was distinguished by the strength of the army, construction activity, and the great sea voyages that she sent to trade with neighboring countries. Under the scepter of the female Pharaoh, Egypt was able to become rich and prosper. She reopened the quarries and mines that had been neglected for a long time, especially the copper and malachite mines on the peninsula. Sinai. Work in those mines had stopped during the period of the Hyksos rule of Egypt and what followed. We still find in Sinai a plaque with writing documenting this work and glorifying what they did.

        Hatshepsut also activated the trade movement with Egypt's neighbors, as trade was in bad condition, especially during the reign of King Thutmose II, and she reused a canal linking the Nile at the end of the delta to the Red Sea, where she cleaned this canal after the Egyptians had dug it in the days of the Middle Kingdom, in order to operate Egypt's fleet. The sea then exits into the Gulf of Suez and then into the waters of the Red Sea. She ordered the construction of several facilities in the Karnak Temple, and also established her temple in Deir el-Bahari in Luxor.
        
        Hatshepsut took an interest in the Egyptian merchant fleet, so she built large ships and used them for internal transportation to transport the obelisks that she ordered to be added to the Karnak Temple in honor of the god Amun, and in trade missions with her neighbors. Her era was characterized by prosperity in Egypt, and the demand for entertainment materials brought by merchant fleets from neighboring countries increased. The most important of which are incense, perfumes, spices, tropical plants and trees, predatory animals, and skins.
        
        Atlantic Expedition: Queen Hatshepsut sent a large fleet to the Atlantic Ocean, and trade with the Atlantic Ocean flourished to import some types of rare fish.
        
        The Land of Punt Expedition: Queen Hatshepsut sent a trade mission aboard large ships navigating the Red Sea, loaded with Egyptian gifts and goods such as papyrus and linen, to the Land of Punt (currently Somalia and southern Yemen). The King of Punt received the mission well, and then it returned loaded with large quantities of animals. Predatory woods, incense, ebony, ivory, leather and precious stones. Queen Hatshepsut depicted the news of that mission on the walls of the Deir el-Bahari Temple on the west bank of the Nile in Luxor, and the colors that adorn the paintings of this temple are still bright and have largely retained their splendor and beauty.
        
        Aswan Expedition: Also depicted on the walls of the Deir el-Bahari Temple was a description of Hatshepsut’s mission to the granite quarries at Aswan to bring huge stones for the facilities. She created two great obelisks of granite in Aswan to glorify the god Amun, each weighing about 35 tons. Then they were transported on the Nile to Thebes, and the two obelisks took their place. In the Karnak Temple in Luxor, when Napoleon visited during the French campaign against Egypt in 1879, he ordered one of the two obelisks to be transferred to France, and it still adorns the Place de la Concorde in the French capital, Paris.
        
        Historians and engineers are amazed to this day by the ability of the Egyptians to transport those obelisks from Aswan to Luxor. The process of loading the two obelisks on ships, then transporting them on the Nile, landing them on land, and then transporting them on land to the place of their construction is not at all easy, and what is also more important than that is the construction of the two obelisks in The place chosen for them is exactly in front of the edifice built by Queen Hatshepsut in the Karnak Temple, a few meters away from the edifice. Until now, engineers are still developing theories about the method followed by the ancient Egyptian engineer to carry out this mighty work. Not only that, Hatshepsut issued her orders to create an obelisk that is considered the largest obelisk. In the history of mankind, it consisted of a single piece of stone weighing more than 1,000 tons to be placed in the Karnak Temple, but the ancient Egyptian engineers abandoned it after they discovered a crack in it that prevented it from being used. Tourists from all over the world are currently visiting to see the marvel of this incomplete obelisk in the Aswan quarry, and they ask themselves: How did the ancient Egyptians want to move this giant obelisk to the Karnak Temple? One of the German Egyptologists describes the methods of cutting stone that the ancient Egyptians used to deal with the stone as if it were butter, and in fact this can be seen in the Aswan quarry, and it is now called (the incomplete obelisk).",
        character_id: character_43.id,
    )
    CharacterSection.create(
        arabic_title:"وفاتها",
        english_title:"Her death",
        arabic_content:"توفت حتشبسوت في 10 من الشهر الثاني لفصل الخريف ، والذي يوافق (14 يناير 1457 قبل الميلاد) خلال العام 22 من فترة حكمها ، كما جاء ذلك في كتابة على لوحة وجدت بأرمنت.

        ولقد تم التحقق من مومياء حتشبسوت ، أن علامات موتها هي علامات لموت طبيعي ، وأن سبب موتها يرجع إلى اصابتها بالسرطان أو السكري.
        
        وقبر حتشبسوت موجود في وادي الملوك ويرمز له بالرقم KV20 ، وربما قامت حتشبسوت بتوسيع مقبرة أبيها لكي تستعملها، وقد وجد تابوتها موجوداً بجانب تابوت أبيها.
        
        ومؤخراً التقطت لمومياء الملكة حتشبسوت صورة تظهر فيها باسمة حالمة وادعة؛ كمن أدى رسالته على أكمل وجه ، وأخيراً استراح. والطريف في الصورة أيضاً أن الملكة كانت تتمتع بشعر ناعم ملون جميل؛ يظهر بوضوح في الصورة أيضاً، وهذا يدل على أن علم التحنيط الذي أبدعه المصريون القدماء سراً عظيماً لو أكتشف؛ قد يغير مظاهر الدفن في العالم بأسره.
        
        ومهما يكن من أمر الملكة 'حتشبسوت' فإنها واحدة من قليلات من السيدات في العالم القديم ممن وصلن إلى قمة الإدارة في بلادهن ، ولقد بذلت كل الجهد لتقنع الرجل في عهدها بأن يقبلها كإمرأة تحكمه ، وسواء أقنعت 'حتشبسوت' الرجال في مصر في ذلك الوقت بحكمها ، أم لم تقنعهم ، فإن ما فعلته كان أعظم بكثير مما فعله بعض الملوك الرجال.
        
        حتشبسوت (تعني: من أبرز السيدات النبيلة؛ 1508-1458 ق.م.) كانت الفرعون الخامس من عصر الأسرة الثامنة عشرة في مصر القديمة. يعتبرها علماء المصريات واحدة من أنجح الفراعنة، حامله للقب أطول من أي امرأة أخرى في الأسر المصرية. تميز عهدها بقوة الجيش ونشاط البناء والرحلات البحرية العظيمة التي أرسلتها للتجارة مع بلاد الجوار. وهي الابنة الكبرى لفرعون مصر الملك تحوتمس الأول وأمها الملكة احموس. وكان أبوها الملك قد أنجب ابنا غير شرعيا هو تحتمس الثاني. وقد قبلت الزواج منه على عادة الأسر الملكية ، ليشاركا معا في الحكم بعد موته، وذلك حلا لمشكلة وجود وريث شرعي له.",
        english_content:"Hatshepsut died on the 10th of the second month of autumn, which corresponds to (January 14, 1457 BC) during the 22nd year of her reign, as stated in an inscription on a tablet found in Arment.

        It has been verified that the mummy of Hatshepsut showed that the signs of her death were signs of a natural death, and that the cause of her death was due to her suffering from cancer or diabetes.
        
        Hatshepsut's tomb is located in the Valley of the Kings and is symbolized by the number KV20. Hatshepsut may have expanded her father's tomb in order to use it, and her coffin was found next to her father's coffin.
        
        Recently, a picture was taken of the mummy of Queen Hatshepsut, showing her with a peaceful and dreamy smile. As if he had fulfilled his mission perfectly, and finally rested. What is also funny about the picture is that the queen had beautiful, soft, colored hair. It appears clearly in the picture as well, and this indicates that the science of mummification that the ancient Egyptians created was a great secret if it were discovered. It may change the appearance of burials in the entire world.
        
        Whatever the matter of Queen Hatshepsut, she was one of the few women in the ancient world who reached the top of administration in their country. She made every effort to convince men during her reign to accept her as a woman to rule him, and whether Hatshepsut convinced men in Egypt at that time with her rule. Or did you not convince them? What you did was much greater than what some male kings did.
        
        Hatshepsut (meaning: one of the most prominent noble women; 1508-1458 BC) was the fifth pharaoh of the Eighteenth Dynasty in ancient Egypt. Egyptologists consider her one of the most successful pharaohs, holding the title longer than any other woman in Egyptian families. Her reign was distinguished by the strength of the army, construction activity, and the great sea voyages that she sent to trade with neighboring countries. She is the eldest daughter of the Egyptian Pharaoh, King Thutmose I, and her mother, Queen Ahmose. Her father, the king, had given birth to an illegitimate son, Thutmose II. She agreed to marry him, according to the custom of royal families, so that they would participate in rule together after his death, as a solution to the problem of having a legitimate heir.",
        character_id: character_43.id,
    )
    character_44 = Character.create(
        arabic_name: "أخناتون",
        english_name: "Akhenaten",
        arabic_info: "أخناتون (أيضًا تَهَجَّى إخناتون؛ ويعني الروح الحية لآتون) عرف أيضًا قبل العام الخامس من ملكه بـ امنحوتب الرابع. كان فرعون من الأسرة الثامنة عشرة حكم مصر لمدة 17 عاماً وتوفي ربمَّا في 1336 ق.م أو 1334 ق.م. يُشتهر بتخليه عن تعدد الآلهة المصرية التقليدية وإدخال عبادة جديدة تركزت على آتون، التي توصف أحيانًا بأنها ديانة توحيدية أو هينوثية. تمثل نقوش مبكرة آتون بالشمس، بِالمُقارَنَةِ مَع النجوم، ولاحقًا جنبت اللغة الرسمية تسمية آتون بالإله، مُعطية إياه الإِلَوهِيَّة الشمسية مكانة أعلى من مجرد كونه إله.

        بصفته فرعونًا، اشتهر أخناتون بالتخلي عن الدين التقليدي في مصر وإدخال الديانة الآتونية، أو العبادة التي تتمحور حول آتون. تختلف آراء علماء المصريات حول ما إذا كانت السياسة الدينية توحيدية مطلقة، أو ما إذا كانت أحادية، أو توفيقية، أو هينوثية. تم إزالة هذا التحول الثقافي بعيدًا عن الدين التقليدي بعد وفاته. تم تفكيك وإخفاء آثار أخناتون، وتدمير تماثيله، واستبعاد اسمه من قوائم الحكام التي جمعها الفراعنة اللاحقون.
        
        تمت استعادة الممارسات الدينية التقليدية تدريجيًا، ولا سيما في عهد خليفته توت عنخ آمون، الذي غير اسمه من توت عنخ آتون في وقت مبكر من حكمه. فشُوهت سمعة أخناتون من خلفائه فأشاروا إلى أخناتون على أنه 'العدو' أو 'ذلك المجرم' في السجلات التاريخية.
        
        كان أخناتون غير معروف في التاريخ حتى اكتشاف تل العمرانة، أو أخيتاتون، العاصمة الجديدة التي بناها لعبادة آتون في أواخر القرن التاسع عشر قبل الميلاد. علاوة على ذلك، في عام 1907، تم اكتشاف مومياء يمكن أن تكون لأخناتون من المقبرة KV55 في وادي الملوك على يد إدوارد آر أيرتون. حددت الاختبارات الجينية أن الرجل المدفون في KV55 هو والد توت عنخ آمون، ولكن تم التشكيك منذ ذلك الحين في هويته على أنه أخناتون. أثارت إعادة اكتشاف أخناتون وحفريات فلندرز بيتري المبكرة في تل العمارنة اهتمامًا عامًا كبيرًا بالفرعون وملكته نفرتيتي. وقد وُصِف بأنه 'غامض'، ولكنه وصف ايضًا بال'متعصب'، يأتي الانبهار العام والعلمي بأخناتون من علاقته بتوت عنخ آمون، والأسلوب الفريد والجودة العالية للفنون التصويرية التي أدخلها، والدين الجديد الذي حاول تأسيسه.",
        english_info: "Akhenaten (also spelled Akhenaten; meaning the living spirit of Aten) was also known before the fifth year of his reign as Amenhotep IV. He was a pharaoh from the Eighteenth Dynasty who ruled Egypt for 17 years and died perhaps in 1336 BC or 1334 BC. He is best known for abandoning traditional Egyptian polytheism and introducing a new cult centered on Aten, sometimes described as a monotheistic or henotheistic religion. Early inscriptions represented Aten with the sun, in comparison with the stars, and later the official language avoided calling Aten a god, giving him solar divinity a higher status than just being a god.

        As pharaoh, Akhenaten famously abandoned Egypt's traditional religion and introduced the Atenite religion, or worship centered around the Aten. Opinions among Egyptologists differ as to whether religious policy was absolutely monotheistic, or whether it was monotheistic, syncretic, or henotheistic. This cultural shift away from traditional religion was removed after his death. Akhenaten's monuments were dismantled and hidden, his statues destroyed, and his name excluded from lists of rulers compiled by subsequent pharaohs.
        
        Traditional religious practices were gradually restored, particularly under his successor Tutankhamun, who changed his name from Tutankhaten early in his reign. Akhenaten's reputation was distorted by his successors, who referred to Akhenaten as 'the enemy' or 'that criminal' in historical records.
        
        Akhenaten was little known in history until the discovery of Tell el-Omrana, or Akhetaten, the new capital he built for the worship of the Aten in the late 19th century BC. Furthermore, in 1907, a mummy that could be that of Akhenaten was discovered from tomb KV55 in the Valley of the Kings by Edward R. Ayrton. Genetic tests identified the man buried in KV55 as Tutankhamun's father, but his identity as Akhenaten has since been called into question. The rediscovery of Akhenaten and Flinders Petrie's early excavations at Amarna sparked great public interest in the pharaoh and his queen Nefertiti. He has been described as 'mysterious', but also as 'fanatic'. Public and scholarly fascination with Akhenaten comes from his relationship with Tutankhamun, the unique style and high quality of the pictorial arts he introduced, and the new religion he attempted to establish.",
        date_of_birth: "1336",
        date_of_death: "1334",
        sub_era_id: sub_era_6.id,
    )
    character_44.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/cc/GD-EG-Caire-Mus%C3%A9e061.JPG"), filename: 'image.jpg', content_type: 'image/jpg')
    character_44.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/cc/GD-EG-Caire-Mus%C3%A9e061.JPG"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"عائلته",
        english_title:"His family",
        arabic_content:"ولد أخناتون بإسم أمنحتب، وكان الإبن الأصغر للفرعون أمنحتب الثالث وزوجته الرئيسية تي. كان لإخناتون أخ أكبر، ولي العهد تحتمس، الذي تم الاعتراف به باعتباره وريث أمنحتب الثالث. وكان لإخناتون أيضًا أربع أو خمس أخوات: سات امون، حنوت انيب، إيست، نيبيتة  وربما بكت آتون. وفاة الأمير تحتمس المبكر، ربما في العام الثلاثين لحكم أمنحتب الثالث، كان يعني أن أخناتون كان التالي في تولي العرش.
        كان أخناتون متزوجًا من نفرتيتي التي كانت الزوجة الملكية العظيمة  التوقيت الدقيق لزواجهما غير معروف، لكن النقوش الموجودة في مشاريع بناء الفرعون تشير إلى أنهما تزوجا إما قبل وقت قصير من تولي أخناتون العرش أو بعده. على سبيل المثال، يشير عالم المصريات ديمتري لابوري إلى أن الزواج تم في السنة الملكية الرابعة لإخناتون. ومن المعروف أيضًا من النقوش زوجة ثانوية لأخناتون تدعى كيا. ويرى بعض علماء المصريات أنها اكتسبت أهميتها باعتبارها أم توت عنخ آمون. قرينات أخناتون الأخريات هن ابنة حاكم إنيشاسي شاتيا وابنة أخرى للملك البابلي بورنا بورياش الثاني.",
        english_content:"",
        character_id: character_44.id,
    )
    CharacterSection.create(
        arabic_title:"حياته المبكرة",
        english_title:"His early life",
        arabic_content:"لا يعرف علماء المصريات سوى القليل جدًا عن حياة أخناتون عندما كان مازال اميرًا. اقترح دونالد بي ريدفورد أن اخناتون وُلد قبل العام الخامس والعشرين لحكم والده أمنحتب الثالث (1363-1361 قبل الميلاد)، استنادًا إلى ولادة ابنة أخناتون الأولى، ميريت آتون، والتي من المحتمل أنها وُلدت في وقت مبكر جدًا من حكمه.
        عُثِر على الإشارة الوحيدة لاسمه، على أنه 'ابن الملك أمنحتب'، على سجل النبيذ في قصر ملكاتا لأمنحتب الثالث، حيث اقترح بعض المؤرخين أن أخناتون وُلد هناك. ويؤكد آخرون أنه ولد في منف حيث تأثر أثناء نشأته بعبادة إله الشمس رع التي كانت تُمارس في هليوبوليس. ومع ذلك، ذكر ريدفورد وجيمس ك. هوفماير أن عبادة رع كانت منتشرة على نطاق واسع وتأسست في جميع أنحاء مصر لدرجة أن أخناتون كان من الممكن أن يتأثر بعبادة الشمس حتى لو لم ينشأ حول هليوبوليس.
        حاول بعض المؤرخين تحديد من كان معلم أخناتون في شبابه، واقترحوا الكتبة هيكاروشو أو ميري رع الثاني، أو المعلم الملكي أمنموتب، أو الوزير ابيريل. الشخص الوحيد الذي نعرفه على وجه اليقين خدم الأمير هو بارنفر، الذي يذكر قبره هذه الحقيقة.
        يشير عالم المصريات سيريل ألدريد إلى أن الأمير أمنحتب (اخناتون) ربما كان رئيس كهنة بتاح في منف، على الرغم من عدم العثور على دليل يدعم ذلك. من المعروف أن شقيق أمنحتب، ولي العهد الأمير تحتمس، كان يشغل هذا الدور قبل وفاته. ولو ورث أمنحتب جميع أدوار أخيه تمهيدًا لاعتلائه العرش، فربما أصبح رئيسًا للكهنة بدلاً من تحتمس. يقترح العالم ألدريد أن ميول أخناتون الفنية غير العادية ربما تكونت خلال الفترة التي قضاها في خدمة بتاح، الإله الراعي للحرفيين، والذي كان يُشار إلى كاهنه الأكبر أحيانًا باسم 'أعظم مديري الحرفة'.",
        english_content:"Egyptologists know very little about Akhenaten's life when he was still a prince. Donald B. Redford has suggested that Akhenaten was born before the twenty-fifth year of his father Amenhotep III's reign (1363–1361 BC), based on the birth of Akhenaten's first daughter, Meret Aten, who was likely born very early in his reign.
        The only reference to his name, as 'son of King Amenhotep', was found on a wine register in the Malkata Palace of Amenhotep III, where some historians have suggested that Akhenaten was born. Others confirm that he was born in Memphis, where he was influenced during his upbringing by the worship of the sun god Ra, which was practiced in Heliopolis. However, Redford and James K. Hoffmeyer argues that the worship of Ra was so widespread and established throughout Egypt that Akhenaten could have been influenced by the cult of the sun even if he had not grown up around Heliopolis.
        Some historians have tried to determine who was Akhenaten's teacher in his youth, and have suggested the scribes Hekaroshu or Merre II, the royal teacher Amenmutep, or the vizier Aberil. The only person we know for certain who served the prince is Barnfer, whose grave mentions this fact.
        Egyptologist Cyril Aldred suggests that Prince Amenhotep (Akhenaten) may have been the High Priest of Ptah in Memphis, although no evidence has been found to support this. Amenhotep's brother, Crown Prince Thutmose, is known to have held this role before his death. If Amenhotep had inherited all of his brother's roles in preparation for his accession to the throne, he might have become high priest instead of Thutmose. Scholar Aldred suggests that Akhenaten's unusual artistic inclinations may have been shaped during his time in the service of Ptah, the patron god of craftsmen, whose high priest was sometimes referred to as 'the greatest of the craftsmen'.",
        character_id: character_44.id,
    )
    character_45 = Character.create(
        arabic_name: "توت عنخ آمون",
        english_name: "Tutankhamun",
        arabic_info: "توت عنخ آمون هو أحد فراعنة الأسرة المصرية الثامنة عشر في تاريخ مصر القديم، وكان فرعون مصر من 1334 ق.م إلى 1325 ق.م. يعدّ توت عنخ آمون من أشهر الفراعنة لأسباب لا تتعلق بإنجازات حققّها أو حروب انتصر فيها كما هو الحال مع الكثير من الفراعنة؛ وإنما لأسباب أخرى تعدّ مهمة من الناحية التاريخية ومن أبرزها هو اكتشاف مقبرته وكنوزه بالكامل دون أي تلف. واللغز الذي أحاط بظروف وفاته إذ اعتبر الكثير وفاة فرعون في سن مبكرة جدًا أمرًا غير طبيعي وخاصة مع وجود آثار لكسور في عظمي الفخذ و‌الجمجمة، وزواج وزيره من أرملته من بعد وفاته وتنصيب نفسه فرعونًا. كل هذه الأحداث الغامضة، والاستعمال الكثيف لأسطورة لعنة الفراعنة المرتبطة بمقبرة توت عنخ أمون التي استخدمت في الأفلام وألعاب الفيديو جعلت من توت عنخ آمون أشهر الفراعنة لألغاز وأسئلة لا تزال بلا جواب، اعتبرها البعض من أقدم الاغتيالات في تاريخ الإنسانية. توفي توت عنخ أمون صغير السن ودفن في مقبرته -مقبرة 62 - في وادي الملوك.

        كان توت عنخ أمون بعمر التاسعة عندما أصبح فرعون مصر واسمه باللغة المصرية القديمة تعني 'الصورة الحية للإله آمون'، كبير الآلهة المصرية القديمة. عاش توت عنخ آمون في فترة انتقالية في تاريخ مصر القديمة حيث أتى بعد إخناتون الذي حاول توحيد آلهة مصر القديمة في شكل الإله الواحد الأحد. وتم في عهده العودة إلى عبادة آلهة مصر القديمة المتعددة. تم اكتشاف قبره عام 1922 في وادي الملوك من قبل عالم الآثار البريطاني هوارد كارتر. وأحدث هذا الاكتشاف ضجة إعلامية واسعة النطاق في العالم.",
        english_info: "Tutankhamun is one of the pharaohs of the Eighteenth Dynasty in the history of ancient Egypt. He was the Pharaoh of Egypt from 1334 BC to 1325 BC. Tutankhamun is considered one of the most famous pharaohs for reasons that are not related to the achievements he achieved or the wars he won, as is the case with many pharaohs. But for other reasons that are important from a historical perspective, the most prominent of which is the discovery of his entire tomb and treasures without any damage. And the mystery surrounding the circumstances of his death, as many considered the death of Pharaoh at a very young age to be unnatural, especially with traces of fractures in the thigh bones and skull, and his minister marrying his widow after his death and installing himself as Pharaoh. All these mysterious events, and the extensive use of the legend of the curse of the pharaohs associated with Tutankhamun’s tomb, which was used in films and video games, made Tutankhamun the most famous pharaoh. Mysteries and questions remain unanswered. Some considered it one of the oldest assassinations in the history of humanity. Tutankhamun died young and was buried in his tomb - Tomb 62 - in the Valley of the Kings.

        Tutankhamun was nine years old when he became Pharaoh of Egypt. His name in ancient Egyptian means 'the living image of the god Amun', the chief of the ancient Egyptian gods. Tutankhamun lived in a transitional period in the history of ancient Egypt, as he came after Akhenaten, who tried to unify the gods of ancient Egypt in the form of one single god. During his reign, a return was made to the worship of the many gods of ancient Egypt. His tomb was discovered in 1922 in the Valley of the Kings by British archaeologist Howard Carter. This discovery caused a widespread media sensation around the world.",
        date_of_birth: "1341",
        date_of_death: "1232",
        sub_era_id: sub_era_6.id,
    )
    character_45.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/7/70/King_Tut_Burial_Mask.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_45.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/7/70/King_Tut_Burial_Mask.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"حياته",
        english_title:"His life",
        arabic_content:"توت عنخ آمون ابن الملك أخناتون (أمنحتب الرابع). وقد أعلن المجلس الأعلى للآثار المصرية في شهر أبريل عام 2010 أنه بناء على اختبارات الحمض النووي المعروف أختصارا ب (بالإنجليزية: DNA) تبين أن توت عنخ آمون هو ابن الملك أخناتون.
        توت عنخ أمون أصبح ملك مصر وهو طفل بعد وفاة أخيه سمنخ كا رع، وقد تزوج من عنخ إسن أمون.
        توفي توت عنخ آمون في ظروف غامضة ومجهولة، ليحكم بعده وزيره السابق آي والذي تزوج من عنخ إسن أمون أرملة توت عنخ آمون.",
        english_content:"Tutankhamun, son of King Akhenaten (Amenhotep IV). The Egyptian Supreme Council of Antiquities announced in April 2010 that, based on DNA tests, it was found that Tutankhamun was the son of King Akhenaten.
        Tutankhamun became king of Egypt as a child after the death of his brother Smenkhkare, and he married Ankhesenamun.
        Tutankhamun died in mysterious and unknown circumstances, and his former minister, Ay, who married Tutankhamun’s widow, Ankhesenamun, ruled after him.",
        character_id: character_45.id,
    )
    CharacterSection.create(
        arabic_title:"فترة حكمه",
        english_title:"His reign",
        arabic_content:"أثناء حكم توت عنخ آمون بدأت ثورة من تل العمارنة ضد حركة الفرعون السابق أخناتون الذي نقل العاصمة من طيبة إلى عاصمته الجديدة أخت أتون بالمنيا وحاول توحيد آلهة مصر القديمة المتعددة بما فيها الإله أمون في شكل الإله الواحد آتون. في سنة 1331 ق.م أي في السنة الثالثة لحكم توت عنخ أمون الذي كان عمره 11 سنة وبتأثير من الوزير آي رفع الحظر المفروض على عبادة الآلهة.

        هناك اعتقاد سائد أن وفاة توت عنخ آمون لم تكن لأسباب مرضية وانما قد تكون جراء عملية اغتيال قام الوزير خپرخپرو رع آي بتدبيرها وهناك العديد من الأدلة التي يوردها المؤمنون بهذه النظرية منها على سبيل المثال زواج الوزير خپرخپرو رع آي من ارملة توت عنخ أمون حيث عثر على ختم فرعوني يحمل اسم آي وعنخ سون أمون أرملة توت عنخ أمون وأيضا يوجد رسالة بعثتها عنخ إسن أمون أرملة توت عنخ أمون إلى ملك الحيثيين تطلب منه إرسال أحد ابنائه لغرض الزواج بها بعد موت زوجها وقام ملك الحيثيين بارسال أحد أبناءه كي يتزوج من أرملة توت عنخ أمون ولكنه مات قبل أن يدخل أرض مصر وهناك اعتقاد انه تم اغتياله على الأرجح بتدبير من الوزير خپرخپرو رع آي الذي فيما يبدو كان يخطط للاستيلاء على عرش مصر فقام بقتل الملك توت عنخ أمون وقتل ابن ملك الحيثيين ولكن هذه فرضيات ولا يوجد دليل قاطع لإثبات كل هذه النظريات.
        
        ومن الجدير بالذكر ان الأدلة التاريخية تشير إلى وجود وزيرين لتوت عنخ أمون أحدهما آي الذي تم ذكره والأخر كان اسمه حورمحب وهناك ادلة أثرية تؤكد انه بعد وفاة توت عنخ أمون أستلم الوزير آي مقاليد الحكم لفترة قصيرة ليحل محله الوزير الثاني حورمحب الذي تم في عهده إتلاف معظم الأدلة على فترة حكم توت عنخ أمون والوزير آي وهذا يؤكد لدى البعض نظرية المؤامرة وكون وفاة توت عنخ أمون بسبب مرض الملاريا التي كانت منتشرة في الجنوب.",
        english_content:"During the rule of Tutankhamun, a revolution began from Tell el-Amarna against the movement of the former pharaoh Akhenaten, who moved the capital from Thebes to his new capital, Akhet Aten, in Minya, and tried to unify the multiple gods of ancient Egypt, including the god Amun, in the form of one god, Aten. In the year 1331 BC, that is, in the third year of the rule of Tutankhamun, who was 11 years old, and under the influence of the minister, that is, the ban imposed on the worship of the gods was lifted.

        There is a widespread belief that Tutankhamun's death was not due to medical reasons, but rather it may have been the result of an assassination operation that was arranged by Minister Heperkhamun Ra Ai. There is a lot of evidence provided by believers in this theory, including, for example, the marriage of Minister Khabar Khabar Amun to Tutankhamun's widow, where he was found. A Pharaonic seal bearing the name of Ay and Ankhson Amun, the widow of Tutankhamun. There is also a letter sent by Ankhesen Amun, the widow of Tutankhamun, to the Hittite king asking him to send one of his sons for the purpose of marrying her after the death of her husband. The Hittite king sent one of his sons to marry Tutankhamun’s widow. But he died before he entered the land of Egypt, and there is a belief that he was assassinated, most likely by the arrangement of the Minister Kheperheperu Ra Ai, who apparently was planning to seize the throne of Egypt, so he killed King Tutankhamun and killed the son of the Hittite king, but these are hypotheses and there is no conclusive evidence to prove all these theories. .
        
        It is worth noting that historical evidence indicates that there were two ministers for Tutankhamun, one of whom was Ay, who was mentioned, and the other was named Horemheb. There is archaeological evidence that confirms that after the death of Tutankhamun, the minister Ay took over the reins of power for a short period, to be replaced by the second minister, Horemheb, during whose reign most of Evidence of the period of the rule of Tutankhamun and Minister Ay, and this confirms to some the conspiracy theory that Tutankhamun’s death was due to malaria, which was widespread in the south.",
        character_id: character_45.id,
    )
    CharacterSection.create(
        arabic_title:"أسباب وفاته",
        english_title:"The reasons for his death",
        arabic_content:"لفترة طويلة كان سبب وفاة توت عنخ أمون مسألة مثيرة للجدل وكانت هناك الكثير من نظريات المؤامرة التي كانت ترجح فكرة أنه لم يمت وانما تم قتله في عملية اغتيال. في 8 مارس 2005 ونتيجة لاستخدام التصوير الحاسوبي الشريحي الثلاثي الأبعاد three-dimensional CT scans على مومياء توت عنخ أمون صرح عالم الأثار المصري زاهي حواس أنه لا توجد أية أدلة على ان توت عنخ أمون قد تعرض إلى عملية اغتيال وأضاف أن الفتحة الموجودة في جمجمته لا تعود لسبب تلقيه ضربة على الرأس كما كان يعتقد في السابق وانما تم أحداث هذه الفتحة بعد الموت لغرض التحنيط وعلل زاهي حواس الكسر في عظم الفخذ الأيسر الذي طالما تم ربطه بنظرية الإغتيال بانه نتيجة كسر في عظم الفخذ تعرض له توت عنخ أمون قبل موته وربما يكون الالتهاب الناتج من هذا الكسر قد تسبب في وفاته.
        أظهرت التحاليل الحديثة أيضًا أن عظم سقف التجويف الفمي لتوت عنخ أمون لم يكن مكتملًا وكان طول قامة توت عنخ أمون 170 سم وكان الطول العرضي لجمجمته أكبر من الطول الطبيعي مما حدى بالبعض إلى اقتراح مرض متلازمة مارفان كسبب للموت المبكر وهذه الحالة وراثية تنقل عن طريق مورثات جسمية مهيمنة.
        كان التقرير النهائي لفريق علماء الأثار المصري أن سبب الوفاة هو تسمم الدم نتيجة الكسر في عظم الفخذ الذي تعرض له توت عنخ أمون والتي أدى إلى الغنغرينا وهو عبارة عن موت الخلايا والأنسجة وتحللها نتيجة افراز إنزيمات من العضلات الميتة بسبب عدم وصول الأكسجين إليها عن طريق الدم.
        قبل هذا التقرير كانت هناك محاولات لمعرفة سبب الموت باستعمال أشعة أكس على مومياء توت عنخ أمون جرت في جامعة ليفربول وجامعة ميشيغان في 1968 وعام 1978 على التوالي وتوصلت الجامعتان إلى اكتشاف بقعة داكنة تحت جمجمة توت عنخ أمون من الخلف والذي تم تفسيره كنزيف في الدماغ مما أدى إلى انتشار فرضية أنه قد تلقى ضربة على رأسه ادت إلى نزيف في الدماغ ثم الموت.
        وفي دراسة نشرت في مارس عام 2010م أوضحت أن سبب موت توت عنخ أمون هو اصابته بمرض الملاريا ومضاعفات كسر في الساق، كما أشارت الدراسة إلى وجود بعض الأمراض الوراثية ناتجة عن خلل جينى متوارث في العائلة.",
        english_content:"For a long time, the cause of Tutankhamun's death was a controversial issue, and there were many conspiracy theories that suggested that he did not die, but was killed in an assassination. On March 8, 2005, as a result of the use of three-dimensional CT scans on Tutankhamun’s mummy, Egyptian archaeologist Zahi Hawass stated that there is no evidence that Tutankhamun had been subjected to an assassination, adding that the hole in his skull does not return. Because he received a blow to the head, as was previously believed, this hole was created after death for the purpose of mummification. Zahi Hawass explained the fracture in the left femur, which has long been linked to the assassination theory, as the result of a fracture in the femur that Tutankhamun suffered before his death, and perhaps the resulting infection was This fracture may have caused his death.
        Modern analyzes also showed that the roof bone of Tutankhamun's oral cavity was incomplete. Tutankhamun's stature was 170 cm and the transverse length of his skull was greater than the normal length, which led some to suggest Marfan syndrome as a cause of early death. This condition is hereditary and transmitted through autosomal genes. Dominant.
        The final report of the team of Egyptian archaeologists was that the cause of death was blood poisoning as a result of the fracture in the femur that Tutankhamun suffered, which led to gangrene, which is the death of cells and tissues and their decomposition as a result of the secretion of enzymes from dead muscles due to the lack of oxygen reaching them through the blood.
        Before this report, there were attempts to find out the cause of death using The hypothesis spread that he had received a blow to the head that led to a cerebral hemorrhage and then death.
        A study published in March 2010 showed that the cause of Tutankhamun’s death was that he contracted malaria and complications from a broken leg. The study also indicated the presence of some hereditary diseases resulting from a genetic defect inherited in the family.",
        character_id: character_45.id,
    )
    character_47 = Character.create(
        arabic_name: "رمسيس الثاني",
        english_name: "Ramesses II",
        arabic_info: "رمسيس الثاني (حوالي 1303 ق.م — يوليو أو أغسطس 1213 ق.م) يُشار إليه أيضًا باسم رمسيس الأكبر، كان فرعون الثالث من حكام الأسرة التاسعة عشر (حكم 1279 – 1213 ق.م). ينظر إليه على أنه الفرعون الأكثر شهرة والأقوى طوال عهد الإمبراطورية المصرية. سماه خلفاؤه والحكام اللاحقين له بالجد الأعظم. قاد رمسيس الثاني عدة حملات عسكرية إلى بلاد الشام وأعاد السيطرة المصرية على كنعان. كما قاد كذلك حملات جنوبًا إلى النوبة حيث ذهب معه اثنان من أبنائه كما لوحظ منقوشًا على جدران معبد بيت الوالي.

        نصّب رمسيس وهو في سن الرابعة عشر وليًا للعهد من قبل والده سيتي الأول. يعتقد بأنه جلس على العرش وهو في أواخر سنوات المراهقة وكما ويعرف بأنه حكم مصر في الفترة من 1291 ق.م إلى 1213 ق.م لفترة 78 عاما، وشهرين، وفقا لكلًا من مانيتون والسجلات التاريخية المعاصرة لمصر. وقيل عنه أنه قد عاش 99 عام، ولكن المُرجح أنه توفي في عمر 90 أو 91. فلو أصبح فرعون في 1279 ق.م كما يعتقد معظم علماء المصريات اليوم، لكان قد تولى العرش في عمر 31 1279 ق.م، استنادًا على تاريخ اِرتِقاءُه العَرش في موسم الحصاد الثالث يوم 27. احتفل رمسيس الثاني بأربعة عشر عيد 'سِد'  (يُحتفل به لأول مرة بعد ثلاثين عامًا من حكم الفرعون، ثم كل ثلاث سنوات) خلال فترة حكمه، وبذلك يفوق أي فرعون أخر. في وفاته، دفن في مقبرة في وادي الملوك؛ تم نقل جثته لاحقا إلى الخبيئة الملكية حيث تم اكتشافه عام 1881، والآن هي معروضة بالمتحف القومي للحضارة المصرية.
        تركزت الفترة الأولى من حكمه على بناء المدن والمعابد والمعالم الأثرية. أسس مدينة 'بي رمسيس' في دلتا النيل كعاصمته الجديدة والقاعدة الرئيسية لحملاته إلى سوريا. وقد بنيت هذه المدينة على أنقاض مدينة أواريس عاصمة الهكسوس عندما تولى الحكم، وكانت موقع المعبد الرئيسي لمجموعة. وهو معروف أيضا باسم أوزايمنديس في المصادر اليونانية، ترجمت حرفيًا إلى اليونانية لجزء من اسم تتويج رمسيس، 'حقيقة رع العظيمة، اختيار رع'.",
        english_info: "Ramesses II (ca. 1303 BC – July or August 1213 BC), also referred to as Ramesses the Great, was Pharaoh III of the Nineteenth Dynasty (r. 1279 – 1213 BC). He is seen as the most famous and powerful pharaoh throughout the Egyptian Empire. His successors and subsequent rulers called him the Great Grandfather. Ramesses II led several military campaigns into the Levant and restored Egyptian control over Canaan. He also led campaigns south into Nubia, where two of his sons went with him, as noted inscribed on the walls of the governor's house temple.

        At the age of fourteen, Ramesses was appointed crown prince by his father, Seti I. He is believed to have ascended to the throne in his late teens and is known to have ruled Egypt from 1291 BC to 1213 BC for a period of 78 years and two months, according to both Manetho and contemporary historical records of Egypt. It was said that he lived for 99 years, but it is likely that he died at the age of 90 or 91. If he had become pharaoh in 1279 BC, as most Egyptologists believe today, he would have assumed the throne at the age of 31, 1279 BC, based on the date of his accession to the throne. On the third harvest on the 27th. Ramesses II celebrated fourteen 'Sed' festivals (first celebrated after thirty years of the pharaoh's rule, then every three years) during his reign, more than any other pharaoh. On his death, he was buried in a tomb in the Valley of the Kings; His body was later transferred to the royal cache, where it was discovered in 1881, and is now on display at the National Museum of Egyptian Civilization.
        The first period of his rule focused on building cities, temples, and monuments. He founded the city of Ramesses in the Nile Delta as his new capital and the main base for his campaigns into Syria. This city was built on the ruins of the city of Avaris, the capital of the Hyksos when they took power, and it was the site of the main temple of the group. He is also known as Ozymendes in Greek sources, literally translated into Greek for part of Ramesses' coronation name, 'the great truth of Ra, the choice of Ra'.",
        date_of_birth: "1311",
        date_of_death: "1213",
        sub_era_id: sub_era_6.id,
    )
    character_47.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/cf/Ramses_II_British_Museum.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_47.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/cf/Ramses_II_British_Museum.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"عائلته",
        english_title:"His family",
        arabic_content:"رمسيس الثاني هو ابن الفرعون سيتي الأول والملكة تويا، وكان يُلقّب بالحاكم الشريك لوالدِه. رافقَ والده أثناء حملاته العسكرية على النوبة وبلاد الشام وليبيا وهو في عمر الرابعة عشر. قبيل سن 22 كان يقود الحملات بنفسه إلى النوبة مع أبنائه. عين رمسيس في مشاريع ترميم موسعة وبناء قصر جديد في أواريس. بعد وفاة سيتي الأول عام 1290 ق.م، تولى رمسيس الحكم. حكم رمسيس الثاني لما يقرب من 67 عام وتزوج كثيرًا من النساء، كما أنجب الكثيرين من محظيات وزوجات ثانوية. تزوج من بعض أميرات العائلة المالكة مثل نفرتاري وإست نفرت، كما تزوج من ابنة ملك خيتا وأطلق عليها الاسم المصري 'ماعت نفرو رع'، كذلك يعرف أيضًا أنه تزوج ثلاث من بناته. تقلد أولاده الذكور المناصب المُهمة في الدولة، وأهمهم ابنه، خعمواس الذي فكر والده في السنة الثلاثين من حكمه في جعله وليًا للعهد، لكنه توفي في العام 55 من حكم والده. مات أكثر أبنائه الأوائل في حياته، لهذا خلفه ابنه الثالث عشر مرنبتاح من زوجته إست نفرت على العرش، وكان قد اختاره والده وليًا للعهد بعد وفاة خمواس.",
        english_content:"Ramesses II was the son of Pharaoh Seti I and Queen Tuya, and was called the co-ruler of his father. He accompanied his father during his military campaigns in Nubia, the Levant, and Libya when he was fourteen years old. Before the age of 22, he was personally leading campaigns into Nubia with his sons. Ramesses appointed to extensive restoration projects and the construction of a new palace at Avaris. After the death of Seti I in 1290 BC, Ramesses assumed power. Ramesses II ruled for nearly 67 years and married many women, and had many concubines and secondary wives. He married some of the princesses of the royal family, such as Nefertari and Est-Nefert. He also married the daughter of the King of Kheta and gave her the Egyptian name 'Maatneferu Ra'. It is also known that he married three of his daughters. His male children held important positions in the state, the most important of whom was his son, Khaemwas, whose father thought about making him crown prince in the thirtieth year of his rule, but he died in the fifty-fifth year of his father’s rule. Most of his first sons died during his lifetime, so his thirteenth son, Merneptah, from his wife, Est-Nofret, succeeded him on the throne. His father had chosen him as crown prince after the death of Khemwas.",
        character_id: character_47.id,
    )
    CharacterSection.create(
        arabic_title:"عهده",
        english_title:"His reign",
        arabic_content:"تولى رمسيس الحكم بعد وفاة والده سيتي الأول بعد أن كان أختاره وليًا للعهد واشركه معه في إدارة الدولة. لا يعرف عمر رمسيس عندما مات والده، لكن يرجح أن يكون عمره أقل من 25 عام، إذ كان أبًا لطفلين ذهبا معه إلى بلاد النوبة كما لوحظ منقوشًا على جدران معبد بيت الوالي. لم يبدأ رمسيس عهده بنقض معاهدة الصداقة التي عقدها والده مع الحيثيين، بل وجه اهتمامه إلى توطيد حكمه فأمر بإنهاء كافة الأعمال غير المُنجزة والتي قد بدأها والده كمعبد أبيدوس. فكر بعد ذلك في استغلال مناجم الصحراء متبعًا في ذلك سياسة والده. في حوالي السنة الرابعة من عهده، ذهب بحملة إلى أطراف آسيا لتوطيد النفوذ المصري والاطمئنان على الموانئ والمواصلات. عاد بعد ذلك خلال عامه الخامس في الحكم إلى هناك معبأً جيوشه للصدام بالحيثيين وكان ذلك في معركة قادش. وذكر أن خلال عهد رمسيس الثاني، بلغ عدد أفراد الجيش المصري حوالي 100,000 رجل؛ فكانت قوة هائلة استخدمها لتعزيز النفوذ المصري.",
        english_content:"Ramesses assumed power after the death of his father, Seti I, after he chose him as crown prince and partnered with him in running the state. It is not known how old Ramses was when his father died, but it is likely that he was less than 25 years old, as he was the father of two children who went with him to Nubia, as noted inscribed on the walls of the governor’s house temple. Ramses did not begin his reign by breaking the friendship treaty that his father had concluded with the Hittites. Rather, he directed his attention to consolidating his rule, so he ordered the end of all unfinished works that his father had begun, such as the temple of Abydos. He then thought about exploiting desert mines, following his father's policy. In about the fourth year of his reign, he went on a campaign to the outskirts of Asia to consolidate Egyptian influence and check on ports and transportation. He then returned there during his fifth year of rule, mobilizing his armies to clash with the Hittites, and that was in the Battle of Kadesh. He stated that during the reign of Ramesses II, the number of members of the Egyptian army reached about 100,000 men. It was a tremendous force that he used to strengthen Egyptian influence.",
        character_id: character_47.id,
    )
    CharacterSection.create(
        arabic_title:"الحملات والمعارك",
        english_title:"Campaigns and battles",
        arabic_content:"قاد رمسيس الثاني عدة حملات شمالاً إلى بلاد الشام، وفي معركة قادش الثانية في العام الرابع من حكمه (1274 ق.م.)، قامت القوات المصرية تحت قيادته بالاشتباك مع قوات مُواتالّيس ملك الحيثيين استمرت لمدة خمسة عشر عاما ولكن لم يتمكن أي من الطرفين هزيمة الطرف الآخر. وبالتالي ففي العام الحادي والعشرين من حكمه (1258 ق.م.)، أبرم رمسيس الثاني معاهدة بين مصر والحيثيين مع خاتوشيلي الثالث، وهي أقدم معاهدة سلام في التاريخ.

        رمسيس الثاني يهاجم الأفارقة
        قاد رمسيس الثاني أيضاً عدة حملات جنوب الشلال الأول إلى بلاد النوبة، وقد أنشأ رمسيس مدينة (بر رعميسو) في شرق الدلتا ومنها أدار معاركه مع الحيثيين وقد إدعى البعض أنه قد إتخذها عاصمة جديدة للبلاد وهذا بالطبع غير صحيح فلقد كانت عاصمة البلاد في مكانها في طيبة وأعظم ما ترك من معابد وآثار تركها هناك. وقد كان رمسيس الثاني متميز في فنون القتال والحروب وكان ذكى يفكر وياتى بالحل في نفس اللحظة وقد كان ماهرا أيضا في ركوب الخيل والقتال بالسيوف والمبارزة ورمى السهام وقد كان أيضا طيبا ذا روح أخلاقية ومحب لشعبه.",
        english_content:"Ramesses II led several campaigns north to the Levant, and in the Second Battle of Kadesh in the fourth year of his reign (1274 BC), the Egyptian forces under his command clashed with the forces of Muthalis, king of the Hittites, and continued for fifteen years, but neither side was able to defeat them. the other party. Consequently, in the twenty-first year of his reign (1258 BC), Ramesses II concluded a treaty between Egypt and the Hittites with Khatushili III, which is the oldest peace treaty in history.

        Ramesses II attacks the Africans
        Ramesses II also led several campaigns south of the First Cataract into Nubia. Ramesses established the city of Bar Ramessu in the eastern Delta, and from there he conducted his battles with the Hittites. Some claimed that he had made it the new capital of the country. This is of course not true, as the country’s capital was in its place in Thebes. The greatest temples and monuments he left behind were there. Ramesses II was distinguished in the arts of combat and warfare. He was intelligent, thought, and came up with a solution at the same moment. He was also skilled at riding horses, fighting with swords, fencing, and throwing arrows. He was also kind, had a moral spirit, and loved his people.",
        character_id: character_47.id,
    )
    CharacterSection.create(
        arabic_title:"وفاته",
        english_title:"His death",
        arabic_content:"دفن الملك رمسيس الثاني في وادي الملوك، في المقبرة kv7، إلا أن مومياؤه نُقلت إلى خبيئة المومياوات في الدير البحري، حيث اكتُشفت عام 1881م بواسطة جاستون ماسبيرو ونقلت إلى المتحف المصري بالقاهرة بعد خمس سنوات، كان رمسيس يبلغ ارتفاع قامته 170 سم، والفحوص الطبية على موميائه تظهر آثار شعر أحمر أو مخضب، ويعتقد أنه عانى من روماتيزم حاد في المفاصل في سنين عمره الأخيرة، وكذلك عانى من أمراض في اللثة.",
        english_content:"King Ramses II was buried in the Valley of the Kings, in cemetery KV7, but his mummy was transferred to the cache of mummies in Deir el-Bahri, where it was discovered in 1881 AD by Gaston Maspero and transferred to the Egyptian Museum in Cairo five years later. Ramses was 170 cm tall, and medical examinations were based on His mummy shows traces of red or dyed hair, and it is believed that he suffered from severe rheumatism in the joints in his last years, and also suffered from gum disease.",
        character_id: character_47.id,
    )
    CharacterSection.create(
        arabic_title:"عملية نقل تمثاله",
        english_title:"The process of transferring his statue",
        arabic_content:"تم نقل تمثال رمسيس الثاني في بداية عقد الخمسينيات ووضع بأشهر ميادين القاهرة (ميدان باب الحديد) الذي تغير اسمه إلى ميدان رمسيس، وفي 25 أغسطس عام 2006م تم نقله من ميدانه الشهير الذي يقع في وسط القاهرة أمام محطة السكة الحديد وتم وضعه في منطقة الأهرامات بمحافظة الجيزة لإجراء الترميمات عليه لمدة عام ولحين الانتهاء من إنشاء المتحف المصري الكبير.",
        english_content:"The statue of Ramses II was moved at the beginning of the 1950s and placed in Cairo's most famous square (Bab al-Hadid Square), whose name was changed to Ramses Square. On August 25, 2006, it was moved from its famous square, which is located in central Cairo in front of the railway station, and was placed in the Pyramids area in the governorate. Giza to carry out renovations for a year until the completion of the construction of the Grand Egyptian Museum.",
        character_id: character_47.id,
    )
    character_48 = Character.create(
        arabic_name: "مرنبتاح",
        english_name: "Merneptah",
        arabic_info: "مرنبتاح هو رابع ملوك الأسرة التاسعة عشر، وهو ابن الملك رمسيس الثاني من زوجته الثانية إست نفرت، وترتيبه الثالث عشر بين أبناء رمسيس، إذ أن جميع إخوته الأكبر منه قد ماتوا في حياة والدهم.

        وقد استمرت مدة حكم مرنبتاح حوالي عشر سنوات من عام 1213 ق.م إلى عام 1203 ق.م",
        english_info: "مرنبتاح هو رابع ملوك الأسرة التاسعة عشر، وهو ابن الملك رمسيس الثاني من زوجته الثانية إست نفرت، وترتيبه الثالث عشر بين أبناء رمسيس، إذ أن جميع إخوته الأكبر منه قد ماتوا في حياة والدهم.

        وقد استمرت مدة حكم مرنبتاح حوالي عشر سنوات من عام 1213 ق.م إلى عام 1203 ق.م",
        date_of_birth: "1213",
        date_of_death: "1202",
        sub_era_id: sub_era_6.id,
    )
    character_48.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c1/Louvre_042007_09.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_48.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c1/Louvre_042007_09.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"حكمه",
        english_title:"His reign",
        arabic_content:"قام مرنبتاح بعدة حملات عسكرية خلال فترة حكمه. ففى العام الخامس من حكمه قام بحملة على الليبيين لمساعدتهم شعوب البحر على غزو مصر من الغرب وانتصر عليهم.

        كان مرنبتاح متقدماً في السن عندما تولى الحكم فكان في حوالي الستين أو السبعين من عمره. وقام بنقل العاصمة من «بر مسيس» عاصمة مصر في عهد أبيه إلى ممفيس، حيث شيد قصر ملكى بجوار معبد بتاح، وتم اكتشاف ذلك القصر في عام 1915 م بواسطة بعثة متحف جامعة بنسلفانيا الأمريكية.",
        english_content:"Merneptah carried out several military campaigns during his rule. In the fifth year of his rule, he launched a campaign against the Libyans for helping the Sea Peoples invade Egypt from the west, and he defeated them.

        Merneptah was old when he assumed power, as he was about sixty or seventy years old. He moved the capital from Bar Messis, the capital of Egypt during the reign of his father, to Memphis, where he built a royal palace next to the Temple of Ptah. This palace was discovered in 1915 AD by the American University of Pennsylvania Museum expedition.",
        character_id: character_48.id,
    )
    CharacterSection.create(
        arabic_title:"آثاره",
        english_title:"His effects",
        arabic_content:"حصل مرنبتاح على معظم الأحجار التي يحتاج إليها لمنشآته بالسطو على أحجار الأبنية الأخرى، وقد استخدم ظهر نصب حجري أقامه أمنحتب الثالث في تسجيل نبأ إحدى الأزمات الكبرى التي حدثت له في مدة حكمه، فقد كانت شعوب جزر شرق وشمال شرق البحر المتوسط التي طردت من ديارها في زمن حرب طروادة تركب البحر باحثة عن السطو أو مكان تستقر فيه، وصد مرنبتاح محاولتهم لغزو شمال شرق الدلتا في السنة الخامسة من حكمه.",
        english_content:"Merneptah obtained most of the stones he needed for his facilities by stealing stones from other buildings. He used the back of a stone monument erected by Amenhotep III to record the news of one of the major crises that happened to him during his rule. The peoples of the islands of the eastern and northeastern Mediterranean were expelled from their homes in At the time of the Trojan War, the Trojans were riding the sea searching for robbery or a place to settle, and Merneptah repelled their attempt to invade the northeastern Delta in the fifth year of his reign.",
        character_id: character_48.id,
    )
    CharacterSection.create(
        arabic_title:"لوحة مرنبتاح",
        english_title:"Merneptah's painting",
        arabic_content:"اكتشفت هذه اللوحة عام 1896 على يد عالم المصريات الأنجليزي «فليندرز بيتري» في معبد مرنبتاح الجنائزى وتعد الأولى من نوعها في التاريخ المصري القديم

        بلغ ارتفاع اللوحة 310 سنتيمتر وعرضها 160 سنتيمتر وسُمكها 32 سنتيمتر، وكانت أساساً لمعبد الموتى لأمينوفيس الثالث من الأسرة الثامنة عشر ومكتوب على خلفيتها تقرير عن المنشآت التي قام بها الملك في غرب طيبة وفي سوليب والأقصر والكرنك. وفي عهد العمارنة أزيل جزء من الصيغة المنحوتة عليها، واستخدمها الفرعون سيتوس الأول من الأسرة التاسعة عشر بعد ترميمها كلوحة تذكارية للإله آمون. توجد على مقدمتها وعلى خلفيتها رسماً مزدوجاً يظهر فيه الإله آمون رع واقفاً في الوسط، وفي نصف الصورة إلى اليمين يقدم الملك أمينوفيس الثالث ماءً بارداً «قبحو» ونبيذ «يرب» إلى أمون رع ويتبعه الإله خنس. في نصف الصورة الآخر إلى اليسار يُرى مرنبتاح يستقبل السيف المقوس 'شيبش' من أمون رع، وتتبعه الآلهة موت. في الكتابة على هذا المشهد يقول آمون رع",
        english_content:"This painting was discovered in 1896 by the English Egyptologist Flinders Petrie in the funerary temple of Merneptah and is considered the first of its kind in ancient Egyptian history.

        The height of the painting was 310 centimeters, its width was 160 centimeters, and its thickness was 32 centimetres. It was the basis of the Temple of the Dead of Amenophis III of the Eighteenth Dynasty. On its back was written a report on the constructions carried out by the king in western Thebes, in Solep, Luxor, and Karnak. During the Amarna era, part of the formula carved on it was removed, and Pharaoh Setos I of the Nineteenth Dynasty used it after restoration as a memorial plaque for the god Amun. On its front and back there is a double drawing in which the god Amun-Ra appears standing in the middle, and in the half of the picture to the right, King Amenophis III offers cold water (ugliness) and wine (yerb) to Amun-Ra, followed by the god Khenes. In the other half of the picture to the left, Merneptah is seen receiving the curved sword 'Shebesh' from Amun Ra, followed by the god Mut. In writing on this scene, Amun Ra says",
        character_id: character_48.id,
    )
    CharacterSection.create(
        arabic_title:"مقبرته",
        english_title:"His tomb",
        arabic_content:"دفن مرنبتاح في مقبرته بوادى الملوك وهي المقبرة رقم 8 بوادي الملوك، وقد نقش على الممر المنحدر بمسافة 80 متر داخل المقبرة حتى حجرة الدفن نصوص من كتاب البوابات.

        واكتشفت مومياؤه في خبيئة بمقبرة أمنحوتب الثاني مع ثمانية عشر مومياء أخرى عام 1898 م بواسطة فيكتور لوريت مما يدل على انها نقلت إليها، ومن فحص مومياؤه تبين انه كان يعانى من التهاب المفاصل وتصلب الشرايين في أواخر أيامه. طول المومياء 1.71 متر ويتبين من موميائه أنه كان أصلع الرأس إلا من بضع شعيرات قليلة، وملامحه قريبة من ملامح أبيه رمسيس ولكن قياسات جمجمته مشابهة لجمجمة جده سيتي الأول.",
        english_content:"Merneptah was buried in his tomb in the Valley of the Kings, which is Tomb No. 8 in the Valley of the Kings. Texts from the Book of Gates were engraved on the sloping corridor 80 meters inside the tomb up to the burial chamber.

        His mummy was discovered in a cache in the tomb of Amenhotep II, along with eighteen other mummies, in 1898 AD by Victor Loret, which indicates that it was transferred to it. An examination of his mummy revealed that he was suffering from arthritis and atherosclerosis in his late days. The length of the mummy is 1.71 meters, and it is clear from his mummy that he had a bald head except for a few hairs, and his features are close to those of his father Ramesses, but the measurements of his skull are similar to the skull of his grandfather Seti I.",
        character_id: character_48.id,
    )
    character_49 = Character.create(
        arabic_name: "رمسيس الثالث",
        english_name: "Ramesses III",
        arabic_info: "وسر-معت-رع-مري-إمن (المعروف باسم رمسيس الثالث أو رعمسيس الثالث) كان ثاني ملوك الأسرة العشرين في مصر القديمة. يعتقد أنه حكم من 1186 إلى 1155 قبل الميلاد، وينظر إليه باعتباره آخر ملك عظيم في المملكة الحديثة يمارس سلطة كبيرة على كامل مصر. شهد عهده الطويل تراجع القوة السياسية والاقتصادية المصرية، ويرجع ذلك لسلسلة من الغزوات والمشكلات الاقتصادية الداخلية التي ابتلي بها أيضًا سابقوه. كما وصف بأنه «الفرعون المحارب» بسبب استراتيجياته العسكرية القوية. تمكن رمسيس من هزم الغزاة المعروفين باسم 'شعوب البحر'، الذين تسببوا في تدمير الحضارات والإمبراطوريات الأخرى المجاورة. كان قادرا على إنقاذ مصر من الانهيار في الوقت الذي سقطت فيه العديد من الإمبراطوريات خلال انهيار العصر البرونزي. ومع ذلك، فإن الأضرار التي سببتها الغزوات أدت إلى إضعاف مصر.

        كان رمسيس الثالث ابن ست ناختي والملكة تي مرن إسي. اغتيل رمسيس في مؤامرة بقيادة واحدة من زوجاته الثانوية (تيي)، وابنهما بينتاور، ومجموعة من كبار المسؤولين.",
        english_info: "Sir-Ma'at-Ra-Meri-Imn (known as Ramesses III or Ramesses III) was the second king of the Twentieth Dynasty in ancient Egypt. He is believed to have ruled from 1186 to 1155 BC, and is viewed as the last great king of the New Kingdom to exercise significant authority over all of Egypt. His long reign saw the decline of Egyptian political and economic power, due to a series of invasions and internal economic problems that also plagued his predecessors. He was also described as a 'warrior pharaoh' because of his powerful military strategies. Ramesses managed to defeat the invaders known as the 'Sea Peoples', who wreaked havoc on other nearby civilizations and empires. He was able to save Egypt from collapse at a time when many empires had fallen during the collapse of the Bronze Age. However, the damage caused by the invasions weakened Egypt.

        Ramesses III was the son of Set-Nakhte and Queen Ti-mern-esi. Ramesses was assassinated in a conspiracy led by one of his secondary wives (Tiya), their son Pentaur, and a group of senior officials.",
        date_of_birth: "1186",
        date_of_death: "1155",
        sub_era_id: sub_era_6.id,
    )
    character_49.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/1/1b/RamessesIII-KhonsuTemple-Karnak.png"), filename: 'image.jpg', content_type: 'image/jpg')
    character_49.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/1/1b/RamessesIII-KhonsuTemple-Karnak.png"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"أسماؤه",
        english_title:"His names",
        arabic_content:"رمسيس الثالث له اسمان رئيسيان، يظهران إلى اليسار، ويكتبان بالعربية كالتالي: وسر-معت-رع-مري-إمن، رع-مس-س-هيكاع-إوُنو. ويعني القوي بماعت ورع، محبوب آمون، حمله رع، حاكم أون.",
        english_content:"Ramesses III has two main names, which appear on the left, and are written in Arabic as follows: Weser-Maat-Ra-Meri-Imn, Ra-Mes-S-Heka-Eunu. The powerful Maat means Ra, beloved of Amun, carried by Ra, ruler of On.",
        character_id: character_49.id,
    )
    CharacterSection.create(
        arabic_title:"السياسية الداخلية",
        english_title:"Internal politics",
        arabic_content:"ابن الملك ست ناختي وزوج الملكة إيزيس، خلال ثلاثين عاماً من حكمه واصل ما بدأه والده في السنوات السابقة لحكمه، وذلك بهدف وضع حد للفوضى بعد وفاة (ست ناختي). اهتم رمسيس الثالث بإعادة تنظيم الإدارة وتوقيع اتفاقيات للسلام، وإعادة العبادة على الطريق الصحيح، والفساد الذي كان يفكك البلاد. هذا الإصلاح تم عن طريق التقسيم الإداري إلى طبقات: مسئولون البلاط ومسئولون المحافظات والعسكريون والعمال.

        تعافي اقتصاد البلاد بسرعة بفضل الضرائب الضخمة التي وصلت من المدن النوبية والأسيوية ودخلت التجارة الخارجية مرحلة حيوية كاملة، وصولاً إلى الأراضي المصرية (وخاصة بلاد بونت) منتجات أنيقة وباهظة الثمن وكان عليها إقبال شديد من قبل المجتمع. هذا التطور والتنمية الاقتصادية بفرض التعافي من حُمى البناء وارتفاع المعابد الجديدة واثراء الموجودة والقائمة.",
        english_content:"The son of King Setnakhty and husband of Queen Isis, during the thirty years of his rule, he continued what his father had begun in the years preceding his rule, with the aim of putting an end to the chaos after the death of Setnakhty. Ramesses III was interested in reorganizing the administration, signing peace agreements, restoring worship to the right path, and eliminating the corruption that was disintegrating the country. This reform was achieved through the administrative division into classes: court officials, provincial officials, military personnel, and workers.

        The country's economy recovered quickly thanks to the huge taxes that arrived from the Nubian and Asian cities, and foreign trade entered a full vital stage, bringing elegant and expensive products to Egyptian lands (especially the country of Punt) and they were in great demand by society. This development and economic development requires recovery from the construction fever, the rise of new temples, and the enrichment of existing ones.",
        character_id: character_49.id,
    )
    CharacterSection.create(
        arabic_title:"السياسية الخارجية",
        english_title:"Foreign policy",
        arabic_content:"في عهد رمسيس الثالث اختفت الإمبراطورية الحيثية والكيانات السياسية الأخرى الأقل أهمية، وقد تأثرت كل الشرق الأدني، ولكن دون التدخل الحازم من رمسيس الثالث ومصر فقدت سيادتها كما في عهد الهكسوس. وركز رمسيس الثالث على استعادة الهيمنة المصرية في السياسية الخارجية كما كان في السابق. الموقف المعقد الذي كانت تعيشه آسيا، كان يتطلب رد قوى من الجانب المصري: شعوب البحر انتهوا مع المملكة الحثية وأيضاً احتلت قبرص وبلاد نارينا. وتلقت المقاطعة المصرية لدى كنعان غارات مستمرة من هؤلاء الغزاة، والتي يمكن أن تصل إلى مصر نفسها.

        وفي خلال السنوات الأولي من حكمه، تلقت منطقة دلتا النيل زيادة في عدد المهاجرين إليها بسبب البحث عن حياة أفضل. وكان رمسيس الثالث يواجه مجموعتين من الشعوب الهندوأوروبية الذين توجهوا إلى الدلتا. في السنة الثامنة من حكمه، غزت شعوب البحر مثل بيليست ودين ين وشردان والمشواش من البحر، وغزت تيكر مصر عن طريق البر والبحر. وقد هزمهم رمسيس الثالث في معركتين كبيرتين برية وبحرية. على الرغم مما أطلق عليهم المصريون بأنهم بحارة فقراء، إلا أنهم قاتلوا بعناد. واصطف رعمسيس على الشواطئ بصفوف من الرماة الذين استمروا في إلقاء وابل مستمر من السهام في سفن العدو عندما حاولوا الهبوط على ضفاف النيل. بعدها هاجمت البحرية المصرية باستخدام خطافات الاشتباك لسحب سفن العدو. في القتال الوحشي اليدوي الذي أعقب ذلك هُزمت شعوب البحر تمامًا. وبجانب تعزيز الحدود الفلسطينية كان كافياً لتجنب الغزو من شعوب البحر. وبالكاد قد تعافت مصر واتجهت بنفس المصير إلى الإمبراطورية الحيثية. حيث انسحاب شعوب البحر شجع رمسيس الثالث لاستعادة السيطرة على الاستعمار الآسيوي التي اضطلع بها أسلافه. وتم استرداد سوريا جزيئاً وأربع مدن محصنة وشملت مناطق بالفرات، ولكن فرحة النصر استمرت قليلاً حيث أنه وبعد عدة سنوات فَقدت أرض كنعان إلى الأبد.
        
        أيضاً كانت الحدود الليبية خطرة في أعقاب تنظيم السكان الليبيين الرُحل الذين يعيشون في تلك المنطقة. في السنة الحادية عشر من حكمه، حرص الجيش الليبي على الاستقرار في الأراضي المصرية الخصبة، حيث اتجهوا إلى ممفيس، وبالقرب من المدينة وقعت المعركة، وانتصر الفرعون، وكانت أعداد الأسرى كبيرة، وقُدموا كالعبيد إلى المعابد. وبمجرد قمع هذا الخطر الشرقي، ذهب رمسيس تجاه ليبيا حيث كان يوجد تمرد هناك، ربما بدافع فرض الأمير الذي تلقي تعليمه في المحكمة المصرية. وهُزمت القوات الليبية، وحصل الفرعون على الكثير من الأسرى.",
        english_content:"During the reign of Ramesses III, the Hittite Empire and other less important political entities disappeared, and the entire Near East was affected, but without the decisive intervention of Ramesses III, Egypt lost its sovereignty as during the reign of the Hyksos. Ramesses III focused on restoring Egyptian dominance in foreign policy as it was before. The complex situation that Asia was experiencing required a strong response from the Egyptian side: the Sea Peoples ended up with the Hittite Kingdom and also occupied Cyprus and the country of Narina. The Egyptian province of Canaan received constant raids from these invaders, which could reach as far as Egypt itself.

        During the first years of his rule, the Nile Delta region received an increase in the number of immigrants due to the search for a better life. Ramses III was facing two groups of Indo-European peoples who headed to the Delta. In the eighth year of his reign, the Sea Peoples such as the Belist, Din-Yen, Sheridan, and Meshwash invaded from the sea, and Teker invaded Egypt by land and sea. Ramesses III defeated them in two major land and sea battles. Despite what the Egyptians called them poor sailors, they fought stubbornly. Ramesses lined the beaches with rows of archers who continued to throw a continuous barrage of arrows at the enemy ships when they tried to land on the banks of the Nile. The Egyptian Navy then attacked, using grappling hooks to tow the enemy ships. In the brutal hand-to-hand combat that followed the Sea Peoples were utterly defeated. Besides strengthening the Palestinian borders, it was enough to avoid invasion from the Sea Peoples. Egypt barely recovered and faced the same fate as the Hittite Empire. The withdrawal of the Sea Peoples encouraged Ramesses III to regain control over the Asian colonization undertaken by his predecessors. Syria was partially recovered, along with four fortified cities, including areas of the Euphrates, but the joy of victory lasted only a little, as after several years the land of Canaan was lost forever.
        
        The Libyan border was also dangerous due to the organization of the nomadic Libyan population living in that region. In the eleventh year of his rule, the Libyan army was keen to settle in the fertile Egyptian lands, so they headed to Memphis, and near the city the battle took place, and the Pharaoh was victorious, and the numbers of prisoners were large, and they were presented like slaves to the temples. Once this eastern threat was suppressed, Ramses went towards Libya where there was a rebellion, perhaps motivated by the imposition of the prince who had been educated at the Egyptian court. The Libyan forces were defeated, and the Pharaoh took many prisoners.",
        character_id: character_49.id,
    )
    character_50 = Character.create(
        arabic_name: "بسوسنس الأول",
        english_name: "Psusennes I",
        arabic_info: "بسوسنس الأول، (بالإنجليزية: Psusennes I)، (باسبا خع ننو). هو ثالث ملوك الأسرة الحادية والعشرون، 1039 ق.م. – 990 ق.م. وحكم مصر من تانيس في شرق الدلتا. وقام بحماية الحدود المصرية ضد أي هجوم أجنبي. وقد بنى بسوسنس معبدا لثالوث طيبة، في تانيس، وقصورا ملكية، بالإضافة إلى مقبرته الملكية الثرية. وكان ثالوث طيبة يتكون من الرب أمون وزوجته موط وابنهم خونسو.

        وقد تعرف العالم على الفرعون بسوسنس بعد اكتشاف مقبرته من قبل الفرنسي البروفيسور بيير مونتيه في سنة 1940م والتي وجدت بكامل كنوزها ولم تتعرض للنهب ، ولحجم الفضة التي عثر عليها بمقبرته سمي بالفرعون الفضي، وكان هذا الاكتشاف سيشكل حدثا هاما مثل حدث اكتشاف مقبرة توت عنخ آمون لولا أن توقيت هذا الاكتشاف كان على أعتاب الحرب العالمية الثانية فلم ينل التغطية والاهتمام كما حدث عند اكتشاف مقبرة توت عنخ آمون.",
        english_info: "Psusennes I (Psusennes I). He is the third king of the Twenty-first Dynasty, 1039 BC. – 990 BC. He ruled Egypt from Tanis in the eastern Delta. The Egyptian border protection against any foreign attack. Psusennes built a temple for the Theban Trinity in Tanis, and royal palaces, in addition to his rich royal tomb. The Theban triad consisted of the god Amun, his wife Mut, and their son Khonsu.

        The world learned about the Pharaoh in Susens after the discovery of his tomb by the Frenchman, Professor Pierre Montet, in the year 1940 AD, which was found with all its treasures and had not been looted. Due to the size of the silver found in his tomb, he was called the Silver Pharaoh, and this discovery would have constituted an important event like the discovery of Tutankhamun’s tomb had it not been for it. The timing of this discovery was on the eve of World War II, so it did not receive the coverage and attention that happened when the discovery of Tutankhamun’s tomb.",
        date_of_birth: "1039",
        date_of_death: "1039",
        sub_era_id: sub_era_7.id,
    )
    character_50.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c0/Golden_Mask_of_Psusennes_I.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_50.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c0/Golden_Mask_of_Psusennes_I.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"الصفات الجسدية",
        english_title:"Physical characteristics",
        arabic_content:"بعد فحص الهيكل العظمي لبسوسنس الأول تم معرفة صفاته الجسدية منها أن طوله كان 166 سم ، وأنه كان قوي البنية ، ورأسه ضخم على جسده القصير ، وعينه اليمنى أعلى من عينه اليسرى ، وأنه توفي عن عمر 80 عاماً عندما كان معدل الأعمار في عصره هو 35 عاماً ، وقد وجد بعموده الفقري كسر عند الفقرة السابعة العليا شفي منه خلال حياته ، كما تم معرفة أنه عند وفاته كان يعاني من مرض الروماتيزم في الأنسجة الرابطة للعمود الفقري ، وكان فمه محدب نتيجة فقده لأسنان كثيرة.",
        english_content:"After examining the skeleton of Psusennes I, it was discovered that his physical characteristics were that his height was 166 cm, that he was of strong build, that his head was huge for his short body, that his right eye was higher than his left eye, and that he died at the age of 80 years, when the average life expectancy in his time was 35 years. A fracture at the upper seventh vertebra was found in his spine, which he recovered from during his lifetime. It was also learned that at the time of his death, he was suffering from rheumatism in the tissues connecting the spine, and his mouth was hunched as a result of the loss of many teeth.",
        character_id: character_50.id,
    )
    CharacterSection.create(
        arabic_title:"قلادة الجعران المجنح",
        english_title:"Winged scarab necklace",
        arabic_content:"قلادة في شكل الجعران المجنح، تخص الملك بسوسنس الأول، وقد حفر عليها التعويذة رقم ثلاثين من كتاب الموتى. والتي تدعو بألا يؤخذ قلب المتوفى من صاحبه، أو يعارضه أثناء المحاكمة في الحياة الأخرى. وقد عثر على أربع من هذه الدلايات على مومياء بسوسينس الأول.

        وكان العنصر الأساسي في المجموعة، جعرانا كبيرا من حجر قاتم، مركب في إطار من ذهب، وله جناحان طويلان ضيقان، يغشيهما زجاج كثير الألوان. ويقوم الجعران على 'شن'، علامة القوة الكونية، مطعمة بيشب بني اللون. أما اسم بسوسينس، وهو باسباخع إن نيوت مري آمون، بمعنى النجم المتلألئ في المدينة، حبيب آمون، فمكتوب في خرطوش. وأما سلسلة القلادة وثقالتها، فمؤلفة من خرزات من ذهب، ويشب أخضر وبني، وفلسبار سماوي.",
        english_content:"A pendant in the form of a winged scarab, belonging to King Psusnes I, on which was engraved the talisman number thirty from the Book of the Dead. Which calls for the heart of the deceased not to be taken from its owner, or to oppose him during the trial in the afterlife. Four of these pendants were found on the mummy of Psusenses I.

        The main element in the collection was a large scarab made of dark stone, mounted in a gold frame, and had two long, narrow wings covered with many-colored glass. The scarab rests on 'Shen', a sign of cosmic power, inlaid with brown jasper. As for the name of Psusenses, which is Paspakha in Newt Meri Amun, meaning the shining star in the city, beloved of Amun, it is written in a cartouche. As for the necklace chain and its weight, it is composed of gold beads, green and brown jasper, and heavenly feldspar.",
        character_id: character_50.id,
    )
    character_51 = Character.create(
        arabic_name: "أمون إم اوبت",
        english_name: "Amon Em Opet",
        arabic_info: "أمون إم اوبت، (بالإنجليزية: Amenemope)، كان ابن بسوسنس الأول والملكة موت ندجمت. اسم الميلاد لأمون إم اوبت، أو الاسم الشخصي ترجمته هي 'أمون في عيد اوبت.' وقد شغل منصب حاكم مشارك أصغر في الأعوام الأخيرة من حكم والده، حسب الأدلة من قطع من أربطة مومياء. جميع النسخ الباقية من ملخص مانيتو الخاصة به تقول بأن أمون إم اوبت حكم 9 سنوات. كانت المقابر الملكية لكل من بسوسنس الأول وأمون إم اوبت كاملتين عندما اكتشفهما عالم المصريات الفرنسي بيير مونتيه في حفرياته في تانيس في عام 1940. كانت مليئة بكنوز ضخمة تشمل أقنعة جنازئية ذهبية، توابيت وأنواع أخرى عديدة من المجوهرات. فتح مونيه مقبرة أمون إم اوبت في أبريل 1940، وكان ذلك قبل شهر من الغزو الألماني لفرنسا والبلدان الواطئة في الحرب العالمية الثانية. ولذلك، توقف العمل حتى نهاية الحرب. استأنف مونتيه حفرياته في تانيس في عام 1946. ولاحقاً نشر اكتشافاته في عام 1958م. (توفي 992 ق.م.).",
        english_info: "Amen-em-Opet (in English: Amenemope), was the son of Psusennes I and Queen Mut-Nedjemet. The birth name of Amun im Opet, or personal name, which translates to 'Amun in the feast of Opet.' He served as a junior co-ruler in the last years of his father's rule, according to evidence from fragments of mummy ligaments. All surviving copies of Manetho's summary say that Amun-im-Opet ruled for 9 years. The royal tombs of Psusennes I and Amen-im-Opet were complete when the French Egyptologist Pierre Montet discovered them in his excavations at Tanis in 1940. They were filled with huge treasures including golden funerary masks, sarcophagi and many other types of jewellery. Monet opened the tomb of Amon im Opet in April 1940, a month before the German invasion of France and the Low Countries in World War II. Therefore, work was halted until the end of the war. Montes resumed his excavations at Tanis in 1946. He later published his discoveries in 1958. (He died 992 BC).",
        date_of_birth: "1946",
        date_of_death: "1946",
        sub_era_id: sub_era_7.id,
    )
    character_51.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9e/Mask_of_Amenemope1.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_51.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9e/Mask_of_Amenemope1.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"حجرة الدفن",
        english_title:"Burial chamber",
        arabic_content:"أعلن عالم المصريات كنث كتشن أن هناك القليل من الآثار المعروفة عن أمون إم اوبت. مقبرته في تانيس كان طولها 20 قدماً وعرضها 12-15 قدماً، أي مجرد غرفة بالمقارنة بمقبرة پسوسنـِّس الأول 'في حين أن مشاريعه الأصلية الأخرى المعروفة هو مواصلة زخرفة مصلى إيزيس' عاشقة أهرامات الجيزة' وعمل إضافة على واحداً من معابد ممفيس. كان في خدمة أمون إم اوبت اثنان من كبار كهنة أمون في طيبة سمندس الثاني (لفترة وجيزة) ثم پن جيم الثاني، شقيق سمندس. لاحظ كتشن أنه 'في طيبة، كانت سلطته كملك محل نزاع منقوش عليها اسم أمون إم اوبت كفرعون واسم پن جم ككاهن أعلى.. بن-نست-طاوي، قبطان بارجة أمون في طيبة، كان في حيازته كتاب الموتى، والمؤرخ في السنة الخامسة من حكم الملك.' في مقدمة الطبعة الثالثة من الكتاب الذي يدور حول الفترة المتوسطة الثالثة في مصر، أشار كيتشن إلى أن بردية بروكلن 16.205  والتي ذكرت 'السنة 49 تتبعها السنة 4 يجب الآن أن تنسب إلى عهدي بسوسنس الأول وأمون إم اوبت، وليس إلى شوشنق الثالث وبيماي. بسبب اكتشاف ملك تانيسي جديد حكم على الأقل لمدة 10 سنوات بين سنة 39 من عهد شوشنق الثالث والسنة الأولى من عهد بامي. ونتيجة لذلك، فتجميع وثيقة هذه البردية يجب أن يرجع إلى السنة الرابعة من حكم أمون إم اوبت.

        وهناك أربع متعلقات من مقبرة أمون إم اوبت الملكية تحفظ اسمه اللامع وتشمل قلادة والعديد من الأساور. قناعة الجنائزي موجود حالياً في المتحف المصري بالقاهرة، والتي تصور الملك شاباً على عكس بسوسنـس الأول، دُفن أمون إم اوبت بقدر أقل من البذخ حيث أن 'توابيته الخشبية كانت مغطاة بأوراق ذهبية بدلاً من الفضة الصلبة' بينما 'كان يرتدي قناع مطلي بالذهب بدلاً من الذهب الخالص.' لاحقاً أُعيد دفنه في مقبرة والده بسوسنس الأول في عهد سي أمون.",
        english_content:"Egyptologist Kenneth Kitchin declared that there were few known ruins of Amun-me-opet. His tomb at Tanis was 20 feet long and 12-15 feet wide, i.e. a mere room compared to the tomb of Psusennes I. While his other well-known original projects were to continue the decoration of the chapel of Isis, “lover of the pyramids of Giza,” and to make an addition to one of the temples of Memphis. Two of Amun's high priests in Thebes, Smendus II (briefly) and then Ben-Cem II, Smendus's brother, served Amun-im-Opet. Kitchin notes that 'at Thebes, his authority as king was disputed, on which were inscribed the name of Amun-im-opet as pharaoh and the name of Ben-jem as high priest... Ben-nest-tawi, captain of the barge of Amun at Thebes, was in possession of the Book of the Dead, dated in the fifth year of his reign. the king.' In the introduction to the third edition of the book on the Third Intermediate Period in Egypt, Kitchen pointed out that the Brooklyn Papyrus 16.205 which stated 'Year 49 followed by Year 4' should now be attributed to the reigns of Psusennes I and Amun-im-Opet, and not to Shoshenq III and Pimae. Due to the discovery of a new Tanaisian king who ruled for at least 10 years between the year 39 of the reign of Shoshenq III and the first year of the Pami era. As a result, the compilation of this papyrus document must date back to the fourth year of the reign of Amun-im-Opet.

        There are four items from the royal tomb of Amun-im-Opet that preserve his illustrious name, including a necklace and several bracelets. A funerary mask currently in the Egyptian Museum in Cairo, which depicts the king as a young man. Unlike Psusennes I, Amun imopet was buried with less lavishness as his 'wooden coffins were covered with gold leaf instead of solid silver' while 'he wore a gold-plated mask instead of gold' Sincere.' Later, he was reburied in his father's tomb in Susens I during the reign of Semun.",
        character_id: character_51.id,
    )
    character_52 = Character.create(
        arabic_name: "شيشنق الأول",
        english_name: "Shoshenq I",
        arabic_info: "عنخ خبري ستب إن رع شيشنق (حكم حوالي 943–922 قبل الميلاد) كان فرعونًا مصريًا قديمًا ومؤسس الأسرة الثانية والعشرين في مصر، وتعود اصوله لقبيلة المشواش. كان شيشنق هو القائد الأعلى للجيش المصري في عهد آخر ملوك الأسرة الحادية والعشرين، بسوسنس الثاني، الذي كانت ابنته ماعت كا رع زوجة الابن الأكبر لشيشنق، الملك المستقبلي أوسركون الأول.",
        english_info: "Ankh Khepri Step Ra Sheshenq (ruled about 943–922 BC) was an ancient Egyptian pharaoh and founder of the Twenty-Second Dynasty in Egypt, and his origins go back to the Meshwash tribe. Sheshenq was the supreme commander of the Egyptian army during the reign of the last king of the Twenty-First Dynasty, Psusennes II, whose daughter Maatkare was the wife of Sheshenq's eldest son, the future King Osorkon I.",
        date_of_birth: "943",
        date_of_death: "922",
        sub_era_id: sub_era_7.id,
    )
    character_52.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/0/05/Sheshonq_II_mask2004.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_52.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/0/05/Sheshonq_II_mask2004.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"توليه العرش",
        english_title:"Accession to the throne",
        arabic_content:"وتاريخ تولية 'شيشنق' الملك لا يمكن معرفته على وجه التأكيد ولًكنه لابد قد وقع بعد عام 945 ق.م. وقد كشفت لنا اللوحة التي دون عليها «حور باسن» تاريخ أحد عجول أبيس عن تاريخ أسرة «شيشنق» ورسوخ قدمها في مصر منذ زمن طويل وقد عرفنا منها ومن غيرها من النقوش ماكان لهذه الأسرة اللوبية من نفوذ في أنحاء البلاد ، وبخاصة من الوجهة الحربية والوجهة الدينية .

        وتدل شواهد الأحوال على أنه قد تسلم مقاليد الحكم دون أية مقاومة ،- والظاهر أن طول مقام اللوبيين في مصر علّمهم كيف يستطيعون الاستيلاء على الملك دون أن يقاومهم الشعب المصري ، وذلك بالحرض الشديد على تقاليد المصريين السياسية والدينية الموروثة من أقدم عهود التاريخ. والصحيح أنه وإن كان أصله البعيد يرجع إلى ليبيا، لكن أسرته تمصًرت منذ أن استوطنت مصر من عدة أجيال سابقة وسكنوا إهناسيا المدينة، وصاروا من المواطنيين، وتقلد كثير منهم مناصب الدولة، وأظهروا فيها إخلاصآ لوطنهم مصر.",
        english_content:"The date of Sheshenq becoming king cannot be known with certainty, but it must have occurred after 945 BC. The plaque on which Hor Basin recorded the history of one of the Apis calves revealed to us the history of the Sheshenq family and its long-established presence in Egypt. We learned from it and from other inscriptions the influence that this Lubiyya family had throughout the country, especially from a military and military standpoint. Religious.

        Evidence of the circumstances indicates that he assumed the reins of power without any resistance - and it appears that the long standing of the lobbyists in Egypt taught them how they could seize the king without the Egyptian people resisting them, and that was by strongly inciting the Egyptians’ political and religious traditions inherited from the oldest eras of history. It is true that even though his distant origin goes back to Libya, his family became Egyptian since they settled in Egypt several generations ago. They inhabited the city of Ihnasia, and became citizens, and many of them held state positions, and showed there loyalty to their homeland, Egypt.",
        character_id: character_52.id,
    )
    CharacterSection.create(
        arabic_title:"نسبه",
        english_title:"His lineage",
        arabic_content:"يرجع نسب الملك شيشنق إلى أسرة من مدينة إهناسيا، وحسب لوحة حور باسن المحفوظة الآن بمتحف اللوفر والتي أقامها حور باسن وذكر فيها أجداده، فإن نسب جده الثامن الفرعون شيشنق هو: شيشنق بن نمرود بن شيشنق بن باثوت بن نبنشي بن ماواساتا بن بويو واوا.

        وكان جده الأعلى (بويو واوا) مستقرأً في خليج سرت موطن المشواش الأصلي، ولذلك عرفت أسرته لدى المهتمين بالتاريخ المصري القديم باسم الأسرة الليبية، وكذلك ينتمي بويو واوا لقبيلة المشواش الليبية، أما ابنه ماواساتا فقد انتقل إلى العيش بمدينة إهناسيا وانخرط في صفوف الكهنة حتى صار كاهن معبد مدينة إهناسيا وقد خلفه ابنه نبنشي، الذي خلفه ابنه باثوت، الذي خلفه ابنه شيشنق، والذي ورث عن أجداده وظيفة الكاهن، وصار بعد ذلك الكاهن الأعظم وقائد حامية إهناسيا وقد تزوج من (محنتو سخت) ابنة زعيم قبيلة مي، وأنجب منها نمرود، الذي تزوج من الأميرة تنتس بح، والتي أنجب منها شيشنق، فأصبح فرعون مصر ومؤسس الأسرة الثانية والعشرين، بعد أن اندمج في المجتمع المصري وعاشت أسرته فيها لمدة خمسة أجيال، وبعد أن استقر جده الرابع ماواساتا بمدينة إهناسيا.
        
        علماً بأن نمرود بن شيشنق توفي في حياة والده، الذي قام بدفنه في مكان مقدس حسب اعتقاده، وهو مدينة أبيدوس ( التي تقع بمحافظة سوهاج الآن)، وقد نهب قبره، فقام والده شيشنق الكبير بتقديم شكوى للفرعون، الذي اهتم بالشكوى لمكانته المرموقة في مدينة إهناسيا. وبالنسبة لحفيده شيشنق، والذي ورث منصب جده الكاهن الأعظم ورئيس حامية إهناسيا ورئيس قوم مي (المشواش)، بالإضافة إلى ألقاب أخرى منها 'الرئيس الأعظم المشرف على الصعيد'.
        
        استطاع شيشنق أن يتولى حكم مصر ويحمل لقب الفرعون وأسس بذلك لحكم أسرته الأسرة الثانية والعشرين في عام 950 ق.م التي حكمت قرابة قرنين من الزمان. وقد عرفه الإغريق فسموه سوساكوس. خلال حكم الأسرة الحادية والعشرون الذي دام مائة وثلاثين عامًا تقريبًا عصفت خلالها الأحداث بمصر من الداخل والخارج وعم الفساد بالدولة وأنهكت الضرائب كاهل الشعب مما أدى إلى تفكك البلاد ولم يجد الفرعون بداً من محاولة حل المشاكل سلميا واضطر من خلالها إلى مهادنة مع بني إسرائيل أيضا التي كانت قوتها تتعاظم في فلسطين تحت حكم داود في هذه الفترة كان ظهور شيشنق وتزوج من ابنة الفرعون بسوسنس الثاني آخر ملوك هذه الأسرة وأعلن قيام الأسرة الثانية والعشرين، وكان ذلك حوالي عام 940 قبل الميلاد. فالمرجح انه نجح في تولي الحكم في مصر وديا وسلميا ليس كمحتل ،في عهده كتب في إحدى الصخور في وادي الملوك بمصر أقوى المعارك التي قادها منتصرا.
        
        بالنسبة لعمر الاسرة التي اسسها شيشنق فقد خص مانِتون الأسرة الثانية والعشرين بمئة وعشرين عاما فقط، ولكن التسلسل الزمني المقبول حاليا يجعل المدة تزيد على قرنين كاملين، من 950 ق.م إلى 730 ق.م.
        
        وقد تعرف العالم على الفرعون شيشنق بعد اكتشاف مقبرته من قبل الفرنسي البروفيسور مونيته في سنة 1940م والتي وجدت بكامل كنوزها ولم تتعرض للنهب ، وكان هذا الاكتشاف سيشكل حدثا هاما مثل حدث اكتشاف مقبرة توت عنخ آمون لولا أن توقيت هذا الاكتشاف كان على أعتاب الحرب العالمية الثانية فلم ينل التغطية والاهتمام كما حدث عند اكتشاف مقبرة توت عنخ آمون.",
        english_content:"The lineage of King Sheshenq goes back to a family from the city of Ihnasia, and according to the Hor Basin plaque now preserved in the Louvre Museum, which was erected by Hor Basin and in which his ancestors were mentioned, the lineage of his eighth grandfather, Pharaoh Sheshenq, is: Sheshenq bin Nimrod bin Shishang bin Bathut bin Nabanshi bin Mawasata bin Buyo Wawa.

        His great-grandfather (Buyo Wawa) was settled in the Gulf of Sirte, the original homeland of the Meshwash, and therefore his family was known to those interested in ancient Egyptian history as the Libyan family. Buyo Wawa also belonged to the Libyan Meshwash tribe. As for his son, Mawasata, he moved to live in the city of Ihnasia and joined the ranks of the priests until he became Priest of the temple of the city of Ihnasia. He was succeeded by his son Nabanshi, who was succeeded by his son Bathut, who was succeeded by his son Sheshenq, who inherited from his ancestors the position of priest, and after that he became the high priest and commander of the garrison of Ihnasia. He married (Mahantu Sekht), the daughter of the leader of the Mai tribe, and had a son with her, Nimrod. He married Princess Tentz Bah, from whom he had a son, Sheshenq. He became Pharaoh of Egypt and the founder of the Twenty-Second Dynasty, after he integrated into Egyptian society and his family lived there for five generations, and after his fourth grandfather, Mawasata, settled in the city of Ihnasia.
        
        Knowing that Nimrod ibn Shishang died during the lifetime of his father, who buried him in a sacred place, according to his belief, which is the city of Abydos (which is located in Sohag Governorate now), and his grave was looted, so his father, Shishang the Great, filed a complaint with the Pharaoh, who took interest in the complaint due to his prestigious position in the city of Ihnasia. . As for his grandson Sheshenq, who inherited his grandfather’s position as the Grand Priest, head of the Ihnasia garrison, and head of the people of Mai (Al-Mishwash), in addition to other titles, including the Grand Chief supervising Upper Egypt.
        
        Sheshenq was able to assume the rule of Egypt and hold the title of Pharaoh, and thus established the rule of his family, the Twenty-Second Dynasty, in the year 950 BC, which ruled for nearly two centuries. The Greeks knew him and called him Susakos. During the rule of the Twenty-first Dynasty, which lasted approximately one hundred and thirty years, during which events ravaged Egypt from within and without, corruption spread throughout the state, and taxes burdened the people, leading to the disintegration of the country. The Pharaoh found no alternative to trying to solve the problems peacefully and was forced to make a truce with the Children of Israel as well, which was Its power increased in Palestine under the rule of David. During this period, Sheshenq appeared and married the daughter of the Pharaoh, Susens II, the last king of this dynasty, and announced the establishment of the Twenty-Second Dynasty. This was around the year 940 BC. It is likely that he succeeded in assuming power in Egypt amicably and peacefully, not as an occupier. During his reign, he wrote on one of the rocks in the Valley of the Kings in Egypt the strongest battles that he led victoriously.
        
        Regarding the age of the dynasty founded by Sheshenq, Manetho assigned the Twenty-Second Dynasty to only one hundred and twenty years, but the currently accepted chronology makes the period exceed two full centuries, from 950 BC to 730 BC.
        
        The world learned about Pharaoh Sheshenq after the discovery of his tomb by the Frenchman Professor Monet in the year 1940 AD, which was found with all its treasures and was not looted. This discovery would have been an important event like the discovery of Tutankhamun’s tomb had it not been for the timing of this discovery on the eve of World War II. It receives coverage and attention, as happened when the tomb of Tutankhamun was discovered.",
        character_id: character_52.id,
    )
    CharacterSection.create(
        arabic_title:"أعماله",
        english_title:"His works",
        arabic_content:"أول عمل قام به هو تعيين ابنه أوبوت كاهنا أعظم في طيبة ليضمن السيطرة على هذا المركز الهام، وبعد ذلك بدأ بتنفيذ برنامج عمراني واسع ما تزال آثاره الخالدة حتى هذا اليوم، منها بوابة ضخمة تعرف الآن باسم بوابة شيشنق وكانت تدعى في عصره ببوابة النصر وهي جزء من امتداد الجدار الجنوبي لبهو الأعمدة الشهير وقد سجل على هذه البوابة كعادة الملوك المصريين أخبار انتصاراته في فلسطين وتاريخ كهنة آمون من أبناء أسرته.

        وعلى جدار معبد الكرنك سجل شيشنق انتصاراته الساحقة على إسرائيل في فلسطين، وقد حفرت هذه الرسوم على الحائط الجنوبي من الخارج. وبهذه الفتوحات والغزوات يكون شيشنق قد وحد منطقة مصر والسودان وليبيا والشام في مملكة واحدة لأول مرة، ونقوشه تصور ما قدمته هذه الممالك من جزية بالتفصيل وبتحديد حسابي دقيق مما يؤكد أنها لم تكن مجرد دعايات سياسية طارئة كما يتضح أن شيشنق لم يضم الشام كلها فحسب وضم السودان.",
        english_content:"His first act was to appoint his son, Ubot, as high priest in Thebes to ensure control over this important center. After that, he began implementing a vast urban program whose immortal effects remain to this day, including a huge gate now known as the Sheshenq Gate, which was called in his time the Victory Gate, which is part of From the extension of the southern wall of the famous Hypostyle Hall, on this gate was recorded, as is the custom of Egyptian kings, the news of his victories in Palestine and the history of the priests of Amun, members of his family.

        On the wall of the Karnak Temple, Sheshenq recorded his crushing victories over Israel in Palestine, and these drawings were engraved on the southern wall from the outside. With these conquests and invasions, Sheshonq had united the region of Egypt, Sudan, Libya, and the Levant into one kingdom for the first time, and his inscriptions depict the tributes these kingdoms offered in detail and with precise mathematical definition, which confirms that they were not merely urgent political propaganda. It is also clear that Sheshenq did not only annex the entire Levant and included Sudan. .",
        character_id: character_52.id,
    )

    character_53 = Character.create(
        arabic_name: "بسماتيك الأول",
        english_name: "Psusennes I",
        arabic_info: "پسماتيك الأول Psamtik I أو كما يعرفه الإغريق Psammeticus ،كان أول فراعنة سايس الست، من الأسرة السادسة والعشرون. طرد الآشوريين من مصر ونقل بسماتيك الأول العاصمة إلى سايس في ذلك الوقت. قصة هيرودوت عن الدوديكارخي (حكم الإثنا عشر) وصعود بسماتيك الأول للحكم أغلب الظن أنها خيالية. من المعلوم من كتابات مسمارية أن عشرين أميراً معينين من قبل اسرحدون (ملك آشور) ومرسمين من قبل آشور بانيبال لحكم مصر. نخاو الأول، والد بسماتيك الأول، كان زعيم هؤلاء الأمراء. ويبدو أن هؤلاء الأمراء فشلوا في الحفاظ على مصر للآشوريين المكروهين من الشعب أمام هجمات النوبيين المحبوبين من الشعب، الآتين من مملكة كوش من الجنوب.",
        english_info: "Psamtik I, or as the Greeks know him Psammeticus, was the first of the six Pharaohs of Sais, from the Twenty-Sixth Dynasty. The Assyrians were expelled from Egypt and Psamtik I moved the capital to Sais at that time. Herodotus's story of the Dodearche (Rule of the Twelve) and the rise to power of Psamtik I is most likely fictional. It is known from cuneiform writings that twenty princes were appointed by Esarhaddon (king of Assyria) and appointed by Ashurbanipal to rule Egypt. Necho I, father of Psamtik I, was the leader of these princes. It seems that these princes failed to preserve Egypt for the Assyrians, who were hated by the people, in the face of the attacks of the Nubians, who were beloved by the people, coming from the Kingdom of Kush from the south.",
        date_of_birth: "600",
        date_of_death: "610",
        sub_era_id: sub_era_7.id,
    )
    character_53.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/7/71/Egypte_louvre_038.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_53.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/7/71/Egypte_louvre_038.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"تاريخه",
        english_title:"His history",
        arabic_content:"حسب المؤرخ الإغريقي هيرودوت، أن اللابيرنث (قصر التيه) الذي بناه سنوسرت الثالث من الأسرة الثانية عشر كان مقر الدوديكارخي، أي حكم الإثني عشر، والتي غالباً ما تكون تحريفاً للأمراء العشرين بعد وفاة والده. تمكن بسماتيك الأول من تحرير مصر من سيطرة الآشوريين، واستعاد رخاء مصر خلال فترة حكمه الطويلة التي امتدت 54 عامًا.

        وحد بسماتيك الأول مصر في العام الثامن من حكمه عندما أرسل أسطولاً قوياً في مارس 656 ق.م. إلى طيبة وأجبر شبنؤبت الثانية زوجة آمون على اتخاذ ابنته نيتوكريس الأولي كوريثة لها. كما دوّن في مسلة التبني نجاحه في السيطرة على طيبة، وحطم آخر مظاهر سيطرة الأسرة النوبية على مصر العليا بقيادة تنوت اماني. نيتوكريس ابنة بسماتيك الأول بقيت في منصبها في طيبة لمدة 70 عاماً من 656 ق.م. حتى وفاتها في 585 ق.م. . بعد ذلك قام إبسماتيك الأول بالعديد من الحملات ضد هؤلاء الحكام الإقليميين الذين عارضوا توحيده لمصر. أحد انتصاراته على عصابات ليبية ذكرت في مسلة من العام 10-11 من عهده في واحة الداخلة.
        
        وقد كان بسماتيك الأول فرعونا عظيمًا لمصر حيث حررها من الآشوريين. ثم أسس علاقات وطيدة مع الإغريق وشجع العديد منهم على الاستقرار في مصر، وأنشأ مستوطنات لهم وشجعهم على الانخراط في الجيش المصري. كما نشطت التجارة بين مصر واليونان في ذلك العهد، وكانت سايس مركزا تجاريا هاما لمصر مع اليونان ودول البحر الأبيض المتوسط.
        
        ويروي هيرودوت قصة عن بسماتيك الأول في الباب الثاني من كتابه، 'التواريخ'. أثناء سفره إلى مصر، سمع هيرودوت أن پْسِمّاتيخوس (بسماتيك الأول) أراد أن يعرف أصل اللغات بإجراء تجربة بطفلين رضيعين. أعطى پسماتيك الطفلين لراعي وأمره برعايتهما على ألا يتحدث إليهما على الإطلاق، على أن يعود الراعي إلى الملك لدى سماعه أول الكلمات التي ينطقها الطفلان، ليرى بأي لغة تكون. الافتراض كان أن أول الكلمات المنطوقة ستكون باللغة الجذرية التي هي أم كل اللغات الأخرى. وعندما صاح أحد الطفلين بـِكوس وهو ماد لذراعيه استنتج الراعي أن الكلمة من اللغة الفريجية لأن الكلمة كانت تعني خبز بالفريجية. وبذلك استنتجوا أن الفريجيين هم أقدم من المصريين. صحة قصة هيرودوت، مثل الكثير من قصصه، مشكوك بها.",
        english_content:"According to the Greek historian Herodotus, the Labyrinth (Palace of the Wanderings), built by Senusret III of the Twelfth Dynasty, was the seat of the Dodecarchae, meaning the rule of the Twelve, which is often a distortion of the Twentieth Princes after the death of his father. Psamtik I liberated Egypt from Assyrian control, and restored Egypt's prosperity during his long reign of 54 years.

        Psamtik I unified Egypt in the eighth year of his reign when he sent a powerful fleet in March 656 BC. To Thebes, Shepenupet II forced Amun's wife to take his daughter Nitocris I as her heir. He also recorded in the Stele of Adoption his success in controlling Thebes, and destroyed the last manifestations of the Nubian family’s control over Upper Egypt under the leadership of Tanut Amani. Nitocris, daughter of Psamtik I, remained in office in Thebes for 70 years from 656 BC. Until her death in 585 BC. . Psamtik I subsequently undertook several campaigns against those regional rulers who opposed his unification of Egypt. One of his victories over Libyan gangs was mentioned in an obelisk from the year 10-11 of his reign in the Dakhla Oasis.
        
        Psamtik I was a great pharaoh of Egypt, liberating it from the Assyrians. Then he established close relations with the Greeks, encouraged many of them to settle in Egypt, established settlements for them, and encouraged them to join the Egyptian army. Trade between Egypt and Greece was also active during that era, and Sais was an important commercial center for Egypt with Greece and the countries of the Mediterranean.
        
        Herodotus tells a story about Psamtik I in the second chapter of his book, 'The Histories'. While traveling in Egypt, Herodotus heard that Psalmitechus (Psamtich I) wanted to know the origin of languages by conducting an experiment with two infants. Psamtik gave the two children to a shepherd and ordered him to take care of them without speaking to them at all, and that the shepherd would return to the king when he heard the first words the two children spoke, to see in what language they were. The assumption was that the first words spoken would be in the root language, which is the mother of all other languages. When one of the two children shouted “Bikos” while extending his arms, the shepherd concluded that the word was from the Phrygian language because the word meant bread in Phrygian. Thus, they concluded that the Phrygians were older than the Egyptians. The veracity of Herodotus' story, like many of his stories, is questionable.",
        character_id: character_53.id,
    )
    CharacterSection.create(
        arabic_title:"وفاة بسماتيك الأول",
        english_title:"Death of Psamtik I",
        arabic_content:"وجد ملك آشور آشور أوباليط الثاني محرجا في هجوم شنه عليه ملك بابل «نبوبولاسر» في عام 610 قبل الميلاد. فاستنجد ببسماتيك الأول فرعون مصر لمساعدته ضد بابل. استجاب له بسماتيك الأول ونزح بالجيش المصري إلى المحمية العسكرية المصرية في شرق الدلتا، وهي محمية تل الدفنة لكي يعد العدة للذهاب إلى آشور. ولكن بسماتيك الأول توفي في المحمية، ويعتقد أن جسمه قد حنط هناك .

        وقد حدد يوم وفاة بسماتيك الأول عن طريق توافقه مع كسوف الشمس الذي حدث في 23 سبتمبر 610 قبل الميلاد. ومن المخطوطات أن الفرعون نخاو الثاني اعتلى عرش مصر في يوم 24 سبتمبر 610 قبل الميلاد. أي أن وفاة بسماتيك الأول قد جدثت قبل حدوث كسوف الشمس بأيام قليلة.
        
        كان كسوف الشمس كليا فوق إسبانيا وفرنسا، وظهر في مصر في هيئة كسوف جزئي في ذلك الوقت. وتصادف أن كسوف الشمس حدث في نفس الوقت الذي يتفق مع بدء عيد أمون-رع في طيبة، مما كان يعتبر من سوء الطالع. بعد وفاة بسماتيك الأول تولى إبنه نخاو الثاني عرش مصر.",
        english_content:"The King of Assyria, Ashur-uballit II, found himself embarrassed in an attack launched against him by the King of Babylon, Nabopolassar, in the year 610 BC. So he sought help from Psamtik I, Pharaoh of Egypt, to help him against Babylon. Psamtik I responded to him and evacuated the Egyptian army to the Egyptian military reserve in the eastern Delta, the Tel Dafna Protectorate, in order to prepare to go to Assyria. But Psamtik I died in the reserve, and it is believed that his body was mummified there.

        The day of Psamtik I's death was determined by its correspondence with the solar eclipse that occurred on September 23, 610 BC. Among the manuscripts is that Pharaoh Necho II ascended the throne of Egypt on September 24, 610 BC. That is, the death of Psamtik I occurred a few days before the solar eclipse occurred.
        
        The solar eclipse was total over Spain and France, and it appeared in Egypt as a partial eclipse at that time. It happened that the solar eclipse occurred at the same time as the beginning of the feast of Amun-Ra in Thebes, which was considered bad luck. After the death of Psamtik I, his son Necho II assumed the throne of Egypt.",
        character_id: character_53.id,
    )
    CharacterSection.create(
        arabic_title:"العثور على تمثال له",
        english_title:"Finding a statue of him",
        arabic_content:"في مارس 2017 عثر في حفرة في حي المطرية في مصر، التي كانت في القديم بالقرب من هليوبولس تمثال مكسور يبلغ ارتفاعه 8 متر وهو من الكوارزيت. واعتقد علماء الآثار في البدء أن التمثال لـ رمسيس الثاني، ولكن بتحري الكتابة الموجودة علي التمثال ظهر تعبير نبا مما يشير إلى بسماتيك الأول، فيكون بذلك هو أول فرعون يتخذ هذا الإسم النبتي.",
        english_content:"In March 2017, a broken statue, 8 meters high, made of quartzite, was found in a pit in the Matareya neighborhood in Egypt, which was in ancient times near Heliopolis. Archaeologists initially believed that the statue was of Ramesses II, but upon investigation of the writing on the statue, the expression “Naba” appeared, which refers to Psamtik I, and thus he was the first pharaoh to adopt this Nabataean name.",
        character_id: character_53.id,
    )
    character_54 = Character.create(
        arabic_name: "نخاو الثاني",
        english_name: "Necho II",
        arabic_info: "نخاو الثاني أو نكاو أو نيكو ملك مصر من الأسرة السادسة والعشرين (610-595 قبل الميلاد)، التي حكمت من سايس. قام نخاو بعدد من مشاريع البناء في جميع أنحاء مملكته. في عهده، وفقًا للمؤرخ اليوناني هيرودوت، أرسل نخاو الثاني رحلة استكشافية من الفينيقيين، والتي أبحرت في غضون ثلاث سنوات من البحر الأحمر حول إفريقيا إلى مضيق جبل طارق وعادت إلى مصر. قد يكون ابنه، بسماتيك الثاني، على الخلافة قد أزال اسم نخاو من المعالم الأثرية.

        لعب نخاو دورًا مهمًا في تاريخ الإمبراطورية الآشورية الحديثة، والإمبراطورية البابلية الحديثة ومملكة يهوذا. يُرجح أن نخاو الثاني هو الملك المصري المذكور في العديد من أسفار الكتاب المقدس. كان الهدف من الحملة الثانية من حملات نخاو هو الفتح الآسيوي، لاحتواء التقدم الغربي للإمبراطورية البابلية الحديثة، وقطع طريق التجارة عبر نهر الفرات. ومع ذلك، هُزم المصريون بهجوم البابليين غير المتوقع وطُردوا في النهاية من سوريا.
        
        لاحظ عالم المصريات دونالد بي. ريدفورد أن نخاو الثاني كان رجلًا عمليًا منذ البداية، ولديه خيال ربما يفوق خيال معاصريه، الذي كان من سوء حظه تعزيز الانطباع بأنه فاشل.",
        english_info: "Necho II, Necho, or Neko, king of Egypt from the Twenty-Sixth Dynasty (610-595 BC), who ruled from Sais. Necho undertook a number of building projects throughout his kingdom. During his reign, according to the Greek historian Herodotus, Necho II sent an expedition of Phoenicians, which within three years sailed from the Red Sea around Africa to the Strait of Gibraltar and back to Egypt. His son, Psammetich II, in the succession may have removed Necho's name from monuments.

        Necho played an important role in the history of the Neo-Assyrian Empire, the Neo-Babylonian Empire and the Kingdom of Judah. Necho II is likely the Egyptian king mentioned in several books of the Bible. The aim of Necho's second campaign was the Asian conquest, to contain the western advance of the Neo-Babylonian Empire and cut off the trade route across the Euphrates River. However, the Egyptians were defeated by the unexpected attack of the Babylonians and were eventually expelled from Syria.
        
        Egyptologist Donald B. Redford notes that Necho II was a practical man from the beginning, with an imagination perhaps superior to that of his contemporaries, who had the misfortune of fostering the impression that he was a failure.",
        date_of_birth: "610",
        date_of_death: "595",
        sub_era_id: sub_era_7.id,
    )
    character_54.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/0/05/Necho-KnellingStatue_BrooklynMuseum.png"), filename: 'image.jpg', content_type: 'image/jpg')
    character_54.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/0/05/Necho-KnellingStatue_BrooklynMuseum.png"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"الحملات العسكرية",
        english_title:"Military campaigns",
        arabic_content:"كان نخاو الثاني ابن بسماتيك الأول من زوجته الملكية العظيمة ميهت إن ويسخت. سمته أو اسمه الملكي وهم إيب رع يعني «تنفيذ [القلب] (أي الرغبة) [من] رع.» [19] عند صعوده، واجه نخاو الفوضى التي أحدثتها غارات الكيميريون والسكيثيين، الذين لم يدمروا آسيا غرب الفرات فحسب، بل ساعدوا البابليين أيضًا في تحطيم الإمبراطورية الآشورية. تم تقليص هذه الإمبراطورية العظيمة الآن إلى القوات والمسؤولين والنبلاء الذين تجمعوا حول جنرال متمرس في حران، والذي أخذ اسم العرش آشور أوباليط الثاني. حاول نخاو مساعدة هذه البقية فور تتويجه، لكن القوة التي أرسلها كانت صغيرة جدًا، وأجبرت الجيوش المشتركة على التراجع غربًا عبر نهر الفرات.",
        english_content:"Necho II was the son of Psamtik I and his great royal wife, Mehet-en-Weysakht. His name or royal name is Ib-Ra meaning “the execution [of the heart] (i.e., the desire) [of] Ra.” [19] Upon his ascension, Necho faced the chaos caused by the raids of the Cimmerians and Scythians, who not only devastated Asia west of the Euphrates but also helped the Babylonians smash the Assyrian Empire. This great empire was now reduced to the troops, officials and nobles gathered around an experienced general in Harran, who took the throne name Ashur-uballit II. Necho attempted to aid this remnant immediately after his coronation, but the force he sent was too small, and the combined armies were forced to retreat west across the Euphrates.",
        character_id: character_54.id,
    )
    CharacterSection.create(
        arabic_title:"نشاطه الحربي",
        english_title:"His military activity",
        arabic_content:"في عهد نخاو الثاني خسرت مصر حروبها في بلاد الشام في مواجهة البابليين وقد ثبت تاريخياً أن القوات المصرية التي أرسلها نخاو الثاني لقتال البابليين كان عددها قليل في العدة والعتاد ولكنه استطاع ان يردهم في معركة دارت على حدود رفح الحالية فيما يعرف بالحرب المصرية البابلية.",
        english_content:"During the reign of Necho II, Egypt lost its wars in the Levant against the Babylonians. It has been historically proven that the Egyptian forces sent by Necho II to fight the Babylonians were small in number and equipment, but he was able to repel them in a battle that took place on the current borders of Rafah in what is known as the Egyptian-Babylonian War.",
        character_id: character_54.id,
    )
    character_55 = Character.create(
        arabic_name: "نختنبو الثاني",
        english_name: "Nekhtharheb II",
        arabic_info: "نختنبو الثاني ويُعرف أيضاً باسم نقطانب الثاني (الاسم باللغة المصرية نخت حورب أو نخت حر حب يعني «قويٌ هو حورس حبيت»)، حكم بين أعوام 360-342 قبل الميلاد كان الملك الثالث والأخير في الأسرة المصرية الثلاثين بالإضافة إلى كونه آخر حاكم لمصر القديمة من السكان الأصليين.

        تحت حكم نختنبو الثاني، ازدهرت مصر. خلال فترة حكمه، طور الفنانون المصريون أسلوبًا فنيا ترك علامة مميزة على نقوش المملكة البطلمية. مثل سلفه غير المباشر نختنبو الأول، أظهر نختنبو الثاني حماسًا للعديد من طوائف الآلهة في الديانة المصرية القديمة، ويشهد على ذلك الاهتمام أكثر من مائة موقع بناء في مصر. وقد أجرى أعمال إنشاء وترميم أكثر من نختنبو الأول، ومن أهمها معبد إيزيس الضخم.
        
        لعدة سنوات، نجح نختنبو الثاني في صد محاولات الغزو من قبل الإمبراطورية الأخمينية. ومع ذلك، لعدة أسباب منها تعرضه للخيانة من قبل خادمه السابق منطور الرودسي، هُزم نختنبو الثاني في نهاية المطاف من قبل القوات الفارسية واليونانية في معركة بيلوسيوم (343 قبل الميلاد). احتل الفرس منف ثم استولوا على بقية مصر، وضموا البلاد إلى الإمبراطورية الأخمينية تحت قيادة أردشير الثالث. هرب نختنبو جنوبًا وحافظ على سلطته لبعض الوقت. مصيره اللاحق غير معروف.",
        english_info: "Nectanebo II, also known as Nectaneb II (the name in Egyptian is Nakht-Horeb or Nakht-e-Har-hab, meaning “Strong is Horus-hebeit”), ruled between the years 360-342 BC. He was the third and last king of the Egyptian Thirty Dynasty, in addition to being the last ruler of ancient Egypt from the original people.

        Under the rule of Nectanebo II, Egypt flourished. During his reign, Egyptian artists developed an artistic style that left a distinctive mark on the reliefs of the Ptolemaic Kingdom. Like his indirect predecessor Nectanebo I, Nectanebo II showed enthusiasm for many of the cults of gods in ancient Egyptian religion, an interest attested to by over a hundred building sites in Egypt. He carried out more construction and restoration work than Nectanebo I, the most important of which was the huge Temple of Isis.
        
        For several years, Nectanebo II successfully repelled invasion attempts by the Achaemenid Empire. However, for several reasons, including being betrayed by his former servant Mentor of Rhodes, Nectanebo II was eventually defeated by Persian and Greek forces at the Battle of Pelusium (343 BC). The Persians occupied Memphis and then took over the rest of Egypt, annexing the country to the Achaemenid Empire under the leadership of Ardashir III. Nectanebo fled south and maintained his power for some time. His subsequent fate is unknown.",
        date_of_birth: "360",
        date_of_death: "343",
        sub_era_id: sub_era_7.id,
    )
    character_55.thumb_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c2/Head_of_Nectanebo_II-MBA_Lyon_H1701-IMG_0204.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    character_55.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c2/Head_of_Nectanebo_II-MBA_Lyon_H1701-IMG_0204.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    CharacterSection.create(
        arabic_title:"التصوير",
        english_title:"Photography",
        arabic_content:"باستثناء تمثال الجرواق صغير الحجم في متحف المتروبوليتان للفنون، والذي يظهر فيه نختنبو الثاني واقفا أمام صورة حورس، لا توجد تصويرات أخرى مشروحة لنختنبو الثاني. ذراعه اليسرى مع السيف تمثل كلمة نخت، ويمثل الصقر حورس، في حين أن الهيروغليفي في اليد اليمنى يمثل كلمة حب (الاسم الكامل: نخت حر حب). تشمل تصويرات أخرى منسوبة إلى نختنبو رأس من الكوارتزيت في متحف جامعة بنسلفانيا للآثار والأنثروبولوجيا، رأس من البازلت في الإسكندرية، رأس جرانيتية حصل عليها متحف الفنون الجميلة في بوسطن ورأس آخر من الكوارتز ولكن متضرر.",
        english_content:"With the exception of the small-scale Jarwaq statue in the Metropolitan Museum of Art, which shows Nectanebo II standing before an image of Horus, there are no other annotated depictions of Nectanebo II. His left arm with the sword represents the word Nakht, the falcon represents Horus, while the hieroglyph in the right hand represents the word Love (full name: Nakht Hurr Hob). Other depictions attributed to Nectanebo include a quartzite head in the University of Pennsylvania Museum of Archeology and Anthropology, a basalt head in Alexandria, a granite head acquired by the Museum of Fine Arts in Boston, and another quartz head, but damaged.",
        character_id: character_55.id,
    )
    CharacterSection.create(
        arabic_title:"الصعود إلى السلطة",
        english_title:"Rise to power",
        arabic_content:"في عام 525 قبل الميلاد، احتلت الإمبراطورية الأخمينية مصر. بسبب الصراعات الداخلية من أجل عرش الإمبراطورية الفارسية، تمكنت مصر من استعادة استقلالها عام 404 قبل الميلاد. في عام 389 قبل الميلاد، تفاوض الملك هاكور على معاهدة مع أثينا ولمدة ثلاث سنوات (من 385 إلى 383 قبل الميلاد) تمكن من الصمود في وجه العدوان الفارسي. ومع ذلك، بعد اختتام سلام أنتاليداس في عام 387 قبل الميلاد بين الأخمينيين والبوليسات اليونانية، أصبحت مصر وقبرص العوائق الوحيدة أمام الهيمنة الفارسية في البحر الأبيض المتوسط.

        في بداية عام 360 قبل الميلاد، بدأ سلف نختنبو، وهو تيوس، الاستعدادات للحرب ضد المعتدين. في العام نفسه، انطلق الجيش المصري، وسافر على طول الساحل برا وبحرا. رافق نختنبو الثاني عمه تيوس في تلك الحملة وكان مسؤولاً عن الماشيموي.
        
        في محاولة لجمع الأموال للحرب بسرعة، فرض تيوس ضرائب على المصريين واستولى على ممتلكات المعبد. استاء المصريون، ولا سيما الكهنة، من هذه الإجراءات لكنهم دعموا نختنبو الثاني. طلب تيوس من القائد العسكري الاسبرطي أجيسيلاوس الثاني والجنرال الأثيني شابرياس دعمه. لكن أجيسيلاوس قال إنه تم إرساله لمساعدة مصر وليس لشن حرب عليها. وكذلك عاد شابرياس إلى بلاده مع المرتزقة. قرر تيوس الفرار إلى الأخمينيين، حيث توفي في النهاية وفاة طبيعية.
        
        حارب نختنبو شخصا آخر غير معروف الاسم من مدينة مندس على العرش، والذي كان قد بدأ ثورة وأعلن نفسه فرعونًا. ربما كان هذا الشخص أحد أحفاد نفريتس الأول، والذي كانت قد حكمت عائلته المدينة من قبل. أرسل قائد الثورة رسلًا إلى أجيسيلاوس في محاولة لإقناعه بأن يكون إلى جانبه. ظل أجيسيلاوس مخلصًا لنختنبو. في إحدى البلدات في دلتا النيل، حاصرت قوات نختنبو وأجيسيلوس قائد الثورة، الذي كسب الكثير من المتعاطفين. على الرغم من التفوق العددي للعدو، فقد انتصر نختنبو وأجيسيلوس وتم إخماد الثورة في خريف 360 قبل الميلاد  اعترافًا بفضل أجيسيلوس، أرسل له نختنبو 220 طالنط من الذهب.",
        english_content:"In 525 BC, the Achaemenid Empire occupied Egypt. Due to internal struggles for the throne of the Persian Empire, Egypt was able to regain its independence in 404 BC. In 389 BC, King Hakor negotiated a treaty with Athens and for three years (from 385 to 383 BC) he managed to withstand Persian aggression. However, after the conclusion of the Peace of Antalidas in 387 BC between the Achaemenids and the Greek Poles, Egypt and Cyprus became the only obstacles to Persian hegemony in the Mediterranean.

        At the beginning of 360 BC, Nectanebo's predecessor, Teos, began preparations for war against the aggressors. In the same year, the Egyptian army set out, traveling along the coast by land and sea. Nectanebo II accompanied his uncle Teos on that campaign and was in charge of the Machimwe.
        
        In an attempt to quickly raise money for the war, Teos imposed taxes on the Egyptians and seized temple property. The Egyptians, especially the priests, resented these measures but supported Nectanebo II. Teos asked the Spartan military commander Agesilaus II and the Athenian general Chabrias to support him. But Agesilaus said that he was sent to help Egypt, not to wage war against it. Chabrias also returned to his country with the mercenaries. Teos decided to flee to the Achaemenids, where he eventually died a natural death.
        
        Nectanebo fought another unidentified person from the city of Mendes for the throne, who had started a revolt and declared himself pharaoh. This person was probably a descendant of Nephretes I, whose family had previously ruled the city. The leader of the revolt sent messengers to Agesilaus in an attempt to persuade him to be on his side. Agesilaus remained loyal to Nectanebo. In a town in the Nile Delta, the forces of Nectanebo and Agesilaus surrounded the leader of the revolt, who had gained many sympathizers. Despite the enemy's numerical superiority, Nectanebo and Agesilaus were victorious and the revolt was put down in the fall of 360 BC. In recognition of Agesilaus's thanks, Nectanebo sent him 220 talents of gold.",
        character_id: character_55.id,
    )
    CharacterSection.create(
        arabic_title:"الحكم",
        english_title:"Ruling",
        arabic_content:"لعب الدين دورًا مهمًا في السياسة الداخلية لنختنبو. بدأ عهده من خلال الإشراف على جنازة ثور آبيس في منف. كما أضاف نختنبو زخارف إلى المعابد الشرقية والغربية لأبيس. من بين المنشآت البارزة التي أقيمت في عهد نخت أنبو الثاني معبد خنوم في إلفنتين ومعبد آمون في سختام (سيوة). كما كرس ناوس من الديوريت لأنحور (تم العثور على جزء منه في معابد سمنود). كان نختنبو الثاني مسؤولاً عن زيادة شعبية عبادة بوخيس. صدر تحت حكم نخت أنبو الثاني مرسوم يحظر أنشطة المحاجر فيما يسمى «الجبال الغامضة» في أبيدوس.

        كانت الشؤون الخارجية في عهد نخت أنبو الثاني مرتبطة بالمحاولات الأخمينية المتكررة لإعادة احتلال مصر. قبل صعود نختنبو الثاني إلى العرش، حاول الفرس استعادة مصر عدة مرات في 385 و383 و373 قبل الميلاد. استفاد نختنبو من السلام القصير لبناء جيش جديد وتوظيف المرتزقة اليونانيين، وكانت تلك ممارسة شائعة في ذلك الوقت. في عام 358 قبل الميلاد، استطاع نختنبو صد محاولة غزو أخمينية بقيادة الأمير أردشير الثالث. في حوالي 351 قبل الميلاد، شرعت الإمبراطورية الأخمينية في محاولة جديدة لاستعادة مصر. بعد عام من القتال، تمكن نختنبو وحلفاؤه، ديوفانتس الأثيني ولاميوس الاسبرطي، من هزيمة الأخمينيين مجددا. بعد أن حقق نصرًا مدويًا، حاز نختنبو الثاني على لقب «نختنبو الصقر الإلهي»، وتم عمل طوائف باسمه. في عام 345/44 قبل الميلاد، دعم نخت أنبو التمرد الفينيقي ضد الإمبراطورية الأخمينية، بقيادة ملك صيدا، تينيس، وأرسل مساعدات عسكرية تمثلت في 4000 مرتزق يوناني بقيادة منطور الرودسي. ومع ذلك، بعد أن سمع منطور عن اقتراب قوى أردشير الثالث، تواصل مع الفرس وتخلى عن ولائه لنختنبو.
        
        
        تابوت نختنبو الثاني، والذي لم يستخدمه لأنه فر إلى الجنوب. المتحف البريطاني
        في نهاية عام 344 قبل الميلاد، وصل سفراء أردشير الثالث إلى اليونان، مطالبين بمشاركة اليونانيين في حملة ضد مصر. تعاملت أثينا وإسبرطة مع السفراء بلطف، لكنهما امتنعتا عن القبول بتحالف ضد مصر. ومع ذلك، قررت مدن أخرى دعم الفرس: أرسلت طيبة 1000 هوبليت وأرسلت أرغوس 3000.
        
        في شتاء 343 قبل الميلاد، انطلقت جيوش أردشير إلى مصر. تألف الجيش المصري، بقيادة نختنبو، من 60.000 مصري و20.000 ليبو والعديد من المرتزقة اليونانيين. بالإضافة إلى ذلك، كان لدى نختنبو عددًا من القوارب تهدف إلى منع العدو من دخول أفواه النيل. كانت نقاط الضعف على طول حدود البحر الأبيض المتوسط والحدود الشرقية محمية بالمعاقل والتحصينات والمخيمات. على الجانب الآخر، تم تعزيز القوات الفارسية من قبل منطور ورجاله، المطلعين جيدًا على الحدود الشرقية لمصر والدلتا، وكذلك 6000 أيوني.
        
        هزم نختنبو الثاني في نهاية المطاف، وفي صيف 342 قبل الميلاد، دخل أردشير منف وقام بتعيين ساتراب. فر نختنبو إلى صعيد مصر وأخيرًا إلى النوبة، حيث مُنح حق اللجوء، وحافظ على قدر من السلطة هناك لبعض الوقت. بمساعدة خباش، قام نختنبو بمحاولة أخيرة غير ناجحة لاستعادة العرش.",
        english_content:"Religion played an important role in Nectanebo's domestic politics. He began his reign by supervising the funeral of the Apis bull in Memphis. Nectanebo also added decorations to the eastern and western temples of Apis. Notable structures erected during the reign of Nectanebo II include the Temple of Khnum at Elephantine and the Temple of Amun at Sekhtam (Siwa). He also dedicated a diorite naos to Anhur (part of it was found in the Samanoud temples). Nectanebo II was responsible for increasing the popularity of the cult of Bochis. Under Nectanebo II, a decree was issued prohibiting quarrying activities in the so-called “Mysterious Mountains” of Abydos.

        Foreign affairs during the reign of Nectanebo II were connected with repeated Achaemenid attempts to reconquer Egypt. Before Nectanebo II ascended to the throne, the Persians attempted to reclaim Egypt several times in 385, 383, and 373 BC. Nectanebo took advantage of the short peace to build a new army and hire Greek mercenaries, a common practice at the time. In 358 BC, Nectanebo was able to repel an Achaemenid invasion attempt led by Prince Ardashir III. In about 351 BC, the Achaemenid Empire embarked on a new attempt to reclaim Egypt. After a year of fighting, Nectanebo and his allies, Diophantus of Athens and Lammius of Sparta, were able to defeat the Achaemenids again. After achieving a resounding victory, Nectanebo II was given the title “Nectanebo the Divine Falcon,” and cults were created in his name. In 345/44 BC, Nectanebo supported the Phoenician rebellion against the Achaemenid Empire, led by the King of Sidon, Tenes, and sent military aid in the form of 4,000 Greek mercenaries led by Mentor of Rhodes. However, after Mentor heard of the approaching forces of Ardashir III, he reached out to the Persians and renounced his allegiance to Nectanebo.
        
        
        The sarcophagus of Nectanebo II, which he did not use because he fled to the south. The British Museum
        At the end of 344 BC, ambassadors of Ardashir III arrived in Greece, demanding Greek participation in a campaign against Egypt. Athens and Sparta treated the ambassadors kindly, but refrained from accepting an alliance against Egypt. However, other cities decided to support the Persians: Thebes sent 1,000 hoplites and Argos sent 3,000.
        
        In the winter of 343 BC, Ardashir's armies set out for Egypt. The Egyptian army, commanded by Nectanebo, consisted of 60,000 Egyptians, 20,000 Libo, and numerous Greek mercenaries. In addition, Nectanebo had a number of boats intended to prevent the enemy from entering the mouths of the Nile. Weak points along the Mediterranean and eastern frontiers were protected by redoubts, fortifications and camps. On the other side, the Persian forces were reinforced by Mentor and his men, well acquainted with Egypt's eastern borders and the delta, as well as 6,000 Ionians.
        
        Nectanebo II was eventually defeated, and in the summer of 342 BC, Ardashir entered Memphis and appointed him a satrap. Nectanebo fled to Upper Egypt and finally to Nubia, where he was granted asylum, and maintained a measure of power there for some time. With the help of Khabash, Nectanebo made a final, unsuccessful attempt to regain the throne.",
        character_id: character_55.id,
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
        sub_era: sub_era_1,
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
        sub_era: sub_era_2,
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
        sub_era: sub_era_2,
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
        sub_era: sub_era_2,
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
        sub_era: sub_era_2,
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
        sub_era: sub_era_2,
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
        sub_era: sub_era_2,
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
        sub_era: sub_era_2,
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

    event_9 = Event.create(
        type: "War",
        arabic_title: "غزو الهكسوس",
        english_title: "Hyksos Invasion",
        start_date: "1730",
        end_date: "1570",
        arabic_info:"احتلال الهكسوس لمصر منذ 3600 عاما، من الموضوعات المثيرة  ومادة دسمة للباحثين، لما تحمله من ألغاز كثيرة أبرزها عدم معرفة من أين جاء الهكسوس؟، كما لأنه هذا الاحتلال يعد الأول لمصر، والذى استمر لفترة طويلة لأكثر من 100 عام، ولكن قصص كفاح الشعب المصرى وملوكه المصريين القدماء وقفوا بكل شجاعة ضد هذا الاحتلال من أول الملك شقنن رع مرورًا  بـ كامس وحتى تم طرتهم على يد الملك أحمس الأول.",
        english_info:"The Hyksos occupation of Egypt 3600 years ago is one of the exciting topics and rich material for researchers, because it contains many mysteries, the most prominent of which is not knowing where the Hyksos came from? And also because this occupation is the first of Egypt, which lasted for a long period of more than 100 years, but the stories of the struggle of the Egyptian people And the ancient Egyptian kings stood bravely against this occupation from the beginning of King Shekenenre through Kames until they were defeated by King Ahmose I.",
        character_id: character_37.id,
        sub_era: sub_era_5,
    )
    event_9.cover_image.attach(io: URI.open("https://img.youm7.com/large/202007161146474647.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"احتلال الهكسوس",
        english_title:"Hyksos Occupation",
        arabic_content:"فاجأ الهكسوس المصريين وهجموا عليهم بأعداد كبيرة لم يستطع المصريون مقاومتها، فحرقوا المدن والمعابد ودخلوا إلى مصر واتخذوا عاصمة لهم فى شرق الدلتا أطلق عليها زوان، وانتشروا تدريجياً حتى سيطروا على شمال مصر، هكذا قال المؤرخ مانيتون، عن  احتلال الهكسوس مصر منذ 3600 عاما، والتى تعد من الموضوعات التى تشغل جميع الباحثين، وسبب قد يكون السبب لأنه أول احتلال لمصر، وظل لأكثر من 100 عام، أو قد يكون عدم معرفة من جاء الهكسوس من الأساس، وخلال التقرير التالى نستعرض المواقع التى تمت فيها معركة تحرير مصر.",
        english_content:"The Hyksos surprised the Egyptians and attacked them in large numbers that the Egyptians could not resist. They burned the cities and temples and entered Egypt and took their capital in the eastern delta, which they called Zoan. They gradually spread until they took control of northern Egypt, as the historian Manetho said about the Hyksos’ occupation of Egypt 3,600 years ago, which It is one of the topics that preoccupies all researchers, and the reason may be because it is the first occupation of Egypt, and it continued for more than 100 years, or it may be the lack of knowledge of who the Hyksos came from in the first place, and during the next report we review the sites where the battle to liberate Egypt took place.",
        event_id: event_9.id,
    )
    EventSection.create(
        arabic_title:"الملك سقنن رع",
        english_title:"King Seqenenre",
        arabic_content:"الملك سقنن رع يطلق عليه العديد من الأسماء منها رع تاعو أو سقنن رع تاعا الثانى، وهو أحد ملوك الأسرة الـ 17، وهى من حكمت جنوب مصر من طيبة الأقصر حاليًا.
        وأوضح الدكتور حسين عبد البصير، فى تصريحات خاصة لـ اليوم السابع، أنه فى بداية حكم الأسرة الـ 17، بقيادة الملك سقنن رع الثانى، قاومت احتلال الهكسوس، الذى كان يحتل  جزء كبير من الأرضى المصرية ولفترة زمنية تيلغ القرن من الزمان، حيث كان هناك سيطرة كاملة على شمال مصر، ويمتد نفوذهم إلى المنطقة الوسطى.
        وأشار، إلى أن هناك قصة  على إحدى البرديات المصرية تبين بداية الصراع بين الهكسوس وحكام طيبة،  الذين أعلنوا تحالفهم مع جيرانهم من امراء مصر فى الشمال والجنوب، ودونوا أسماءهم على خراطيش تسبقها الألقاب نكاية فى الهكسوس، والتعبير عن قوتهم المصرية ضد الهكسوس.
        ولفت حسين عبد البصير، أن القصة تحكى محاولة ملك الهكسوس أبو فيس الاشتباك مع الملك سقنن رع، فأرسل له خطابا يحمل بين طياته أسباب مضحكة تدعو للفكاهة، وتبين مدى رغبة ملك الهكسوس الاحتكاك بسقنن رع، وهو أنه يشكو فيه أصوات أفراس النهر التى تسبح فى البحيرة المقدسة بمعبد الإله آمون بمنطقة طيبة، وأنها تزعجه للغاية، ولا يستطيع النوم بسببها داخل عاصمته أفاريس التى تبعد مئات الكيلو مترات عن طيبة، ولكن سقنن رع رد عليه بذكاء يثبت فيه أنه يدعو للسلام وليس للحرب.
        وقامت حرب تحرير مصر من احتلال الهكسوس، والتى استشهد فيها الملك سقنن رع وهو يدافع عن أرض مصر بكل شرف، وتوضح المومياء الخاصة بالملك والموجود بقاعة المومياوات بالمتحف المصرى  الإصابات التى لحقت به، والتى تبين أيضا سوء التحنيط لها نظرًا لسرعة أعمال التحنيط وسط المعركة.",
        english_content:"King Seqenenre is called by many names, including Ra-Ta'u or Seqenenre-Ta'a II. He is one of the kings of the 17th dynasty, which ruled southern Egypt from Thebes, Luxor currently.
        Dr. Hussein Abdel Basir explained, in exclusive statements to Youm7, that at the beginning of the rule of the 17th Dynasty, led by King Seqenenre II, it resisted the occupation of the Hyksos, who occupied a large part of Egyptian territory for a period of time exceeding a century, during which there was control. Completely over northern Egypt, and their influence extends to the central region.
        He pointed out that there is a story on one of the Egyptian papyri that shows the beginning of the conflict between the Hyksos and the rulers of Thebes, who declared their alliance with their neighbors, the princes of Egypt in the north and south, and wrote their names on cartouches preceded by titles to spite the Hyksos, and to express their Egyptian power against the Hyksos.
        Hussein Abdel Basir pointed out that the story tells of the attempt of the Hyksos king Abu Fais to clash with King Seqenenre, so he sent him a letter containing within it funny reasons for humor, and it shows the extent of the Hyksos king’s desire to interact with Sekenenre, which is that he complains about the sounds of the hippopotamuses swimming in the lake. The sanctuary in the temple of the god Amun in the Thebes region, and that it disturbs him greatly, and he cannot sleep because of it inside his capital, Avaris, which is hundreds of kilometers away from Thebes, but Seqenen Ra responded to him intelligently, proving that he was calling for peace and not war.
        The war to liberate Egypt from the Hyksos occupation took place, in which King Seqenenre was martyred while defending the land of Egypt with all honor. The king’s mummy, which is located in the Hall of Mummies in the Egyptian Museum, shows the injuries he sustained, which also shows its poor mummification due to the speed of the mummification work in the middle of the battle.",
        event_id: event_9.id,
    )
    EventSection.create(
        arabic_title:"الملك كامس",
        english_title:"King Kames",
        arabic_content:"الملك كامس هو آخر ملوك الأسرة السابعة عشرة فى طيبة، وربما حكم ما بين ثلاثة إلى خمسة أعوام، وهو البطل الثانى من الملوك الأبطال أصحاب ملحمة تحرير مصر من الهكسوس، وجاء كفاح هذا الملك من خلال ثلاثة وثائق أكملت كل واحدة منها الأخرى مما أنتج لنا في النهاية قصة شبه كاملة عن ثانى أبطال حرب التحرير.
        ويقول كتاب الفراعنة المحاربون.. دبلوماسيون وعسكريون للدكتور حسين عبد البصير، إن الوثيقة الأولى هى نص كتبه تلميذ مصرى قديم على لوح يعرف بلوح كارنارفون، والوثيقة الثانية مكتوبة على لوحة تم العثور عليها عام 1928 وتحكى أن كامس ضاق بعد وفاة والده وصعوده على العرش بالاحتلال الهكسوسى لأرض مصر الطاهرة، فطلب دعوة رجال بلاطه وقادة جيشه كى يشاورهم فى الأمر.
        كامس شعر أن رجاله لا يميلون إلى الحرب وأنهم موافقون على الوضع الحالى، غير أن كامس رفض ذلك وصمم على قتال الأعداء، وكان على يقين من أن البلاد كلها سوف تهتف له.
        وأشار الدكتور حسين عبد البصير، إلى أن الوثيقة الثالثة عبارة عن لوحة كاملة من الحجر الجيرى عثر عليها فى معابد الكرنك عام 1954 وتكمل أحداث الوثيقتين السابقتين، وتروى لنا قصة استمرار انتصارات كامس على الهكسوس وعن الرعب الذى أدخله جيش مصر العظيم إلى قلوبنا أعدائنا من الهكسوس المحتلين لأرضنا المباركة.",
        english_content:"King Kamose is the last king of the Seventeenth Dynasty in Thebes. He may have ruled for between three and five years. He is the second hero of the heroic kings who carried out the epic of liberating Egypt from the Hyksos. The struggle of this king came through three documents, each of which complemented the other, which produced for us in The end is an almost complete story about the second hero of the liberation war.
        The book The Warrior Pharaohs: Diplomats and Military Personnel, by Dr. Hussein Abdel Basir, says that the first document is a text written by an ancient Egyptian student on a tablet known as the Carnarvon Tablet, and the second document is written on a tablet that was found in 1928 and tells that Kames became fed up after the death of his father and his ascension to the throne due to the Hyksosian occupation. For the pure land of Egypt, so he asked to invite the men of his court and the leaders of his army to consult them about the matter.
        Kames felt that his men were not inclined to war and that they agreed with the current situation, but Kames rejected this and was determined to fight the enemies, and he was sure that the whole country would cheer for him.
        Dr. Hussein Abdel Basir pointed out that the third document is a complete limestone plaque found in the Karnak temples in 1954 and completes the events of the previous two documents, and tells us the story of the continuation of Kamose’s victories over the Hyksos and the terror that the great army of Egypt brought into our hearts, our enemies from the occupying Hyksos. For our blessed land.",
        event_id: event_9.id,
    )
    EventSection.create(
        arabic_title:"الملك أحمس الأول",
        english_title:"King Ahmose I",
        arabic_content:"الملك أحمس الأول محرر مصر من الهكسوس ومؤسس الأسرة الثامنة عشرة، عصر الإمبراطورية المصرية المترامية الأطراف فى الشرق الأدنى القديم، ولم يتم العثور على وثيقة ملكية من عهده تحكى لنا قصة طرده للهكسوس، غير أننا عرفنا قصة هذا النضال المجيد من خلال السيرة الذاتية لقائدين من القادة العسكريين لهذا الملك.
        وأكد كتاب الفراعنة المحاربون.. دبلوماسيون وعسكريون للدكتور حسين عبد البصير، أن القائدان هما القائد البحرى أحمس ابن إبانا والقائد البرى أحمس بن نخبت أى المنحدر من مدينة الكاب فى أسوان، وسجلا على جدران مقبرتيهما فى الكاب ما قام به من أفعال بطولية فى الحملات الحربية تحت إمرة أحمس الأول الذى تمكن بعد سقنن رع تا عا الثانى وكامس من الاستيلاء على عاصمة الهكسوس أفاريس أواريس واقتفاء أثرهم شرقًا إلى جنوب فلسطين حيث تحصنوا فى حصن شاروهين المنيع فى غزة.",
        english_content:"King Ahmose I, the liberator of Egypt from the Hyksos, and the founder of the Eighteenth Dynasty, the era of the sprawling Egyptian empire in the ancient Near East. No royal document from his reign has been found that tells us the story of his expulsion of the Hyksos, but we know the story of this glorious struggle through the biographies of two of the leaders. The military of this king.
        The book The Warrior Pharaohs: Diplomats and Military Personnel, by Dr. Hussein Abdel Basir, confirmed that the two commanders were the naval commander Ahmose Ibn Ebana and the land commander Ahmose Ibn Nekhbat, meaning the one from the city of El-Kab in Aswan, and they recorded on the walls of their tombs in El-Kab the heroic deeds he performed in the war campaigns under The command of Ahmose I, who, after Seqenenre Taa II and Kamose, was able to seize the Hyksos capital of Avaris Avaris and trace them east to southern Palestine, where they fortified themselves in the impenetrable fortress of Sharuhin in Gaza.",
        event_id: event_9.id,
    )

    event_10 = Event.create(
        type: "War",
        arabic_title: "بداية حرب الهكسوس",
        english_title: "Beginning of the Hyksos War",
        start_date: "1881",
        end_date: "1881",
        arabic_info:"الملك سقننن رع تاعا الثاني هو أول ملك بدأ القتال مع الهكسوس وتوجد وثيقة هي ورقة سالييه جاءت في شكل قصة منسوبة إلى عصر سقنن رع تخبرنا كيف بدأ الخلاف بين ملك الهكسوس عاقنن رع أبوفيس والملك سقنن رع، حيث أرسل أبوفيس من أواريس الواقعة في شمال الدلتا رسالة إلى سقنن رع يخبره أن أصوات أفراس النهر في بحيرة طيبة تزعجه وتقض مضجعه بالرغم من انه بينه وبين طيبة 500 ميل، ويأمره بأن يجد أي وسيلة للقضاء عليها، فكانت هذه الرسالة بمثابة إعلان للحرب.",
        english_info:"King Seqenenre Taa II was the first king to start fighting with the Hyksos, and there is a document, the Salier paper, that came in the form of a story attributed to the era of Seqenenre Taa, telling us how the dispute began between the Hyksos king, Seqenenre Apophis, and King Seqenenre Apophis, where Apophis sent a message from Avaris, located in the north of the Delta. To Seqenenre, he tells him that the sounds of hippopotamuses in Lake Thebes are disturbing him and disturbing his sleep, even though there are 500 miles between him and Thebes, and orders him to find any way to eliminate them. This message was a declaration of war.",
        character_id: character_37.id,
        sub_era: sub_era_5,
    )
    event_10.cover_image.attach(io: URI.open("https://img.youm7.com/large/20210218123709379.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"القائد",
        english_title:"The Leader",
        arabic_content:"تعـد موميـاء الملـك (سـقنن رع تاعـا الثانـي) واحـدة مـن الموميـاوات الملكيـة الأكثـر روعـة علـى الإطلاق، كان الملك (سـقنن رع) حاكماً لطيبـة – الأقصـر حاليـاً – خلال أواخـر عصـر الانتقال الثانـي، في حين كان (الهكسـوس) يحكمون شـمال مصـر لأكثـر مـن قـرن مضـى، وكانـوا يهـددون أراضي طيبـة ناحيـة الجنـوب.",
        english_content:"The mummy of King Seqenenre Taa II is one of the most amazing royal mummies ever. King Sekenenre was the ruler of Thebes - now Luxor - during the late Second Intermediate Period, while the Hyksos ruled northern Egypt for more than a century It rang ago, They were threatening the lands of Thebes to the south.",
        event_id: event_10.id,
    )
    EventSection.create(
        arabic_title:"بداية الحرب",
        english_title:"The Beginning of the War",
        arabic_content:"تؤكـد المصـادر التاريخية قيـام الملك سـقنن رع تاعـا ببدايـة الحـرب ضـد هـؤلاء الغـزاة، والتـي اسـتمرت علـى يـد ولديـه (كامـوس) و(أحمـس الأول)، وقـد تـزوج الملـك مـن أختـه الزوجـة الرئيسـة (إيـاح حتـب)، وأنجـب ابنتيـن همـا (أحمـس نفرتاري) و (أحمـس نبيتـا)، بالإضافة إلى ولديـه كامـوس وأحمـس.",
        english_content:"Historical sources confirm that King Seqenenre Ta began the war against these invaders, which continued at the hands of his two sons (Kamus) and (Ahmose I). The king married his sister, the chief wife (Iahhotep), and had two daughters, (Ahmose n Fratari and Ahmose Nebita), in addition to his two sons, Camus and Ahmose.",
        event_id: event_10.id,
    )
    EventSection.create(
        arabic_title:"وفاه القائد",
        english_title:"The Leader's Death",
        arabic_content:"توفي الملـك سـقنن رع تاعـا عـن عمـر يناهـز الأربعيـن عامـاً، وتظهـر جمجمتـه علامـات جـروح مروعـة؛ تـدل علـى موتـه شـهيداً؛ جـراء المعـارك ضـد الهكسـوس، ومـن المرجـح أن هـذا الحاكـم قـد تـم دفنه فـي الأصـل فـي (ذراع أبـو النجا) – الجانـب الشـمالي لجبانـة طيبـة – حيـث دفـن بهـا ملـوك الأسـرة السـابعة عشـرة، ثـم تـم نقـل جسـده فـي النهايـة إلـى خبيئـة (320TT )، حيـث عثـر عليـه هنـاك في عـام 1881م.",
        english_content:"King Seqenenre Taa died at the age of forty, and his skull showed signs of horrific wounds. It indicates his death as a martyr. As a result of the battles against the Hyksos, it is likely that this ruler was originally buried in (Dara’ Abu al-Naga) - the northern side of the Theban cemetery - where the kings of the Seventeenth Dynasty were buried, and then his body was eventually moved To the hideout (320TT), where it was found There in 1881 AD.",
        event_id: event_10.id,
    )
    EventSection.create(
        arabic_title:"المعركه",
        english_title:"The Battle",
        arabic_content:"أما عن بداية حربه مع الهكسوس وبحسب المؤرخ مانيتون السمنودى وهو كاهن ومؤرخ يعود إلى القرن الثالث قبل الميلاد، قال هو أول ملك بدأ القتال مع الهكسوس أول احتلال لمصر فى التاريخ, والهكسوس هم شعوب بدوية آسيوية دخلت مصر من سيناء فى فترة ضعف مصرخلال نهاية حكم الدولة الوسطى تقريباً فى نهاية حكم الأسرة الرابعة عشرة. واستمر احتلال الهكسوس لمصر حوالى مائة عام، وكان حكام مصر فى الأسرة السابعة عشرة، تحت قيادة الملك سقنن رع تاعا الثانى، قد بدأوا مقاومة احتلال الهكسوس، خصوصًا أنه لم يبق من أرض مصر المستقلة سوى شريط ضيق فى صعيد مصر كان ينعم بنوع من الاستقلال الذاتى تحت سيطرة حكام مدينة طيبة العريقة، وكان يمتد من القوصية فى محافظة أسيوط «آخر حدود الهكسوس جنوبًا» وإلى منطقة إلفنتين فى أسوان، وتوجد وثيقة هى ورقة سالييه إحدى البرديات المصرية جاءت فى شكل قصة منسوبة إلى عصرالملك سقنن رع تخبرنا كيف بدأ الخلاف والصراع بين ملك الهكسوس أبوفيس والملك سقنن رع، حيث أرسل أبوفيس من مدينة أواريس الواقعة فى شمال الدلتا مقر حاكم الهكسوس رسالة إلى سقنن رع المقيم فى مدينة طيبة «الاقصر حاليا» يخبره أن أفراس النهر فى بحيرة طيبة تزعجه وتقض مضجعه بالرغم من انه بينه وبين طيبة 500 ميل، ويأمره بأن يجد أى وسيلة للقضاء عليها، فكانت هذه الرسالة الاستفزازية بمثابة إعلان للحرب.
        حكم سقنن رع مصر لأقل من 11 عامًا ليخلفه ابنه الملك كامس، الذى تلاه شقيقه أحمس والذى كانت على يديه هزيمة الهكسوس والقضاء عليهم نهائيا وإعادة توحيد مصر.
        ولقد تم العثور على مومياء الملك سقنن رع تاعا داخل تابوت ضخم من خشب الأرز فى خبيئة الدير البحرى، غرب الأقصر عام 1881م، وحديثا أجرى الدكتور زاهى حواس عالم الآثار، والدكتورة سحر سليم أستاذة الأشعة فحصاً بالأشعة المقطعية ثنائية وثلاثية الأبعاد لمومياء الملك.
        وقدم الباحثان تفسيرا جديدًا لوفاة سقنن رع، استنادًا إلى النتائج والتى كشفت عن تعرضه لضربات فى الرأس والوجه وإصابته بجروح قاتلة،وأشارت النتائج أيضا إلى أن دراسة أسلحة الهكسوس الموجودة فى المتحف المصرى بالتحرير ومقارنتها بآثار الجروح فى وجه الملك سقنن رع، كشفت عن وجود تشابه كبير بين أسلحة الهكسوس وجروح الملك، وهو ما يكشف عن دوره البطولى فى مواجهة الهكسوس، وفى فبراير عام 2021، اهتم العالم بتصريح عالم المصريات زاهى حواس، الذى قال فيه إن سقنن رع هو أول ملك شهيد مصرى فى سبيل تحرير الوطن، وإنه قُتل على يد الهكسوس وعمره 40 عامًا.
        .هكذا خلد موكب المومياوات الملكية اسم سقنن رع من جديد، ليضيف إلى سيرة الملك الشجاع قصة جديدة يسطرها التاريخ.",
        english_content:"As for the beginning of his war with the Hyksos, according to the historian Manetho Al-Samnoudi, a priest and historian dating back to the third century BC, he said that he was the first king to start fighting with the Hyksos and the first occupation of Egypt in history. The Hyksos are Asian nomadic peoples who entered Egypt from the Sinai during a period of Egypt’s weakness during the end of state rule. Middle East, approximately at the end of the Fourteenth Dynasty. The Hyksos occupation of Egypt continued for about a hundred years, and the rulers of Egypt in the Seventeenth Dynasty, under the leadership of King Seqenenre Taa II, had begun to resist the Hyksos occupation, especially since nothing remained of the land of independent Egypt except a narrow strip in Upper Egypt that enjoyed a kind of autonomy. Under the control of the rulers of the ancient city of Thebes, it extended from Al-Qusiya in Assiut Governorate, “the last border of the Hyksos in the south,” to the Elephantine region in Aswan. There is a document, the Salier Paper, one of the Egyptian papyri, that came in the form of a story attributed to the era of King Seqenenre, telling us how the dispute and conflict began between a king. The Hyksos Apophis and King Seqenenra, where Apophis from the city of Avaris, located in the north of the Delta, the seat of the Hyksos ruler, sent a message to Seqenenre, who resides in the city of Thebes (currently Luxor), telling him that the hippos in Lake Thebes were disturbing him and disturbing him, even though there were 500 miles between him and Thebes. He orders him to find any way to eliminate her, so this provocative message was a declaration of war.
        Seqenenra ruled Egypt for less than 11 years, to be succeeded by his son, King Kamose, who was followed by his brother Ahmose, who was responsible for defeating the Hyksos, completely eliminating them, and reunifying Egypt.
        The mummy of King Seqenenre Taa was found inside a huge cedar wood coffin in the Deir el-Bahari cache, west of Luxor, in 1881 AD. Recently, Dr. Zahi Hawass, an archaeologist, and Dr. Sahar Selim, a professor of radiology, conducted a two- and three-dimensional CT scan of the king’s mummy.
        The researchers presented a new explanation for the death of Seqenenre, based on the results, which revealed that he was subjected to blows to the head and face and suffered fatal injuries. The results also indicated that a study of the Hyksos weapons found in the Egyptian Museum in Tahrir and comparing them to the effects of wounds on the face of King Seqenenre revealed a great similarity. Between the Hyksos weapons and the king’s wounds, which reveals his heroic role in confronting the Hyksos, and in February 2021, the world paid attention to the statement of Egyptologist Zahi Hawass, in which he said that Seqenenre was the first Egyptian martyr king for the sake of liberating the homeland, and that he was killed by the Hyksos. He is 40 years old.
        Thus, the procession of royal mummies immortalized the name of Seqenenre once again, adding to the biography of the brave king a new story recorded in history.",
        event_id: event_10.id,
    )
    event_11 = Event.create(
        type: "War",
        arabic_title: "طرد الهكسوس من مصر",
        english_title: "Expelling the Hyksos from Egypt",
        start_date: "1500",
        end_date: "1500",
        arabic_info:"كان الملك سقنن رع أول من بدأ بمهاجمة الهكسوس لمحاربتهم وخروجهم من مصر وقتل في إحدى معاركه مع الهكسوس، ثم استكمل ولده كامس الحرب حتى طهر الصعيد من الهكسوس ثم أحمس طرد الهكسوس خارج البلاد. جرى احمس بجيوشه عندما كان عمره حوالي 19 سنة واستخدم بعض الأسلحة الحديثة مثل العجلات الحربية وانضم إلى الجيش كثير من شعب طيبة وذهب هو وجيوشه إلى أواريس (صان الحجرحاليا) عاصمة الهكسوس وهزمهم هناك ثم لاحقهم إلى فلسطين وحاصرهم في حصن شاروهين وفتت شملهم هناك حتى استسلموا ولم يظهر الهكسوس بعدها في التاريخ، كانت هذه المعركة حوالي عام 1580 ق.م.",
        english_info:"King Seqenenra was the first to start attacking the Hyksos to fight them and get them out of Egypt. He was killed in one of his battles with the Hyksos. Then his son Kames continued the war until Upper Egypt was cleansed of the Hyksos. Then Ahmose expelled the Hyksos out of the country. Ahmose went with his armies when he was about 19 years old. He used some modern weapons, such as chariots, and many of the people of Thebes joined the army. He and his armies went to Avaris (currently San al-Hajar), the capital of the Hyksos, and defeated them there. Then he pursued them to Palestine and besieged them in the fortress of Sharuhin, and reunited them there until they surrendered and did not The Hyksos then appear in history. This battle was around 1580 BC.",
        character_id: character_39.id,
        sub_era: sub_era_6,
    )
    event_11.cover_image.attach(io: URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGFxHy_6SYRA259vJFVK1iYX2bFybbl2sY73_MlYwU-Q&s"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"طرد الهكسوس من مصر",
        english_title:"",
        arabic_content:"يعتبر طرد الهكسوس من مصر من أبرز الأحداث في التاريخ المصري القديم، حيث نجح المصريون في استعادة سيادتهم على أرضهم بعد فترة طويلة من الاحتلال الأجنبي. الهكسوس كانوا قبائل آسيوية جاءت إلى مصر واستطاعت السيطرة على أجزاء كبيرة منها، خاصة في الشمال، خلال فترة ضعف الدولة الوسطى. كانت فترة حكمهم تتميز بالفوضى وعدم الاستقرار، مما أثر سلباً على الحياة السياسية والاقتصادية في البلاد.

        بدأ المصريون في تنظيم صفوفهم لمقاومة الهكسوس في عهد الأسرة السابعة عشرة، وكان أحمس الأول من أبرز القادة الذين قادوا هذه المقاومة. بفضل شجاعته وحنكته العسكرية، تمكن أحمس من شن حملات ناجحة ضد الحصون الهكسوسية، بدءًا من حصار مدينة أفاريس، عاصمة الهكسوس في الدلتا. استمر الحصار لعدة سنوات حتى تمكن أحمس من اقتحام المدينة وتحريرها.
        
        بعد تحرير أفاريس، استمر أحمس في مطاردة فلول الهكسوس حتى تمكن من طردهم بالكامل من مصر، حيث لاحقهم إلى فلسطين وسوريا، مما ضمن عدم عودتهم مرة أخرى. هذا الانتصار العظيم لم يكن فقط نهاية لاحتلال الهكسوس، بل كان بداية لعصر جديد من القوة والازدهار في مصر، حيث بدأت الأسرة الثامنة عشرة، والتي تعد من أقوى الأسرات في تاريخ مصر القديمة.
        
        شهدت هذه الفترة توحيد البلاد وإعادة بناء الاقتصاد وترميم المعابد والمؤسسات الدينية، مما عزز من قوة الدولة المصرية وازدهارها. وقد ساهم هذا الانتصار الكبير في تعزيز الروح الوطنية لدى المصريين، وجعلهم أكثر قدرة على مواجهة أي تحديات مستقبلية.
        
        هذا الحدث التاريخي كان له تأثير كبير على هوية المصريين وفخرهم الوطني، فقد أصبح رمزاً للصمود والإرادة القوية في وجه الغزاة. ولعل قصة طرد الهكسوس تبرز أيضاً أهمية الوحدة والتكاتف بين الشعب والقادة لتحقيق النصر واستعادة الحرية والسيادة.
        
        كما يُظهر هذا الحدث أيضاً براعة المصريين في التخطيط العسكري والتنظيم، وقدرتهم على تحويل الهزائم إلى انتصارات. إن ما حققه أحمس وجيشه من إنجازات عسكرية هو دليل على قوة العزيمة والشجاعة التي تحلى بها المصريون في تلك الفترة العصيبة.
        
        بالإضافة إلى البعد العسكري، كان لطرد الهكسوس دور كبير في إعادة بناء الثقافة والحضارة المصرية، حيث تم إعادة افتتاح المعابد وترميم الآثار التي دمرها الهكسوس، مما أدى إلى نهضة ثقافية ودينية جديدة. هذا الانتعاش الحضاري ساهم في تعزيز مكانة مصر كواحدة من أعظم الحضارات في التاريخ القديم.
        
        في النهاية، يظل طرد الهكسوس من مصر علامة فارقة في تاريخها، تعكس قدرة المصريين على التغلب على الصعاب والتحديات، والمحافظة على تراثهم وهويتهم على مر العصور.",
        english_content:"The expulsion of the Hyksos from Egypt is considered one of the most prominent events in ancient Egyptian history, as the Egyptians succeeded in regaining their sovereignty over their land after a long period of foreign occupation. The Hyksos were Asian tribes that came to Egypt and were able to control large parts of it, especially in the north, during the period of weakness of the Middle Kingdom. Their rule was characterized by chaos and instability, which negatively affected the country's political and economic life.

        The Egyptians began to organize their ranks to resist the Hyksos during the Seventeenth Dynasty, and Ahmose I was one of the most prominent leaders who led this resistance. Thanks to his courage and military skill, Ahmose was able to launch successful campaigns against the Hyksos fortresses, starting with the siege of the city of Avaris, the Hyksos capital in the Delta. The siege continued for several years until Ahmose was able to storm the city and liberate it.
        
        After liberating Avaris, Ahmose continued to pursue the Hyksos remnants until he was able to completely expel them from Egypt, where he pursued them to Palestine and Syria, ensuring that they would not return again. This great victory was not only the end of the Hyksos occupation, but it was the beginning of a new era of power and prosperity in Egypt, where the Eighteenth Dynasty began, which is considered one of the most powerful dynasties in the history of ancient Egypt.
        
        This period witnessed the unification of the country, the rebuilding of the economy, and the restoration of temples and religious institutions, which strengthened the strength and prosperity of the Egyptian state. This great victory contributed to strengthening the patriotic spirit of Egyptians and making them more capable of facing any future challenges.
        
        This historical event had a great impact on Egyptians’ identity and national pride, as it became a symbol of steadfastness and strong will in the face of invaders. Perhaps the story of the expulsion of the Hyksos also highlights the importance of unity and solidarity between the people and the leaders to achieve victory and restore freedom and sovereignty.
        
        This event also shows the Egyptians' ingenuity in military planning and organization, and their ability to turn defeats into victories. The military achievements achieved by Ahmose and his army are evidence of the strength of determination and courage that the Egyptians demonstrated in that difficult period.
        
        In addition to the military dimension, the expulsion of the Hyksos played a major role in rebuilding Egyptian culture and civilization, as temples were reopened and monuments destroyed by the Hyksos were restored, which led to a new cultural and religious renaissance. This cultural revival contributed to strengthening Egypt's position as one of the greatest civilizations in ancient history.
        
        In the end, the expulsion of the Hyksos from Egypt remains a milestone in its history, reflecting the ability of the Egyptians to overcome difficulties and challenges, and preserve their heritage and identity throughout the ages.",
        event_id: event_11.id,
    )
    event_12 = Event.create(
        type: "War",
        arabic_title: "معركة مجدو",
        english_title: "Battle of Megiddo",
        start_date: "1457",
        end_date: "1457",
        arabic_info:"دارت معركة مجدو (القرن الخامس عشر قبل الميلاد) بين القوات المصرية تحت قيادة الفرعون تحتمس الثالث وائتلاف كبير من المتمردين الكنعانيين تحت قيادة ملك قادش. وتعتبر أول معركة تم تسجيلها في الوثائق المقبولة تاريخيا. معركة مجدو هي أيضا أول معركة يتم فيها استخدام القوس المركب، كما أنها أول معركة يتم فيها إحصاء عدد القتلى. جميع تفاصيل المعركة تأتي من مصادر مصرية وبشكل رئيسي الكتابات الهيروغليفية على جدران قاعة الحوليات في معبد آمون رع في الكرنك، طيبة ( الأقصر) عن طريق كاتب الجيش (تجانيني).

        تُرجع الحسابات المصرية تاريخ المعركة إلى اليوم الحادي والعشرين من الشهر الأول في الموسم الثالث أو في السنة الثالثة والعشرين من حكم تحتمس الثالث. تم ادعاء أن ذلك كان في السادس عشر من أبريل من عام 1457 قبل الميلاد طبقا لحساب السنوات المتوسط، على الرغم من أن بعض الحسابات الأخرى أرجعت تاريخ المعركة إلى 1482 قبل الميلاد أو 1479 قبل الميلاد. انتهت معركة مجدو بانتصار مصري وأسفرت عن هزيمة قوات الكنعانيين والتي فرت إلى الأمان في مدينة مجدو مما نتج عنه حصار مجدو الطويل.
        
        مع إعادة تأكيد الهيمنة المصرية في الشام، بدأ تحتمس الثالث عهده الذي وصلت فيه الإمبراطورية المصرية إلى أقصى توسع لها.",
        english_info:"The Battle of Megiddo (15th century BC) was fought between Egyptian forces under the command of Pharaoh Thutmose III and a large coalition of Canaanite rebels under the command of the King of Kadesh. It is considered the first battle recorded in historically accepted documents. The Battle of Megiddo is also the first battle in which the compound bow was used, and it is also the first battle in which the number of deaths was counted. All details of the battle come from Egyptian sources, mainly the hieroglyphic writings on the walls of the Hall of Annals in the Temple of Amun-Ra at Karnak, Thebes (Luxor) via the army scribe (Tjanini).

        Egyptian accounts date the battle to the twenty-first day of the first month in the third season or the twenty-third year of the reign of Tuthmosis III. This was claimed to have been April 16, 1457 BC according to the Middle Year Calendar, although some other accounts date the battle to 1482 BC or 1479 BC. The Battle of Megiddo ended with an Egyptian victory and resulted in the defeat of the Canaanite forces, which fled to safety in the city of Megiddo, resulting in the long siege of Megiddo.
        
        With the reassertion of Egyptian hegemony in the Levant, Thutmose III began his reign in which the Egyptian Empire reached its greatest expansion.",
        character_id: character_46.id,
        sub_era: sub_era_6,
    )
    event_12.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/5/50/%D7%AA%D7%9C_%D7%9E%D7%92%D7%99%D7%93%D7%95.JPG"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"حوليات تحتمس الثالث",
        english_title:"Thutmose III Annals",
        arabic_content:"خلال حملة تحتمس الثالث الأولى في الشام، رافقه كاتبه الخاص تجانيني والذي احتفظ بمخطوطته اليومية. تقريبا في السنة الثانية والأربعين من حكمه أي بعد فترة طويلة من نهاية حملته العسكرية على الشام، أمر تحتمس الثالث الفنانين بكتابة ونقش حملاته العسكرية على جدار معبد آمون رع في الكرنك. تصف الحوليات تفاصيل 14 حملة عسكرية قادها تحتمس الثالث في الشام، والغنائم الكبيرة التي كسبها خلال حملاته، والضرائب التي تلاقها من الأراضي التي غزاها، وأخيرا العطايا إلى آمون رع. ترتيب التصوير يوحي بإيمان المملكة الحديثة بتدخل الآلهة في الأعمال الحربية حيث تم تقديم المدح والثناء للآلهة لمساعدتها في الحرب.

        بالإضافة إلى ذلك، فإن الحوليات تُظهر التأثيرات المستمرة لمعركة مجدو. فبعد انتصار تحتمس الثالث في معركة مجدو وبعد حملاته الناجحة في الشام في العشرين سنة التالية، بدأ ظهور قوة مصر على الساحة العالمية كقوى عظمى وتطورها إلى إمبراطورية وهو ما كان واضحا في الحوليات. تُظهر التصويرات الدبلوماسية العالمية خلال استقبال الهدايا من بابل ومن الإمبراطورية الحثية، وغيرهما من القوى الكبيرة والمسيطرة في ذلك الوقت.",
        english_content:"During Thutmose III's first campaign in the Levant, he was accompanied by his personal scribe Tjanini, who kept his daily manuscript. Approximately in the forty-second year of his reign, that is, long after the end of his military campaign in the Levant, Tuthmosis III ordered artists to write and engrave his military campaigns on the wall of the Temple of Amun-Ra in Karnak. The Annals describe the details of 14 military campaigns led by Thutmose III in the Levant, the great spoils he gained during his campaigns, the taxes he received from the lands he conquered, and finally the gifts to Amun-Ra. The arrangement of the depiction suggests the New Kingdom's belief in the intervention of the gods in warlike actions, as praise and compliments were offered to the gods for their assistance in war.

        In addition, the Annals show the continuing effects of the Battle of Megiddo. After Thutmose III's victory in the Battle of Megiddo and after his successful campaigns in the Levant in the following twenty years, Egypt's power began to appear on the world scene as a great power and its development into an empire, which was clear in the annals. Depictions show global diplomacy receiving gifts from Babylon, the Hittite Empire, and other major and dominant powers of the time.",
        event_id: event_12.id,
    )
    EventSection.create(
        arabic_title:"الحملة ضد ممالك كنعان",
        english_title:"Campaign against the Canaanite Kingdoms",
        arabic_content:"بدأ الفرعون تحتمس الثالث عهدا والذي وصلت فيه الإمبراطورية المصرية إلى أكبر اتساع لها من خلال تعزيزات طويلة الأمد للتواجد المصري في الشام. بعد الانتظار بفارغ الصبر لنهاية وصايته على العرش من قبل فرعون مصر حتشبسوت، استجاب على الفور بإخماد ثورة من الحكام المحليين بالقرب من قادش في محيط سوريا الحديثة. مع محاولة الحيثيين تغيير الإقطاعيات في أرض العموريين، استجاب تحتمس الثالث وتعامل مع التهديد بنفسه شخصيا. يُعتقد أن الكنعانيين تحالفوا مع الميتاني والعموريين من منطقة النهرين بين منابع نهري العاصي و الأردن. كانت القيادة والمحرك الرئيسي وراء هذه الثورات هو ملك قادش. وفرت قلعة قادش القوية حماية له وللمدينة. انضم ملك مجدو صاحب القلعة القوية أيضا إلى التحالف. كانت أهمية مجدو في موقعها الجغرافي على طول الحافة الجنوبية الغربية من مرج ابن عامر فقط وراء جبل الكرمل والبحر الأبيض المتوسط. من هذا الموقع سيطرت مجدو على طريق البحر وهو طريق التجارة الرئيسي بين مصر و بلاد ما بين النهرين.

        بأتت النقوش المصرية عن الحملة على جدران معبد الكرنك من الجريدة اليومية التي كان يحتفظ بها الكاتب تجانيني خلال الحملة العسكرية. في النقوش المصرية قام تحتمس الثالث بتجميع جيش من العربات والمشاة ليصل عدد الجيش من عشرة آلاف إلى عشرين ألف رجل. مع حشد المصريين لقواتهم، قام ملك قادش بجمع قوات القبائل في سوريا وآرام وكنعان من حوله، لتصل قواته إلى عشرة ألاف إلى خمسة عشر ألف رجل،  والذين دخلوا مجدو لتستقر القوات في ميناء تاناخ. توقع ملك مجدو أن عدوه سيأتي من عن طريق دوثايم-تاناخ وهو الطريق الرئيسي من أراضي البحر المتوسط المنخفضة داخل وادي كيشون، ومن مصر إلى بلاد ما بين النهرين. تجمع الجيش على حدود قلعة تجارو (تُسمى شيلا في اليونانية) و وصل بعد عشرة أيام إلى مدينة غزة الموالية لهم. بعد يوم واحد من الراحة انتقل الجيش إلى مدينة يحيم والتي وصلوا إليها بعد أحد عشر يوما. هنا أرسل تحتمس كتائب الاستطلاع. من أجل المواصلة نحو الشمال، كان عليهم اجتياز جبل الكرمل والذي يقع خلفه مدينة وقلعة مجدو، حيث تجمعت القوات المتمردة. كان هناك ثلاث طرق محتملة من يحيم إلى مجدو. يوفر كل من الطريق الشمالي عن طريق مدينتي زفتي ويوكنيام، والطريق الجنوبي عن طريق تناخ طريقا آمنا للوصول إلى وادي جزريل. الطريق الأوسطعن طريق أرونا كان مباشرا أكثر إلا أنه أكثر خطورة حيث أنه يتبع طريقا ضيقا ولا يمكن للقوات سوى السير في صف واحد وقد يخاطر المصريون بفقد القوات شيئا فشيئا. دعا قادة الجيش تحتمس الثالث إلى أخذ أحد الطريقين الآمنين والابتعاد عن الطريق الأوسط، إلا أن تحتمس الثالث -وبالاعتماد على المعلومات الواردة من كتائب الاستطلاع- قرر أخذ الطريق الأوسط المباشر إلى مجدو حيث استنتج أنه إذا نصحه قادة الجيش بأخذ الطريق السهل فلابد من أن العدو سيفترض أنهم سيأخذون هذا الطريق، ولذا فقد قرر فعل الغير متوقع.
        
         ترك ملك قادش عدد كبير من قوات المشاة لحراسة الطريقين المحتملين وتجاهل طريق أرونا وهو الطريق الجبلي الضيق القادم من الجنوب. اختار تحتمس الطريق الجبلي الضيق خلال وادي عارة متجاهلا خطورة انتشار قواته في الجبال حيث من السهل أن يكونوا عرضة لكمين من العدو في الممرات الجبلية الضيقة حيث لن يستطيع إنقاذهم. ليقلل الخطورة، قاد تحتمس القوات بنفسه خلال أرونا. مع قوات المشاة والفرسان من خيالة الجبال يسيرون بجانبهم في الجبال للقبض على أي كتائب استطلاعية للعدو ولترك الطريق الرئيسي للعربات مما سمح لتحتمس بالسير سريعا. في وجود حماية خفيفة للمدينة، قاد تحتمس هجوما سريعا ممزقا المتمردين حيث دخل الوادي دون مقاومة. الآن أصبح الطريق ممهدا أمام الجيش المصري إلى مجدو، مع وجود أعداد كبيرة من الجيش المتمرد بعيدا نحو الشمال أو نحو الجنوب.",
        english_content:"Pharaoh Thutmose III began a reign in which the Egyptian Empire reached its greatest expansion through long-term strengthening of the Egyptian presence in the Levant. After waiting impatiently for the end of his regency by Egyptian Pharaoh Hatshepsut, he immediately responded by putting down a revolt of local rulers near Kadesh on the periphery of modern-day Syria. As the Hittites attempted to change fiefdoms in the land of the Amorites, Tuthmosis III responded and dealt with the threat personally. It is believed that the Canaanites allied with the Mitanni and Amorites from the two rivers region between the headwaters of the Orontes and Jordan rivers. The leadership and main mover behind these revolts was the King of Kadesh. The powerful citadel of Kadesh provided protection for him and the city. The king of Megiddo, the owner of the powerful castle, also joined the alliance. Megiddo's importance lay in its geographical location along the southwestern edge of Marj Ibn Amer just beyond Mount Carmel and the Mediterranean Sea. From this location, Megiddo controlled the sea route, the main trade route between Egypt and Mesopotamia.

        The Egyptian inscriptions about the campaign on the walls of the Karnak Temple came from the daily newspaper that the writer Tjanini kept during the military campaign. In Egyptian inscriptions, Thutmose III assembled an army of chariots and infantry, bringing the number of the army from ten thousand to twenty thousand men. With the Egyptians gathering their forces, the King of Kadesh gathered the forces of the tribes in Syria, Aram and Canaan around him, bringing his forces to ten thousand to fifteen thousand men, who entered Megiddo to settle the forces in the port of Tanakh. The King of Megiddo expected that his enemy would come by way of Dotheim-Tanach, the main route from the Mediterranean lowlands into the Kishon Valley, and from Egypt to Mesopotamia. The army gathered on the borders of Tjaro Castle (called Sheila in Greek) and arrived ten days later in the city of Gaza, which was loyal to them. After one day of rest, the army moved to the city of Yahim, which they reached after eleven days. Here Thutmose sent reconnaissance brigades. In order to continue north, they had to pass Mount Carmel, behind which lay the city and castle of Megiddo, where the rebel forces were gathered. There were three possible routes from Yachim to Megiddo. Both the northern route via the cities of Zefti and Yokneam, and the southern route via Tanakh provide a safe route to the Jezreel Valley. The middle route, via Aruna, was more direct, but more dangerous, as it followed a narrow path, and the troops could only walk in single file, and the Egyptians risked losing troops little by little. The army leaders called on Thutmose III to take one of the two safe routes and stay away from the middle route. However, Thutmose III - relying on information received from the reconnaissance brigades - decided to take the direct middle route to Megiddo, where he concluded that if the army leaders advised him to take the easy route, the enemy must assume They would take this path, so he decided to do the unexpected.
        
          The King of Kadesh left a large number of infantry forces to guard the two possible routes and ignored the Aruna Road, the narrow mountain road coming from the south. Thutmose chose the narrow mountain road through Wadi Ara, ignoring the danger of deploying his forces in the mountains, where they would easily be vulnerable to an enemy ambush in the narrow mountain passes, where he would not be able to save them. To reduce the risk, Thutmose personally led the troops through Aruna. With infantry and mountain cavalry marching alongside them into the mountains to catch any enemy reconnaissance battalions and to leave the main road to the chariots, allowing Thutmose to march quickly. With the city lightly protected, Thutmose led a rapid attack, ripping apart the rebels as he entered the valley unopposed. Now the way was paved for the Egyptian army to Megiddo, with large numbers of the rebel army far north or south.",
        event_id: event_12.id,
    )
    EventSection.create(
        arabic_title:"المعركة والحصار",
        english_title:"The Battle and the Siege",
        arabic_content:"اغتنم تحتمس الفرصة حيث أقام المعسكر في نهاية اليوم، ولكن أثناء الليل حشد قواته قريبا من العدو ليهاجم في صباح اليوم التالي. ليس من الواضح ما إذا استطاع ملك قادش المصدوم التحضير للمعركة. وحتى إذا كان استعد، فلن يفيده ذلك كثيرا الآن. على الرغم من أن قواته كانت على أرض مرتفعة قريبة من القلعة، إلا أن القوات المصرية كانت مرتبة في تشكيل مقعر مكون من ثلاثة أجنحة والتي هددت كلا من جانبي الكنعانيين. كانت تقدر أعداد كل من القوات المصرية والقوات الكنعانية بحوالي 1000 عربة و10000 من قوات المشاة. قاد الفرعون الهجوم من الوسط. المزيج من الموقع والعدد، وقدرات المناورة للجناح الأيسر، بالإضافة إلى هجوم مبكر قوي أضعف عزيمة العدو لتنهار قواته سريعا. هربت القوات القريبة من المدينة داخلها وأغلقوا البوابات خلفهم. 

        بدأ الجنود المصريون نهب معسكر العدو. خلال ذلك استولوا على 924 عربة و200 درع. لسوء حظ المصريين، فقد استطاعت القوات الكنعانية المتناثرة بالإضافة إلى ملوك قادش ومجدو الانضمام إلى المدافعين داخل المدينة، حيث قام المدافعون داخل المدينة بمد الملابس المربوطة ببعضها من فوق الأسوار للجنود ليتسلقوا الأسوار ويدخلوا المدينة مما أضاع فرصة الاستيلاء السريع على المدينة من أيدي المصريين.
        
        تم حصار المدينة لمدة سبعة أشهر ليهرب ملك قادش بعدها. حيث قام تحتمس بحفر خندق وسور خشبي مما أجبر أعداءه على الاستسلام. في الكرنك تم تسجيل أن الجيش المنتصر أعاد إلى الديار 340 أسيرا و2041 فرسا و6 فحول و924 عربة و200 درع و502 قوس و1929 من الماشية و22500 من الأغنام، بالإضافة إلى الدرع الملكي وخيمة ملك مجدو، وتم الاحتفاظ بالمدينة وسكانها. تم غزو عدد من المدن في وادي جيزريل وأُعيدت السيطرة المصرية عليها.",
        english_content:"Thutmose took the opportunity to set up camp at the end of the day, but during the night he gathered his forces close to the enemy to attack the next morning. It is not clear whether the shocked king of Kadesh could prepare for battle. Even if he had prepared, it wouldn't do him much good now. Although his forces were on high ground close to the citadel, the Egyptian forces were arranged in a concave formation of three wings which threatened both flanks of the Canaanites. The Egyptian and Canaanite forces were estimated to number approximately 1,000 chariots and 10,000 infantry. The Pharaoh led the attack from the middle. The combination of location, numbers, and maneuvering capabilities of the left wing, in addition to a strong early attack, weakened the enemy's resolve and his forces quickly collapsed. The forces near the city fled inside it and closed the gates behind them.

            Egyptian soldiers began looting the enemy camp. During this, they seized 924 vehicles and 200 armor. Unfortunately for the Egyptians, the scattered Canaanite forces, as well as the kings of Kadesh and Megiddo, were able to join the defenders inside the city. The defenders inside the city extended clothes tied together over the walls for the soldiers to climb the walls and enter the city, which lost the opportunity to quickly seize the city from the hands of the Egyptians.
            
            The city was besieged for seven months, after which the King of Kadesh fled. Where Tuthmosis dug a trench and a wooden fence, forcing his enemies to surrender. In Karnak, it was recorded that the victorious army returned home 340 prisoners, 2,041 horses, 6 stallions, 924 chariots, 200 shields, 502 bows, 1,929 cattle and 22,500 sheep, in addition to the royal shield and the tent of the King of Megiddo, and the city and its inhabitants were preserved. A number of cities in the Jezreel Valley were conquered and Egyptian control was restored.",
        event_id: event_12.id,
    )
    EventSection.create(
        arabic_title:"النتائج",
        english_title:"Results",
        arabic_content:"زادت هذه الحملة اتساع المملكة المصرية. كما كتب بول ك. دافيز: «مع تأكيد الهيمنة المصرية في كنعان، بدأ تحتمس الثالث عهدا وصلت فيه المملكة المصرية إلى أقصى اتساع لها كإمبراطوية.» طلب تحتمس الثالث من الملوك المهزومين أن يُرسل كل منهم ابنه إلى المحكمة المصرية. هناك حصلوا على تعليم مصري. وعندما عادوا إلى أوطانهم، حكموا بتعاطف مصري. إلا أن الانتصار في مجدو كان فقط البداية لتهدئة الأوضاع في الشام. حيث لم يتحقق الهدوء الفعلي إلا بعد عدة حملات عسكرية أخرى، والتي كانت سنوية تقريبا. أحد النتائج غير المتوقعة هي كلمة أرماجدو، والتي أتت من اسم مجدو.",
        english_content:"زادت هذه الحملة اتساع المملكة المصرية. كما كتب بول ك. دافيز: 'مع تأكيد الهيمنة المصرية في كنعان، بدأ تحتمس الثالث عهدا وصلت فيه المملكة المصرية إلى أقصى اتساع لها كإمبراطوية.' طلب تحتمس الثالث من الملوك المهزومين أن يُرسل كل منهم ابنه إلى المحكمة المصرية. هناك حصلوا على تعليم مصري. وعندما عادوا إلى أوطانهم، حكموا بتعاطف مصري. إلا أن الانتصار في مجدو كان فقط البداية لتهدئة الأوضاع في الشام. حيث لم يتحقق الهدوء الفعلي إلا بعد عدة حملات عسكرية أخرى، والتي كانت سنوية تقريبا. أحد النتائج غير المتوقعة هي كلمة أرماجدو، والتي أتت من اسم مجدو.",
        event_id: event_12.id,
    )
    event_13 = Event.create(
        type: "War",
        arabic_title: "معركة قادش",
        english_title: "Battle of Kadesh",
        start_date: "1274",
        end_date: "1274",
        arabic_info:"معركة قادش وقعت بين قوات الملك رمسيس الثاني ملك مصر والحيثيين بقيادة الملك مواتللي الثاني بمدينة قادش التي تقع علي الضفة الغربية لنهر العاصي في سورية جنوب بحيرة حمص بعدة كيلومترات. هذه المعركة مؤرخة في العام الخامس من حكم الملك رمسيس الثاني (العام الخامس فصل الشمو، اليوم التاسع) أي حوالي العام 1274 ق.م علي وجه التقريب.",
        english_info:"The Battle of Kadesh took place between the forces of King Ramesses II of Egypt and the Hittites led by King Muwatli II in the city of Kadesh, which is located on the western bank of the Orontes River in Syria, several kilometers south of Lake Homs. This battle is dated in the fifth year of the reign of King Ramesses II (the fifth year, the season of Shemo, the ninth day), that is, roughly around the year 1274 BC.",
        character_id: character_47.id,
        sub_era: sub_era_6,
    )
    event_13.cover_image.attach(io: URI.open("https://img.youm7.com/large/202209100826482648.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"خلفية تاريخية",
        english_title:"Historical Background",
        arabic_content:"بدأ انحسار النفوذ الفرعوني في آسيا في عصر أواخر ملوك الأسرة الثامنة عشرة كنتيجة مباشرة للاضطرابات التي خلفتها الحرب الأهلية في مصر أثناء ثورة إخناتون الدينية في الداخل. مما جعل الحثيين يستغلون هذه الاضطرابات لكي يقوموا بقيادة تحالف ضد الفراعنة، ونجاحهم في ذلك . بالتالي فقد الفراعنة الكثير من مناطق نفوذهم في آسيا الغربية، وذلك دون أن يتحرك الملك أخناتون لتلبية طلبات النجدة التي كان يرسلها إليه أمراء المدن السورية الموالون للفراعنة فيما عرف برسائل تل العمارنة.

        وبعد وفاة الملك أخناتون وفشل ثورته الدينية والعودة إلى عبادة الآلهة التقليدية والإله امون مرة أخرى، تولى الفرعون حور محب مقاليد عرش مصر، حيث كان فائد الجيش في عهد توت عنخ آمون. و يعتبر حور محب آخر فراعنة الأسرة الثامنة عشرة الذي قام بتنظيم الشؤون الداخلية لمصر، والذي توفي دون وريث بعد أن نجح في إعادة الأمن الي البلاد. تولى بعده أحد قادة الجيش وهو رمسيس الأول مؤسساً بذلك الأسرة التاسعة عشرة.
        
        وقد أخذ ملوك هذه الأسرة على عاتقهم استعادة النفوذ الفرعوني في آسيا مرة أخرى . فبعد وفاة الفرعون رمسيس الأول بعد سنتين من الحكم، بدأ ابنه وخليفته سيتي الأول حملاته العسكرية ضد الحيثيين . وكان يرمي الي صد التقدم الحيثي واسترجاع نفود الدولة المصرية في بلاد الشام التي حكمها المصريون منذ عهد تحتمس الثالث أثناء الأسره الثامنة عشر. وبالفعل نجح سيتي الأول بعد عدة حملات عسكرية وتقابل مع جيوش الحيثيين بالقرب من قادش في سوريا الحالية. وأخيراً عقد الصلح معهم (كما ذكر في نقوشه على جدران معبد الكرنك) بمعاهدة شهيرة، وربما قام بتوقيع معاهدة مع الحيثيين، ومات بعد 14 عاما من الحكم، وتولى الحكم من بعده ابنه رمسيس الثاني.
        
        وقد شن الفرعون رمسيس الثاني حملته الأولى في العام الرابع من حكمه وعبر فيه فلسطين ووصل بجيوشه الي نهر الكلب (بالقرب من بيروت) حيث أقام لوحة تذكارية هناك، واستعاد مقاطعة أمور من الحيثيين. وبغرض السيطرة على بلاد الشام تحرك الملك رمسيس الثاني بجيوشه في العام الخامس من حكمه، وتابع تقدمه شمالاً وتواجه مع جيوش الحيثيين عند مدينة قادش على نهر العاصي وانتهت بتعادل الطرفين ولجوؤهما إلى التصالح لإنهاء الصراع على النفوذ الذي كلف كلا الإمبراطوريتين الكثير من الأرواح والخسائر .",
        english_content:"The decline of Pharaonic influence in Asia began in the era of the late kings of the Eighteenth Dynasty as a direct result of the unrest caused by the civil war in Egypt during Akhenaten's religious revolution at home. Which made the Hittites take advantage of these disturbances in order to lead an alliance against the Pharaohs, and they succeeded in doing so. Consequently, the Pharaohs lost many of their areas of influence in Western Asia, without King Akhenaten taking any action to respond to the requests for help that were sent to him by the princes of the Syrian cities loyal to the Pharaohs in what was known as the Amarna Letters.

        After the death of King Akhenaten, the failure of his religious revolution, and the return to the worship of the traditional gods and the god Amun again, Pharaoh Horemheb assumed the reins of the throne of Egypt, where he was the commander of the army during the reign of Tutankhamun. Horemheb is considered the last pharaoh of the Eighteenth Dynasty who organized the internal affairs of Egypt, and who died without an heir after he succeeded in restoring security to the country. After him, one of the army commanders, Ramesses I, took over, establishing the Nineteenth Dynasty.
        
        The kings of this family took it upon themselves to restore Pharaonic influence in Asia once again. After the death of Pharaoh Ramses I after two years of rule, his son and successor, Seti I, began his military campaigns against the Hittites. It aimed to repel the Hittite advance and restore the influence of the Egyptian state in the Levant, which had been ruled by the Egyptians since the reign of Tuthmosis III during the Eighteenth Dynasty. Indeed, Seti I succeeded after several military campaigns and met with the Hittite armies near Kadesh in present-day Syria. Finally, he concluded peace with them (as mentioned in his inscriptions on the walls of the Karnak Temple) with a famous treaty, and he may have signed a treaty with the Hittites. He died after 14 years of rule, and his son Ramesses II assumed power after him.
        
        Pharaoh Ramesses II launched his first campaign in the fourth year of his rule, crossing Palestine and arriving with his armies at Nahr al-Kalb (near Beirut), where he erected a memorial plaque there, and regained the province of Amur from the Hittites. For the purpose of controlling the Levant, King Ramesses II moved his armies in the fifth year of his reign, and continued his advance northward and confronted the Hittite armies at the city of Kadesh on the Orontes River. It ended with both sides tied and they resorted to reconciliation to end the struggle over influence that cost both empires many lives and losses.",
        event_id: event_13.id,
    )
    EventSection.create(
        arabic_title:"حملة قادش",
        english_title:"Kadesh Campaign",
        arabic_content:"خرج رمسيس الثاني بجيوشه من قلعة ثارو الحدودية وذلك في ربيع العام الخامس من حكمه. وبعد مرور شهر وصل بجيوشه إلى مشارف مدينة قادش عند ملتقى أحد فروع نهر العاصي . وكان الجيش يتكون من أربعة فيالق وهي فيالق آمون ورع وبتاح وست وهي أسماء آلالهة الكبرى، بينما كان الملك مواتللي ملك الحيثيين قد حشد جيشاً قوياً انخرط فيه الكثير من الجنود بالإضافة إلى جيوش حلفائه (ومن بينهم ريميشارينا أمير حلب)، واتخذ من قادش القديمة مركزاً لجيوشه.",
        english_content:"Ramesses II left with his armies from the border castle of Tharu in the spring of the fifth year of his reign. After a month had passed, he arrived with his armies on the outskirts of the city of Kadesh, at the confluence of one of the branches of the Orontes River. The army was composed of four legions, namely the legions of Amun, Ra, Ptah, and Set, which are the names of the major gods. Meanwhile, King Muwatalli, king of the Hittites, had mobilized a strong army in which many soldiers were involved, in addition to the armies of his allies (among them Remisharena, the Emir of Aleppo), and he took ancient Kadesh as a center for his armies. .",
        event_id: event_13.id,
    )
    EventSection.create(
        arabic_title:"المعركة",
        english_title:"The Battle",
        arabic_content:"فيما كان رمسيس الثاني معسكراً بجيشه بالقرب من قادش (التي كانت علي مسيرة يوم واحد)، إذ دخل معسكره اثنان من الشاسو (البدو) ادعيا أنهما فاران من جيش الملك الحيثي، وأظهرا الولاء للفرعون . فسلمهما إلى رجاله ليستجوبوهما عن مكان جيوش الحيثيين، فأخبرا الفرعون بأن ملك الحيثيين قد بعد عن الموقع وهو حاليا في حلب شمال سوريا.

        وفي الواقع لم يكن هذان الشاسو غير جواسيس . وعلي أساس هذه الأخبار وبدون التأكد من صحتها أسرع الملك رمسيس الثاني علي رأس فيلق امون وعبر مخاضة لنهر العاصي، ثم سار إلى مرتفع شمال غربي قادش وأقام معسكره هناك في انتظار وصول باقي الجيش ليتابع السير في أثر جيش خيتا الذي كان يظن أنه في الشمال حسبما أخبره الجاسوسان . وفي هذه الأثناء قبض جيشه على اثنين من جنود العدو الكشافة اللذين استخلصوا منهما الحقيقة وهي أن الحيثيين كانوا كامنين في قادش وأن جيوش الحيثيين كانت في طريقها لعبور نهر العاصي ومفاجئة الجيش المصري هناك.
        
        وبالفعل عبر نصف الجيش الحيثي مخاضة نهر العاصي وفاجئوا رمسيس الثاني الذي كان قد ارتكب خطأ تكتيكيا بترك مساحات كبيرة بين فيالقه فهاجموا فيلق رع ودمروه تدميرًا كاملًا وبذلك قطعوا الاتصال بين رمسيس الثاني وبقية فيالقه. واتجه الجيش الحيثي بعد ذلك بعرباته الحربية وتابع تقدمه وهاجم فيلق آمون الذي فقد نتيجة ذلك العديد من جنوده.
        
        وهنا وفي مواجهة خطر التطويق والهزيمة المحتمة قاد رمسيس بنفسه هجوماً ضد الحيثيين حيث سلك بالجيش ممراً ضيقاً ليلتف حول الحيثيين . ثم هاجمهم ودفع بهم حتي النهر وكانت اللحظة الفارقة في ذلك وصول إمدادات من جنوده القادمين من بلاد أمور والمسماة (نعارينا). وقد فاجأ ذلك الحيثيين ووجدوا أنفسهم محاصرين واضطر الحيثيون لترك عرباتهم الحربية والسباحة في نهر العاصي أمام هجوم الرعامسة.
        
        وفي اليوم التالي دارت معركة أخرى غير حاسمة، وقد ادعى رمسيس الثانى في كتاباته أن مواتللي الثاني قد أرسل في طلب الصلح في ذلك اليوم، ولكن ليست هناك أية دلائل من جانب الحيثيين تؤكد صدق هذه الرواية. وبعد معارك ضارية بين الطرفين والخسائر الفادحة التي لحقت بهما اتفق الطرفان على الصلح.",
        english_content:"While Ramesses II was camping his army near Kadesh (which was one day's journey), two Shasu (Bedouins) entered his camp, claiming that they were fleeing from the army of the Hittite king, and showed loyalty to the Pharaoh. So he handed them over to his men to interrogate them about the location of the Hittite armies. They told the Pharaoh that the Hittite king had moved away from the site and was currently in Aleppo in northern Syria.

        In reality, these two Chasu were nothing but spies. On the basis of this news, and without confirming its authenticity, King Ramesses II, at the head of Amun’s legion, hurried and crossed a ford of the Orontes River, then walked to a highland northwest of Kadesh and set up his camp there awaiting the arrival of the rest of the army, to continue following in the wake of the army of Kheta, which he thought was in the north, according to what he had been told. The two spies. Meanwhile, his army captured two enemy scouts from whom they extracted the truth, which was that the Hittites were lurking in Kadesh and that the Hittite armies were on their way to cross the Orontes River and surprise the Egyptian army there.
        
        Indeed, half of the Hittite army crossed the ford of the Orontes River and surprised Ramesses II, who had made a tactical mistake by leaving large spaces between his legions. They attacked Ra’s legion and completely destroyed it, thus cutting off communication between Ramesses II and the rest of his legions. The Hittite army then headed with its war chariots and continued its advance and attacked the Amun Corps, which lost many of its soldiers as a result.
        
        Here, in the face of the threat of encirclement and inevitable defeat, Ramesses personally led an attack against the Hittites, as he led the army through a narrow corridor to circumvent the Hittites. Then he attacked them and pushed them to the river, and the decisive moment in that was the arrival of supplies from his soldiers coming from the country of Amur, called (Naarina). This surprised the Hittites and they found themselves surrounded and the Hittites were forced to abandon their war chariots and swim in the Orontes River in front of the Ramesside attack.
        
        The next day, another inconclusive battle took place. Ramesses II claimed in his writings that Muwatalli II had sent a request for peace on that day, but there is no evidence on the part of the Hittites to confirm the truth of this story. After fierce battles between the two parties and the heavy losses they suffered, the two parties agreed to reconcile.",
        event_id: event_13.id,
    )
    EventSection.create(
        arabic_title:"النتيجة",
        english_title:"Results",
        arabic_content:"فشل رمسيس الثاني في كسر دفاعات قادش ونجح الحيثيون بإبقائها تحت سيطرتهم وانتهت المعركة باحتفاظ كل من الطرفين بنفس مكاسبه السابقة وخسائر فادحة لكلا الطرفين في المعركة. وعاد رمسيس آفلا إلى دمشق. ذكر رمسيس الثاني انتصاره في المعركة، والتي قام بنقش تفاصيلها بالكامل على جدران معبد الرمسيوم وكذلك معبد الأقصر، بالإضافة إلى معبده بأبو سمبل (على جداره الشمالي فيما عرف بأنشودة معركة قادش).

        وقد ذكر الملك مواتللي من ناحيته في وثائق بوغازكوي بان المعركة كانت انتصاراً له وان أمور قد وقعت في أيدي الحيثيين، بينما وفي خلال السنوات العشر التي مرت بعد ذلك قام رمسيس الثاني بعدة حملات في آسيا واستولي على دابور بعد حصارها واضطر الحيثيون في النهاية إلى التراجع تاركين أكبر جزء من سوريا دون حماية كافية. وفي أعقاب وفاة مواتللي تولى ابنه الحكم وبعد عدة سنوات من الحكم حل محله عمه الملك خاتوشيلى الثالث وانتهز رمسيس هذه الفرصة وتقدم نحو تونيب أو توشب واستولي عليها.
        
        وهنا بدأت قوة الأشوريين (شمال العراق حاليا) في اظهار نفوذهم وتهديد مناطق النفوذ المصرية والحيثية ؛ مما حدا بالطرفين الي توقيع معاهدة سلام بينهما، وذلك في العام الحادي والعشرين من حكم الملك رمسيس الثاني (حوالي 1258 ق.م) والتي سجلت بالخطين الحيثى (على لوح من الفضة باسم الملك خاتوشيلى) والهيروغليفي على جدران معبدي الكرنك والرامسيوم في طيبة (الأقصر حاليا) في جنوب مصر.",
        english_content:"Ramesses II failed to break the defenses of Kadesh, and the Hittites succeeded in keeping it under their control. The battle ended with both sides maintaining the same previous gains and heavy losses for both sides in the battle. Ramses returned successfully to Damascus. Ramses II mentioned his victory in the battle, the details of which he engraved in full on the walls of the Ramesseum Temple as well as the Luxor Temple, in addition to his temple in Abu Simbel (on its northern wall in what is known as the Battle of Kadesh chant).

        King Muwatelli, for his part, mentioned in the Boghazköy documents that the battle was a victory for him and that matters had fallen into the hands of the Hittites, while during the ten years that passed after that, Ramesses II carried out several campaigns in Asia and seized Dabur after its siege, and the Hittites were eventually forced to retreat, leaving The largest part of Syria is without adequate protection. Following the death of Muwatelli, his son assumed power, and after several years of rule, his uncle, King Khatushili III, replaced him. Ramesses took advantage of this opportunity and advanced towards Tunip or Tusheb and seized it.
        
        Here the power of the Assyrians (currently northern Iraq) began to show their influence and threaten the Egyptian and Hittite areas of influence. Which led the two parties to sign a peace treaty between them, in the twenty-first year of the reign of King Ramesses II (about 1258 BC), which was recorded in Hittite script (on a silver tablet in the name of King Khatushili) and in hieroglyphics on the walls of the Karnak and Ramesseum temples in Thebes (currently Luxor). ) in southern Egypt.",
        event_id: event_13.id,
    )
    EventSection.create(
        arabic_title:"معاهدة السلام",
        english_title:"Peace Treaty",
        arabic_content:"تم توقيع معاهدة سلام مصرية حيثية رسمية في عام 1258 قبل الميلاد بين المصريين والحيثيين. تم نقش المعاهدة على لوح من الفضة، ووصل الينا منها نسخة من الطين نجا في العاصمة الحيثية حاتوسا حتوساس الموجودة جغرافيا في تركيا الحديثة، ومعروضة في متحف الآثار في إسطنبول. وهناك نسخة طبق الاصل لمعاهدة قادش معلقة في المقر الدائم للأمم المتحدة كأول معاهدة سلام مكتوبة وموثقة في التاريخ. النسخ الحيثية منقوشة على ألواح الطين والنسخ المصرية مكتوبة على أوراق البردي.",
        english_content:"A formal Egyptian-Hittite peace treaty was signed in 1258 BC between the Egyptians and the Hittites. The treaty was engraved on a silver plate, and a clay copy of it has survived to us in the Hittite capital of Hattusa, located geographically in modern-day Turkey, and is on display in the Archeology Museum in Istanbul. There is a replica of the Kadesh Treaty hanging at the permanent headquarters of the United Nations as the first written and documented peace treaty in history. The Hittite versions are inscribed on clay tablets and the Egyptian versions are written on papyrus.",
        event_id: event_13.id,
    )
    event_14 = Event.create(
        type: "PeaceTreaty",
        arabic_title: "معاهدة السلام المصرية الحيثية",
        english_title: "Egyptian-Hittite Peace Treaty",
        start_date: "1259",
        end_date: "1259",
        arabic_info:"معاهدة السلام المصرية الحيثية وقعت بين الفرعون رمسيس الثاني والملك الحيثي خاتوشيلي الثالث في عام 21 من حكم رمسيس الثاني، نحو 10 نوفمبر 1259 ق م. أكد كلا الحاكمين في الاتفاق على السلام بينهما واعترف كل منهما بالآخر كشريك متساوي له. وعدا بعضهما البعض بالدعم العسكري ضد التهديدات الداخلية والخارجية، كما وافقا على تسليم 'اللاجئين' إلى أيدي الطرف الآخر.

        لم يُتفق حتى الآن حول مدى أهمية محتوى المعاهدة أو حول معناها. خاصة في الأبحاث القديمة صُنّفت الوثيقة على أنها أقدم معاهدة دولة و‌معاهدة سلام في تاريخ العالم تساوي بين الطرفين. أما الأبحاث الحديثة تُشكك في اعتبار الوثيقة اتفاقية سلام بالمعنى الحديث، وتفترض أن معاهدات سلام أخرى قد وقعت من قبلها، حتى لو لم نعثر على نصوصها.
        
        في وسائل الإعلام العامة تسود الوجهة النظرية الكلاسيكية على أنها اتفاقية سلام رائدة. من ثَم تُعرض نسخة من نص المعاهدة اليوم في مقر الأمم المتحدة في نيويورك.",
        english_info:"The Egyptian-Hittite peace treaty was signed between Pharaoh Ramesses II and the Hittite king Khatushili III in the year 21 of the reign of Ramesses II, around November 10, 1259 BC. Both rulers confirmed the peace agreement between them and recognized each other as their equal partners. They promised each other military support against internal and external threats, and also agreed to hand over the 'refugees' into the hands of the other party.

        There is no agreement yet on the importance of the content of the treaty or its meaning. Especially in ancient research, the document was classified as the oldest state treaty and peace treaty in world history that equates the two parties. Modern research casts doubt on whether the document is considered a peace agreement in the modern sense, and assumes that other peace treaties were signed before it, even if we have not found their texts.
        
        In the public media the classic view prevails that it is a groundbreaking peace agreement. A copy of the text of the treaty is on display today at United Nations Headquarters in New York.",
        character_id: character_47.id,
        sub_era: sub_era_6,
    )
    event_14.cover_image.attach(io: URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJcB9zzG6_mbLOWUwbO8bIfbq-MY2VdAg3xXF7J45Ke-yj_7OCH6iUyF4eXNGWyYC83zQ&usqp=CAU"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"السياق التاريخي",
        english_title:"Historical Context",
        arabic_content:"تنافس مصر والإمبراطورية الحيثية منذ نحو النصف الثاني من القرن الرابع عشر قبل الميلاد حول الحكم في منطقة سوريا و‌فلسطين. كان تحتمس الثالث قد وسع دائرة النفوذ المصري إلى هناك. على أبعد تقدير بدأت الاشتباكات بينهن عندما غزا الملك الحيثي سابيليوليوما الأول معظم شمال سوريا. من ثَم تواجدت نزاعات حدودية عِدّة، وأيضًا علاقات دبلوماسية، كما يتضح من معاهدة كوروستاما التي سبقت معاهدة السلام، ومن رسائل تل العمارنة. خصوصًا في عهد رمسيس الثاني اندلعت الصراعات العسكرية مرة أخرى، مثل معركة قادش الشهيرة عند نهر العاصي (1274 ق.م) ومعركة دابور (1271 ق.م). معاهدة سلام 1259 ق.م تمثل نهاية هذه الصراعات، بالرغم من عدم وضوح علاقة المعاهدة بهذه الأحداث التي أجريت قبلها.",
        english_content:"Since about the second half of the fourteenth century BC, Egypt and the Hittite Empire competed over governance in the region of Syria and Palestine. Thutmose III had expanded the circle of Egyptian influence there. At the latest, the clashes between them began when the Hittite king Suppiluliuma I conquered most of northern Syria. Hence, there were numerous border disputes, as well as diplomatic relations, as evidenced by the Treaty of Kurostama, which preceded the peace treaty, and the Amarna Letters. Especially during the reign of Ramesses II, military conflicts broke out again, such as the famous Battle of Kadesh at the Orontes River (1274 BC) and the Battle of Dabur (1271 BC). The peace treaty of 1259 BC marks the end of these conflicts, although the relationship of the treaty to the events that took place before it is not clear.",
        event_id: event_14.id,
    )
    EventSection.create(
        arabic_title:"وجهة النظر القديمة",
        english_title:"Ancient View",
        arabic_content:"سبب شعبية المعاهدة يقع في سرد شائع يروى عن تحول فذ في تفكير رمسيس الثاني وخاتوشيلي الثالث. يرجع هذا السرد إلى علماء ومؤلفين القرن التاسع عشر والقرن العشرين. بحسب هذا السرد بدلاً من استمرار الصراع، كلا الحاكمين قررا التعاون مع بعضهما البعض، مع وجود فروق صغيرة في تفاصيل هذه الوجهة النظرية بين المؤلفين. بشكل عام، تعتبر المعاهدة نتيجة متأخرة لمعركة قادش، حيث لم يتمكن أي من الحاكمين على الانتصار العسكري. على هذه الخلفية - وربما أيضًا استنادًا إلى تجاربهم الشخصية بالحروب - اعتقدوا المؤلفون القدماء أن الحكام كانوا بحاجة إلى السلام. بينما مال مؤلفون آخرون إلى الرأي أن الهدف كان علاقة تعاون قائمة على سلام، بنفس نهج وغرض ميثاق الأمم المتحدة اليوم. لذا فإن كلتا نسختي العقد (المصرية والحيثية) يقدمان الحاكم الآخر على أنه صانع سلام. فبحسب هؤلاء المؤرخين نصوص العقد تعرض السلام على أنه الهدف الوحيد للصراع السابق، والذي بهذه الطريقة يظهر وكأنه حرب عادل. وخصوصًا هذا السرد عن معنى وأسباب المعاهدة هو سبب تصوير المعاهدة في وسائل الإعلام العامة على أنها أقدم معاهدة سلام وأقدم معاهدة دولة في تاريخ العالم.",
        english_content:"The reason for the popularity of the treaty lies in a popular narrative about a remarkable shift in the thinking of Ramesses II and Khatushili III. This narrative goes back to nineteenth- and twentieth-century scholars and authors. According to this narrative, instead of continuing the conflict, both rulers decided to cooperate with each other, although there are small differences in the details of this theoretical view between the authors. In general, the treaty is considered a late result of the Battle of Kadesh, in which neither ruler was able to achieve a military victory. Against this background - and perhaps also based on their personal experiences of war - ancient authors believed that rulers needed peace. While other authors tended to view that the goal was a cooperative relationship based on peace, in the same approach and purpose as the United Nations Charter today. So both versions of the contract (Egyptian and Hittite) present the other ruler as peacemaker. According to these historians, the texts of the contract present peace as the sole goal of the previous conflict, which in this way appears as a just war. Especially this account of the meaning and reasons for the treaty is why the treaty is portrayed in the public media as the oldest peace treaty and the oldest state treaty in world history.",
        event_id: event_14.id,
    )
    EventSection.create(
        arabic_title:"وجهة النظر المعاصرة",
        english_title:"Contemporary View",
        arabic_content:"معظم علماء التاريخ المعاصرين يرفضون وجهة النظر الرومانسية لدى العلماء السابقين. بدلًا من ذلك، يناقشون دوافع مختلفة أدت إلى توقيع العقد ويفضلون التفسير بأن توجد عدة أسباب للمعاهدة وليس فقط سبب واحد. يُعد عامل أساسي لإبرام العقد زيادة نفوذ الإمبراطورية الآشورية الوسطى في عهد شلمنصر الأول الذي أدى إلى تحول ميزان القوى في المنطقة السورية، وهدد الحيثيين بصورة خاصة. لذا يقال أن أرادوا معارضة الآشوريين بتحالف عسكري قوي بين مصر والحيثيين. ويفسرون العلماء المعاصرون رغبة رمسيس الثاني في المعاهدة باضطراره لصد انتفاضات ضده في الوجه القبلي من مصر وهجمات ليبية على الحدود الغربية لمصر. أما رغبة خاتوشيلي الثالث في المعاهدة تُستفسَر باغتصابه لعرش الإمبراطورية الحيثية من شقيقه، لسببين. السبب الأول هو تأمين سلطته على المستوى الدولي من خلال البند 10 من العقد، والذي يلزم رمسيس الثاني بالحفاظ على سلطة وارث خاتوشيلي الثالث على عرش الإمبراطورية الحيثية. السبب الثاني هو أن الملك المخلوع مورشيلي الثالث فر إلى المنفى في مناطق من سوريا تحكمها مصر. خاتوشيلي الثالث حاول الحصول على تسليمه عدة مرات دون جدوى، وهذا قد يكون سبب الاتفاقيات الخاصة بتسليم اللاجئين في البنود 11-13 من العقد. بالإضافة إلى ذلك، يقال إن الإمبراطورية الحيثية عانت من تلف المحاصيل وبالتالي أصبحت تعتمد على القمح المصري.

        لذا فإن المؤلفات الحديثة تعتقد أن سبب إبرام العقد يقع بشكل أساسي في اعتبارات سياسية واستراتيجية. وفقًا لذلك، يتسائلون إذا من المنطقي تصنيف المعاهدة كمعاهدة سلام أم إذا يستحسن تصنيفها كتحالف عسكري.",
        english_content:"Most contemporary historians reject the romantic view of earlier scholars. Instead, they discuss different motives that led to the signing of the contract and favor the interpretation that there were several reasons for the treaty rather than just one. An essential factor for concluding the contract is the increase in the influence of the Central Assyrian Empire during the reign of Shalmaneser I, which led to a shift in the balance of power in the Syrian region, and threatened the Hittites in particular. So it is said that they wanted to oppose the Assyrians with a strong military alliance between Egypt and the Hittites. Contemporary scholars explain Ramses II's desire for the treaty by his having to repel uprisings against him in Upper Egypt and Libyan attacks on the western borders of Egypt. Khatushili III's desire for the treaty is explained by his usurping the throne of the Hittite Empire from his brother, for two reasons. The first reason was to secure his authority at the international level through Clause 10 of the contract, which obligated Ramesses II to maintain the authority of Khatusheli III's heir to the throne of the Hittite Empire. The second reason is that the deposed King Murcelli III fled into exile in areas of Syria ruled by Egypt. Khatushili III tried to obtain his extradition several times to no avail, and this may be the reason for the agreements on the extradition of refugees in clauses 11-13 of the contract. In addition, the Hittite Empire is said to have suffered from crop failure and thus became dependent on Egyptian wheat.

        Therefore, recent literature believes that the reason for concluding a contract lies mainly in political and strategic considerations. Accordingly, they wonder whether it makes sense to classify the treaty as a peace treaty or whether it is preferable to classify it as a military alliance.",
        event_id: event_14.id,
    )
    EventSection.create(
        arabic_title:"تاريخ التأثير",
        english_title:"Impact History",
        arabic_content:"أثرت المعاهدة على بضعة عقود فقط، لأن الإمبراطورية الحيثية انهارت بعد فترة وجيزة من إبرام العقد، وفقدت مصر أيضًا الكثير من قوتها بسبب هجمات شعوب البحر. لكن ظلت العلاقات المصرية الحيثية مضمونة لفترة بعد الإبرام من خلال زواجين بين الأسرتين الحاكمتين المصرية والحيثية. كما توثق عدة رسائل عثرت عليها مراسلات نشيطة بين الحكام، والرسائل تشير إلى المعاهدة عدة مرات.",
        english_content:"The treaty only affected a few decades, because the Hittite Empire collapsed soon after the contract was concluded, and Egypt also lost much of its power due to attacks by the Sea Peoples. However, Egyptian-Hittite relations remained guaranteed for a period after the conclusion through two marriages between the Egyptian and Hittite ruling families. Several letters found document active correspondence between the rulers, and the letters refer to the treaty several times.",
        event_id: event_14.id,
    )
    EventSection.create(
        arabic_title:"محتوى العقد",
        english_title:"Contract Content",
        arabic_content:"من خصائص العقد أن تقريبًا جميع بنوده صيغت بأسلوب متبادل فحسب. في النقوش المصرية، يتبع كل ضمان من قبل خاتوشيلي الثالث بنفس الضمان من قبل رمسيس الثاني. وفي لوح الطين الخاتوشية الترتيب هو عكس ذلك. الاستثناء الوحيد هو فيما يسمى قاعدة توريث العرش في البند العاشر، الذي يلزم رمسيس الثاني فقط، دون إلزام مماثل لخاتوشيلي الثالث.",
        english_content:"One of the characteristics of the contract is that almost all of its clauses are drafted in a mutually exclusive manner. In Egyptian inscriptions, every guarantee by Khatushili III is followed by the same guarantee by Ramesses II. In the Khatushiya clay tablet, the arrangement is the opposite. The only exception is the so-called rule of succession to the throne in Article Ten, which is binding on Ramesses II only, without a similar obligation on Khatushili III.",
        event_id: event_14.id,
    )
    event_15 = Event.create(
        type: "War",
        arabic_title: "معركة بيرير",
        english_title: "Battle of Berer",
        start_date: "1208",
        end_date: "1208",
        arabic_info:"نشبت معركة بيرير في عام 1208 قبل الميلاد بين المملكة المصرية الحديثة بقيادة الملك مرنبتاح من جانب، وتحالف القبائل الليبية مع شعوب البحر من جانب آخر. حقق المصريون نصرًا حاسمًا. كانت هذه أول لقاءات عديدة بين مصر القديمة وشعوب البحر. مصدر المعلومات الرئيسي لدينا حول هذه المعركة يأتي من نقش الكرنك العظيم.",
        english_info:"The Battle of Berir took place in 1208 BC between the New Kingdom of Egypt, led by King Merneptah, on the one hand, and the alliance of the Libyan tribes with the Sea Peoples, on the other hand. The Egyptians won a decisive victory. This was the first of many encounters between ancient Egypt and the Sea Peoples. Our main source of information about this battle comes from the Great Karnak Inscription.",
        character_id: character_48.id,
        sub_era: sub_era_6,
    )
    event_15.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/a/af/Luny_Thomas_Battle_Of_The_Nile_August_1st_1798_At_10pm.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"مقدمة",
        english_title:"Introduction",
        arabic_content:"في أواخر القرن الثالث عشر قبل الميلاد، أجبرت المجاعة في ليبيا العديد من القبائل في المنطقة على الاتحاد تحت قيادة زعيم معروف باسم ميري. استعدت هذه القبائل معًا لغزو مصر. نواياهم الدقيقة غير واضحة لكنهم على الأرجح أرادوا إقامة سلالة ليبية جديدة في مصر، أو إقامة دولة جديدة داخل حدود مصر. كان الليبيون أثرياء من خلال السيطرة على التجارة من وسط إفريقيا إلى البحر الأبيض المتوسط، وبالتالي تمكنوا من توظيف شعوب البحر ، الذين كانوا في الوقت الحالي مغيرين ومرتزقة. استولى الليبيون في البداية على واحة إلى الغرب من مصر، يُعتقد الآن أنها واحة سيوة. هناك أيضًا غارة نوبية واضحة في جنوب مصر في نفس الوقت تقريبًا، مما يشير إلى تحالف بين الليبيين والنوبيين، على الرغم من أن شيئًا لم يحدث أبدًا. بعد الاستيلاء على الواحة، انتقل الجيش الليبي إلى مصر حيث التقى بهم الملك مرنبتاح في بيرير، على الأرجح مدينة في منطقة دلتا النيل.",
        english_content:"In the late 13th century BC, famine in Libya forced many tribes in the region to unite under a leader known as Meri. Together these tribes prepared to invade Egypt. Their exact intentions are unclear but they most likely wanted to establish a new Libyan dynasty in Egypt, or establish a new state within Egypt's borders. The Libyans were wealthy by controlling trade from central Africa to the Mediterranean, and were thus able to employ the Sea Peoples, who were currently raiders and mercenaries. The Libyans first captured an oasis to the west of Egypt, now believed to be the Siwa Oasis. There is also an apparent Nubian raid into southern Egypt around the same time, suggesting an alliance between Libyans and Nubians, although nothing ever happened. After capturing the oasis, the Libyan army moved to Egypt where King Merneptah met them at Berer, most likely a city in the Nile Delta region.",
        event_id: event_15.id,
    )
    EventSection.create(
        arabic_title:"المعركة",
        english_title:"The Battle",
        arabic_content:"لا يُعرف الكثير عن التفاصيل الدقيقة للمعركة في بيرير باستثناء أن الرماة المصريين أمضوا 6 ساعات في مهاجمة العدو قبل أن تتدخل العربات المصرية ويُفترض أنها تسببت في حدوث هزيمة. هذا لا يعطي تفاصيل حول ما كان المشاة يفعلونه في ذلك الوقت. لقد صنع شعوب البحر مشاة أعلى من المصريين ، ولذلك يُفترض أن مرنبتاح لم يشتبك مطلقًا مع مشاته بالكامل، بل استخدمهم فقط لاحتلال العدو بينما قام رماة السهام بالعمل الحقيقي. ثم، بعد أن اعتقد مرنبتاح أن خطوط العدو قد ضعفت بما يكفي، أرسل مركباته لإنهاء العمل. ومع ذلك ، حدثت المعركة بالفعل، حقق المصريون انتصارًا حاسمًا على الليبيين، مما أسفر عن مقتل 6000 شخص وأسر 9000.",
        english_content:"Not much is known about the exact details of the battle at Birer except that Egyptian archers spent 6 hours attacking the enemy before Egyptian chariots intervened and presumably caused a rout. This does not give details about what the pedestrians were doing at the time. The Sea Peoples made infantry superior to the Egyptians, so it is assumed that Merneptah never engaged his entire infantry, but merely used them to occupy the enemy while his archers did the real work. Then, after Merneptah believed the enemy lines had been sufficiently weakened, he sent his chariots to finish the job. However, the battle did occur, and the Egyptians won a decisive victory over the Libyans, killing 6,000 people and taking 9,000 prisoner.",
        event_id: event_15.id,
    )
    EventSection.create(
        arabic_title:"أعقاب المعركة",
        english_title:"Aftermath",
        arabic_content:"قُتل ميري خلال المعركة وبدون قيادة عاد التحالف الليبي إلى دياره وسرعان ما انهار. مهما نجا شعوب البحر من المعركة ، فقد غادروا للعثور على عمل في مكان آخر. سوف تنمو شعوب البحر لتصبح مشكلة أكبر في السنوات القادمة ، وسببًا رئيسيًا لانهيار العصر البرونزي. كانوا سيشتبكون مع مصر مرة أخرى ، في محاولة لغزو البلاد إما في 1178 أو 1175 قبل الميلاد ، حتى توقفوا عند المعارك المزدوجة في دجي والدلتا.",
        english_content:"Merry was killed during the battle and without leadership, the Libyan coalition returned home and quickly collapsed. However many Sea Peoples survived the battle, they left to find work elsewhere. The Sea Peoples would grow to become a bigger problem in the coming years, and a major cause of the collapse of the Bronze Age. They would clash with Egypt again, trying to conquer the country in either 1178 or 1175 BC, until they stopped at the twin battles of Deje and the Delta.",
        event_id: event_15.id,
    )
    event_16 = Event.create(
        type: "War",
        arabic_title: "معركة الدلتا",
        english_title: "Battle of the Delta",
        start_date: "1178",
        end_date: "1178",
        arabic_info:"معركة الدلتا هي موقعة بحرية بين الجيش المصري، وقوم أطلق عليهم شعوب البحر، دارت قرابة عام 1178 أو 1175 قبل الميلاد حين قام رمسيس الثالث، فرعون مصر وقتها، بمقاومة غزو بحري كبير أطلقته شعوب البحر على مصر. دارت المعركة بمكان ما بالقرب من السواحل الشرقية لدلتا النيل، وعلى الحدود المصرية السورية، إلا أن الموقع بالتحديد مجهول. وتعتبر هذه المعركة هي أول معركة بحرية في التاريخ، وسجلت وقائعها على جدران معبد رمسيس الثالث الجنائزي بمدينة هابو (بالقرب من الأقصر حاليا).",
        english_info:"The Battle of the Delta was a naval battle between the Egyptian army and a people called the Sea Peoples. It took place around the year 1178 or 1175 BC when Ramses III, the Pharaoh of Egypt at the time, resisted a major naval invasion launched by the Sea Peoples against Egypt. The battle took place somewhere near the eastern coast of the Nile Delta, and on the Egyptian-Syrian border, but the exact location is unknown. This battle is considered the first naval battle in history, and its events were recorded on the walls of the funerary temple of Ramesses III in Medinet Habu (near Luxor today).",
        character_id: character_49.id,
        sub_era: sub_era_6,
    )
    event_16.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/b/be/Philistine_ship_of_war.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"خلفية تاريخية",
        english_title:"Historical Background",
        arabic_content:"عرف شعوب البحر المتوسط بعدد من الأسماء، مثل تيكر وبيليست وشردان وغيرها. في القرن الثاني عشر قبل الميلاد، قاموا بغزو الشرق الأوسط من ناحية شرق البحر المتوسط، من خلال إمبراطورية حتي (أرض الحيثيين)، التي مروا بها ودمرا عاصمتها هاتوشا. كما قاموا بغزو سوريا وفلسطين حيث أحرقوا ودمروا أيضا العديد من المدن. كما لحق الضرر بقبرص وتدمرت عاصمتها. كان من الجلي أن هدف هذه القوات المبتغى هو أرض شاسعة وغنية بالموارد، كمصر، حيث أنهم لم يسعوا إلى غنائم الأرض فحسب، بل لاحتلال الأرض نفسها. كانت رغبة شعوب البحر عظيمة في الاستيلاء على أرض تصلح للاستيطان، وبدا لهم أن مصر هي الاختيار الأمثل. ولهذا، كان دفاع المصريين في تلك الحرب مستميتا، حيث كانت مصر تحت الحصار تقريبا وتدافع عن وجودها ضد الاحتلال. ويعتبر الهجوم الذي شنته شعوب البحر المتوسط من أخطر التهديدات التي واجهتها مصر القديمة على الإطلاق، حيث لم يقل خطرهم عن خطر الهكسوس. وتصف لنا نقوش معبد رمسيس الثالث الجنائزي كيف استطاع في معركته الناجحة ضد العدو، على الحدود المصرية السورية، وقف زحفه إلى داخل المملكة المصرية وحدودها الآسيوية.",
        english_content:"The Battle of the Delta was a naval battle between the Egyptian army and a people called the Sea Peoples. It took place around the year 1178 or 1175 BC when Ramses III, the Pharaoh of Egypt at the time, resisted a major naval invasion launched by the Sea Peoples against Egypt. The battle took place somewhere near the eastern coast of the Nile Delta, and on the Egyptian-Syrian border, but the exact location is unknown. This battle is considered the first naval battle in history, and its events were recorded on the walls of the funerary temple of Ramesses III in Medinet Habu (near Luxor today).",
        event_id: event_16.id,
    )
    event_17 = Event.create(
        type: "PeaceTreaty",
        arabic_title: "بناء مدينه منف",
        english_title: "Building of the city of Menf",
        start_date: "",
        end_date: "",
        arabic_info:"منف (أو من نفر) ((بالإنجليزية: مَمفيس) (بالقبطية: ⲙⲉⲙϥⲓ); (باليونانية: Μέμφις)) كانت مدينة مصرية قديمة والعاصمة القديمة لـ إنب-حج، أول مقاطعات مصر السفلى التي كانت تُعرف باسم mḥw (الشمال). تقع أطلالها بالقرب من مدينة ميت رهينة الحديثة، على بعد 20 كم (12 ميل) جنوب الجيزة في القاهرة الكبرى، مصر.",
        english_info:"Memphis (or Menf) ((English: Memphis) (Coptic: ⲙⲉⲙϥⲓ); (Greek: Μέμφις)) was an ancient Egyptian city and the ancient capital of Inb-Hedj, the first nome of Lower Egypt that was known as mḥw (the north). Its ruins are located near the modern city of Mit Rahina, 20 km (12 mi) south of Giza in Greater Cairo, Egypt.",
        character_id: character_1.id,
        sub_era: sub_era_1,
    )
    event_17.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/cf/Memphis200401.JPG"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"منف",
        english_title:"Menf",
        arabic_content:"وفقًا للأساطير التي رواها في أوائل القرن الثالث قبل الميلاد مانيتون، وهو كاهن ومؤرخ عاش في المملكة البطلمية خلال الفترة الهلنستية في مصر القديمة، فإن المدينة تأسست على يد الملك مينا. كانت عاصمة مصر القديمة، خلال المملكة المصرية القديمة وظلت مدينة مهمة في جميع أنحاء التاريخ المصري القديم. احتلت موقعًا إستراتيجيًا عند مصب دلتا النيل، وكانت موطنًا للنشاط الصاخب. تميز ميناؤها الرئيسي، بيرو نفر، بكثافة عالية من الورش والمصانع والمستودعات التي كانت توزع المواد الغذائية والبضائع في جميع أنحاء المملكة القديمة. خلال عصرها الذهبي، ازدهرت منف كمركز إقليمي للتجارة والدين.

        يُعتقد أن منف تمتعت بحماية الإله بتاح، شفيع الحرفيين. كان المعبد العظيم، «حت كا بتاح» (بمعنى «قصر كا بتاح»، أحد أبرز المباني في المدينة. يُعتقد أن اسم هذا المعبد، المكتوب باليونانية باسم «Aἴγυπτoς (إيجيبتوس)» من قبل مانيتون، هو الأصل الاشتقاقي للاسم الإنجليزي الحديث «إيجيبت».
        
        يرتبط تاريخ منف ارتباطًا وثيقًا بتاريخ البلاد نفسها. يُعتقد أن انهياره في نهاية المطاف كان بسبب فقدان أهميته الاقتصادية في أواخر العصور القديمة، بعد صعود مدينة الإسكندرية. تضائلت أهمية منف الدينية بعد التخلي عن الدين القديم في أعقاب مرسوم تسالونيكي في 380 بعد الميلاد الذي فرض تبني نيقية المسيحية في جميع أنحاء الإمبراطورية الرومانية فقط.
        
        اليوم، تقدم أطلال العاصمة السابقة أدلة مجزأة على ماضيها. إلى جانب مجمع الأهرام في الجيزة، وقد تم الحفاظ عليها على أنها موقع تراث عالمي منذ عام 1979. الموقع مفتوح للجمهور باعتباره متحفًا في الهواء الطلق.",
        english_content:"According to legends told in the early 3rd century BC by Manetho, a priest and historian who lived in the Ptolemaic Kingdom during the Hellenistic period of ancient Egypt, the city was founded by King Menes. It was the capital of ancient Egypt, during the Old Egyptian Kingdom and remained an important city throughout ancient Egyptian history. It occupied a strategic location at the mouth of the Nile Delta, and was home to bustling activity. Its main port, Peru Nefer, was characterized by a high density of workshops, factories, and warehouses that distributed food and goods throughout the Old Kingdom. During its golden age, Memphis flourished as a regional center for trade and religion.

        It is believed that Memphis enjoyed the protection of the god Ptah, the patron saint of craftsmen. The great temple, “Hatkaptah” (meaning “Palace of Kaptah”), was one of the most prominent buildings in the city. The name of this temple, written in Greek as “Aἴγυπτoς (Aegyptus)” by Manetho, is thought to be the etymological origin of the modern English name “Aἴγυπτoς (Aegyptus)” by Manetho. ».
        
        The history of Memphis is closely linked to the history of the country itself. It is believed that its eventual collapse was due to the loss of its economic importance in late antiquity, after the rise of the city of Alexandria. The religious importance of Memphis diminished after the abandonment of the ancient religion following the Edict of Thessalonica in 380 AD which imposed the adoption of Nicene Christianity throughout the Roman Empire only.
        
        Today, the ruins of the former capital offer fragmentary evidence of its past. Along with the pyramid complex in Giza, it has been preserved as a World Heritage Site since 1979. The site is open to the public as an open-air museum.",
        event_id: event_17.id,
    )
    EventSection.create(
        arabic_title:"أسماء المواقع الجغرافية",
        english_title:"Geographical Locations Names",
        arabic_content:"كان لمنف عدة أسماء خلال تاريخها الذي يقارب أربعة آلاف عام. كان اسمها المصري القديم إنب-حج (تُرجم باسم «الجدران البيضاء» ).

        بسبب حجمها، وكانت المدينة تُعرف أيضًا بأسماء أخرى مختلفة، مثل أسماء الأحياء التي كانت تتمتع بشهرة كبيرة في وقت أو آخر. على سبيل المثال، وفقًا لنص الفترة الانتقالية الأولى،  كان يُعرف باسم جد سوت («الأماكن الأبدية»)، وهو اسم هرم تيتي.
        
        في وقت ما، تمت الإشارة إلى المدينة باسم عنخ تاوي (بمعنى «حياة الأرضين»)، مما يؤكد الموقع الإستراتيجي للمدينة بين مصر العليا ومصر السفلى. يبدو أن هذا الاسم يعود إلى المملكة المصرية الوسطى (حوالي 2055 - 1640 قبل الميلاد)، وكثيراً ما يوجد في النصوص المصرية القديمة. يؤكد بعض العلماء أن هذا الاسم كان لمنطقة تحتوي على شجرة مقدسة تقع في الحي الغربي من المدينة الذي يقع بين معبد بتاح الكبير والمقابر في سقارة.
        
        في بداية المملكة المصرية الحديثة (حوالي 1550 قبل الميلاد)، أصبحت المدينة تُعرف باسم منفر (تعني «دائمة وجميلة»)، والتي أصبحت ممفي (ⲙⲉⲙ ϥ ⲓ) باللغة القبطية. الاسم «ممفيس» (φιςμφις) هو التعديل اليوناني للاسم الذي أطلقوه على هرم بيبي الأول الواقع غرب المدينة.
        
        أثناء محاولته رسم التاريخ المصري القديم والعناصر الدينية في تقاليد المصريين القدماء، أوضح الشاعر اليوناني هسيود في «ثيوغونيا» اسم المدينة بالقول إن منف كانت ابنة إله النهر اليوناني نيلوس وزوجة إبافوس (ابن زيوس وآيو)، اللذين أسسا المدينة وأطلق عليها اسم زوجته.
        
        في الكتاب المقدس، تُدعى منف «موف» أو «نوف».",
        english_content:"Memphis had several names during its history of nearly four thousand years. Its ancient Egyptian name was Eneb-Haj (translated as “white walls”).

        Because of its size, the city was also known by various other names, such as the names of neighborhoods that were very popular at one time or another. For example, according to the First Intermediate Period text, it was known as Djed Sut (“Eternal Places”), the name of the Pyramid of Teti.
        
        At one point, the city was referred to as Ankh-Tawi (meaning \"Life of the Two Lands\"), emphasizing the city's strategic location between Upper and Lower Egypt. This name appears to date back to the Middle Kingdom of Egypt (ca. 2055 - 1640 BC), and is often found in ancient Egyptian texts. Some scholars confirm that this name was for an area containing a sacred tree located in the western district of the city, which is located between the Great Temple of Ptah and the tombs at Saqqara.
        
        At the beginning of the New Kingdom of Egypt (ca. 1550 BC), the city became known as Menfer (meaning \"permanent and beautiful\"), which became Memphi (ⲙⲉⲙ ϥ ⲓ) in Coptic. The name “Memphis” (φιςμφις) is the Greek modification of the name they gave to the pyramid of Pepi I, located to the west of the city.
        
        While trying to draw ancient Egyptian history and religious elements into the traditions of the ancient Egyptians, the Greek poet Hesiod in “Theogonia” explained the name of the city by saying that Memphis was the daughter of the Greek river god Nilus and the wife of Epaphos (son of Zeus and Io), who founded the city and named it after his wife.
        
        In the Bible, Memphis is called \"Mov\" or \"Noph\".",
        event_id: event_17.id,
    )
    EventSection.create(
        arabic_title:"السمات",
        english_title:"Features",
        arabic_content:"الموقع
        تقع مدينة منف على بعد 20 كم (12 ميل) جنوب القاهرة، على الضفة الغربية لنهر النيل. مدن وبلدات ميت رهينة الحديثة، دهشور، أبو صير، أبو غراب، زاوية العريان، جنوب القاهرة، كلها تقع داخل الحدود الإدارية التاريخية لمنف (29°50′58.8″N 31°15′15.4″E). كانت المدينة أيضًا المكان الذي رسم الحدود بين مصر العليا ومصر السفلى. (المقاطعة الثانية والعشرون من مصر العليا والأولى من مصر السفلى).
        السكان
        اليوم، بصمة المدينة القديمة غير مأهولة. أقرب مستوطنة حديثة هي بلدة ميت رهينة. تختلف تقديرات الحجم التاريخي للسكان اختلافًا كبيرًا بين المصادر. وفقًا لـ ترتيوس تشاندلر، كان عدد سكان ممفيس حوالي 30000 نسمة وكانت إلى حد بعيد أكبر مستوطنة في جميع أنحاء العالم منذ وقت تأسيسها حتى 2250 قبل الميلاد تقريبًا ومن 1557 إلى 1400 قبل الميلاد. يعتبر K. A. بارد أكثر حذرًا ويقدر عدد سكان المدينة بحوالي 6000 نسمة خلال المملكة المصرية القديمة.",
        english_content:"the site
        The city of Memphis is located 20 km (12 mi) south of Cairo, on the west bank of the Nile River. The modern cities and towns of Mit Rahina, Dahshur, Abu Sir, Abu Ghorab, Zawyet el-Erian, south of Cairo, all lie within the historic administrative boundaries of Memphis (29°50′58.8″N 31°15′15.4″E). The city was also the place that marked the border between Upper and Lower Egypt. (The twenty-second province of Upper Egypt and the first of Lower Egypt).
        Population
        Today, the ancient city footprint is uninhabited. The nearest modern settlement is the town of Mit Rahina. Estimates of historical population size vary widely between sources. According to Tertius Chandler, Memphis had a population of about 30,000 and was by far the largest settlement worldwide from the time of its founding until approximately 2250 BC and from 1557 to 1400 BC. K. A. Bard is more cautious and estimates the city's population at around 6,000 during the Old Kingdom.",
        event_id: event_17.id,
    )
    EventSection.create(
        arabic_title:"التاريخ",
        english_title:"History",
        arabic_content:"خلال المملكة المصرية القديمة، أصبحت منف عاصمة لمصر القديمة لأكثر من ثماني مرات متتالية. بلغت المدينة ذروة هيبتها في عهد الأسرة المصرية السادسة كمركز لعبادة بتاح إله الخلق والأعمال الفنية. المرمر أبو الهول الذي يحرس معبد بتاح بمثابة نصب تذكاري لقوة المدينة وهيبتها السابقين. شكل ثالوث منف، المكون من الإله الخالق بتاح، وزوجته سخمت، وابنهما نفرتيم، المحور الرئيسي للعبادة في المدينة.

        تراجعت مكانة منف بعد الأسرة المصرية الثامنة عشر مع صعود طيبة والمملكة المصرية الحديثة، لكنها أعيد إحياؤها في عهد الفرس، قبل أن تتراجع بقوة في المرتبة الثانية بعد تأسيس الإسكندرية تحت حكم الإمبراطورية الرومانية، ظلت الإسكندرية أهم مدينة مصرية. وظلت منف ثاني مدن مصر حتى إنشاء الفسطاط عام 641 م بعد الفتح الإسلامي لمصر. بعد ذلك تم التخلي عنها إلى حد كبير وأصبحت مصدرًا للحجر للمستوطنات المحيطة. كانت لا تزال مجموعة من الأطلال المهيبة في القرن الثاني عشر، لكنها سرعان ما أصبحت أكثر بقليل من مساحة من الأنقاض المنخفضة والحجارة المتناثرة.",
        english_content:"During the Old Kingdom of Egypt, Memphis became the capital of ancient Egypt more than eight consecutive times. The city reached the peak of its prestige during the Sixth Dynasty of Egypt as a center for the worship of Ptah, the god of creation and works of art. The alabaster Sphinx guarding the Temple of Ptah serves as a monument to the city's former power and prestige. The Triad of Memphis, consisting of the creator god Ptah, his wife Sekhmet, and their son Nefertim, formed the main focus of worship in the city.

        The status of Memphis declined after the Eighteenth Dynasty with the rise of Thebes and the New Egyptian Kingdom, but it was revived during the Persian era, before it fell strongly into second place after the founding of Alexandria under the rule of the Roman Empire. Alexandria remained the most important Egyptian city. Memphis remained the second city in Egypt until the establishment of Fustat in 641 AD after the Islamic conquest of Egypt. After that it was largely abandoned and became a source of stone for the surrounding settlements. It was still a collection of imposing ruins in the 12th century, but it soon became little more than an expanse of low-lying ruins and scattered stones.",
        event_id: event_17.id,
    )
    event_18 = Event.create(
        type: "War",
        arabic_title: "إعاده توحيد البلاد",
        english_title: "Reunification of the country",
        start_date: "2055",
        end_date: "1650",
        arabic_info:"المملكة المصرية الوسطى (المعروفة أيضًا باسم فترة إعادة التوحيد) هي الفترة في تاريخ مصر القديمة التي تلت فترة الانقسام السياسي المعروفة باسم الفترة الانتقالية الأولى. استمرت المملكة الوسطى من حوالي 2050 إلى 1710 قبل الميلاد، وتمتد من إعادة توحيد مصر في عهد منتوحتب الثاني من الأسرة الحادية عشر حتى نهاية الأسرة الثانية عشر. حكم ملوك الأسرة الحادية عشر من طيبة بينما حكم ملوك الأسرة الثانية عشرة من اللشت.",
        english_info:"The Middle Kingdom of Egypt (also known as the Reunification Period) was the period in the history of ancient Egypt that followed the period of political division known as the First Intermediate Period. The Middle Kingdom lasted from about 2050 to 1710 BC, extending from the reunification of Egypt under Mentuhotep II of the Eleventh Dynasty until the end of the Twelfth Dynasty. The kings of the Eleventh Dynasty ruled from Thebes while the kings of the Twelfth Dynasty ruled from Lisht.",
        character_id: character_28.id,
        sub_era: sub_era_4,
    )
    event_18.cover_image.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c8/MentuhotepII.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
    EventSection.create(
        arabic_title:"َضعف البلاد",
        english_title:"Country Weakness",
        arabic_content:"بعد انهيار المملكة القديمة، دخلت مصر فترة من ضعف السلطة الملكية واللامركزية تسمى الفترة الانتقالية الأولى. في نهاية هذه الفترة، قاتلت أسرتان متنافستان، عرفتا في علم المصريات باسم العاشرة والحادية عشر، للسيطرة على البلاد بأكملها. حكمت الأسرة الطيبية الحادية عشرة جنوب مصر فقط من الشلال الأول إلى المقاطعة العاشرة من صعيد مصر. بينما في الشمال، حُكِمت مصر السفلى من قبل الأسرة العاشرة المنافسة من إهناسيا. تمكن منتوحتب الثاني من إنهاء الحرب، بعد أن اعتلى عرش طيبة عام 2055 قبل الميلاد. خلال السنة الرابعة عشرة من حكمه، استغل حدوث ثورة في أحد المقاطعات الشمالية لشن هجوم على إهناسيا، ولم يواجه سوى مقاومة قليلة. بعد إسقاط آخر حكام الأسرة العاشرة، بدأ منتوحتب في تعزيز سلطته على كل مصر، وهي العملية التي لم تنته سوى في العام التاسع والثلاثين من حكمه. لهذا السبب، يعتبر منتوحتب الثاني مؤسس الدولة الوسطى.",
        english_content:"After the collapse of the Old Kingdom, Egypt entered a period of weak royal authority and decentralization called the First Intermediate Period. At the end of this period, two rival families, known in Egyptology as the Tenth and the Eleventh, fought for control of the entire country. The Eleventh Theban Dynasty ruled southern Egypt only from the First Cataract to the Tenth Province of Upper Egypt. While in the north, Lower Egypt was ruled by the rival Tenth Dynasty of Ehnasia. Mentuhotep II was able to end the war, after he ascended the throne of Thebes in 2055 BC. During the fourteenth year of his reign, he took advantage of a revolt in a northern province to launch an attack on Ihnasia, meeting little resistance. After overthrowing the last ruler of the Tenth Dynasty, Mentuhotep began to consolidate his power over all of Egypt, a process that did not end until the thirty-ninth year of his reign. For this reason, Mentuhotep II is considered the founder of the Middle Kingdom.",
        event_id: event_18.id,
    )
    EventSection.create(
        arabic_title:"القيادة",
        english_title:"Leadership",
        arabic_content:"قاد منتوحتب الثاني حملات صغيرة جنوبًا حتى الشلال الثاني في النوبة، والتي كانت قد نالت استقلالها خلال الفترة الانتقالية الأولى. كما أعاد الهيمنة المصرية على منطقة سيناء، التي فقدتها مصر منذ نهاية المملكة القديمة. لتعزيز سلطته، أعاد ممارسة عبادة الحاكم، مصورًا نفسه كإله أثناء حكمه، مرتديًا أغطية رأس آمون ومين. توفي بعد حكم دام 51 عامًا، وسلم العرش لابنه منتوحتب الثالث.",
        english_content:"Mentuhotep II led small campaigns south as far as the Second Cataract in Nubia, which had gained its independence during the First Intermediate Period. It also restored Egyptian hegemony over the Sinai region, which Egypt had lost since the end of the Old Kingdom. To consolidate his power, he reinstated the practice of ruler worship, portraying himself as a god during his rule, wearing the headdresses of Amun and Min. He died after a reign of 51 years, and handed the throne to his son Mentuhotep III.",
        event_id: event_18.id,
    )
    EventSection.create(
        arabic_title:"حكم البلاد",
        english_title:"Ruling the country",
        arabic_content:"حكم منتوحتب الثالث لمدة اثني عشر عامًا فقط، واصل خلالها تعزيز الحكم الطيبي في جميع أنحاء مصر، وبناء سلسلة من الحصون في منطقة شرق الدلتا لتأمين مصر ضد التهديدات من آسيا. كما أرسل أول بعثة إلى بلاد بونت في عهد الدولة الوسطى، عن طريق السفن التي شيدت في وادي الحمامات، على البحر الأحمر. خلف منتوحتب الثالث منتوحتب الرابع، الذي تم حذف اسمه بشكل ملحوظ من جميع قوائم الملوك المصريين القدماء. تدعي برديات تورينو أنه بعد منتوحتب الثالث كان هناك «سبع سنوات بدون ملوك». على الرغم من هذا الغياب، فإن هناك أدلة على حكمه في عدد قليل من النقوش في وادي الحمامات والتي تسجل حملات على ساحل البحر الأحمر ومحاجر الحجر لعمل الآثار الملكية. كان قائد هذه البعثة وزيره أمنمحات، الذي يُعتقد على نطاق واسع أنه الملك المستقبلي أمنمحات الأول، أول ملوك الأسرة الثانية عشرة.

        دفع غياب منتوحتب الرابع من قوائم الملوك إلى نشوء نظرية مفادها أن أمنمحات الأول اغتصب عرشه. في حين أنه لا توجد روايات معاصرة عن هذا الصراع، قد تشير بعض الأدلة الظرفية إلى وجود حرب أهلية في نهاية الأسرة الحادية عشرة. تشير النقوش التي تركها نهري، وهو حاتي عا هيرموبوليس، إلى أنه تعرض للهجوم في مكان يسمى Shedyet-sha من قبل قوات الملك الحاكم، لكن قواته انتصرت. يدعي خنوم حتب الأول، وهو مسؤول في عهد أمنمحات الأول، أنه شارك في قافلة من عشرين سفينة تم إرسالها لتهدئة صعيد مصر. اقترح دونالد ريدفورد أن هذه الأحداث يجب أن تفسر كدليل على حرب بين اثنين من المتصارعين على العرش. ما هو مؤكد أنه، على الرغم من وصوله إلى السلطة، لم يكن أمنمحات الأول من أصل ملكي.",
        english_content:"Mentuhotep III ruled for only twelve years, during which he continued to consolidate Theban rule throughout Egypt, building a series of fortresses in the eastern Delta region to secure Egypt against threats from Asia. He also sent the first mission to the country of Punt during the era of the Middle Kingdom, via ships built in Wadi Hammamet, on the Red Sea. Mentuhotep III was succeeded by Mentuhotep IV, whose name was noticeably omitted from all lists of ancient Egyptian kings. The Turin Papyri claim that after Mentuhotep III there were \"seven years without kings\". Despite this absence, there is evidence of his rule in a few inscriptions in Wadi Hammamet that record expeditions to the Red Sea coast and stone quarries to make royal monuments. The leader of this expedition was his vizier, Amenemhat, who is widely believed to be the future king Amenemhat I, the first king of the Twelfth Dynasty.

        The absence of Mentuhotep IV from the king lists gave rise to the theory that Amenemhat I usurped his throne. While there are no contemporary accounts of this conflict, some circumstantial evidence may indicate that there was a civil war at the end of the Eleventh Dynasty. The inscriptions left by Nahri, a hater of Hermopolis, indicate that he was attacked at a place called Shedyet-sha by the forces of the ruling king, but his forces were victorious. Khnumhotep I, an official during the reign of Amenemhat I, claims to have participated in a convoy of twenty ships sent to pacify Upper Egypt. Donald Redford has suggested that these events should be interpreted as evidence of a war between two contenders for the throne. What is certain is that, despite his rise to power, Amenemhat I was not of royal origin.",
        event_id: event_18.id,
    )

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
        character: character_17,
        event: event_6,
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
        character: character_17,
        event: event_6,
    )
        product_2.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/712GbTFUVuL._AC_SL1012_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_2.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61UWDFL0kgL._AC_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_2.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/71Ua3I9wURL._AC_SL1026_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
            Review.create(user:user, product:product_1, stars: 5,comment:"I love this product")
    
    product_3 = Product.create(
        price: 194,
        arabic_title: "تمثال فرعوني لأبي الهول، 12 سم - ذهبي",
        english_title: "Pharaonic Statue Sphinx, 12cm - Gold",
        arabic_description: "Brand: Other
        Home Decor Category: Statues and Models
        Seamless functionality
        Packed with features",
        english_description: "العلامة التجارية: اخرى
        فئة ديكور المنزل: تماثيل ونماذج
        وظائف سلسة
        مليئة بالميزات",
        era: ancientEra,
        sub_era_id: sub_era_2.id,
        catigory:"antiques",
        character: character_17,
        event: event_6,
    )
        product_3.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61CJ7LY7mIL._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_3.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61CJ7LY7mIL._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_3.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61CJ7LY7mIL._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
            Review.create(user:user, product:product_3, stars: 3,comment:"This is a good product")   
            Review.create(user:user_1, product:product_3, stars: 5,comment:"I love this product")   
            Review.create(user:user_2, product:product_3, stars: 2,comment:"Bad Material")   
            Review.create(user:user_3, product:product_3, stars: 1,comment:"I hate this product")   
            Review.create(user:user, product:product_3, stars: 4,comment:"This is a good product")   
    product_4 = Product.create(
        price: 115,
        arabic_title: "تمثال توت نفرتيتي الذهبي الفرعوني (18 سم، ذهبي)",
        english_title: "Golden TuT Nefertiti Pharaonic Statue (18cm, Gold)",
        arabic_description: "فئة ديكور المنزل: تماثيل ونماذج
        العلامة التجارية: جولدن توت
        الحجم: 18 سم
        اللون: ذهبي",
        english_description: "Home Decor Category: Statues and Models
        Brand: GoldenTuT
        Size: 18cm
        Color: gold",
        era: ancientEra,
        sub_era_id: sub_era_1.id,
        catigory:"antiques",
        character: character_10,
        # event: event_6,
    )
        product_4.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61fOsHm2K9L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_4.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61fOsHm2K9L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_4.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61fOsHm2K9L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
            Review.create(user:user, product:product_4, stars: 3,comment:"This is a good product")   
            Review.create(user:user_1, product:product_4, stars: 5,comment:"I love this product")   
            Review.create(user:user_2, product:product_4, stars: 2,comment:"Bad Material")   
            Review.create(user:user_3, product:product_4, stars: 1,comment:"I hate this product")   
            Review.create(user:user, product:product_4, stars: 4,comment:"This is a good product")

    product_5 = Product.create(
        price: 245,
        arabic_title: "مج الملك توت عنخ آمون الفرعوني المصري هدية تذكارية مصرية",
        english_title: "matcher King Tutankhamun Pharaonic Egyptian mug Egypt Souvenir gift",
        arabic_description: "هدية رائعة من مصر
        هدية عظيمة لمحبي المدنية المصرية القديمة
        احصل على قطعة مصرية في يدك
        تذكر الحضارة المصرية القديمة
        هدية ملهمة من مصر",
        english_description: "Wonderfull Gift from Egypt
        Great gift for the ancient Egyptian Civil lovers
        Have An Egyptian Piece in Your Hand
        Remember the Ancient Egyptian Civil
        Inspired Gift from Egypt",
        era: ancientEra,
        sub_era_id: sub_era_6.id,
        catigory:"antiques",
        character: character_45,
        # event: event_6,
    )
        product_5.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61cROvfgpML._AC_SL1000_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_5.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61ZeJf-vFPL._AC_SL1000_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_5.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61NYeWFfZYL._AC_SL1047_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
            Review.create(user:user, product:product_5, stars: 3,comment:"This is a good product")   
            Review.create(user:user_1, product:product_5, stars: 5,comment:"I love this product")   
            Review.create(user:user_2, product:product_5, stars: 2,comment:"Bad Material")   
            Review.create(user:user_3, product:product_5, stars: 1,comment:"I hate this product")   
            Review.create(user:user, product:product_5, stars: 4,comment:"This is a good product")

    product_6 = Product.create(
        price: 200,
        arabic_title: "مج بورسلين فرعوني مصمم برسومات فرعونية، متعدد الالوان",
        english_title: "Porcelain Pharaonic Mug Designed with Pharaonic Drawings, Multi Color",
        arabic_description: "النوع: أكواب
        المادة: بورسلين
        اللون: متعدد الألوان
        دليل على غسالة الصحون: لا
        مقاوم للميكروويف: لا
        دليل على غسالة الصحون: لا شيء
        العلامة التجارية: اخرى
        المادة: بورسلين
        النوع: أكواب
        هل هناك حاجة إلى بطاريات لتشغيل المنتج أم أن هذا المنتج عبارة عن بطارية: لا شيء
        هل هذا منتج خطير أو مادة أو مادة أو نفايات خطرة تخضع لأنظمة النقل و/أو التخزين و/أو التخلص منها؟ : باطل",
        english_description: "Type: Mugs
        Material: Porcelain
        Color: Multi-Color
        Dishwasher proof: No
        Microwave Proof: No
        Dishwasher proof: null
        Brand: Other
        Material: Porcelain
        Type: Mugs
        Are batteries needed to power the product or is this product a battery : null
        Is this a Dangerous Good or a Hazardous Material, Substance or Waste that is regulated for transportation, storage, and/or disposal? : null",
        era: ancientEra,
        sub_era_id: sub_era_6.id,
        catigory:"antiques",
        character: character_45,
        # event: event_6,
    )
        product_6.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61sDcAQSq5L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_6.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61sDcAQSq5L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_6.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61sDcAQSq5L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
            Review.create(user:user, product:product_6, stars: 3,comment:"This is a good product")   
            Review.create(user:user_1, product:product_6, stars: 5,comment:"I love this product")   
            Review.create(user:user_2, product:product_6, stars: 2,comment:"Bad Material")   
            Review.create(user:user_3, product:product_6, stars: 1,comment:"I hate this product")   
            Review.create(user:user, product:product_6, stars: 4,comment:"This is a good product")   
    product_7 = Product.create(
        price: 465,
        arabic_title: "تمثال نصفي مصري قديم للملك خفرع وعلى رأسه صقر من الحجر الصلب الثقيل صنع في مصر. خفرع هو باني ثاني أكبر الهرم في الجيزة.",
        english_title: "ancient Egyptian bust of King Khafre with a Falcon on his head heavy solid stone made in Egypt. Khafre is the builder of the second-largest pyramid in Giza.",
        arabic_description: "تمثال نصفي مصري قديم للملك خفرع والصقر على رأسه من الحجر الصلب صنع في مصر. الارتفاع 13.5 سم العمق 6.5 سم العرض 12 سم الوزن 1140 جرام. ويصور التمثال الملك خفرع باني الهرم الثاني الكبير بالجيزة. وقد تم العثور عليه في معبد الوادي بمجمعه الهرمي. يجلس الملك بشكل مهيب على العرش بكل ثقة رجل بنى جبلًا. تم تزيين الجانبين من عرشه باللون البني الدلالي. رمز وحدة مصر العليا والسفلى، مما يدل على حكمه على نصفي البلاد. جاثمة على ظهر العرش. وخلف رأس الملك، يفرد الإله حورس على هيئة الصقر جناحيه حول رأس الملك في لفتة حماية. المملكة القديمة. الأسرة الرابعة، عهد خفرع (2558-2535 ق.م). كان الملك خفرع ابن خوفو وهنوتسن من الأسرة الرابعة، وبالتالي الأخ غير الشقيق لسلفه جدف رع. كان متزوجًا من أخته غير الشقيقة خامرنبتي الأولى، وأنجب منها ولدًا، ميكيرينوس، وابنة، خامرنبتي الثانية. كان متزوجًا أيضًا من مرس عنخ الثالث، ابنة كواب وحتب حرس الثاني، وأنجب منها أربعة أبناء على الأقل: نبيماخت، ونيوسر رع، وخنتركا، ودواين رع، وابنة واحدة هي شبسستكاو.",
        english_description: "Ancient Egyptian Bust of king Khafre with Falcon on his head solid stone made in Egypt. Height 13.5 cm depth 6.5 cm width 12 cm weight 1140 grams. The statue depicts King Khafre the builder of the second large pyramid at Giza. It’s was found in the valley temple of his pyramid complex. The King is majestically seated on the throne with all confidence of a man who built a mountain. The tow sides of his throne are decorated with the semantic- tawny. Symbol of the unity of upper and Lower Egypt, signifying his rule over the two halves of the country. Perched on the back of the throne. Behind the King’s head, the god Horus in the form of a Falcon spreads his wings around the king’s head in a gesture of protection. Old Kingdom. 4th Dynasty, reign of Khafre ( c. 2558-2535 Bc) . King Khafre was the son of kheops and Henutsen of the 4th dynasty, and thus the half-brother of his predecessor, Djedefre. He was married to his half-sister Khamernebti I, with whom he had a son, Mykerinos, and a daughter, khamernebeti II. He was also married to Meresankh III , a daughter of Kawab and Hetepheres II , with whom he had at least four sons: Nebemakhet, Niuserre , Khenterka and Duaenre, and one daughter, Shepsestkau.",
        era: ancientEra,
        sub_era_id: sub_era_2.id,
        catigory:"antiques",
        character: character_17,
        event: event_6,
    )
        product_7.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/812yqddkUxL._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_7.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/71752YKiA7L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_7.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/71VlLAabAPL._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
            Review.create(user:user, product:product_7, stars: 3,comment:"This is a good product")   
            Review.create(user:user_1, product:product_7, stars: 5,comment:"I love this product")   
            Review.create(user:user_2, product:product_7, stars: 2,comment:"Bad Material")   
            Review.create(user:user_3, product:product_7, stars: 1,comment:"I hate this product")   
            Review.create(user:user, product:product_7, stars: 4,comment:"This is a good product")   

    product_8 = Product.create(
        price: 148,
        arabic_title: "تمثال فرعوني مصري 3 أهرامات، هدايا تذكارية مصرية، هدية مستوحاة من مصر. (أزرق، 6 سم)",
        english_title: "matcher pharaonic Egyptian 3 Pyramids Statue Egyptian souvenirs gifts Inspired Gift from Egypt. (Blue, 6 CM)",
        arabic_description: "انقل نفسك إلى عالم مصر القديمة المهيب من خلال منحوتتنا الفرعونية الرائعة. صُنعت هذه القطعة المذهلة بعناية فائقة بالتفاصيل، وهي تجسد عظمة وغموض الثقافة الفرعونية. مستوحاة من تماثيل الفراعنة الرائعة التي كانت تزين المعابد والمقابر على طول نهر النيل، تعرض منحوتاتنا الجمال الخالد وقوة الفن المصري.",
        english_description: "Transport yourself to the majestic world of ancient Egypt with our exquisite Pharaonic sculpture. Crafted with meticulous attention to detail, this stunning piece captures the grandeur and mystique of Pharaonic culture. Inspired by the magnificent statues of pharaohs that once adorned the temples and tombs along the Nile, our sculpture showcases the timeless beauty and power of Egyptian artistry.",
        era: ancientEra,
        sub_era_id: sub_era_2.id,
        catigory:"antiques",
        character: character_17,
        event: event_5,
    )
        product_8.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/41KugY7fuRL._AC_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_8.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/419f-Q3rg5L._AC_SL1000_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_8.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/419f-Q3rg5L._AC_SL1000_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
            Review.create(user:user, product:product_8, stars: 3,comment:"This is a good product")   
            Review.create(user:user_1, product:product_8, stars: 5,comment:"I love this product")   
            Review.create(user:user_2, product:product_8, stars: 2,comment:"Bad Material")   
            Review.create(user:user_3, product:product_8, stars: 1,comment:"I hate this product")   
            Review.create(user:user, product:product_8, stars: 4,comment:"This is a good product")   
    product_9 = Product.create(
        price: 73,
        arabic_title: "سلسلة مفاتيح توت عنخ آمون المصرية الفرعونية غير الناضجة هدايا تذكارية مصرية-هدية مستوحاة من مصر",
        english_title: "immature pharaonic Egyptian Tutankhamun keychain Egyptian souvenirs gifts - Inspired Gift from Egypt",
        arabic_description: "زيّن مفاتيحك بميدالية المفاتيح العصرية الخاصة بنا، واجعلك أكثر ذكاءً وإشراقًا مع سلاسل المفاتيح الخاصة بنا، سلسلة المفاتيح صالحة كهدية قيمة لمناسبات مختلفة مثل عيد الحب، وعيد الأم، وعيد الميلاد، وأعياد الميلاد، وحفلات الزفاف واحتفالات الذكرى السنوية وأيضًا لأحبائك",
        english_description: "Decorate your keys with our fashion keychain , Make you smarter and bright with our keychains , keychain valid as valuable gift for different occasions like Valentine's Day , Mother's Day , Christmas , birthday , Wedding and Anniversaries and also for your loved persons",
        era: ancientEra,
        sub_era_id: sub_era_5.id,
        catigory:"antiques",
        # character: character_17,
        # event: event_6,
    )
        product_9.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61kJbTtrUHL._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_9.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61kJbTtrUHL._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_9.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61kJbTtrUHL._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
            Review.create(user:user, product:product_9, stars: 3,comment:"This is a good product")   
            Review.create(user:user_1, product:product_9, stars: 5,comment:"I love this product")   
            Review.create(user:user_2, product:product_9, stars: 2,comment:"Bad Material")   
            Review.create(user:user_3, product:product_9, stars: 1,comment:"I hate this product")   
            Review.create(user:user, product:product_9, stars: 4,comment:"This is a good product")   
    product_10 = Product.create(
        price: 76,
        arabic_title: "ميدالية مفاتيح على شكل هرم مصري فرعوني بفصوص عشوائية هدية تذكارية لعيد الحب متطورة وعصرية",
        english_title: "Pharaonic Egyptian pyramid keychain with random lobes Souvenir Valentine gift sophisticated and fashionable",
        arabic_description: "سلسلة مفاتيح صالحة كهدية قيمة وحامل مفاتيح منظم أنيق وعصري
        النمط: كلاسيكي
        نوع الإغلاق: هوك وحلقة
        شكل السلعة: هرمي",
        english_description: "keychain valid as a valuable gift sophisticated and fashionable organizer key holder
        Style: Classic
        Closure Type: Hook & Loop
        Item shape: Pyramid",
        era: ancientEra,
        sub_era_id: sub_era_2.id,
        catigory:"antiques",
        character: character_18,
        event: event_6,
    )
        product_10.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/51a0QXdnC0L._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_10.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/51cuhkWE4EL._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
        product_10.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/51a0QXdnC0L._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
            Review.create(user:user, product:product_10, stars: 3,comment:"This is a good product")   
            Review.create(user:user_1, product:product_10, stars: 5,comment:"I love this product")   
            Review.create(user:user_2, product:product_10, stars: 2,comment:"Bad Material")   
            Review.create(user:user_3, product:product_10, stars: 1,comment:"I hate this product")   
            Review.create(user:user, product:product_10, stars: 4,comment:"This is a good product")