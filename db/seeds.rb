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

    sub_era_1 = SubEra.create(
        era: ancientEra, #------------------------------??????
        arabic_name: "العصر العتيق (الأسرتان 1 , 2)",
        english_name: "The ancient era (dynasties 1 and 2)" ,
        arabic_info: "يعود للملك ' مينا ' الفضل فى  تحقيق الوحدة السياسية لمصر حوالى سنة 3200 ق . م، واستطاع أن يؤسس أول أسرة حاكمة في تاريخ مصر الفرعونية، و قد أراد مينا أن يؤمن وحدة البلاد فأقام مدينة قرب رأس الدلتا سميت فيما بعد باسم 'ممفيس' ، وكانت هذه الوحدة عاملاً هاماً فى نهضة مصر فى شتى نواحى الحياة . ",
        english_info: "King Menes is credited with achieving political unity in Egypt around the year 3200 BC. M, and he was able to establish the first ruling family in the history of Pharaonic Egypt. Menes wanted to secure the unity of the country, so he established a city near the head of the Delta that was later named 'Memphis.' This unity was an important factor in the Renaissance of Egypt in all aspects of life."
    )
    Section.create(
        arabic_title:"مقدمه",
        english_title:"Introduction",
        arabic_content:"يرجع اسم ( عصر بداية الأسر ) الي درجة الائتمان انه أول عصر يمكن فية يقين الاستقرار وتراث عرش مصر منذ أيامه بين أسرات حاكمه، ويرتبط بملوكها السجائر بروابط وصل القرابة الدم، اي انه هو والعصر يحدد تاريخ البدء، وهو من حوالي عام ( 3100 - 2686 ) قبل عيد الميلاد .
        وأيضاً بالعصر العتيق، اشارة الي تقدمه البعيد وسبقه لصور الدولة القديمة، او العصر الثيني او (لاي) نسبة الي مدينة ثيني او (طينة) التي تقع بالقرب من أبيدوس بصعيد مصر.
        يشمل هذا العصر استخدامتين (الاولى الشعبية) ، وقد امتاز ببداية استقرار ووحدة مصر الشعبية، وبمعرفة الكتابة منذ بدايتها، حيث أصبح ضروريا لأول مرة، كما يعتبر هو العصر للتحكم ولادارة عاصمة ادارية للبلاد، وتعاقب علي عرش مصر في هذا العصر التاسع عشر حاكمتان من الإدارة الفرعونية التي حكمت مصر .",
        english_content:"The name (the era of the beginning of the dynasties) is due to the degree of credit that it is the first era in which the stability and legacy of the throne of Egypt can be certain from its days among the families of its ruler, and its kings are linked to cigarettes by ties of blood kinship, meaning that it and the era determine the date of the beginning, which is from about the year (3100 - 2686). ) Before Christmas.
        And also the ancient era, referring to its distant progress and precedence of images of the Old Kingdom, or the Athenian era, or (Lay), in reference to the city of Theni or (Tyne), which is located near Abydos in Upper Egypt.
        This era includes two uses (the first is popular), and it was characterized by the beginning of the stability and unity of popular Egypt, and the knowledge of writing from its beginning, as it became necessary for the first time. It is also considered the era of control and administration of the administrative capital of the country, and two female rulers of administration succeeded to the throne of Egypt in this nineteenth era. The Pharaohs who ruled Egypt.",
        sub_era: sub_era_1,)
    Section.create(
        arabic_title:"الحضارة",
        english_title:"Civilization",
        arabic_content:"لعام 3600 ق.م. كان أساس مجتمعات العصر الحديث مصدرًا على طول نهر النيل، وجمع وتدجين الحيوانات. وبعد ذلك (حوالي 3600 ق.م.) بدأ المجتمع المصري يتطور بشكل قصير نحو حضارة كبيرة. ظهر خلال هذه الفترة فخار جديد ومميز، ويرتبط بنوع فخار جيد من فلسطين. أصبح استخدام النطاق الواسع خلال هذا الوقت النحاس. استخدمت مبادئ بلاد الرافدين في صناعة الطوب المجفف بالشمس والمباني التقنية، بما في ذلك استخدام القوس والجدران المزخرفة، وأصبحت شائعة خلال هذا الوقت.",
        english_content:"For the year 3600 BC. The foundation of modern-day societies was a source along the Nile River, collecting and domesticating animals. After that (about 3600 BC) Egyptian society began to develop briefly towards a major civilization. During this period a new and distinctive pottery appeared, associated with a fine type of pottery from Palestine. Copper became widely used during this time. Mesopotamian principles were used in the manufacture of sun-dried bricks and technical buildings, including the use of arches and decorated walls, and became popular during this time.",
        sub_era: sub_era_1,)
    Section.create(
        arabic_title:"الأسرة الاولي  ( 3100 - 2890 ) ق .م",
        english_title:"First Dynasty (3100 - 2890) BC",
        arabic_content:"ارتبط تأسيس حكم الأسرة الاولي بثلاثة اسماء ملكية ، هي مينا ( نعرمر ) وعحا - ومني ، وقد دارت حول هذه الاسماء اراء ومناقشات كثيرة ، فيري البعض ان الاسماء الثلاثة تدل علي ملك واحد ، بدأ حكمه باسم نعرمر، ثم لقب بلقب عحا بمعني ( المحارب ) ، ثم أخذ لقب مني اي ( الراعي او المثبت او الخالد ) ، والبعض يري ان نعرمر هو مني وان عحا كان ابننا لنعرمر .
        تتابع علي عرش الحكم بعد الملك نعرمر ثمانية حكام ، سموا باسماء كالتالي ( حور عحا -جر -واجي - دن - عج ايب - سمرخت - قاي عا - رع حوتب ) ، ومازالت هذه الاسماء موضع جدل لغوي وتاريخي بين الأثريين والمؤرخين الي الأن .",
        english_content:"The establishment of the rule of the First Dynasty was linked to three royal names: Mina (Narmer), Aha, and Mina. Many opinions and discussions took place around these names. Some believe that the three names indicate one king. He began his rule with the name Narmer, then he was given the title of Aha, meaning (the warrior). Then he took the title from me, meaning (the shepherd, the steadfast, or the immortal), and some believe that Narmer is from me, and that Aha was our son to Narmer.
        Eight rulers succeeded to the throne of power after King Narmer, named as follows (Hor-Aha - Djer - Wagi - Den - Ag Ib - Semerkhet - Qai A - Ra Hotep), and these names are still the subject of linguistic and historical controversy among archaeologists and historians to this day.",
        sub_era: sub_era_1,)
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
        sub_era: sub_era_1,)
    Section.create(
        arabic_title:"الأسرة الثانية (2890- 2686 ) ق .م",
        english_title:"Second Dynasty (2890-2686) BC",
        arabic_content:"في الحقيقة لانعرف اسباب انتهاء حكم الأسرة الاولي ، وسبب انتقال الحكم الي الأسرة الثانية ، ولا يوجد ابدا مايبرر هذا الانتقال ، ولكن نحن نتبع ترتيب مانيتون في تقسيمة للأسرات ، ولا نعرف ماجعله يبدا باسرة جديده ، اذ اننا لا نري اي تغير او انتقال مفاجئ فكل شئ كان يسير طبيعيا ، ولكن يعتقد البعض احتمال وجود نزاع بين الشمال والجنوب وبين اتباع الاله حورس والاله ست ، انتهي في عهد سخموي الزي يعتبر مؤسس الاسرة الثانية .
        عموما ظل امر ترتيب اسماء حكام هذه الاسرة ايضا موضع نقاش عند الباحثين والمؤرخين ، وقد عرفنا منهم سبع ملوك هم ( حتب سخموي - نب رع - ني نثر - ونج - سنج - خع سخم - خع سخموي ) .
        ملوك هذه الاسرة لم يختلفوا كثيرا عن ما سبقهم من الفراعنة في اعمالهم ، فقد قاموا باستغلال محاجر سيناء ، ومحاولة تهدئة الشمال والتوفيق بينها وبين الجنوب بسبب النزاعات كانت من اهم اعمالهم ، بعض ملوك هذه الاسره لم يعثر لهم علي مقابر بابيدوس ، حيث انهم كانوا يفضلون الاقامه في العاصمه الشمالية ( منف ) ، وقيل انهم اقاموا مقابرهم هناك ، قاموا بتشيد بعض المعابد للمعبودات المختلفه وخاصة الاله ( سوكر ) الصقر .",
        english_content:"In fact, we do not know the reasons for the end of the rule of the first dynasty, and the reason for the transfer of rule to the second dynasty, and there is absolutely no justification for this transfer, but we follow Maniton’s order in dividing the dynasties, and we do not know what made him start a new dynasty, as we do not see any sudden change or transition, so everything It was proceeding normally, but some believe that there might be a conflict between the north and the south and between the followers of the god Horus and the god Set, which ended during the reign of Sekhemwy, who is considered the founder of the Second Dynasty.
            In general, the order of the names of the rulers of this family also remained a subject of debate among researchers and historians, and we know of seven kings from them: (Hetepsekhemwy - Nebre - Nithar - Weng - Senge - Khasekhem - Khasekhemwy).
            The kings of this dynasty did not differ much from the pharaohs who preceded them in their actions. They exploited the Sinai quarries, and trying to calm the north and reconcile it with the south due to the conflicts was one of their most important actions. Some of the kings of this dynasty were not found in the tombs of Babidos, as they preferred to reside there. In the northern capital (Memphis), it was said that they established their tombs there. They built some temples for various deities, especially the god (Sokar), the falcon.",
        sub_era: sub_era_1,)
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
        sub_era: sub_era_1,)
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
        sub_era: sub_era_1,)
    Section.create(
        arabic_title:"الاستكشافات",
        english_title:"Explorations",
        arabic_content:"صفيحة صنعت أثناء فترة الأسرات المبكرة في مصر القديمة. تصور رجلًا على متن قارب إلى جانب فرس النهر وتمساح
        تقع المواقع الأثرية التي تعود إلى العصر العتيق، مستوطنة عزبة «تل كفور نجم» (حوالى 5 كم جنوب غرب مدينة كفر صقر، محافظة الشرقية). فقد عثر على شواهد أثرية عديدة تؤكد تبعية الموقع إلى العصر المُبكر. واجرت جامعة الزقازيق حفائرها بالموقع وأسفرت عن اكتشاف منطقة سكنية من عصر ما قبل الأسرات، وجبانة تضم 127 مقبرة معظم محتوياتها سليمة. منها 60 مقبرة من عصر الأسرة الأولى و 23 مقبرة من نفس العصر؛ و17 مقبرة في مستوى العصر العتيق؛ و13 مقبرة حافلة بالكثير من القرابين، منها مقبرتان لطفلين داخل إنائين من الفخار (موسم 1990م). ودفنت بعضها على هيئة القرفصاء. وهياكل عظمية داخل أوانى وجرار فخارية يحمل معظمها علامات واسم الملك نارمر. وتوابيت معها حُلى (أساور من حجر الشست، وخلخال من الحجر في الساق اليمنى)؛ وألواح الكُحل وأوانى حجرية من الشست والألباستر، ولوحات من الإردواز (الشست) لإعداد الكحل. وذلك بالإضافة إلى أوانى أخرى نحاسية، وقطع من عظام حيوانية، وبقايا آنية بداخلها عظام حيوانية (مقبرة 127) وقرابين. ومن التمائم جعران من حجر الحية الأخضر (؟)، وتميمة على هيئة ذبابة مثقوبة من حجر أخضر داكن، وتميمة من الذهب على هيئة طائر «أيبس» (اللقلق) بساق واحد، وهي من الحالات النادرة في هذا المكان من العصر العتيق. كما عثر على تميمة أخرى من العقيق لعلها على هيئة صقر مُجنَّح (مقبرة 123). وهذا بالإضافة إلى أجزاء من جدران للمنطقة السكنية القديمة، وبداخلها عدة أماكن بها آثار حريق لأفران، ومواقد كانت تخدم أهل القرية.",
        english_content:"A plate made during the Early Dynastic Period in ancient Egypt. Picture a man on a boat alongside a hippopotamus and a crocodile
        The archaeological sites dating back to the ancient era are located in the settlement of Ezbet “Tel Kafour Negm” (about 5 km southwest of the city of Kafr Saqr, Sharqia Governorate). Numerous archaeological evidences have been found confirming that the site dates back to the early era. Zagazig University conducted excavations at the site and resulted in the discovery of a residential area from the pre-dynastic era, and a cemetery containing 127 tombs, most of its contents intact. Of these, 60 tombs are from the First Dynasty and 23 tombs are from the same era. And 17 tombs at the level of the Archaic era. And 13 graves full of offerings, including two graves of two children inside two pottery vessels (1990 season). Some of them were buried in a squat shape. Skeletons inside pottery pots and jars, most of which bear marks and the name of King Narmer. And coffins with jewelry (schist stone bracelets, and a stone anklet on the right leg); And kohl boards, stone vessels made of schist and alabaster, and boards made of slate (schist) for preparing kohl. This is in addition to other copper vessels, pieces of animal bones, and the remains of vessels containing animal bones (cemetery 127) and offerings. The amulets include a scarab made of green snake stone (?), an amulet in the form of a fly pierced from a dark green stone, and a gold amulet in the form of an “ibis” (stork) bird with one leg, which is one of the rare cases in this place from the ancient era. Another agate amulet was also found, perhaps in the form of a winged falcon (cemetery 123). This is in addition to parts of the walls of the old residential area, inside which are several places containing traces of fire from ovens and stoves that used to serve the villagers.",
        sub_era: sub_era_1,)
    Section.create(
        arabic_title:"مستوطنات في كنعان والنوبة",
        english_title:"Settlements in Canaan and Nubia",
        arabic_content:"تم إثبات الاستيطان والاستعمار المصري منذ حوالي 3200 قبل الميلاد فصاعدًا في جميع أنحاء منطقة جنوب كنعان مع كل أنواع القطع الأثرية تقريبًا: العمارة (التحصينات والسدود والمباني) والفخار والأواني والأدوات والأسلحة والأختام، إلخ. تم العثور على 20 سرخ منسوب إلى نارمر - أول حاكم في عصر الأسرات المبكرة - في كنعان. هناك أيضًا أدلة على الاستيطان والاحتلال المصريين في النوبة السفلى بعد انتهاء ثقافة المجموعة النوبية.",
        english_content:"Egyptian settlement and colonization from about 3200 BC onwards are attested throughout the southern Canaan region with almost every type of artefact: architecture (fortifications, dams, buildings), pottery, utensils, tools, weapons, seals, etc. 20 serekhs attributed to Narmer - the first ruler of the Early Dynastic Period - have been found in Canaan. There is also evidence of Egyptian settlement and occupation in Lower Nubia after the Nubian Group culture ended.",
        sub_era: sub_era_1,)
    character_1 = Character.create(
        arabic_name: "(مينا) نارمر أو نعرمر",
        english_name: "Narmer or Narmer (Mena)",
        arabic_info: "نارمر أو نعرمر هو الملك الأول لمصر القديمة، وهو مؤسس الأسرة الأولى، ويعتبر العديد من المؤرخين أنه هو الفرعون الذي قام بتوحيد مصر العليا والسفلى، وقد تم توثيق هذا الحدث بواسطة النقوش الحجرية على النارمر باليت، والتي تعتبر أقدم توثيق لتوحيد مصر.",
        english_info: "Narmer or Narmer is the first king of ancient Egypt, the founder of the first dynasty, and many historians consider him to be the pharaoh who unified Upper and Lower Egypt, and this event has been documented by the stone inscriptions on the Narmer Palette, which is considered the oldest documentation of the unification of Egypt.",
        thumb_image:"https://scontent.fcai20-1.fna.fbcdn.net/v/t1.18169-9/14100448_1006483662753651_26063133592500132_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=3RaIensAHkkQ7kNvgE_EaBd&_nc_ht=scontent.fcai20-1.fna&oh=00_AYDsd_Srn5sVzDiyQDehSZiUzIiKdByl_JT5fJ4hmKFMzw&oe=666883C0",
        cover_image:"https://upload.wikimedia.org/wikipedia/commons/b/be/Narmer_Palette.jpg",
        date_of_birth: "3100",
        date_of_death: "3050",
        sub_era_id: sub_era_1.id,)
    CharacterSection.create(
            arabic_title:"اسمه وهويته",
            english_title:"His name and identity",
            arabic_content:"اسم مينا الشائع مشتق من مانيتو، مؤرخ وكاهن مصري عاش في عهد المملكة الپطلمية. Manetho noted the name in Greek as Μήνης (transliterated: Mênês). الشكل اليوناني البديل، Μιν (يُترجم: مين)، استشهد به مؤرخ القرن الخامس ق.م. هيرودوت، لكن هذا البديل لم يعد مقبولاً؛ يبدو أنه كان نتيجة محرفة من اسم الإله مين. أما الشكل المصري للاسم mnj، فقد أُخذ من قائمتي تورين وأبيدوس للملوك، التي يرجع تاريخها إلى عهد الأسرة العشرين، ويُنطق */maˈnij/. بحلول عهد الدولة الحديثة، التغييرات في اللغة المصرية تعني أن اسمه كان بالفعل يُنطق */maˈneʔ/. اسم mnj يعني \"الدائم إلى الأبد\" أو \"الأبدي\"، الذي قترح إ. إدواردز (1971) أنه قد ربما قد صيغ على أنه \"مجرد لقب وصفي للدلالة على بطل شبه أسطوري [...] فقد اسمه\". بدلاً من اسم شخص معين، قد يخفي الاسم حكام نقادة الثالثة مجتمعين: كا، عقرب الثاني ونارمر",
            english_content:"The common name Mene is derived from Manetho, an Egyptian historian and priest who lived during the Ptolemaic Kingdom. Manetho noted the name in Greek as Μήνης (transliterated: Mênês). An alternative Greek form, Μιν (transliterated: Mên), cited by a 5th-century BC historian Herodotus, but this variant is no longer accepted; it appears to have been a distortion of the name of the god Min New Kingdom, changes in the Egyptian language meant that his name was already pronounced */maˈneʔ/ meaning \"perpetual forever\" or \"eternal\", which E. Edwards (1971) suggests may have been coined as \"Just a descriptive title to indicate a semi-mythical hero whose name has been lost\". Instead of the name of a specific person, the name may hide the combined rulers of Naqada III: Ka, Sqrab II and Narmer.",
            character_id: character_1.id,)
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
            character_id: character_1.id,)
    CharacterSection.create(
            arabic_title:"أسلافه",
            english_title:"His ancestors",
            arabic_content:"زوجته يعتقد أنها كانت نعيث‌حوتپ، وكانت أميرة من مصر السفلى. وقد وجد اسمها في مقابر خلفاء نارمر المباشرين حور آحا ودجر، مما يدعو للإعتقاد أنها كانت أم أو زوجة حور آحا.",
            english_content:"His wife is believed to have been Neithhotep, a princess of Lower Egypt. Her name was found in the tombs of Narmer's immediate successors, Hor-Aha and Djer, which leads to believe that she was the mother or wife of Hor-Aha.",
            character_id: character_1.id,)
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
            character_id: character_1.id,)
    character_2 = Character.create(
        arabic_name: "حور عحا",
        english_name: "Hor Aha",
        arabic_info: "ربمَّا يكون هو الملك تتي حسب قائمة أبيدوس. مَاَرسَ الطب، وحارب بلاد النوبة وليبيا. هو السلف الملك نارمر، لقب بآتي في قائمة ملوك مصر (أبيدوس)، ولقب بأتوتيس وفقاً لمانيتون. ويعني اسمه المحارب. حارب ضد بلاد النوبة، وشبد معبد الإلهنيث في صا الحجر ضمت حديثاً لمصر السفلى. يوجد للملك مقبرة في أبيدوس، ومقبرة رمزية (القبر الأجوف) في سقارة.",
        english_info: "He may be King Teti according to the Abydos list. He practiced medicine, and fought Nubia and Libya. He is the ancestor of King Narmer, nicknamed Baati in the list of kings of Egypt (Abydos), and nicknamed Atotes according to Manetho. His name means warrior. He fought against Nubia, and built the temple of the gods in Sa al-Hijr, newly annexed to Lower Egypt. The king has a tomb in Abydos, and a symbolic tomb (the Hollow Tomb) in Saqqara.",
        thumb_image:"https://upload.wikimedia.org/wikipedia/commons/c/c7/GlazedFiaenceVesselFragmentNameOfAha-BritishMuseum-August21-08.jpg",
        cover_image:"https://upload.wikimedia.org/wikipedia/commons/c/c8/Benerib.JPG",
        date_of_birth: "3050",
        date_of_death: "3049",
        sub_era_id: sub_era_1.id,)
    CharacterSection.create(
            arabic_title:"هويته",
            english_title:"His identity",
            arabic_content:"كان شائعًا تقديم الفراعنة لأسم حورس قبل اساميهم، وعحا تعني «المُحارب». يجمع علماء المصريات بالتوفيق بين اثنين من السجلات التي تربط اسم حور عحا مع الاسم النبتي إيتي.
    
            كان هناك بعض الجدل حول حور عحا. فيعتقد البعض أنه يكون الفرعون مينا وهو من وحد مصر. ويدعي آخرون انه كان ابن نارمر، الفرعون الذي وحد مصر. وأن نارمر ومينا ربما كانوا فرعون واحد يشار إليه بأكثر من اسم.",
            english_content:"It was common for pharaohs to give the name Horus before their names, and Aha means “warrior.” Egyptologists reconcile two records linking the name Hor-Aha with the Nabataean name Iti.
    
            There has been some controversy over Hor-Aha. Some believe that he is the Pharaoh Menes, who unified Egypt. Others claim that he was the son of Narmer, the pharaoh who unified Egypt. Narmer and Menes may have been one pharaoh referred to by more than one name.",
            character_id: character_2.id,)
    CharacterSection.create(
            arabic_title:"خلافة نارمر",
            english_title:"Caliphate of Narmer",
            arabic_content:"اكتشف جي دراي مير نيث وقاع إدراج حور عحا بانه الفرعون الثاني من الأسرة الأولى. وكان سلفه نارمر موحد مصر العليا ومصر السفلى إلى المملكة الواحدة. ربمَّا اعتلى حور عحا العرش في أواخر القرن 32 ق.م. أو أوائل القرن 31 ق.م. وفقا لمانيتو، أصبح فرعون في سن الثلاثين تقريبًا، وحكم البلاد حوالي ستين عام.",
            english_content:"Ge Dry Mer discovered Neith and Qaa listing Hor-Aha as the second pharaoh of the First Dynasty. His predecessor, Narmer, united Upper and Lower Egypt into a single kingdom. Hor-Aha may have ascended the throne in the late 32nd century BC. Or early 31st century BC. According to Manetho, he became pharaoh around the age of thirty, and ruled the country for about sixty years.",
            character_id: character_2.id,)
    CharacterSection.create(
            arabic_title:"السياسة الداخلية",
            english_title:"Domestic politics",
            arabic_content:"يبدو أن حور عحا قد أجري العديد من الأنشطة الدينية. وسجلت زيارته لمَقْدِس الإلهة نيث على عدة لوحات خلال حكمه. يقع مَقْدِس نيث في الشمال الشرقي من دلتا النيل في ساو.
            نقوش الأوعية، تشير التسميات والأختام من مقبرة حور عحا والملكة نيث حوتب أن هذه الملكة توفيت في عهد عحا. وأنه رتب لدفنها في المصطبة المهيبة المُكتشفه من قبل جاك دي مورغان. ويعتقد بأن الملكة نيث حوتب هي أم عحا. اختيارنقادة كمكان للمقبرة لنيث حوتب هو إشارة قوية إلى أن جاءت من هذا الأقليم. وهذا، بدوره، يدعم الرأي القائل بأن نارمر تزوج عضوًا من العائلة الملكية التاريخية لنقادة لتعزيز هيمنة ملوك ثني على المنطقة.
            تؤرخ أقدم المصطبات في سقارة جبانة شمال ممفيس بأنها تعود إلى عهده. تعود المصطبة إلى عضو من نخبة الإداريين الذي قد يكون أحد أقارباء حور عحا، كما كانت العادة في ذلك الوقت. يعد هذا مؤشرًا قويًا على الأهمية المتزايدة لممفيس خلال عهد عحا.",
            english_content:"Hor-Aha appears to have conducted many religious activities. His visit to the sanctuary of the goddess Neith was recorded on several paintings during his reign. The sanctuary of Neith is located in the northeast of the Nile Delta in Sao.
            Vessel inscriptions, labels and seals from the tomb of Hor-Aha and Queen Neithhotep indicate that this queen died during the reign of Aha. He arranged for her to be buried in the majestic mastaba discovered by Jacques de Morgan. It is believed that Queen Neithhotep is the mother of Aha. The choice of Naqada as the location of the tomb for Neithhotep is a strong indication that she came from this region. This, in turn, supports the view that Narmer married a member of the historical royal family of Naqada to strengthen the dominance of the Thinni kings over the region.
            The oldest mastabas in the Saqqara cemetery north of Memphis date back to his reign. The mastaba belonged to a member of the administrative elite who may have been a relative of Hor Aha, as was the custom at that time. This is a strong indication of the growing importance of Memphis during Aha's reign.",
            character_id: character_2.id,)
    CharacterSection.create(
            arabic_title:"التنمية الاقتصادية",
            english_title:"Economical development",
            arabic_content:"تبقى عدد قليل من القطع الأثرية من عهد حور عحا. مع ذلك، فإن رؤس فؤوس نحاسية مصنوعة بدقة، وبقايا أوعية خزفيه، وصندوق عاجي ورخام أبيض منقوش ما يشهد بزدهار الحرف خلال عهد عحا.",
            english_content:"A few artifacts remain from the reign of Hor-Aha. However, finely crafted copper ax heads, remains of ceramic vessels,[11] an ivory box and engraved white marble attest to the flourishing of the craft during Aha's reign.",
            character_id: character_2.id,)
    CharacterSection.create(
            arabic_title:"السياسة الخارجية",
            english_title:"Foreign Policy",
            arabic_content:"نقش على لوح عاجي من أبيدوس يوحي بأن حور عحا قاد رحلة استكشافية ضد النوبيين. على لوح سنة، ذكر صراحة «مُحاربة تا سيتي»(أي النوبة).",
            english_content:"An inscription on an ivory tablet from Abydos suggests that Hor-Aha led an expedition against the Nubians. On the tablet of Sunna, he explicitly mentioned fighting Ta Seti (i.e. Nubia).",
            character_id: character_2.id,)
    CharacterSection.create(
            arabic_title:"وفاته",
            english_title:"His death",
            arabic_content:"وفقا لمانيتو، كان حور عحا يحمل معه فرس النهر، وتجسيدًا للإله سيث. طبقًا لنظرية أن حور عحا هو نفسه مينا الأسطوري، قصة أخرى تقول إن حور عحا قُتل على يد فرس النهر بينما كان يُمارس الصيد.",
            english_content:"According to Manetho, Hor-Aha carried with him a hippopotamus, an embodiment of the god Seth. According to the theory that Hor-Aha is the same as the legendary Menes, another story says that Hor-Aha was killed by a hippopotamus while he was hunting.",
            character_id: character_2.id,)
    CharacterSection.create(
            arabic_title:"المقبرة",
            english_title:"Cemetery",
            arabic_content:"عثر للفرعون عحا مقبرتين إحداهُما في أبيدوس والأخرى أضخم تقع في منطقة سقارة، ما أصبح تقليدًا تبعه معظم الفراعنة بعده. تقع مقبرة حور عحا بمنطقة مقابر ملوك الأسرة الأولى في أبيدوس، والمعروفة باسم أم العقاب. تتألف من ثلاثة غرف كبيرة (B10 B15 B19) متاخمة مباشرة لمقبرة نارمر. المقبرة عبارة عن غرف مستطيلة، وحفر مباشرة في الطابق الصحراوي، جدرانها مبطنة بالطوب اللبن. كان لمقابر نارمر وكا غرفتين مجاورتين فقط، في حين أن مقبرة حور عحا تضم ثلاث حُجرات أكبر ومنفصلة. السبب في هذه النوع من العمارة صعوبة بناء أسقف كبيرة فوق الغرف. استخدمت الأخشاب لهذه الهياكل والتي كانت ما يتم استيرادها من فلسطين.",
            english_content:"Two tombs were found for Pharaoh Aha, one in Abydos and a larger one located in the Saqqara region, which became a tradition followed by most pharaohs after him. The Hor Aha cemetery is located in the area of ​​the tombs of the First Dynasty kings in Abydos, known as the Mother of the Eagles. It consists of three large rooms (B10 B15 B19) directly adjacent to the Narmer Tomb. The tomb consists of rectangular rooms, dug directly into the desert floor, with walls lined with mud bricks. The tombs of Narmer and Ka had only two adjacent chambers, while the tomb of Hor-Aha had three larger, separate chambers. The reason for this type of architecture is the difficulty of building large ceilings over the rooms. Timber was used for these structures, which was imported from Palestine.",
            character_id: character_2.id,)
    character_3 = Character.create(
        arabic_name: "'جر' (فرعون)",
        english_name: "'Jar' (Pharaoh)",
        arabic_info: "إتي حسب قائمة أبيدوس. كانت هناك علاقات تجارية مع ليبيا في عهدهِ، غزا جزء من أرض سيناء والكنعان. حارب كلا من سيناء وبلاد النوبة، وتوغل حتى وصل إلى الشلال الثاني، وفقا لما تعرضه لوحة محفورة وجدت بالقرب من قلعة بوهين. ومن المرجح انه قاد حملة ضد الليبيين. زوجته هي مريت نيت. كما تم اكتشاف مقبرته في أبيدوس، ودفن بجانبه أكثر من 300 خادم لخدمته في العالم الاخر.",
        english_info: "'Eti' according to the Abydos list. There were trade relations with Libya during his reign, and he conquered part of the land of Sinai and Canaan. He fought both Sinai and Nubia, and penetrated until he reached the second cataract, according to an engraved tablet found near Buhin Castle. It is likely that he led a campaign against the Libyans. His wife is Merit Nate. His tomb was also discovered in Abydos, and more than 300 servants who served him in the other world were buried next to him.",
        thumb_image:"https://upload.wikimedia.org/wikipedia/commons/b/b5/Djer_stela_retouched.jpg",
        cover_image:"https://upload.wikimedia.org/wikipedia/commons/3/3e/Djer_1.jpg",
        date_of_birth: "3049",
        date_of_death: "3008",
        sub_era_id: sub_era_1.id,)
    CharacterSection.create(
            arabic_title:"هويته",
            english_title:"His identity",
            arabic_content:"الملك خنت دجر أو خنت (جر) هو فرعون من الأسرة المصرية الأولى وهو غير معروف; حكم في حوالي سنة 3050 ق م خلف الملك حور عحا وخلفه الملك دجت (وارجى) وعلى الأغلب أنه حكم لمدة 57 سنة ويعتقد أنه قام بحملات في بلد النوبة وليبيا. اسمه يكتب بطريقتين الأولى مقترنة باسم حورس (حورس جر) ومز جر بالهيلوغريفي كيس من الصوف. أما الاسم الثاني آيتي ويوجد في أبيدوس وعلى الأغلب كان هذا اسمه عند الولادة.
    
            وتوجد مقبرته بأبيدوس بجانب مقبرة زوجته مرنيث التي يعتقد أنها تولت الحكم لما كان ابنه قاصرا وعند اكتشاف مقبرته عثر على اربع اسوار كانت مربوطة فوق ساعد امرأة، ملفوف بالكتان. ولعلها كانت زوجة الملك خنت دجر، أو من أعضاء الأسرة المالكة. وكانت الأساور مربوطة بأربطة من كتان، في موضع يمكننا من استنتاج الترتيب الأصلي لها. وقد تكونت ثلاثة منها من أنواع مختلفة من الخرز، من ذهب وفيروز ولازورد وجمشت، وهو الأماتست. أما الرابع فيتألف من سبع وعشرين لويحة، تمثل واجهة القصر، يعلوها الصقر حورس. وتوضح تقدم قدماء المصريين في الصناعة في هذا الوقت المبكر من هذه الحضارة.",
            english_content:"King Khent Djer or Khent (Djer) is a pharaoh of the First Egyptian Dynasty and is unknown. He ruled in about the year 3050 BC, succeeding King Hor Aha, and was succeeded by King Djet (Warji). He most likely ruled for 57 years, and it is believed that he carried out campaigns in Nubia and Libya. His name is written in two ways, the first is associated with the name of Horus (Horus Djer) and Mez Djer in the hieroglyphic of a bag of wool. As for the second name, Aiti, it is found in Abydos, and this was most likely his name at birth.
    
            His tomb is located in Abydos, next to the tomb of his wife, Merneith, who is believed to have assumed power when his son was a minor. When his tomb was discovered, four bracelets were found that were tied over a woman’s forearm, wrapped in linen. She may have been the wife of King Khent Djer, or a member of the royal family. The bracelets were bound with linen bands, in a position that enables us to deduce their original arrangement. Three of them were made of different types of beads: gold, turquoise, lapis lazuli, and amethyst, which is amethyst. The fourth consists of twenty-seven panels, representing the facade of the palace, surmounted by the falcon Horus. It illustrates the progress of the ancient Egyptians in industry at this early time in this civilization.",
            character_id: character_3.id,)
    CharacterSection.create(
            arabic_title:"عهده",
            english_title:"Custody",
            arabic_content:"تميز عهد الملك ((جر)) بعدم وقوع أي اضطرابات داخلية٫ كما تميز بتقدم الفنون والصناعات.
    
            قام الملك ببناء مقبرته في أبيدوس وقد وجد له مقبرتين كبار في مدينة أبيدوس وسقارة. شارك الملك دجر الملك عحا في غزواته ضد النوبة وانشاء حكمة حتى وصل إلى الجندل الثاني وهذه الأحداث تم تسجيلها على لوحة صغيرة من الحجر تم العثور عليها في منطقة جبل الشيخ سليمان حوالي 11 كم جنوب وادى حلفا. هذه اللوحة تم قطعها ونقلها إلى الخرطوم وهي الآن في حديقة متحف في الخرطوم وهذه اللوحة توضح اهتمام ملوك الأسرة الأولى بتأمين الحدود الجنوبية لمصر. وفي عمليات حفر أخيرة أجريت في منطقة سقارة تم العثور على مقبرة كبيرة ترجع إلى حير نيت يعتقد أنها زوجة الملك دجر.",
            english_content:"The reign of King Djer was characterized by the absence of any internal disturbances, and was also characterized by the advancement of arts and industries.
    
            The king built his tomb in Abydos and found two large tombs for him in the city of Abydos and Saqqara. King Dajr King Aha participated in his conquests against Nubia and the establishment of Hekma until he reached the second cataract. These events were recorded on a small stone tablet that was found in the area of Mount Sheikh Suleiman, about 11 km south of Wadi Halfa. This painting was cut down and transported to Khartoum and is now in the garden of a museum in Khartoum. This painting shows the interest of the kings of the First Dynasty in securing the southern borders of Egypt. In recent excavations conducted in the Saqqara area, a large tomb belonging to Heer-Nit was found, believed to be the wife of King Dajr.",
            character_id: character_3.id,)
    CharacterSection.create(
            arabic_title:"المقبرة",
            english_title:"Cemetery",
            arabic_content:"على غرار والده حور عحا، دفن جر في أم العقاب في أبيدوس. مقبرة جر 'O' من بيتري. قبره يحتوي على رفات 318 من الخدم الذين دفنوا معه. بدايتًا من الأسرة الثامنة عشر، كان التبجيل لمقبرة حور عحا كما تبجل مقبرة أوزوريس، ومجمع دفن الأسرة الأولى، والذي يتضمن مقبرة جر على حد سواء، كان من التقاليد الدينية المصرية المُهمة.",
            english_content:"Like his father Hor-Aha, Djer was buried in Umm al-Uqab in Abydos. Grave traction 'O' from Petrie. His tomb contains the remains of 318 servants who were buried with him. Beginning in the Eighteenth Dynasty, the tomb of Hor-Aha was venerated as was the tomb of Osiris, and the First Dynasty burial complex, which included both the tomb of Djer, was an important Egyptian religious tradition.",
            character_id: character_3.id,)
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
            character_id: character_3.id,)
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
            character_id: character_3.id,)
    character_4 = Character.create(
        arabic_name: "جت",
        english_name: "Jet",
        arabic_info: "جت (يعني اسمه أفعي حورس) فرعون مصري، ورابع ملوك الأسرة الأولى. بدأ في عهده سياسة استغلال المناجم بحثًا عن المعادن؛ فقد عثر على اسمه منقوشًا على صخرة في أحد الدروب التي كانت تصل ما بين إدفو والبحر الأحمر. عثر له على اللوحة الشهيرة التي تحمل اسمه، والمحفوظة حاليًا في متحف اللوفر في باريس.",
        english_info: "Gath (his name means the snake of Horus) was an Egyptian pharaoh, and the fourth king of the First Dynasty. During his reign, he began a policy of exploiting mines in search of minerals. His name was found engraved on a rock on one of the paths that connected Edfu to the Red Sea. He found the famous painting bearing his name, which is currently preserved in the Louvre Museum in Paris.",
        thumb_image:"https://upload.wikimedia.org/wikipedia/commons/f/f3/Egypte_louvre_290.jpg",
        cover_image:"https://upload.wikimedia.org/wikipedia/commons/a/aa/Abydos_KL_01-04_n04.jpg",
        date_of_birth: "3008",
        date_of_death: "2975",
        sub_era_id: sub_era_1.id,)
    CharacterSection.create(
            arabic_title:"عائلته",
            english_title:"his family",
            arabic_content:"كانت مير نيث أخت جت هي زوجته وملكة مصر، التي قد تكون حكمت مصر كفرعون بعد وفاته. هنالك إحتمال بأن تكون عحا نيث إحدى زوجاته. أنجب جت ومير نيث هو الفرعون دن وحفيدهم الفرعون عج إب.",
            english_content:"Gath's sister Mer-Neith was his wife and queen of Egypt, who may have ruled Egypt as pharaoh after his death. There is a possibility that Aha-neith was one of his wives. Gath and Mer Neith gave birth to the Pharaoh Den and their grandson the Pharaoh Aj-Ib.",
            character_id: character_4.id,)    
    CharacterSection.create(
            arabic_title:"عهده",
            english_title:"Custody",
            arabic_content:"لا تعرف مدة حكم جت بالتحديد، ولكن تقدر بأن تكون ما بين ستة إلى عشر سنوات مدة. وفقًا هانس هلك  حكم 10 سنوات. فقدت تفاصيل عهد جت في فجوات من حجر باليرمو. ومع ذلك، يرى من بعض الشظايا ختم يثبت أن هناك أنشطة التداول المكثف مع كنعنان سوريا وفلسطين في ذلك الوقت. المقابر التي يرجع تاريخها إلى عهده في طرخان وسقارة عثر بها على فخار من فلسطين.
    
            اهتم جت بالتوسع التجاري واستغلال المناجم، فقد عثر على اسمه مكتوب على صخور إحدى الطرق الرابطة بين إدفو والبحر الأحمر. عند التدقيق في آثار عصر جت يُرى أنها قد وصلت إلى حد كبير من الأتقان.",
            english_content:"The exact duration of Gath's rule is not known, but it is estimated to be between six and ten years. According to Hans Hulk, a 10-year sentence. Details of Gath's reign are lost in gaps in Palermo stone. However, some seal fragments seen prove that there were intense trading activities with Canaan of Syria and Palestine at that time. Tombs dating back to his reign in Tarkhan and Saqqara contained pottery from Palestine.
    
            Jet was interested in commercial expansion and exploitation of mines. He found his name written on the rocks of one of the roads linking Edfu and the Red Sea. When examining the effects of the Gath era, it is seen that they have reached a great degree of perfection.",
            character_id: character_4.id,)
    CharacterSection.create(
            arabic_title:"المقبرة",
            english_title:"Cemetery",
            arabic_content:"تقع مقبرة جت 'Z' في أبيدوس، إلى الغرب من مقبرة والده الفرعون جر. تحيط بمقبرة جت 174 مدفن تابع له معظمهم من الخدم الذين تم التضحية بهم عند وفاة جت لخدمة الحياة الآخرى.",
            english_content:"The tomb of Jet 'Z' is located in Abydos, to the west of the tomb of his father, Pharaoh Djer. The cemetery of Gath is surrounded by 174 tombs belonging to him, most of whom are servants who were sacrificed upon the death of Gath to serve the afterlife.",
            character_id: character_4.id,)
    character_5 = Character.create(
        arabic_name: "مريت نيت",
        english_name: "Merrit Nate",
        arabic_info: "مربيـاپ حسب قائمة أبيدوس. هي ملكة وصية على العرش، أم الملك دن. كما انها موضع نقاش حيث من المحتمل انها تولت العرش بعد موت الملك جر، ومن الممكن أيضا اعتبارها أول حاكمة لمصر، وطبقا لما اشار اليه بعض علماء الاثار انها كانت ملكة وصية على العرش مع الملك جت وربما حدث ذلك بالتراضي بينهما. معنى اسمها هو المحبة لنيت (نيث) (اله مصر السفلى، كما لديها مثلها مثل الكثير من الملوك في عهدها مقبرة ومقبرة أخرى رمزية في كلا من أبيدوس وسقارة. كلاهما لهما الوقار الملكي من حيث الحجم والبناء.",
        english_info: "Murbiyab according to the Abydos list. She is queen regent, mother of King Den. It is also a subject of debate, as it is possible that she assumed the throne after the death of King Djer, and it is also possible that she was considered the first female ruler of Egypt, and according to what some archaeologists have indicated, she was queen regent with King Gath, and this may have happened by mutual consent between them. The meaning of her name is love for Neith (the god of Lower Egypt). She, like many kings during her reign, had a cemetery and another symbolic cemetery in both Abydos and Saqqara. Both had royal dignity in terms of size and construction.",
        thumb_image:"https://upload.wikimedia.org/wikipedia/commons/b/b3/Merneith_stele.jpg",
        cover_image:"https://upload.wikimedia.org/wikipedia/commons/b/b3/Merneith_stele.jpg",
        date_of_birth: "3008",
        date_of_death: "2975",
        sub_era_id: sub_era_1.id,)
    CharacterSection.create(
            arabic_title:"اسمها وشخصيتها",
            english_title:"Her name and personality",
            arabic_content:"يقترن اسم مريت نيث بالإلهة المصرية القديمة نيث معبودة هامة خلال الأسرة الأولى. معنى اسمها «محبوبة نيث». كانت مركز عبادة نيث في سايس (حاليًا صا الحجر). وتجد بعض الآثار وادوات من عهدها تحمل أسماء أخرى، مثل «نيث حتب» أي نيث راضية و«نخت نيث» ومعناها نيث القوية.
    
            ويظهر اسمها «أم الملك»(موت نسوت) على العديد من الاختام الملكية للملك دن وربما يعني ذلك أنه كان ابنها. وتشير الآثار التي عثر عليها إلى أنها كانت زوجة الملك جت، في عام 2900 قبل الميلاد، وربما كانت ابنة الفرعون جر. فمن ناحية أخرى يعتقد عالم الآثار «بيتر كابلوني» أنها كانت ابنة [جر] (حيث عثر على آثار تحمل اسمها في مقبرته) وأنها كانت زوجة «جت».",
            english_content:"The name Merit-Neith is associated with the ancient Egyptian goddess Neith, an important deity during the First Dynasty. The meaning of her name is “Beloved of Neith.” The center of Neith's cult was at Sais (present-day Sa'as al-Hajar). You find some antiquities and tools from her era bearing other names, such as “Neithhotep,” which means Neith is satisfied, and “Nakht-Neith,” which means Neith the Strong.
    
            Her name, “Mother of the King” (Mot Nesut), appears on many of King Den’s royal seals, perhaps meaning that he was her son. The antiquities found indicate that she was the wife of King Gath, in 2900 BC, and she may have been the daughter of Pharaoh Djer. On the other hand, archaeologist Peter Caploni believes that she was the daughter of Jar (as traces bearing her name were found in his tomb) and that she was the wife of Jet.",
            character_id: character_5.id,)
    CharacterSection.create(
            arabic_title:"من أثارها",
            english_title:"From its effects",
            arabic_content:"عثر لمريت نيث على لوحة تذكيرية من الحجر الرملي، عثر عليها الباحث فلندرز بيتري في عام 1900 بالقرب من قبور أم الكاب. كما عثر على اسمها أختام من مقبرتها مع دن (فرعون) في أبيدوس. يقل وجود اسمها في مواقع أخرى غير أبيدوس.
    
            عثر في مقبرة سقارة على مكسورات قوارير وطاسات من سن الفيل. وكانت تلك المقبرة في البدء مصنفة بأنها مقبرتها حيث عثر فيها على اسمها محفورا على لوحة من المرمر ولم يتأكد الباحثون من ذلك فيما بعد.
            
            ولكن عثر على اسمها على أختام لشخصيات كانت تعمل تحت ادارتها في سقارة، من ضمنهم الوكيل «هاتيا» و«سخ كا». وكان «سخ كا سج» مديرا لمقاطعة «حور واج» الذي عاصر الفراعنة جر، و«واجي» و«دن» ودفن في سقارة.",
            english_content:"Lemrit Neith found a memorial sandstone plaque, found by researcher Flinders Petrie in 1900 near the graves of Umm al-Kab. Her name was also found on seals from her tomb with the Den (Pharaoh) in Abydos. Her name is rarely found in sites other than Abydos.
    
            Broken bottles and bowls from Sin el Fil were found in the Saqqara cemetery. This cemetery was initially classified as her cemetery, as her name was found engraved on an alabaster plaque, but researchers did not confirm this later.
            
            However, her name was found on the seals of figures who worked under her in Saqqara, including the agent “Hatia” and “Sakh Ka”. “Sakhka Saj” was the director of the “Hoor Waj” province, who was a contemporary of the pharaohs Djer, Waji, and Den, and was buried in Saqqara.",
            character_id: character_5.id,)
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
            character_id: character_5.id,)
    CharacterSection.create(
            arabic_title:"دلائل حديثة",
            english_title:"Recent evidence",
            arabic_content:"لم يوجد اسم مريت نيث على اختام في مقبرة الفرعون قاع وهو ثامن فرعون حكم الأسرة الأولى، ومذكور عليها جميع حكام مصر في تلك الفترة الأولى. ويبدو أن الملكة مريت نيث قل صيتها التاريخي على الأقل منذ عهد الفرعون قاع.
    
            يطهر اسم مريت نيث غلى حجر باليرمو في قطعة مكسورة من لوحة تذكارية من عهد الأسرة المصرية السادسة. تلك اللوحة تحوي تاريخ عدة ملوك، ويوجد اسمها في قائمة ثانية تذكر احداثا سنوية قام بها الفرعون دن. بحسب الباحثين 'كورت سي' 'سيلكه روت' يثبت حجر باليرمو أن مريت نيث هي أم الفرعون دن.",
            english_content:"The name of Meritneith was not found on seals in the tomb of Pharaoh Qaa, who was the eighth pharaoh to rule the First Dynasty, and all the rulers of Egypt in that first period are mentioned on them. It seems that Queen Merit-Neith has had a low historical reputation, at least since the time of Pharaoh Kaa.
    
            The name of Merit Neith is engraved on a Palermo stone in a broken piece of a stela from the Sixth Dynasty of Egypt. This tablet contains the history of several kings, and their name is found in a second list that mentions annual events carried out by Pharaoh Den. According to researchers 'Kurt Si' 'Silke Rut', the Palermo stone proves that Merit-Neith is the mother of Pharaoh Den.",
            character_id: character_5.id,)
    character_6= Character.create(
        arabic_name: "دن (فرعون)",
        english_name: "Den (Pharaoh)",
        arabic_info: "دن أو حور دن، هو اسم حورس لفرعون من الأسرة المصرية الأولى. أكثر الفراعنة القدامى آثارًا. حكم خلال هذه الفترة. صاحب عهد دن ازدهارًا كبيرًا لمملكته، فالعديد من الابتكارات تنسب إلى عهده. كان أول من استخدم لقب ملك مصر السفلى ومصر العليا، وهو اللقب الذي يعرف باسم التتويج. وأول من صوّر وهو ويرتدي التاج المزدوج (الأحمر والأبيض). شيدت أرضية مقبرته في أم العقاب بالقرب من أبيدوس من الجرانيت الأحمر والأسود. وهي المرة الأولى في مصر التي استخدم فيها هذا الحجر الصلب كمادة بناء. خلال فترة حكمه الطويلة أسس العديد من أنماط الطقوس والتي استخدمها الحكام من بعده.",
        english_info: "Den or Hor Den, is the name of Horus for a pharaoh of the First Egyptian Dynasty. The most monumental of the ancient pharaohs. He ruled during this period. Dunn's reign was accompanied by great prosperity for his kingdom, and many innovations are attributed to his reign. He was the first to use the title of King of Lower and Upper Egypt, a title known as the coronation. He was the first to be photographed wearing the double crown (red and white). The floor of his tomb at Umm al-Uqab near Abydos was constructed of red and black granite. This is the first time in Egypt that this hard stone was used as a building material. During his long reign, he established many ritual patterns that were used by rulers after him.",
        thumb_image:"https://upload.wikimedia.org/wikipedia/commons/a/a3/IvoryLabelOfDen-BritishMuseum-August19-08.jpg",
        cover_image:"https://upload.wikimedia.org/wikipedia/commons/a/a3/IvoryLabelOfDen-BritishMuseum-August19-08.jpg",
        date_of_birth: "2975",
        date_of_death: "2935",
        sub_era_id: sub_era_1.id,)
    CharacterSection.create(
            arabic_title:"انجازاته",
            english_title:"His achievements",
            arabic_content:"حارب في سيناء، تم إحصاء سكان البلاد بوجه عام في عهده. اسمه النبتي (اسم نبتيهو سمتي، وعرف ايضا باسم حسابتي في قائمة أبيدوس الملكية، وبأسم أوسافايدوس وفقا لمانيتون. قام بالعديد من الحملات على سيناء؛ ليدافع عن مناجم المالاكيت التي أكتشفها البدو. واحتفل خلال فترة حكمه بعيد الحب سد والذي من خلاله اعتقد أن الملك حكم لمدة 30 سنة على الأقل. ويظن انه وصل إلى الحكم في سن مبكر، ويؤكد ذلك أن والدته حكمت كوصية على العرش. وخلال فترة عهده قام بتعداد الماشية. ظهر في فترة حكمه منصب لاحدى الموظفين ذو شأن يدعى حماقا أعمال هذا الموضف تشبه ما يقوم به الوزراء في العهود الحديثة. مقبرته في ابيدوس صغيرة الحجم، ويوجد 130 مقبرة مجاورة لخدمه. أما المقبرة في الشمال فهي مخصصة لكلا من الملك ووزيره حماقا.",
            english_content:"He fought in Sinai, and the country's population was generally counted during his reign. His name is Nabta (Nabtihu Smti, and he is also known as Hesbati in the Abydos royal list, and as Osavaidos according to Manitho. He carried out many campaigns in the Sinai, to defend the malachite mines discovered by the Bedouins. During his reign, he celebrated Valentine’s Day, through which it is believed that the king ruled For at least 30 years, it is believed that he came to power at an early age, and this is confirmed by the fact that his mother ruled as regent and during his reign he counted livestock. During his reign, a position of an important official named Hamaka appeared. This position is similar to that of ministers In modern times, his cemetery in Abydos is small, and there are 130 graves adjacent to his servants, while the cemetery in the north is dedicated to both the king and his minister Hamama.",
            character_id: character_6.id,)
    CharacterSection.create(
            arabic_title:"عهده",
            english_title:"His reign",
            arabic_content:"الملك «دن» له العديد من الإنجازات من أهمها أنه أعاق قطاع الطرق الذين كانوا يغيرون على سكان الدلتا الغربية. وهو أول ملك فكّر في تنظيم مياه النيل وفيضانه في منطقة الفيوم. وكان أول من حبس الأوقاف على المعابد. دفن في العرابة المدفونة في مقبرة كسيت أرضيتها بقطع من الجرانيت.
    
            أسس بعض الطقوس وأسس اتخاذ لقب التتويج «نيسوت - بيتي» وبقي من بعده هذا اللقب إلى عصر الحكم الرومان. كما يرجع إليه لقب اسم نبتي لفرعون وهذا اللقب يعني ملك الوجه القبلي والبحري. وهو صوّر في حجر باليرمو مرتديا التاج الأبيض، رمز الوجه القبلي ثم مرتديا التاج الأحمر رمز الوجه البحري.
            
            وقد كشف في سقارة عن مقبرة لوزيره حماكا بها أقراص من الحجر والنحاس والخشب والعاج ومحلاة بمناظر بديعة وبعضها مطعم بقطع من المرمر .",
            english_content:"King Den had many achievements, the most important of which was that he hindered the bandits who were attacking the residents of the Western Delta. He was the first king to think about regulating the waters of the Nile and its flooding in the Fayoum region. He was the first to reserve endowments for temples. He was buried in Al-Araba, buried in a cemetery whose floor was covered with pieces of granite.
    
            He established some rituals and established the coronation title “Nisut-Beti,” and this title remained after him until the era of Roman rule. The title of the Nabta name of Pharaoh is also attributed to him, and this title means king of Upper and Lower Egypt. He was depicted in Palermo stone wearing the white crown, the symbol of Upper Egypt, and then wearing the red crown, the symbol of Lower Egypt.
            
            In Saqqara, a tomb of his vizier Hamaka was uncovered, containing tablets made of stone, copper, wood, and ivory, decorated with magnificent scenes, some of which were inlaid with pieces of alabaster.",
            character_id: character_6.id,)
    character_7 = Character.create(
        arabic_name: "حتب سخم وى",
        english_name: "Hotepsekhemwy",
        arabic_info: "حتب سخم وي هو اسم حورس لفرعون فترة الأسرات المبكرة والذي أسس الأسرة الثانية. لا يعرف شئ عن حقبته؛ تقترح بردية تورينو بأن حكمه استمر 95 عام بينما يورد المؤرخ مانيتون في تاريخه بان حكمه استمر 38 عام. اعتبر علماء المصريات أن كلا التقريرين مخطئين وقدرت فترة حكم حتب سخم وي 25 أو 29 عام.",
        english_info: "Hotepsekhemwy is the Horus name of the Pharaoh of the Early Dynastic Period who founded the Second Dynasty. Nothing is known about his era; The Turin Papyrus suggests that his rule lasted 95 years, while the historian Manetho states in his history that his rule lasted 38 years. Egyptologists considered both reports to be wrong and estimated the period of Hotepsekhemwy's rule to be 25 or 29 years.",
        thumb_image:"https://upload.wikimedia.org/wikipedia/commons/9/91/Hotepsekhemwy.jpg",
        cover_image:"https://upload.wikimedia.org/wikipedia/commons/f/f4/Abydos_KL_02-01_n09.jpg",
        date_of_birth: "2740",
        date_of_death: "2765",
        sub_era_id: sub_era_1.id,)
    CharacterSection.create(
            arabic_title:"مصادر الاسم",
            english_title:"Name sources",
            arabic_content:"تم تحديد اسم حتب سخم وي من قبل علماء الآثار في سقارة، الجيزة، البداري وأبيدوس من أختام طينية، والأواني الحجرية واسطوانات العظام. العديد من النقوش الحجرية على الأوعية تذكر حتب سخم وي مع اسم خليفته رع نب.
    
            اسم حورس لحتب سخموي هو موضع اهتمام خاص لعلماء المصريات والمؤرخون، لأنه قد يلمح إلى السياسة المضطربة في ذلك الوقت. الكلمة المصرية 'حتب' تعني 'السلمى' و 'المرضي' وقد تعني أيضًا 'المُوفِق' أو 'أن يكون المُوفِق'. حتى اسم حتب سخم وي الكامل قد يقرأ أيضًا 'وفقت القوتين' أو 'تراضت القوتين'، وهو ما يشير إلى معنى سياسي كبير. في هذا المعنى، 'القوتين' يمكن أن تكون إشارة إلى مصر العليا ومصر السفلى وكذلك الآلهة الرئيسية حورس وست.",
            english_content:"The name Hotepsekhemwy was identified by archaeologists at Saqqara, Giza, Badari and Abydos from clay seals, stone vessels and bone cylinders. Many of the stone inscriptions on the vessels mention Hotepsekhemwy along with the name of his successor Ra-neb.
    
            The Horus name of Hotepsekhemwy is of particular interest to Egyptologists and historians, because it may allude to the turbulent politics of the time. The Egyptian word 'hotep' means 'peaceful' and 'pleasant' and may also mean 'the conciliator' or 'to be the conciliator'. Even Hotepsekhemwy's full name may also read 'the two powers agreed' or 'the two powers came to an agreement', which indicates a greater political meaning. In this sense, 'the two powers' could be a reference to Upper Egypt and Lower Egypt as well as the main gods Horus and Set.",
            character_id: character_7.id,)
    CharacterSection.create(
            arabic_title:"العائلة",
            english_title:"the family",
            arabic_content:"من غير المعروف من هي زوجة حتب سخم وي. من الممكن أن يكون ابنه بر نب «ابن الملك» و«كاهن سوبدي»، لكن منذ اكتشاف الأختام الطينية تشمل اسمه وألقابه وجدت في معرض المقبرة والتي شملت اسمين (حتب سخم وي وخليفته رع نب، ولا يعرف من كان بر نب.",
            english_content:"It is not known who Hotepsekhemwy's wife was. It is possible that his son was Barneb, the “son of the king” and the “priest of Sobdei”, but since the discovery of clay seals including his name and titles found in the tomb gallery, which included the names of Hetehotepsekhemwy and his successor Ra Neb, it is not known who Barneb was.",
            character_id: character_7.id,)
    CharacterSection.create(
            arabic_title:"عهده",
            english_title:"His reign",
            arabic_content:"في عهده حدث انفجار أرضي في جهة تل بسطة مات بسببه خلق كثري، ومن المحتمل أنه زلزال وقع هناك لقرب المكان من منطقة أبي زعبل البركانية.",
            english_content:"During his reign, a ground explosion occurred in the area of Tel Basta, as a result of which many people died. It was likely that it was an earthquake that occurred there due to the location’s proximity to the Abu Zaabal volcanic area.",
            character_id: character_7.id,)
    CharacterSection.create(
            arabic_title:"المقبرة",
            english_title:"The tomb",
            arabic_content:"موقع مقبرة حتب سخم وي غير معروف. يعتقد علماء المصريات أمثال فلندرز بيتري وتوبي ويلكنسون بأنها قد تكون معرض عملاق تحت الأرض مقبرة بي تحت الممر الدفن لمُجمع أوناس الجنائزي في سقارة. فقد وجدت هناك العديد من الأختام تعبر عن الملك حتب سخم وي.
    
            علماء المصريات مثل فولفغانغ هيلك وبيتر مونرو غير مقتنعين بهذه النظرية ويعتقدا أن معرض المقبر بي هي موقع دفن الملك رع نب، فقد تم العثور على العديد من الأختام تعود لهذا الحاكم هناك أيضًا.",
            english_content:"The location of Hetepesekhemwy's tomb is unknown. Egyptologists such as Flinders Petrie and Toby Wilkinson believe that it may be a giant underground gallery tomb of Bi under the burial passage of the Unas funerary complex at Saqqara. Many seals were found there representing King Hotepsekhemwy.
    
            Egyptologists such as Wolfgang Helke and Peter Munro are not convinced by this theory and believe that Tomb Gallery B is the burial site of King Raneb, as many seals belonging to this ruler have been found there as well.",
            character_id: character_7.id,)
    character_8 = Character.create(
        arabic_name: "الملك 'ني نتجر'",
        english_name: "King 'Ni Negr'",
        arabic_info: "ربما قسّم مصر بين خلفائه، وزُعم أنه سمح للمرأة بالحكم مثل الفراعنة.",
        english_info: "He may have divided Egypt among his successors, and allegedly allowed women to rule like the pharaohs.",
        thumb_image:"https://upload.wikimedia.org/wikipedia/commons/2/27/Nynetjer_2.jpg",
        cover_image:"https://upload.wikimedia.org/wikipedia/commons/2/27/Nynetjer_2.jpg",
        date_of_birth: "2740",
        date_of_death: "2695",
        sub_era_id: sub_era_1.id,)
    CharacterSection.create(
            arabic_title:"مصادر اسمه",
            english_title:"Sources of his name",
            arabic_content:"عثر في منطقة سقارة على مقبرة كبيرة وجد فيها خمسة أنواع مختلفة من الأختام لهذا الملك، وفي عام 1938 عثرت مصلحة الآثار على جبانة تحت الأرض في سقارة يرجع تاريخها إلى الأسرة الثانية، وقد عثر فيها على بعض أوان عليها سدادات مختومة باسم هذا الملك، وقد ذكر اسمه كذلك على حجر باليرمو.",
            english_content:"In the Saqqara area, a large cemetery was found in which five different types of seals were found for this king. In 1938, the Antiquities Service found an underground cemetery in Saqqara dating back to the Second Dynasty, in which some vessels were found with seals stamped with the name of this king. It was mentioned His name is also on the Palermo stone.",
            character_id: character_8.id,)
    CharacterSection.create(
            arabic_title:"حقبته",
            english_title:"His era",
            arabic_content:"يعتقد من النقوش أنه حكم أكثر من 35 عام وقد ذكر مانيتون أن هذا الفرعون في عهده أمر بان الحكم يمكن أن تتولاه أنثى، وربما كان ذلك من العادات التي كانت مندثرة ثم أعيدت ثانية.
    
            يعتقد علماء المصريات مثل ولفجانج هيلك ونيكولاس جريمال وهيرمان ألكسندر شلوغ وفرانشيسكو تيرادريتي أن ني نتجر ترك مصر وهي تعاني من إدارة معقدة للغاية وأن ني نتجر قرر تقسيم مصر لتركها لابنيه (أو على الأقل ، لخليفتين) يحكمان مملكتين منفصلتين ، على أمل أن يتمكن الحاكمان من إدارة الولايات بشكل أفضل. في المقابل ، يعتقد علماء المصريات مثل باربرا بيل أن كارثة اقتصادية مثل المجاعة أو الجفاف الطويل الأمد أثرت على مصر في هذا الوقت. لذلك ، لمعالجة مشكلة إطعام السكان المصريين ، قسم ني نتجر مصر إلى دولتين وحكم خلفاؤه دولتين مستقلتين حتى انتهت المجاعة.",
            english_content:"It is believed from the inscriptions that he ruled for more than 35 years. Manetho mentioned that during his reign, this pharaoh ordered that a female rule could be assumed, and perhaps this was one of the customs that had disappeared and then were restored again.
    
            Egyptologists such as Wolfgang Hilke, Nicholas Grimal, Hermann Alexander Schlug, and Francesco Teradriti believe that Néntjer left Egypt suffering from a very complex administration and that Néntjer decided to partition Egypt to leave it to his two sons (or at least, two successors) ruling separate kingdoms, in the hope that the two rulers would be able to administer states better. In contrast, Egyptologists such as Barbara Bell believe that an economic disaster such as famine or long-term drought affected Egypt at this time. Therefore, to address the problem of feeding the Egyptian population, Nyintjer divided Egypt into two states and his successors ruled two independent states until the famine ended.",
            character_id: character_8.id,)
    CharacterSection.create(
            arabic_title:"المقبرة",
            english_title:"The tomb",
            arabic_content:"تقع مقبرة معرض ني نتجر في سقارة ويبلغ قياسها 94x106 متر. يؤدي منحدر المدخل علي عمق 25 مترًا إلى ثلاثة أروقة متجهة إلى الشرق والغرب، ويمتد إلى نظام يشبه المتاهة من المداخل والأروقة والممرات. قام المعهد الألماني للآثار بإنجاز خمس حفريات واكتشف أن قبر ني نتجر يظهر تشابهات معمارية كبيرة مع المقبرة ب ، والذي يعتقد أنه إما موقع دفن رع نب أو حتب سخم وى. تم العثور على 56 سكينة من الصوان و 44 من شفرات الحلاقة و 44 من الشفرات الإضافية وأواني الجعة والنبيذ. وجد الجزء الجنوبي بدون تخريب ويحتوي على الكثير من الأشياء الملكية التي بقيت من فترة حكم ني نتجر، مثل أكثر من 50 برطمان نبيذ مختوم ، وشبكات ، وصناديق تخزين مصنوعة من الخشب وزجاجات مرمر. نشأت بعض أوعية النبيذ من مقابر الأسرة الأولى المتأخرة. أيضا تم العثور على أقنعة المومياء وتابوت امرأة من عصر رمسيس. لذلك تم إعادة استخدام قبر ني نتجر جزئيا في أوقات لاحقة. تقع غرفة الدفن الرئيسية في الطرف الجنوبي الغربي من المقبرة ، لكن موقع الدفن بأكمله غير مستقر للغاية ويواجه خطر الانهيار. ",
            english_content:"The tomb of Nenetjer Fair is located in Saqqara and measures 94x106 metres. An entrance ramp at a depth of 25 meters leads to three galleries facing east and west, extending into a maze-like system of entrances, galleries and corridors. The German Archaeological Institute has carried out five excavations and discovered that the tomb of Nynetjer shows significant architectural similarities with Tomb B, which is believed to be the burial site of either Ra-neb or Hetepesekhemwy. 56 flint knives, 44 razor blades, 44 additional blades, beer and wine vessels were found. The southern part was found without vandalism and contains many royal objects that have survived from Nyentjer's reign, such as more than 50 sealed wine jars, nets, storage boxes made of wood and alabaster bottles. Some wine vessels originate from Late First Dynasty tombs. Mummy masks and a coffin of a woman from the Ramesses era were also found. Therefore the tomb of Nyentjer was partly reused in later times. The main burial chamber is located at the southwestern end of the tomb, but the entire burial site is very unstable and is in danger of collapsing.",
            character_id: character_8.id,)
    character_9 = Character.create(
        arabic_name: "الملك خع سخموي",
        english_name: "King Khasekhemwy",
        arabic_info: "خع سخم وى (بالإنجليزية: Khasekhemwy) (ت. 2686 ق.م.; أحيانا يـُكتب خع سخم اويْ Khasekhemui) كان خامس وآخر فرعون في الأسرة المصرية الثانية. قليل هو المعروف عن خع سخم وى، عدا أنه قاد العديد من الحملات الحربية الهامة وبنى العديد من التماثيل، ما زالت باقية، تذكر الحرب ضد الشماليين.",
        english_info: "Khasekhemwy (d. 2686 BC; sometimes spelled Khasekhemui) was the fifth and last pharaoh of the Second Dynasty of Egypt. Little is known about Khasekhemwy, except that he led many important military campaigns and built many statues, which still survive, remembering the war against the northerners.",
        thumb_image:"https://upload.wikimedia.org/wikipedia/commons/6/69/Khasekhem_oxford2.jpg",
        cover_image:"https://upload.wikimedia.org/wikipedia/commons/6/69/Khasekhem_oxford2.jpg",
        date_of_birth: "2754",
        date_of_death: "2727",
        sub_era_id: sub_era_1.id,)
    CharacterSection.create(
            arabic_title:"فترة الحكم",
            english_title:"Period of rule",
            arabic_content:"سادت خلال فترة حكم خع سخم وى، حالة من الإستقرار ترجع إلى النص الرسمي الذي كان قد أصدره: 'ظهور القوتين اللتين توافق الإلهان وتصالحا من خلالهما 'والرسوم الخاصة به. فواجهة قصره الرئيسية تعلوها صورتا 'حورس وست' معا 'بدلا من صورة الإله 'حورس' بمفرده، أو صورة الإله 'ست' بمفرده كما فعل الملك 'بر إيب سن'). وضع 'خع سخموي' حدا للمنازعات السياسية بين اتجاهين: اتخذ الاتجاه الأول من 'حورس' رمزا له، في حين اتخذ الاتجاه الثاني من 'ست' رمزا له. وقد ساعد إخضاع النوبيين في الجنوب والليبيين في الشمال على إرساء دعائم الوحدة الوطنية. واستتب في عصره الأمن وساد الانضباط، سواء داخل أراضي مصر أم خارجها. كما قامت الحضارة المصرية بوثبة هائلة في شتى النواحي كما وكيفا، مما جعلها تتعدى العصر 'الثيني' لتخطو نحو الدولة القديمة. وفي الواقع فإن تطور التقنيات وتقدمها كان له عظيم الأثر ليس فقط على الصناعات التعدينية - إذ أصبح من الممكن حينذاك صهر التماثيل النحاسية - وإنما أيضا على فن العمارة بصفة خاصة. ولم تعد الأحجار محصورة في استخدامها كمادة مساعدة فقط، بل وجدت من يستعملها في ذلك الحين بدراية ومهارة. ومما يدل على ذلك تلك الغرفة المشيدة من الحجر الجيري الموجودة في مقبرة ذلك الفرعون في أبيدوس،وكذلك الركيزة الدعامية المنحوتة من حجر الجرانيت والمزينة بالنقوش من 'نخن ، بالإغريقية Herakonpolis ، حاليا الكوم الأحمر' وهكذا أصبح الطريق ممهدا لعبقرية 'إمحوتب'.
    
            بنى خع سخموي حصن في نخن، وفي أبيدوس، وقد يكون بنى أيضًا جسر المدير في سقارة.",
            english_content:"During the reign of Khasekhemwy, a state of stability prevailed due to the official text that he had issued: 'The appearance of the two powers through which the two gods agreed and were reconciled' and its drawings. The main facade of his palace is surmounted by images of Horus and Set together, instead of the image of the god Horus alone, or the image of the god Set alone, as King Bar-ib-Sin did. Khasekhemwy put an end to political disputes between two directions: the first direction took “Horus” as its symbol, while the second direction took “Set” as its symbol. The subjugation of the Nubians in the south and the Libyans in the north helped establish the foundations of national unity. During his time, security and discipline prevailed, whether inside or outside Egypt. Egyptian civilization also made a huge leap in various aspects, both quantitatively and qualitatively, which made it go beyond the 'Thinian' era to move towards the Old Kingdom. In fact, the development and advancement of technologies had a great impact not only on the mining industries - as it became possible at that time to melt copper statues - but also on architecture in particular. Stones were no longer limited to being used only as an auxiliary material, but at that time there were those who used them with knowledge and skill. Evidence of this is the room built of limestone located in the tomb of that pharaoh in Abydos, as well as the pillar carved from granite stone and decorated with inscriptions from 'Nekhen, in Greek Herakonpolis, currently Kom Al-Ahmar'. Thus, the way became paved for the genius of 'Imhotep'.
    
            Khasekhemwy built a fortress at Nekhen and Abydos, and he may have also built the Modir Bridge at Saqqara.",
            character_id: character_9.id,)
    character_10 = Character.create(
        arabic_name: "نوب نفر",
        english_name: "Nope Nefer",
        arabic_info: "يُعتقد أنه كان معاصرا للفرعون ني نتجر. لا يمكن تحديد ترتيبه الزمني بشكل دقيق",
        english_info: "It is believed that he was a contemporary of Pharaoh Nyentjer. Its chronological order cannot be determined precisely",
        thumb_image:"https://upload.wikimedia.org/wikipedia/commons/e/e7/Nubnefer.png",
        cover_image:"https://upload.wikimedia.org/wikipedia/commons/e/e7/Nubnefer.png",
        date_of_birth: "2500",
        date_of_death: "2450",
        sub_era_id: sub_era_1.id,)
    CharacterSection.create(
            arabic_title:"مصدر اسمه",
            english_title:"Name source",
            arabic_content:"النوب نفر أو نقود تاخوس: هي عملة فرعونية تم صكها عام 350 قبل الميلاد باسم الملك أو الفرعون المصري (تيوس ويطلق عليه أيضًا اسم تاخوس).",
            english_content:"Nubian Nefer or Thachos coin: It is a Pharaonic coin that was minted in 350 BC in the name of the Egyptian king or pharaoh (Teos, also called Thachos).",
            character_id: character_10.id,)
    CharacterSection.create(
            arabic_title:"معلومات تاريخية",
            english_title:"Historical information",
            arabic_content:"لم تضرب النقود في مصر طوال العصر الفرعونى إلا في عهد الأسرة الثلاثين، فقد بقيت الحضارة المصرية متمسكة بتقاليدها العريقة في اتباع نظام المقايضة بالحبوب والبيض والماشية والمنتجات اليدوية وخلافه، ولكن تحت ضغط الظروف السياسية تم صك العملة باسم الملك أو الفرعون المصرى «تاخوس» وتحديدا عام 350 ق.م، وكانت تسمى هذه العملة بـ«النوب نفر» وتعنى الذهب الجيد أو الخالص وهي تعد من العملات النادرة جدًا حيث يوجد منها حوالي عشرين قطعة فقط على مستوى العالم، وهي العملات الوحيدة التي تم اكتشافها حتى الآن وتحمل كتابات مصرية قديمة، حيث كان الملك تاخوس قد جلب عددًا من الجنود المرتزقة من اليونان لمحاربة الفرس الذين جاؤوا لاحتلال مصر مما دعا الحكومة المصرية لأن تضرب النقود لدفع أجور هؤلاء الجنود دون أن يتم التعامل بها على المستوى الشعبى، وفي عهد الأسكندر الأكبر استخدم المصريون النقود في تعاملاتهم اليومية لأول مرة في التاريخ وكانت العملة في ذلك الوقت تحمل صورة الإسكندر بعد تأليهه.",
            english_content:"Coins were not struck in Egypt throughout the Pharaonic era except during the Thirty Dynasty, as the Egyptian civilization remained committed to its ancient traditions of following the barter system with grains, eggs, livestock, handicrafts, etc., but under the pressure of political circumstances, the currency was minted in the name of the Egyptian king or pharaoh 'Teos' specifically in 350 BC, and this currency was called 'Nub Nefer' and means good or pure gold. It is considered one of the very rare currencies, as there are only about twenty pieces of it worldwide. It is the only currency that has been discovered so far and bears ancient Egyptian inscriptions, as King Teos had brought a number of mercenaries from Greece to fight the Persians who came to occupy Egypt, which prompted the Egyptian government to mint coins to pay the salaries of these soldiers without dealing with them at the popular level. In the era of Alexander the Great, the Egyptians used coins in their daily transactions for the first time in history, and the currency at that time bore the image of Alexander after his deification.",
            character_id: character_10.id,)
    event_1 = Event.create(
    type: "War",
    arabic_title: "توحيد مصر العليا والسفلى",
    english_title: "Unification of Upper and Lower Egypt",
    start_date: "3150",
    end_date: "3150",
    cover_image:"https://www.abou-alhool.com/ima/32899_1.jpg",
    arabic_info:"تم توحيد مصر العليا والسفلى من قبل الملك مينا، وهو أول فرعون في الأسرة الأولى، وقد تم توحيد البلاد بعد حرب طويلة بين البلدين.",
    english_info:"Upper and Lower Egypt were unified by King Menes, the first pharaoh of the First Dynasty, and the country was unified after a long war between the two countries.",
    character_id: character_1.id,
    sub_era: sub_era_1,)
    EventSection.create(arabic_title:"المرحلة الاولى",english_title:"First stage",arabic_content:"في البداية كانت مصر عبارة عن اقاليم لكل منها حكومتها ولكل اقليم مدينة توجد فيها مركز الحكم والرمز المقدس للمدينة ، وكان يحكم كل اقليم اسرة قوية ، كانت هذه الاسر القوية تؤسس تكتلات اشبه بالاتحاد بين كياناتها ، وكان يتم ذلك بأحد أمرين إما بالمصاهرات او باستخدام القوة، وكان يتم ذلك في الدلتا والصعيد على السواء.",english_content:"At first, Egypt was divided into provinces, each of which had its own government, and each province had a city where the center of government and the sacred symbol of the city were located. Each province was ruled by a strong family. These strong families established alliances similar to a union between their entities, and this was done by one of two things, either by marriage or by using force, and this was done in the Delta and the Upper Egypt alike.",event_id: event_1.id,)
    EventSection.create(arabic_title:"المرحلة الثانية",english_title:"Second stage",arabic_content:"كان توحيدالشمال (الدلتا) تحت حكم مملكتين،الأولى وعاصمتها مدينة (عنجتي) قرب سمنود الحالية شرق الدلتا ، والثانية كانت عاصمتها (دمي-إن-حور) دمنهورالحالية غرب الدلتا، اجتمع شمل الصعيد تحت زعامة مدينة (نوبت) طوخ الحالية واتخذوا من (ست) شعاراً دينياً لهم .",english_content:"The unification of the north (the Delta) was under the rule of two kingdoms, the first with its capital city (Anjati) near the current Samannoud east of the Delta, and the second with its capital (Demi-en-Hor) in the current Damanhur west of the Delta. The Upper Egypt was united under the leadership of the city of (Nubt) Tukh, and they took (Set) as a religious symbol for them.",event_id: event_1.id,)
    EventSection.create(arabic_title:"المرحلة الثالثة",english_title:"Third stage",arabic_content:"وكانت اتحاد مملكتي الدلتا في مملكة واحدة عاصمتها (صاو) صالحجرالآن بمركز بسيون بمحافظة الغربية واتخذت من النحلة (بيت) شعارلها وتوجوا بتاج احمر وابيض وازرق، وكانت اتحاد مملكتي الصعيد في مملكة واحدة عاصمتها (نوبت) العربية الحالية واتخذوا من (نت) شعاراً دينياً لهم وتوجوا بتاج احمر وابيض وازرق، وفي النهاية توحدت الدلتا والصعيد تحت حكم ملك واحد وكانت العاصمة في مدينة (منف) بني سويف وكانت العاصمة الدينية في مدينة (نت) العربية والعاصمة الاقتصادية في مدينة (ممفيس).",english_content:"The union of the two kingdoms of the Delta into one kingdom with its capital (Saw) Salhagar now in the center of Basyoun in the Gharbia Governorate, and they took the bee (Bayt) as their symbol and were crowned with a red, white, and blue crown. The union of the two kingdoms of the Upper Egypt into one kingdom with its capital (Nubt) Al-Arabia now, and they took (Net) as a religious symbol for them and were crowned with a red, white, and blue crown. In the end, the Delta and the Upper Egypt united under the rule of one king, and the capital was in the city of (Menf) Beni Suef, and the religious capital was in the city of (Net) Al-Arabia, and the economic capital was in the city of (Memphis).",event_id: event_1.id,)
    EventSection.create(arabic_title:"المرحلة الرابعة",english_title:"Fourth stage",arabic_content:"انتقلت عاصمة مملكة الدلتا لأسباب غير معروفة من مدينة (ساو) إلى مدينة (عنجتي) فيشرق الدلتا والتي تبدل اسمها إلى (جدو) واتخذت من (أوزير) شعارادينياً لها فتغيراسمها إلى (بر-أوزير) وهى بلدة ابوصيربناغر بسمنود.",english_content:"The capital of the Delta kingdom moved for unknown reasons from the city of (Saw) to the city of (Anjati) in the east of the Delta, which changed its name to (Jedu) and took (Ozir) as its religious symbol, so its name changed to (Bar-Ozir), which is the town of Abu Sir Bnagar in Samannoud.", event_id: event_1.id,)
    EventSection.create(arabic_title:"المرحلة الخامسة",english_title:"Fifth stage",arabic_content:"كان الشمال سباق بتوحيد شطري مصر حيث اكتملت وحدة الدلتا والصعيد تحت زعامة (أون) لتوحيد مصر.",english_content:"The north was ahead in unifying the two halves of Egypt, as the unity of the Delta and the Upper Egypt was completed under the leadership of (On) to unify Egypt.",event_id: event_1.id,)
    EventSection.create(arabic_title:"المرحلة السادسة",english_title:"Sixth stage",arabic_content:"نجد ان مصر قد انفرط عقد وحدتها فحملت مدينة (ساو) على عاتقها توحيد الدلتا والصعيد تحت حكومة واحدة ولكنها لم تستمر طويلا ، حيث قام الصعيد بثورة تحت لواء (ست) ضد حكام الدلتا واستطاعواهزيمة ملوك الشمال وانفصال مملكة الجنوب مرة أخرى فعادت البلاد لسيرتها الأولى.",english_content:"We find that Egypt had lost its unity, so the city of (Saw) took it upon itself to unify the Delta and the Upper Egypt under one government, but it did not last long, as the Upper Egypt revolted under the banner of (Set) against the rulers of the Delta and they were able to defeat the kings of the north and the southern kingdom separated again, so the country returned to its original course.",event_id: event_1.id,)
    EventSection.create(arabic_title:"المرحلة السابعة",english_title:"Seventh stage",arabic_content:"انقسمت البلاد مرة اخرى لمملكتين مرة اخرى وسميت المملكتين باسم (أتباع حور) كانت عاصمة الجنوب هي (نخن) او قرية الكاب الحالية بمركز ادفو ، اتخذت مملكة الجنوب رمز نبات البوص (سوت) واخذوا يلقبون ملوكهم بلقب (ني-سوت) او المنتسب الى نبات البوص وارتدوا التاج الابيض ، وكان شعار المملكة زهرة اللوتس ورمزها الديني الرخمة (نخبت) ، بينما عاصمة الشمال مدينة (بي) تل ابط و الحالية بمركز دسوق بمحافظة كفر الشيخ ، واتخذت مملكة الشمال من النحلة (بيت) رمز لهم ولقب ملوكها بلقب (بيت-ي) او المنتسب للنحلة وارتدوا التاج الاحمر ، وكان لهم عاصمة دينية تدعى (دب) واصبحت الكوبرا (وادجيت) هى رمزهم الديني ، وشعار المملكة هو نبات البردي",        english_content:"The country was divided again into two kingdoms again and the two kingdoms were named (Followers of Horus). The capital of the south was (Nekhen) or the current village of Al-Kab in the center of Edfu, and the southern kingdom took the plant of the papyrus (Soot) as a symbol and their kings were called (Ni-Soot) or affiliated with the plant of the papyrus and they wore the white crown. The symbol of the kingdom was the lotus flower and its religious symbol was the reed (Nekhbet), while the capital of the north was the city of (B) Tal Abt and the current center of Desouk in Kafr El-Sheikh Governorate, and the northern kingdom took the bee (Bayt) as their symbol and their kings were called (Bayt-Y) or affiliated with the bee and they wore the red crown. They had a religious capital called (Dab) and the cobra (Wadjet) became their religious symbol, and the symbol of the kingdom was the papyrus plant.",        event_id: event_1.id,)
    EventSection.create(arabic_title:"المرحلة الثامنة",english_title:"Eighth stage",arabic_content:"يعتقد أن أحد ملوك الجنوب والمرجح انه الملك المدعو بـ (العقرب) تمكن من توحيد مصرولكن لسبب ما انقسمت البلاد مرة أخرى",        english_content:"It is believed that one of the kings of the south, and it is likely that the king called (Scorpion), was able to unify Egypt, but for some reason the country was divided again.",        event_id: event_1.id,)
    EventSection.create(arabic_title:"المرحلة التاسعة",english_title:"Ninth stage",arabic_content:"كانت مصر على موعد مع الملك (نعرمر) والذي تمكن من إتمامالوحدة المصرية وتأسيس أول دولة في التاريخ ، ولكي يحافظ على الوحده من الانفراط كالمراحل السابقة قرر بناء عاصمة جديدة تتوسط الشمال والجنوب عند رأس الدلتا ، وأطلق عليها (إنب-حج) الجدارالأبيض والتي أصبحت (من-نفر) أو منف وممفيس وإنشاء لها جبانه ضخمة في سقارة والجيزة ،والتي ضمت رفات اعظم ملوك واشهر الحكماء من انبياء مصر القديمة ، ظلت منف مركز اداري هام حتى هجرت في حوالي عام ٦٤١م ، وبنيت من احجارها مدينه الفسطاط اول عاصمة عربية في مصر.",        english_content:"Egypt had an appointment with King Narmer, who was able to complete Egyptian unity and establish the first state in history. In order to preserve unity from disintegrating like previous stages, he decided to build a new capital in the middle of the north and south at the head of the delta, and he called it (Enb-Haj) the White Wall, which became ( From Nefer) or Memphis and Memphis, and the construction of huge cemeteries in Saqqara and Giza, which included the remains of the greatest kings and the most famous sages among the prophets of ancient Egypt. Memphis remained an important administrative center until it was abandoned in about the year 641 AD, and the city of Fustat, the first Arab capital in Egypt, was built from its stones.",        event_id: event_1.id,)
        event_17 = Event.create(type: "PeaceTreaty",arabic_title: "بناء مدينه منف",english_title: "Building of the city of Menf",cover_image:"https://upload.wikimedia.org/wikipedia/commons/c/cf/Memphis200401.JPG",        start_date: "",        end_date: "",        arabic_info:"منف (أو من نفر) ((بالإنجليزية: مَمفيس) (بالقبطية: ⲙⲉⲙϥⲓ); (باليونانية: Μέμφις)) كانت مدينة مصرية قديمة والعاصمة القديمة لـ إنب-حج، أول مقاطعات مصر السفلى التي كانت تُعرف باسم mḥw (الشمال). تقع أطلالها بالقرب من مدينة ميت رهينة الحديثة، على بعد 20 كم (12 ميل) جنوب الجيزة في القاهرة الكبرى، مصر.",        english_info:"Memphis (or Menf) ((English: Memphis) (Coptic: ⲙⲉⲙϥⲓ); (Greek: Μέμφις)) was an ancient Egyptian city and the ancient capital of Inb-Hedj, the first nome of Lower Egypt that was known as mḥw (the north). Its ruins are located near the modern city of Mit Rahina, 20 km (12 mi) south of Giza in Greater Cairo, Egypt.",        character_id: character_1.id,        sub_era: sub_era_1,)
        EventSection.create(
            arabic_title:"منف",english_title:"Menf",arabic_content:"وفقًا للأساطير التي رواها في أوائل القرن الثالث قبل الميلاد مانيتون، وهو كاهن ومؤرخ عاش في المملكة البطلمية خلال الفترة الهلنستية في مصر القديمة، فإن المدينة تأسست على يد الملك مينا. كانت عاصمة مصر القديمة، خلال المملكة المصرية القديمة وظلت مدينة مهمة في جميع أنحاء التاريخ المصري القديم. احتلت موقعًا إستراتيجيًا عند مصب دلتا النيل، وكانت موطنًا للنشاط الصاخب. تميز ميناؤها الرئيسي، بيرو نفر، بكثافة عالية من الورش والمصانع والمستودعات التي كانت توزع المواد الغذائية والبضائع في جميع أنحاء المملكة القديمة. خلال عصرها الذهبي، ازدهرت منف كمركز إقليمي للتجارة والدين.
            يُعتقد أن منف تمتعت بحماية الإله بتاح، شفيع الحرفيين. كان المعبد العظيم، «حت كا بتاح» (بمعنى «قصر كا بتاح»، أحد أبرز المباني في المدينة. يُعتقد أن اسم هذا المعبد، المكتوب باليونانية باسم «Aἴγυπτoς (إيجيبتوس)» من قبل مانيتون، هو الأصل الاشتقاقي للاسم الإنجليزي الحديث «إيجيبت».
             يرتبط تاريخ منف ارتباطًا وثيقًا بتاريخ البلاد نفسها. يُعتقد أن انهياره في نهاية المطاف كان بسبب فقدان أهميته الاقتصادية في أواخر العصور القديمة، بعد صعود مدينة الإسكندرية. تضائلت أهمية منف الدينية بعد التخلي عن الدين القديم في أعقاب مرسوم تسالونيكي في 380 بعد الميلاد الذي فرض تبني نيقية المسيحية في جميع أنحاء الإمبراطورية الرومانية فقط.
            اليوم، تقدم أطلال العاصمة السابقة أدلة مجزأة على ماضيها. إلى جانب مجمع الأهرام في الجيزة، وقد تم الحفاظ عليها على أنها موقع تراث عالمي منذ عام 1979. الموقع مفتوح للجمهور باعتباره متحفًا في الهواء الطلق.",        english_content:"According to legends told in the early 3rd century BC by Manetho, a priest and historian who lived in the Ptolemaic Kingdom during the Hellenistic period of ancient Egypt, the city was founded by King Menes. It was the capital of ancient Egypt, during the Old Egyptian Kingdom and remained an important city throughout ancient Egyptian history. It occupied a strategic location at the mouth of the Nile Delta, and was home to bustling activity. Its main port, Peru Nefer, was characterized by a high density of workshops, factories, and warehouses that distributed food and goods throughout the Old Kingdom. During its golden age, Memphis flourished as a regional center for trade and religion.
            It is believed that Memphis enjoyed the protection of the god Ptah, the patron saint of craftsmen. The great temple, “Hatkaptah” (meaning “Palace of Kaptah”), was one of the most prominent buildings in the city. The name of this temple, written in Greek as “Aἴγυπτoς (Aegyptus)” by Manetho, is thought to be the etymological origin of the modern English name “Aἴγυπτoς (Aegyptus)” by Manetho. ».
            The history of Memphis is closely linked to the history of the country itself. It is believed that its eventual collapse was due to the loss of its economic importance in late antiquity, after the rise of the city of Alexandria. The religious importance of Memphis diminished after the abandonment of the ancient religion following the Edict of Thessalonica in 380 AD which imposed the adoption of Nicene Christianity throughout the Roman Empire only.
            Today, the ruins of the former capital offer fragmentary evidence of its past. Along with the pyramid complex in Giza, it has been preserved as a World Heritage Site since 1979. The site is open to the public as an open-air museum.",        event_id: event_17.id,)
        EventSection.create(arabic_title:"أسماء المواقع الجغرافية",english_title:"Geographical Locations Names",arabic_content:"كان لمنف عدة أسماء خلال تاريخها الذي يقارب أربعة آلاف عام. كان اسمها المصري القديم إنب-حج (تُرجم باسم «الجدران البيضاء).
            بسبب حجمها، وكانت المدينة تُعرف أيضًا بأسماء أخرى مختلفة، مثل أسماء الأحياء التي كانت تتمتع بشهرة كبيرة في وقت أو آخر. على سبيل المثال، وفقًا لنص الفترة الانتقالية الأولى،  كان يُعرف باسم جد سوت («الأماكن الأبدية»)، وهو اسم هرم تيتي.        
            في وقت ما، تمت الإشارة إلى المدينة باسم عنخ تاوي (بمعنى «حياة الأرضين»)، مما يؤكد الموقع الإستراتيجي للمدينة بين مصر العليا ومصر السفلى. يبدو أن هذا الاسم يعود إلى المملكة المصرية الوسطى (حوالي 2055 - 1640 قبل الميلاد)، وكثيراً ما يوجد في النصوص المصرية القديمة. يؤكد بعض العلماء أن هذا الاسم كان لمنطقة تحتوي على شجرة مقدسة تقع في الحي الغربي من المدينة الذي يقع بين معبد بتاح الكبير والمقابر في سقارة.        
            في بداية المملكة المصرية الحديثة (حوالي 1550 قبل الميلاد)، أصبحت المدينة تُعرف باسم منفر (تعني «دائمة وجميلة»)، والتي أصبحت ممفي (ⲙⲉⲙ ϥ ⲓ) باللغة القبطية. الاسم «ممفيس» (φιςμφις) هو التعديل اليوناني للاسم الذي أطلقوه على هرم بيبي الأول الواقع غرب المدينة.        
            أثناء محاولته رسم التاريخ المصري القديم والعناصر الدينية في تقاليد المصريين القدماء، أوضح الشاعر اليوناني هسيود في «ثيوغونيا» اسم المدينة بالقول إن منف كانت ابنة إله النهر اليوناني نيلوس وزوجة إبافوس (ابن زيوس وآيو)، اللذين أسسا المدينة ",        english_content:"Memphis had several names during its history of nearly four thousand years. Its ancient Egyptian name was Eneb-Haj (translated as “white walls”).
            Because of its size, the city was also known by various other names, such as the names of neighborhoods that were very popular at one time or another. For example, according to the First Intermediate Period text, it was known as Djed Sut (“Eternal Places”), the name of the Pyramid of Teti.
            At one point, the city was referred to as Ankh-Tawi (meaning \"Life of the Two Lands\"), emphasizing the city's strategic location between Upper and Lower Egypt. This name appears to date back to the Middle Kingdom of Egypt (ca. 2055 - 1640 BC), and is often found in ancient Egyptian texts. Some scholars confirm that this name was for an area containing a sacred tree located in the western district of the city, which is located between the Great Temple of Ptah and the tombs at Saqqara.
            At the beginning of the New Kingdom of Egypt (ca. 1550 BC), the city became known as Menfer (meaning \"permanent and beautiful\"), which became Memphi (ⲙⲉⲙ ϥ ⲓ) in Coptic. The name “Memphis” (φιςμφις) is the Greek modification of the name they gave to the pyramid of Pepi I, located to the west of the city.
            While trying to draw ancient Egyptian history and religious elements into the traditions of the ancient Egyptians, the Greek poet Hesiod in “Theogonia” explained the name of the city by saying that Memphis was the daughter of the Greek river god Nilus and the wife of Epaphos (son of Zeus and Io), who founded the city and named it after his wife.
            In the Bible, Memphis is called \"Mov\" or \"Noph\".",event_id: event_17.id,)
        EventSection.create(arabic_title:"السمات",english_title:"Features",arabic_content:"الموقع
            تقع مدينة منف على بعد 20 كم (12 ميل) جنوب القاهرة، على الضفة الغربية لنهر النيل. مدن وبلدات ميت رهينة الحديثة، دهشور، أبو صير، أبو غراب، زاوية العريان، جنوب القاهرة، كلها تقع داخل الحدود الإدارية التاريخية لمنف (29°50′58.8″N 31°15′15.4″E). كانت المدينة أيضًا المكان الذي رسم الحدود بين مصر العليا ومصر السفلى. (المقاطعة الثانية والعشرون من مصر العليا والأولى من مصر السفلى).
            السكان
            اليوم، بصمة المدينة القديمة غير مأهولة. أقرب مستوطنة حديثة هي بلدة ميت رهينة. تختلف تقديرات الحجم التاريخي للسكان اختلافًا كبيرًا بين المصادر. وفقًا لـ ترتيوس تشاندلر، كان عدد سكان ممفيس حوالي 30000 نسمة وكانت إلى حد بعيد أكبر مستوطنة في جميع أنحاء العالم منذ وقت تأسيسها حتى 2250 قبل الميلاد تقريبًا ومن 1557 إلى 1400 قبل الميلاد. يعتبر K. A. بارد أكثر حذرًا ويقدر عدد سكان المدينة بحوالي 6000 نسمة خلال المملكة المصرية القديمة.",        english_content:"the site
            The city of Memphis is located 20 km (12 mi) south of Cairo, on the west bank of the Nile River. The modern cities and towns of Mit Rahina, Dahshur, Abu Sir, Abu Ghorab, Zawyet el-Erian, south of Cairo, all lie within the historic administrative boundaries of Memphis (29°50′58.8″N 31°15′15.4″E). The city was also the place that marked the border between Upper and Lower Egypt. (The twenty-second province of Upper Egypt and the first of Lower Egypt).
            Population
            Today, the ancient city footprint is uninhabited. The nearest modern settlement is the town of Mit Rahina. Estimates of historical population size vary widely between sources. According to Tertius Chandler, Memphis had a population of about 30,000 and was by far the largest settlement worldwide from the time of its founding until approximately 2250 BC and from 1557 to 1400 BC. K. A. Bard is more cautious and estimates the city's population at around 6,000 during the Old Kingdom.",        event_id: event_17.id,)
        EventSection.create(arabic_title:"التاريخ",english_title:"History",arabic_content:"خلال المملكة المصرية القديمة، أصبحت منف عاصمة لمصر القديمة لأكثر من ثماني مرات متتالية. بلغت المدينة ذروة هيبتها في عهد الأسرة المصرية السادسة كمركز لعبادة بتاح إله الخلق والأعمال الفنية. المرمر أبو الهول الذي يحرس معبد بتاح بمثابة نصب تذكاري لقوة المدينة وهيبتها السابقين. شكل ثالوث منف، المكون من الإله الخالق بتاح، وزوجته سخمت، وابنهما نفرتيم، المحور الرئيسي للعبادة في المدينة.
            تراجعت مكانة منف بعد الأسرة المصرية الثامنة عشر مع صعود طيبة والمملكة المصرية الحديثة، لكنها أعيد إحياؤها في عهد الفرس، قبل أن تتراجع بقوة في المرتبة الثانية بعد تأسيس الإسكندرية تحت حكم الإمبراطورية الرومانية، ظلت الإسكندرية أهم مدينة مصرية. وظلت منف ثاني مدن مصر حتى إنشاء الفسطاط عام 641 م بعد الفتح الإسلامي لمصر. بعد ذلك تم التخلي عنها إلى حد كبير وأصبحت مصدرًا للحجر للمستوطنات المحيطة. كانت لا تزال مجموعة من الأطلال المهيبة في القرن الثاني عشر، لكنها سرعان ما أصبحت أكثر بقليل من مساحة من الأنقاض المنخفضة والحجارة المتناثرة.",english_content:"During the Old Kingdom of Egypt, Memphis became the capital of ancient Egypt more than eight consecutive times. The city reached the peak of its prestige during the Sixth Dynasty of Egypt as a center for the worship of Ptah, the god of creation and works of art. The alabaster Sphinx guarding the Temple of Ptah serves as a monument to the city's former power and prestige. The Triad of Memphis, consisting of the creator god Ptah, his wife Sekhmet, and their son Nefertim, formed the focus of worship in the city.
            The status of Memphis declined after the Eighteenth Dynasty with the rise of Thebes and the New Egyptian Kingdom, but it was revived during the Persian era, before it fell strongly into second place after the founding of Alexandria under the rule of the Roman Empire. Alexandria remained the most important Egyptian city. Memphis remained the second city in Egypt until the establishment of Fustat in 641 AD after the Islamic conquest of Egypt. After that it was largely abandoned and became a source of stone for the surrounding settlements. It was still a collection of imposing ruins in the 12th century, but it soon became little more than an expanse of low-lying ruins and scattered stones.",event_id: event_17.id,)
    # sub_era_8 = SubEra.create(
    #     era: greekEra,
    #     arabic_name: "فتح الأسكندر الأكبر لمصر",
    #     english_name: "Alexander the Great's conquest of Egypt" ,
    #     arabic_info:"وصل الإسكندر إلى الفرما، بوابة مصر الشرقية، في خريف عام 332 ق.م، ولم يجد أي مقاومة من المصريين ولا من الحامية الفارسية عند الحدود ففتحها بسهولة، ثم عبر النيل ووصل إلى العاصمة منف، فاستقبله أهلها كمحرر منتصر، ثم أقام مهرجانًا ثقافيًا ترفيهيًا على النمط الإغريقي احتفالاً بهذا الفوز العظيم. بعد ذلك سار بقواته بحذاء الفرع الكانوبي للنيل، متجهًا إلى ساحل البحر المتوسط، وحط رحاله بالقرب من بحيرة مريوط، وراعه أهمية المكان المحصور بين البحيرة والبحر المتوسط، خاصة إن المكان قريب من نهر النيل الذي يمده بالمياه العذبة. لقد وجد في المكان جزيرة صغيرة قريبة من الشاطيء تُسمى «فاروس»، ومن ثم كلف أحد معاونيه ويدعى «ديموقراطيس» لكي يشرف على بناء مدينة في هذا ووصل الشاطيء بالجزيرة بطريق من الحجارة والرمل ، على أن تحمل المدينة الجديدة اسم القائد المقدوني، ألا وهي الإسكندرية؛ التي قُدّر لها أن تصبح عاصمة مصر لاحقًا خلال عهد البطالمة خلفاء الإسكندر.",
    #     english_info:"Alexander arrived at Al-Farma, the eastern gate of Egypt, in the fall of 332 BC. He did not find any resistance from the Egyptians or from the Persian garrison at the border, so he opened it easily. Then he crossed the Nile and reached the capital, Memphis, and its people welcomed him as a victorious liberator. Then he held an entertaining cultural festival. In the Greek style, celebrating this great victory. After that, he marched with his forces along the canopic branch of the Nile, heading to the Mediterranean coast, and landed near Lake Mariout. He was taken into consideration the importance of the place sandwiched between the lake and the Mediterranean Sea, especially since the place was close to the Nile River, which supplies it with fresh water. He found in the place a small island close to the coast called “Pharos”, and then he assigned one of his assistants called “Democritus” to supervise the construction of a city in this place and connected the beach to the island by a road of stones and sand, with the new city bearing the name of the Macedonian leader, namely Alexandria. ; Which was destined to become the capital of Egypt later during the reign of the Ptolemies, successors of Alexander."
    # )
    # sub_era_9 = SubEra.create(
    #     era: greekEra,
    #     arabic_name: "مصر في عصر البطالمة",
    #     english_name: "Egypt in the Ptolemaic era" ,
    #     arabic_info:"البطالمة هم عائلة من أصل مقدوني نزحت إلى مصر بعد وفاة الإسكندر الأكبر سنة 323 ق.م، حيث تولى أحد قادة جيش الإسكندر الأكبر وهو «بطليموس» حكم مصر. أهتم بطليموس الأول ببناء مدينة الإسكندرية التي أسسها الأسكندر الأكبر قبل مغادرته مصر في حملة عسكرية إلى بلاد الفرس وأفغانستان والهند. وجعل بطليموس الأول الإسكندرية عاصمة لمصر. لا يعرف أين توجد مقبرة الإسكندر الأكبر حيث أصابته المنية في خارج مصر. وظلت أسرة بطليموس تحكم مصر حتى دخلها الرومان في عام 30 ق.م. وآخر البطالمة كانت الملكة كليوباترا وابنها بطليموس الخامس عشر (قيصرون).

    #     وصل نفوذ الدولة البطلمية إلى فلسطين، قبرص وشرق ليبيا، وقد عرفت ازدهارا خلال عهود بطليموس الأول وبطليموس الثاني وبطليموس الثالث. كون البطالمة ذوي أصول إغريقية لم يمنعهم من التشبع بالتقاليد والعادات المصرية، فمعمارهم المصري ومعابدهم للآلهة المصرية وطريقة عيشهم مصرية وساعد ذلك تزاوجهم من المصريين. جميع ملوك البطالمة حملوا اسم بطليموس. واتخذوا من الإسكندرية عاصمة لهم وظلت كذلك حتى معركة أكتيوم البحرية عام 31 ق.م عندما انتصر اكتافيوس قادما من روما على أنطونيوس وكليوباترا لتصبح مصر ولاية رومانية منذ هذا التاريخ وحتى الفتح الإسلامي على يد عمرو بن العاص . تتكون أسرة البطالمة من 16 حاكما إذا أضفنا ابن كليوباترا السابعة وابنها بطليموس الخامس عشر (قيصرون) ابن يوليوس قيصر * 51 ق.م - 30 ق.م",
    #     english_info:"The Ptolemies are a family of Macedonian origin that migrated to Egypt after the death of Alexander the Great in 323 BC, where one of the leaders of Alexander the Great’s army, “Ptolemy,” assumed the rule of Egypt. Ptolemy I was interested in building the city of Alexandria, which was founded by Alexander the Great before he left Egypt on a military campaign to Persia, Afghanistan, and India. Ptolemy I made Alexandria the capital of Egypt. It is not known where the tomb of Alexander the Great is located, as he died outside Egypt. The Ptolemy family continued to rule Egypt until the Romans entered it in 30 BC. The last of the Ptolemies was Queen Cleopatra and her son, Ptolemy XV (Caesaron).

    #     The influence of the Ptolemaic state reached Palestine, Cyprus and eastern Libya, and it flourished during the reigns of Ptolemy I, Ptolemy II, and Ptolemy III. The fact that the Ptolemies were of Greek origins did not prevent them from imbibing Egyptian traditions and customs. Their architecture, their temples to the Egyptian gods, and their way of life were Egyptian, and this was helped by their intermarriage with Egyptians. All Ptolemaic kings bore the name Ptolemy. They made Alexandria their capital and it remained so until the naval battle of Actium in 31 BC, when Octavius, coming from Rome, defeated Antony and Cleopatra, making Egypt a Roman province from this date until the Islamic conquest at the hands of Amr ibn al-Aas. The Ptolemaic dynasty consists of 16 rulers if we add the son of Cleopatra VII and her son Ptolemy XV (Caesarion), son of Julius Caesar * 51 BC - 30 BC"
    # )
    # sub_era_10 = SubEra.create(
    #     era: romanEra,
    #     arabic_name: "الحكم الروماني لمصر",
    #     english_name: "Roman rule of Egypt" ,
    #     arabic_info:"أصبحت مصر (باللاتينية: Aegyptus، باليونانية العامية المختلطة: Αἴγυπτος، وتنطق: إيجبتوس) مقاطعة رومانية في 30 ق.م. بعد أن هَزَمّ أوكتافيوس (الإمبراطور الروماني المستقبلي باسم أغسطس) خصمه مارك أنطوني وأطاح بعرش الملكة الفرعونية كليوباترا وضم المملكة البطلمية إلى الإمبراطورية الرومانية. شملت المقاطعة معظم مناطق مصر الحديثة باستثناء شبه جزيرة سيناء، التي غزاها تراجان لاحقاً. كانت مقاطعة كريت وبرقة تحد إيجبتوس غرباً ويهودا (العربية البترائية لاحقاً) شرقاً.",
    #     english_info:"Egypt (Latin: Aegyptus, mixed colloquial Greek: Αἴγυπτος, pronounced: Aegyptus) became a Roman province in 30 BC. After Octavius (the future Roman Emperor named Augustus) defeated his opponent Mark Antony, overthrew the throne of the Pharaonic Queen Cleopatra, and annexed the Ptolemaic Kingdom to the Roman Empire. The province included most of modern Egypt with the exception of the Sinai Peninsula, which Trajan later conquered. The province of Crete and Cyrenaica bordered Egypt to the west and Judea (later Arabia Petraea) to the east."
    # )
    # sub_era_11 = SubEra.create(
    #     era: islamicEra,
    #     arabic_name: "الفتح الإسلامي لمصر",
    #     english_name: "Islamic conquest of Egypt" ,
    #     arabic_info:"الفَتْحُ الإسْلَامِيُّ لِمِصْر ، وفي بعض المصادر ذات الصبغة القوميَّة خُصُوصًا يُعرفُ هذا الحدث باسم الفَتْحُ العَرَبِيُّ لِمِصْر، هو سِلسلةٌ من الحملات والمعارك العسكريَّة التي خاضها المُسلمون تحت راية دولة الخِلافة الراشدة ضدَّ الإمبراطوريَّة البيزنطيَّة بين عامي 640م و642م، وانتُزعت على إثرها ولاية مصر الروميَّة من يد الروم ودخلت في دولة الإسلام، بعد عِقدٍ من عودتها لِلإمبراطوريَّة البيزنطيَّة، إذ كان الفُرس الساسانيّون قد انتزعوها من الأخيرة لِفترةٍ وجيزة.",
    #     english_info:"The Islamic conquest of Egypt, and in some sources of a nationalistic nature in particular, this event is known as the Arab conquest of Egypt, is a series of campaigns and military battles that Muslims fought under the banner of the Rightly Guided Caliphate against the Byzantine Empire between the years 640 AD and 642 AD, after which the state was seized Roman Egypt from the hands of the Romans It entered the Islamic state, a decade after its return to the Byzantine Empire, as the Sassanian Persians had wrested it from the latter for a short period."
    # )
    # sub_era_12 = SubEra.create(
    #     era: islamicEra,
    #     arabic_name: "الدوله الأمويه",
    #     english_name: "Umayyad state" ,
    #     arabic_info:"ٱلدَّوْلَةُ ٱلأُمَوِيَّةُ أو ٱلْخِلَافَةُ ٱلأُمَوِيَّةُ أو دَوْلَةُ بَنِي أُمَيَّة (41 - 132 هـ / 662 - 750 م) هي أكبر دولة وثاني خلافة في تاريخ الإسلام، وواحدةٌ من أكبر الدُّوَلِ الحاكِمة في التَّاريخ. كان بنو أُميَّة أُولى الأُسر الحجازية المُسلمة الحاكِمة؛ إذ حكموا من سنة 41هـ (662م) إلى 132 هـ (750م)، وكانت عاصمةُ الدَّولة في مدينة دمشق. بلغت الدَّولة الأُمويَّة ذروة اتساعها في عهد الخليفة العاشر هشام بن عبد الملك؛ إذ امتدت حُدودها من أطراف الصين شرقاً حتى جنوب فرنسا غرباً، وتمكنت من فتح إفريقية والمغرب والأندلُس وجنوب الغال والسند وما وراء النهر.",
    #     english_info:"The Umayyad State, the Umayyad Caliphate, or the Umayyad State (41 - 132 AH / 662 - 750 AD) is the largest state and the second caliphate in the history of Islam, and one of the largest ruling states in history. The Banu Umayyads were the first ruling Muslim Hijazi families. They ruled from the year 41 AH (662 AD) to 132 AH (750 AD), and the capital of the state was in the city of Damascus. The Umayyad state reached the peak of its expansion during the reign of the tenth Caliph Hisham bin Abdul Malik. Its borders extended from the outskirts of China in the east to southern France in the west, and it was able to conquer Africa, Morocco, Andalusia, southern Gaul, Sindh, and Transoxiana."
    # )
    # sub_era_13 = SubEra.create(
    #     era: islamicEra,
    #     arabic_name: "الدوله العباسيه",
    #     english_name: "Abbasid state" ,
    #     arabic_info:"الدَّولَةُ العَبَّاسِيَّةُ أو الخِلافةُ العبَّاسيَّة أو دَوْلَةُ بَني العبَّاس هو الاسم الذي يُطلق على ثالث خلافة إسلامية في التاريخ، وثاني السلالات الحاكمة الإسلامية. استطاع العباسيون أن يزيحوا بني أمية من دربهم ويستفردوا بالخلافة عبر سلسلة من الثورات المسلحة التي أنطلقت من خراسان، وقد قضوا على تلك السلالة الحاكمة، وطاردوا أبناءها حتى قضوا على أغلبهم، ولم ينج منهم إلا من لجأ إلى الأندلس، وكان من ضمنهم عبد الرحمن بن معاوية بن هشام بن عبد الملك؛ فاستولى على شبه الجزيرة الأيبيرية، وبقيت في عقبه لسنة 1029م.",
    #     english_info:"The Abbasid state, the Abbasid Caliphate, or the state of Bani Abbas is the name given to the third Islamic caliphate in history, and the second Islamic ruling dynasty. The Abbasids were able to dislodge the Umayyads from their path and gain monopoly over the caliphate through a series of armed revolutions that started from Khorasan. They eliminated that ruling dynasty and pursued its sons until they eliminated most of them. Only those who took refuge in Andalusia survived, and among them was Abd al-Rahman ibn Muawiyah. Bin Hisham bin Abdul Malik; He seized control of the Iberian Peninsula, and it remained in his possession until the year 1029 AD."
    # )
    # sub_era_14 = SubEra.create(
    #     era: islamicEra,
    #     arabic_name: "الدوله الفاطميه",
    #     english_name: "Fatimid state" ,
    #     arabic_info:"الدَّوْلَةُ الفَاطِمِيَّةُ أو الخِلَافَةُ الفَاطِمِيَّةُ أو الدَّوْلَةُ العُبَيْدِيَّةُ هي إحدى دُولِ الخِلافةُ الإسلاميَّة، والوحيدةُ بين دُولِ الخِلافةِ التي اتخذت من المذهب الشيعي الإسماعيلي مذهبًا رسميًّا لها. قامت هذه الدولة بعد أن نشط الدُعاة الإسماعيليّون في إذكاء الجذوة الحُسينيَّة ودعوة الناس إلى القتال باسم الإمام المهديّ المُنتظر، الذين تنبؤوا جميعًا بظُهوره في القريب العاجل، وذلك خلال العهد العبَّاسي فأصابوا بذلك نجاحًا في الأقاليم البعيدة عن مركز الحُكم خُصوصًا، بسبب مُطاردة العبَّاسيين لهم واضطهادهم في المشرق العربي، فانتقلوا إلى المغرب حيثُ تمكنوا من استقطاب الجماهير وسط قبيلة كتامة البربريَّة خصوصًا، وأعلنوا قيام الخِلافةِ بعد حين. شملت الدولة الفاطميَّة مناطق وأقاليم واسعة في شمال أفريقيا والشرق الأوسط، فامتدَّ نطاقها على طول الساحل المُتوسطيّ من بلاد المغرب إلى مصر، ثُمَّ توسَّع الخُلفاء الفاطميّون أكثر فضمّوا إلى مُمتلكاتهم جزيرة صقلية، والشَّام، والحجاز، فأصبحت دولتهم أكبر دولةٍ استقلَّت عن الدولة العبَّاسيَّة، والمُنافس الرئيسيّ لها على زعامة الأراضي المُقدَّسة وزعامة المُسلمين.",
    #     english_info:"The Fatimid state, the Fatimid Caliphate, or the Ubaid state is one of the Islamic caliphate states, and the only one among the caliphate states that took the Ismaili Shiite sect as its official doctrine. This state was established after the Ismaili preachers were active in fanning the Husseini flame and calling on people to fight in the name of the Awaited Imam Mahdi, all of whom predicted his appearance in the near future, during the Abbasid era. They achieved success in the regions far from the center of government, especially because of the Abbasids’ persecution and persecution of them in The Arab Levant, so they moved to Morocco, where they were able to attract the masses among the Berber Kutama tribe in particular, and they announced the establishment of the Caliphate after a while. The Fatimid state included large areas and territories in North Africa and the Middle East, and its scope extended along the Mediterranean coast from the Maghreb to Egypt. Then the Fatimid caliphs expanded further, annexing to their possessions the island of Sicily, the Levant, and the Hijaz, so their state became the largest state independent of the Abbasid state, and the main competitor. She has the leadership of the Holy Lands and the leadership of Muslims."
    # )
    # sub_era_15 = SubEra.create(
    #     era: islamicEra,
    #     arabic_name: "الدوله الأيوبيه",
    #     english_name: "Ayyubid state" ,
    #     arabic_info:"الدولة الأيوبية هي دولة إسلامية نشأت في مصر، وامتدت لتشمل الشام والحجاز واليمن والنوبة وبعض أجزاء بلاد المغرب. يعد صلاح الدين يوسف بن أيوب مؤسس الدولة الأيوبية، كان ذلك بعد أن عُيِّن وزيرًا للخليفة الفاطمي العاضد لدين الله ونائبًا عن السلطان نور الدين محمود في مصر، فعمل على أن تكون كل السلطات تحت يده، وأصبح هو المتصرف في الأمور، وأعاد مصر إلى تبعية الدولة العباسية، فمنع الدعاء للخليفة الفاطمي ودعا للخليفة العباسي، وأغلق مراكز الشيعة الفاطمية، ونشر المذهب السني.",
    #     english_info:"The Ayyubid state is an Islamic state that originated in Egypt, and extended to include the Levant, Hijaz, Yemen, Nubia, and some parts of the Maghreb. Saladin Yusuf bin Ayyub is considered the founder of the Ayyubid state. This was after he was appointed minister of the Fatimid Caliph Al-Adid li-Din Allah and representative of Sultan Nur al-Din Mahmud in Egypt. He worked to ensure that all powers were under his control, and he became the one in charge of affairs, and returned Egypt to state subordination. Abbasid, he banned supplication for the Fatimid Caliph and prayed for the Abbasid Caliph, closed the Fatimid Shiite centers, and spread the Sunni doctrine."
    # )
    # sub_era_16 = SubEra.create(
    #     era: islamicEra,
    #     arabic_name: "الدوله المملوكيه",
    #     english_name: "Mamluk state" ,
    #     arabic_info:"الدَّولَةُ المَملُوكِيَّةُ أوِ السَّلطَنَةُ المَملُوكِيَّةُ أو دَولَةُ المَمَالِيكِ أو سَلطَنَةُ المَمَالِيكِ هي إحدى الدُول الإسلاميَّة التي قامت في مصر خِلال أواخر العصر العبَّاسي الثالث، وامتدَّت حُدُودها لاحقًا لِتشمل الشَّام والحجاز، ودام مُلكُها مُنذُ سُقُوط الدولة الأيوبيَّة سنة 648 هـ المُوافقة لِسنة 1250 مـ، حتَّى بلغت الدولة العُثمانيَّة ذُروة قُوَّتها وضمَّ السُلطان سليم الأوَّل الديار الشَّاميَّة والمصريَّة إلى دولته بعد هزيمة المماليك في معركة الريدانيَّة سنة 923 هـ المُوافقة لِسنة 1517 مـ.",
    #     english_info:"The Mamluk state, Mamluk sultanate, Mamluk state, or Mamluk sultanate is one of the Islamic states that established in Egypt during the late third Abbasid era. Its borders later extended to include the Levant and the Hijaz, and its rule lasted since the fall of the Ayyubid state The year 648 AH, corresponding to the year 1250 AD, until the Ottoman Empire reached The peak of its power was when Sultan Selim I annexed the Levant and Egypt to his state after defeating the Mamluks in the Battle of Raydaniya in the year 923 AH, corresponding to the year 1517 AD."
    # )
    # sub_era_17 = SubEra.create(
    #     era: islamicEra,
    #     arabic_name: "الدوله العثمانيه",
    #     english_name: "Ottoman state" ,
    #     arabic_info:"الدَّوْلَةُ العُثمَانِيَّة أو الدَّوْلَةُ العَلِيَّةُ العُثمَانِيَّة (بالتركية العثمانية: دَوْلَتِ عَلِيّهٔ عُثمَانِيّه؛ بالتركية الحديثة: Yüce Osmanlı Devleti)، أو الخِلَافَةُ العُثمَانِيَّة، هي دولة إسلامية أسسها عثمان الأول بن أرطغرل، واستمرت قائمة لأكثر من 600 سنة، وبالتحديد من 27 يوليو 1299م حتى 29 أكتوبر 1923م. نشأت الدولة العُثمانيَّة بدايةً كإمارة حُدود تُركمانيَّة تعمل في خدمة سلطنة سلاجقة الروم، وترد الغارات البيزنطيَّة عن ديار الإسلام، وبعد سُقُوط السلطنة سالفة الذِكر استقلَّت الإمارات التُركمانيَّة التابعة لها، بما فيها الإمارة العُثمانيَّة، التي قُدِّر لها أن تبتلع سائر الإمارات بِمُرور الوقت. عبر العُثمانيُّون إلى أوروبا الشرقيَّة لأوَّل مرَّة بعد سنة 1354م، وخلال السنوات اللاحقة تمكَّن العُثمانيُّون من فتح أغلب البلاد البلقانيَّة، فتحوَّلت إمارتهم الصغيرة إلى دولة كبيرة، وكانت أوَّل دولةٍ إسلاميَّة تتخذ لها موطئ قدم في البلقان، كما قُدِّر لِلعُثمانيين أن يفتتحوا القسطنطينية سنة 1453م، ويُسقطوا الإمبراطوريَّة البيزنطيَّة بعد أن عاشت أحد عشر قرنًا ونيِّفًا، وذلك تحت قيادة السُلطان محمد الفاتح.",
    #     english_info:"The Ottoman Empire, or the Ottoman Empire, is an Islamic state founded by Osman I bin Ertugrul, and it continued for more than 100 years 600 years, specifically from July 27, 1299 AD until October 29 1923 AD. The Ottoman Empire initially emerged as a Turkmen border emirate working in the service of the Seljuk Sultanate of Rum, and repelling Byzantine raids from the lands of Islam. After the fall of the aforementioned Sultanate, the Turkmen emirates affiliated with it became independent, including the Ottoman Emirate, which was destined to swallow the rest of the emirates over time. The Ottomans crossed into Eastern Europe for the first time after the year 1354 AD, and during the following years the Ottomans were able to conquer most of the Balkan countries, so their small emirate turned into a large state, and it was the first Islamic country to take a foothold in the Balkans. The Ottomans were also destined to conquer Constantinople in the year 1453 AD, and overthrow The Byzantine Empire after living for more than eleven centuries, under the leadership of Sultan Mehmed the Conqueror."
    # )

# #! Create Products
#     product_1 = Product.create(
#         price: 130,
#         arabic_title: "كوب مصري قديم",
#         english_title: "Ancient Egyptian Mug",
#         arabic_description: "دليل على غسالة الصحون: لا
#         العلامة التجارية: لا
#         الخامة: سيراميك
#         النوع: أكواب
#         هل هناك حاجة إلى بطاريات لتشغيل المنتج أم أن هذا المنتج عبارة عن بطارية: 0
#         هل هذا منتج خطير أو مادة أو مادة أو نفايات خطرة تخضع لأنظمة النقل و/أو التخزين و/أو التخلص منها؟ : لا",
#         english_description: "Dishwasher proof : no
#         Brand : no
#         Material : Ceramic
#         Type : Mugs
#         Are batteries needed to power the product or is this product a battery : 0
#         Is this a Dangerous Good or a Hazardous Material, Substance or Waste that is regulated for transportation, storage, and/or disposal? : no",
#         era: ancientEra,
#         sub_era_id: sub_era_1.id,
#         catigory:"antiques",
#         character: character_17,
#         event: event_6,
#     )
#         product_1.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61W27GMpK0L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_1.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61W27GMpK0L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_1.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61W27GMpK0L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#             Review.create(user:user, product:product_1, stars: 3,comment:"This is a good product")   
#     product_2 = Product.create(
#         price: 67,
#         arabic_title: "محفظة قماش مصرية فرعونية - شكل متنوع صنع في مصر",
#         english_title: "Cloth Pharaonic Egyptian wallet - a diverse shape made in Egypt",
#         arabic_description: "محفظة قماش مصرية فرعونية هدية عيد الحب تذكارية راقية عصرية - متنوعة الشكل
#         نوع الإغلاق: إبزيم
#         المواد: القماش
#         نوع الإغلاق: إبزيم
#         المواد: القماش
#         نوع الإغلاق: إبزيم",
#         english_description: "cloth Pharaonic egyption wallet Souvenir valentine gift sophisticated fashionable - diverse shape
#         Closure Type: Buckle
#         Material: cloth
#         Closure Type: Buckle
#         Material: cloth
#         Closure Type: Buckle",
#         era: ancientEra,
#         sub_era_id: sub_era_2.id,
#         catigory:"antiques",
#         character: character_17,
#         event: event_6,
#     )
#         product_2.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/712GbTFUVuL._AC_SL1012_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_2.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61UWDFL0kgL._AC_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_2.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/71Ua3I9wURL._AC_SL1026_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#             Review.create(user:user, product:product_1, stars: 5,comment:"I love this product")
    
#     product_3 = Product.create(
#         price: 194,
#         arabic_title: "تمثال فرعوني لأبي الهول، 12 سم - ذهبي",
#         english_title: "Pharaonic Statue Sphinx, 12cm - Gold",
#         arabic_description: "Brand: Other
#         Home Decor Category: Statues and Models
#         Seamless functionality
#         Packed with features",
#         english_description: "العلامة التجارية: اخرى
#         فئة ديكور المنزل: تماثيل ونماذج
#         وظائف سلسة
#         مليئة بالميزات",
#         era: ancientEra,
#         sub_era_id: sub_era_2.id,
#         catigory:"antiques",
#         character: character_17,
#         event: event_6,
#     )
#         product_3.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61CJ7LY7mIL._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_3.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61CJ7LY7mIL._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_3.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61CJ7LY7mIL._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#             Review.create(user:user, product:product_3, stars: 3,comment:"This is a good product")   
#             Review.create(user:user_1, product:product_3, stars: 5,comment:"I love this product")   
#             Review.create(user:user_2, product:product_3, stars: 2,comment:"Bad Material")   
#             Review.create(user:user_3, product:product_3, stars: 1,comment:"I hate this product")   
#             Review.create(user:user, product:product_3, stars: 4,comment:"This is a good product")   
#     product_4 = Product.create(
#         price: 115,
#         arabic_title: "تمثال توت نفرتيتي الذهبي الفرعوني (18 سم، ذهبي)",
#         english_title: "Golden TuT Nefertiti Pharaonic Statue (18cm, Gold)",
#         arabic_description: "فئة ديكور المنزل: تماثيل ونماذج
#         العلامة التجارية: جولدن توت
#         الحجم: 18 سم
#         اللون: ذهبي",
#         english_description: "Home Decor Category: Statues and Models
#         Brand: GoldenTuT
#         Size: 18cm
#         Color: gold",
#         era: ancientEra,
#         sub_era_id: sub_era_1.id,
#         catigory:"antiques",
#         character: character_10,
#         # event: event_6,
#     )
#         product_4.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61fOsHm2K9L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_4.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61fOsHm2K9L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_4.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61fOsHm2K9L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#             Review.create(user:user, product:product_4, stars: 3,comment:"This is a good product")   
#             Review.create(user:user_1, product:product_4, stars: 5,comment:"I love this product")   
#             Review.create(user:user_2, product:product_4, stars: 2,comment:"Bad Material")   
#             Review.create(user:user_3, product:product_4, stars: 1,comment:"I hate this product")   
#             Review.create(user:user, product:product_4, stars: 4,comment:"This is a good product")

#     product_5 = Product.create(
#         price: 245,
#         arabic_title: "مج الملك توت عنخ آمون الفرعوني المصري هدية تذكارية مصرية",
#         english_title: "matcher King Tutankhamun Pharaonic Egyptian mug Egypt Souvenir gift",
#         arabic_description: "هدية رائعة من مصر
#         هدية عظيمة لمحبي المدنية المصرية القديمة
#         احصل على قطعة مصرية في يدك
#         تذكر الحضارة المصرية القديمة
#         هدية ملهمة من مصر",
#         english_description: "Wonderfull Gift from Egypt
#         Great gift for the ancient Egyptian Civil lovers
#         Have An Egyptian Piece in Your Hand
#         Remember the Ancient Egyptian Civil
#         Inspired Gift from Egypt",
#         era: ancientEra,
#         sub_era_id: sub_era_6.id,
#         catigory:"antiques",
#         character: character_45,
#         # event: event_6,
#     )
#         product_5.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61cROvfgpML._AC_SL1000_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_5.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61ZeJf-vFPL._AC_SL1000_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_5.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61NYeWFfZYL._AC_SL1047_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#             Review.create(user:user, product:product_5, stars: 3,comment:"This is a good product")   
#             Review.create(user:user_1, product:product_5, stars: 5,comment:"I love this product")   
#             Review.create(user:user_2, product:product_5, stars: 2,comment:"Bad Material")   
#             Review.create(user:user_3, product:product_5, stars: 1,comment:"I hate this product")   
#             Review.create(user:user, product:product_5, stars: 4,comment:"This is a good product")

#     product_6 = Product.create(
#         price: 200,
#         arabic_title: "مج بورسلين فرعوني مصمم برسومات فرعونية، متعدد الالوان",
#         english_title: "Porcelain Pharaonic Mug Designed with Pharaonic Drawings, Multi Color",
#         arabic_description: "النوع: أكواب
#         المادة: بورسلين
#         اللون: متعدد الألوان
#         دليل على غسالة الصحون: لا
#         مقاوم للميكروويف: لا
#         دليل على غسالة الصحون: لا شيء
#         العلامة التجارية: اخرى
#         المادة: بورسلين
#         النوع: أكواب
#         هل هناك حاجة إلى بطاريات لتشغيل المنتج أم أن هذا المنتج عبارة عن بطارية: لا شيء
#         هل هذا منتج خطير أو مادة أو مادة أو نفايات خطرة تخضع لأنظمة النقل و/أو التخزين و/أو التخلص منها؟ : باطل",
#         english_description: "Type: Mugs
#         Material: Porcelain
#         Color: Multi-Color
#         Dishwasher proof: No
#         Microwave Proof: No
#         Dishwasher proof: null
#         Brand: Other
#         Material: Porcelain
#         Type: Mugs
#         Are batteries needed to power the product or is this product a battery : null
#         Is this a Dangerous Good or a Hazardous Material, Substance or Waste that is regulated for transportation, storage, and/or disposal? : null",
#         era: ancientEra,
#         sub_era_id: sub_era_6.id,
#         catigory:"antiques",
#         character: character_45,
#         # event: event_6,
#     )
#         product_6.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61sDcAQSq5L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_6.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61sDcAQSq5L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_6.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61sDcAQSq5L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#             Review.create(user:user, product:product_6, stars: 3,comment:"This is a good product")   
#             Review.create(user:user_1, product:product_6, stars: 5,comment:"I love this product")   
#             Review.create(user:user_2, product:product_6, stars: 2,comment:"Bad Material")   
#             Review.create(user:user_3, product:product_6, stars: 1,comment:"I hate this product")   
#             Review.create(user:user, product:product_6, stars: 4,comment:"This is a good product")   
#     product_7 = Product.create(
#         price: 465,
#         arabic_title: "تمثال نصفي مصري قديم للملك خفرع وعلى رأسه صقر من الحجر الصلب الثقيل صنع في مصر. خفرع هو باني ثاني أكبر الهرم في الجيزة.",
#         english_title: "ancient Egyptian bust of King Khafre with a Falcon on his head heavy solid stone made in Egypt. Khafre is the builder of the second-largest pyramid in Giza.",
#         arabic_description: "تمثال نصفي مصري قديم للملك خفرع والصقر على رأسه من الحجر الصلب صنع في مصر. الارتفاع 13.5 سم العمق 6.5 سم العرض 12 سم الوزن 1140 جرام. ويصور التمثال الملك خفرع باني الهرم الثاني الكبير بالجيزة. وقد تم العثور عليه في معبد الوادي بمجمعه الهرمي. يجلس الملك بشكل مهيب على العرش بكل ثقة رجل بنى جبلًا. تم تزيين الجانبين من عرشه باللون البني الدلالي. رمز وحدة مصر العليا والسفلى، مما يدل على حكمه على نصفي البلاد. جاثمة على ظهر العرش. وخلف رأس الملك، يفرد الإله حورس على هيئة الصقر جناحيه حول رأس الملك في لفتة حماية. المملكة القديمة. الأسرة الرابعة، عهد خفرع (2558-2535 ق.م). كان الملك خفرع ابن خوفو وهنوتسن من الأسرة الرابعة، وبالتالي الأخ غير الشقيق لسلفه جدف رع. كان متزوجًا من أخته غير الشقيقة خامرنبتي الأولى، وأنجب منها ولدًا، ميكيرينوس، وابنة، خامرنبتي الثانية. كان متزوجًا أيضًا من مرس عنخ الثالث، ابنة كواب وحتب حرس الثاني، وأنجب منها أربعة أبناء على الأقل: نبيماخت، ونيوسر رع، وخنتركا، ودواين رع، وابنة واحدة هي شبسستكاو.",
#         english_description: "Ancient Egyptian Bust of king Khafre with Falcon on his head solid stone made in Egypt. Height 13.5 cm depth 6.5 cm width 12 cm weight 1140 grams. The statue depicts King Khafre the builder of the second large pyramid at Giza. It’s was found in the valley temple of his pyramid complex. The King is majestically seated on the throne with all confidence of a man who built a mountain. The tow sides of his throne are decorated with the semantic- tawny. Symbol of the unity of upper and Lower Egypt, signifying his rule over the two halves of the country. Perched on the back of the throne. Behind the King’s head, the god Horus in the form of a Falcon spreads his wings around the king’s head in a gesture of protection. Old Kingdom. 4th Dynasty, reign of Khafre ( c. 2558-2535 Bc) . King Khafre was the son of kheops and Henutsen of the 4th dynasty, and thus the half-brother of his predecessor, Djedefre. He was married to his half-sister Khamernebti I, with whom he had a son, Mykerinos, and a daughter, khamernebeti II. He was also married to Meresankh III , a daughter of Kawab and Hetepheres II , with whom he had at least four sons: Nebemakhet, Niuserre , Khenterka and Duaenre, and one daughter, Shepsestkau.",
#         era: ancientEra,
#         sub_era_id: sub_era_2.id,
#         catigory:"antiques",
#         character: character_17,
#         event: event_6,
#     )
#         product_7.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/812yqddkUxL._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_7.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/71752YKiA7L._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_7.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/71VlLAabAPL._AC_SL1500_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#             Review.create(user:user, product:product_7, stars: 3,comment:"This is a good product")   
#             Review.create(user:user_1, product:product_7, stars: 5,comment:"I love this product")   
#             Review.create(user:user_2, product:product_7, stars: 2,comment:"Bad Material")   
#             Review.create(user:user_3, product:product_7, stars: 1,comment:"I hate this product")   
#             Review.create(user:user, product:product_7, stars: 4,comment:"This is a good product")   

#     product_8 = Product.create(
#         price: 148,
#         arabic_title: "تمثال فرعوني مصري 3 أهرامات، هدايا تذكارية مصرية، هدية مستوحاة من مصر. (أزرق، 6 سم)",
#         english_title: "matcher pharaonic Egyptian 3 Pyramids Statue Egyptian souvenirs gifts Inspired Gift from Egypt. (Blue, 6 CM)",
#         arabic_description: "انقل نفسك إلى عالم مصر القديمة المهيب من خلال منحوتتنا الفرعونية الرائعة. صُنعت هذه القطعة المذهلة بعناية فائقة بالتفاصيل، وهي تجسد عظمة وغموض الثقافة الفرعونية. مستوحاة من تماثيل الفراعنة الرائعة التي كانت تزين المعابد والمقابر على طول نهر النيل، تعرض منحوتاتنا الجمال الخالد وقوة الفن المصري.",
#         english_description: "Transport yourself to the majestic world of ancient Egypt with our exquisite Pharaonic sculpture. Crafted with meticulous attention to detail, this stunning piece captures the grandeur and mystique of Pharaonic culture. Inspired by the magnificent statues of pharaohs that once adorned the temples and tombs along the Nile, our sculpture showcases the timeless beauty and power of Egyptian artistry.",
#         era: ancientEra,
#         sub_era_id: sub_era_2.id,
#         catigory:"antiques",
#         character: character_17,
#         event: event_5,
#     )
#         product_8.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/41KugY7fuRL._AC_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_8.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/419f-Q3rg5L._AC_SL1000_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_8.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/419f-Q3rg5L._AC_SL1000_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#             Review.create(user:user, product:product_8, stars: 3,comment:"This is a good product")   
#             Review.create(user:user_1, product:product_8, stars: 5,comment:"I love this product")   
#             Review.create(user:user_2, product:product_8, stars: 2,comment:"Bad Material")   
#             Review.create(user:user_3, product:product_8, stars: 1,comment:"I hate this product")   
#             Review.create(user:user, product:product_8, stars: 4,comment:"This is a good product")   
#     product_9 = Product.create(
#         price: 73,
#         arabic_title: "سلسلة مفاتيح توت عنخ آمون المصرية الفرعونية غير الناضجة هدايا تذكارية مصرية-هدية مستوحاة من مصر",
#         english_title: "immature pharaonic Egyptian Tutankhamun keychain Egyptian souvenirs gifts - Inspired Gift from Egypt",
#         arabic_description: "زيّن مفاتيحك بميدالية المفاتيح العصرية الخاصة بنا، واجعلك أكثر ذكاءً وإشراقًا مع سلاسل المفاتيح الخاصة بنا، سلسلة المفاتيح صالحة كهدية قيمة لمناسبات مختلفة مثل عيد الحب، وعيد الأم، وعيد الميلاد، وأعياد الميلاد، وحفلات الزفاف واحتفالات الذكرى السنوية وأيضًا لأحبائك",
#         english_description: "Decorate your keys with our fashion keychain , Make you smarter and bright with our keychains , keychain valid as valuable gift for different occasions like Valentine's Day , Mother's Day , Christmas , birthday , Wedding and Anniversaries and also for your loved persons",
#         era: ancientEra,
#         sub_era_id: sub_era_5.id,
#         catigory:"antiques",
#         # character: character_17,
#         # event: event_6,
#     )
#         product_9.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61kJbTtrUHL._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_9.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61kJbTtrUHL._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_9.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/61kJbTtrUHL._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#             Review.create(user:user, product:product_9, stars: 3,comment:"This is a good product")   
#             Review.create(user:user_1, product:product_9, stars: 5,comment:"I love this product")   
#             Review.create(user:user_2, product:product_9, stars: 2,comment:"Bad Material")   
#             Review.create(user:user_3, product:product_9, stars: 1,comment:"I hate this product")   
#             Review.create(user:user, product:product_9, stars: 4,comment:"This is a good product")   
#     product_10 = Product.create(
#         price: 76,
#         arabic_title: "ميدالية مفاتيح على شكل هرم مصري فرعوني بفصوص عشوائية هدية تذكارية لعيد الحب متطورة وعصرية",
#         english_title: "Pharaonic Egyptian pyramid keychain with random lobes Souvenir Valentine gift sophisticated and fashionable",
#         arabic_description: "سلسلة مفاتيح صالحة كهدية قيمة وحامل مفاتيح منظم أنيق وعصري
#         النمط: كلاسيكي
#         نوع الإغلاق: هوك وحلقة
#         شكل السلعة: هرمي",
#         english_description: "keychain valid as a valuable gift sophisticated and fashionable organizer key holder
#         Style: Classic
#         Closure Type: Hook & Loop
#         Item shape: Pyramid",
#         era: ancientEra,
#         sub_era_id: sub_era_2.id,
#         catigory:"antiques",
#         character: character_18,
#         event: event_6,
#     )
#         product_10.main_image.attach(io: URI.open("https://m.media-amazon.com/images/I/51a0QXdnC0L._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_10.secondary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/51cuhkWE4EL._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#         product_10.thirdary_image.attach(io: URI.open("https://m.media-amazon.com/images/I/51a0QXdnC0L._AC_SX679_.jpg"), filename: 'image.jpg', content_type: 'image/jpg')
#             Review.create(user:user, product:product_10, stars: 3,comment:"This is a good product")   
#             Review.create(user:user_1, product:product_10, stars: 5,comment:"I love this product")   
#             Review.create(user:user_2, product:product_10, stars: 2,comment:"Bad Material")   
#             Review.create(user:user_3, product:product_10, stars: 1,comment:"I hate this product")   
#             Review.create(user:user, product:product_10, stars: 4,comment:"This is a good product")