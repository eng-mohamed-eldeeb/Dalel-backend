# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

erab  = Era.create(name: "Ancient Era")
Era.create(name:"Greek Era")
Era.create(name:"Roman Era")
Era.create(name:"Islamic Era")

sub_era = SubEra.create(
    arabic_name: "العصر العتيق (الأسرتان 1 , 2)",
    english_name: "The ancient era (dynasties 1 and 2)" ,
    era: era,
    arabic_info: "يعود للملك ' مينا ' الفضل فى  تحقيق الوحدة السياسية لمصر حوالى سنة 3200 ق . م، واستطاع أن يؤسس أول أسرة حاكمة في تاريخ مصر الفرعونية، و قد أراد مينا أن يؤمن وحدة البلاد فأقام مدينة قرب رأس الدلتا سميت فيما بعد باسم 'ممفيس' ، وكانت هذه الوحدة عاملاً هاماً فى نهضة مصر فى شتى نواحى الحياة . ",
    english_info: "King Menes is credited with achieving political unity in Egypt around the year 3200 BC. M, and he was able to establish the first ruling family in the history of Pharaonic Egypt. Menes wanted to secure the unity of the country, so he established a city near the head of the Delta that was later named 'Memphis.' This unity was an important factor in the Renaissance of Egypt in all aspects of life."
    )
SubEra.create(
    arabic_name: "الدولة القديمة (الأسرات من 3 إلى 6)",
    english_name: "Old Kingdom (dynasties 3 to 6)" ,
    era: era,
    arabic_info: "يعتبر عصر هذه الدولة فترة شباب مصر وقد تميزت بالاستقرار و الأمن والسلام ، مما يسّر تقدمها اقتصادياً و ثقافياً و فنياً ، و قد انعقد لواء الحكم لملوك الدولة القديمة من بناة  الأهرامات حوالي 2800 ق.م  بعد أن انتقل عرش البلاد إلى منف على يد الفرعون زوسر صاحب أقدم هرم معروف و هو الهرم المدرج بسقارة، و ازدهرت حضارة مصر في أيام هذه الدولة، وليس أدل علي ذلك من أهرامات الجيزة الضخمة للملوك خوفو وخفرع ومنكاورع .",
    english_info: "The era of this state is considered the period of Egypt’s youth, and it was characterized by stability, security, and peace, which facilitated its economic, cultural, and artistic progress. The ruling brigade of the kings of the Old Kingdom, who built the pyramids, was convened around 2800 BC after the throne of the country was transferred to Memphis at the hands of Pharaoh Djoser. He is the owner of the oldest known pyramid, which is the Step Pyramid at Saqqara. Egypt’s civilization flourished during the days of this state, and there is no clearer evidence of that than the huge pyramids of Giza of Kings Khufu, Khafre, and Menkaure."
    )
SubEra.create(
    arabic_name: "العصر المتوسط الأول (الأسرات من 7 إلى 10)",
    english_name: "The First Middle Ages (Dynasties 7 to 10)" ,
    era: era,
    arabic_info:"بدأ هذا العصر حوالي سنة 2200 ق . م حين انفلت زمام الحكم من يد الفرعون حتى استطاع 'منتوحتب الثاني' توحيد البلاد مرة ثانية.",
    english_info: "This era began around 2200 BC. When the reins of power escaped from the hands of the Pharaoh, Mentuhotep II was able to unify the country again."
    )
SubEra.create(
    arabic_name: "الدولة الوسطى (الأسرات 11 ,  12)",
    english_name: "Middle Kingdom (Dynasties 11, 12)" ,
    era: era,
    arabic_info: "بعد أن تمكن 'منتوحتب الثاني' أمير طيبة حوالي سنة 2065 ق . م من إعادة توحيد البلاد قام بتأسيس حكومة قوية نجحت في توطيد النظام و استتباب الأمن مما ساعد علي انتعاش البلاد اقتصادياً و تقدم الفنون و العمارة ثم بدأ سنة 2000 ق . م حكم رجل عظيم هو أمنمحات الأول صاحب الفضل الأكبر في بناء النهضة التي ظهرت أيام الدولة الوسطى .",
    english_info: "After Mentuhotep II, Prince of Thebes, succeeded in about the year 2065 BC. In order to reunify the country, he established a strong government that succeeded in consolidating the regime and establishing security, which helped the country’s economic recovery and the advancement of arts and architecture. Then, he began in the year 2000 BC. The reign of a great man, Amenemhat I, who is most credited with building the renaissance that emerged during the Middle Kingdom."
    )
SubEra.create(
    arabic_name: "العصر المتوسط الثانى (الأسرات من 13 الى 17)",
    english_name: "The Second Middle Ages (Dynasties 13 to 17)" ,
    era: era,
    arabic_info:"خلال عصر الأسرة الثانية عشرة  حوالي سنة 1725 ق . م قامت القبائل الرعوية التي كانت تسكن فلسطين و أُطلق عليها اسم 'الهكسوس' بالإغارة على مصر واجتياح اراضيها ، فلما أخذت قوة الهكسوس في الضعف، هبّ أمراء طيبة يكافحون في سبيل استرداد حرية بلدهم المسلوبة وقد كتب الله لهم النجاح وتمكن أحمس من الاستيلاء على عاصمتهم في الدلتا و طردهم من البلاد .",
    english_info:"During the Twelfth Dynasty, around 1725 BC. The pastoral tribes that inhabited Palestine and were called 'Hyksos' raided Egypt and invaded its lands. When the power of the Hyksos began to weaken, the princes of Thebes rose up and struggled to regain the stolen freedom of their country. God decreed success for them and Ahmose was able to seize their capital in Delta and expel them from the country."
    )
SubEra.create(
    arabic_name: "الدولة الحديثة (الأسرات من 18 إلى 20)",
    english_name: "New Kingdom (Dynasties 18-20)" ,
    era: era,
    arabic_info:"بعد أن طرد أحمس الهكسوس رجع الى بلاده سنة 1571 ق . م حيث قضى على ثورات النوبيين جنوباً واتجه الى الإصلاح الداخلى فى البلاد واهتم بإنشاء جيش عامل منظم وسلحه بكل الأسلحة المعروفة فى ذلك الوقت وزوده بالعجلات الحربية، ويُعد رمسيس الثانى من أشهر ملوك هذه الدولة وتعتبر حروبه آخر المجهودات التى بذلها ملوك الدولة الحديثة فى سبيل المحافظة على الوحدة  وقد انتهت خصومته مع ملك الحيثيين بتوقيع معاهدة عدم اعتداء بين الطرفين بعد معركة قادش، وتُعد هذه المعاهدة أول معاهدة سلام فى التاريخ وأصبحت مصر قوة كبرى، وصارت بذلك إمبراطورية عظيمة مترامية الأطراف.",
    english_info:"After Ahmose expelled the Hyksos, he returned to his country in 1571 BC. M, where he eliminated the revolts of the Nubians in the south and headed for internal reform in the country. He was concerned with creating an organized working army, arming it with all the weapons known at that time and supplying it with chariots. Ramesses II is considered one of the most famous kings of this country, and his wars are considered the last efforts made by the kings of the modern state in order to preserve Unity. His rivalry with the Hittite king ended with the signing of a non-aggression treaty between the two parties after the Battle of Kadesh. This treaty is considered the first peace treaty in history, and Egypt became a major power, thus becoming a great, sprawling empire."
    )
SubEra.create(
    arabic_name: "العصر المتأخر (الأسرات من 21 إلى 30)",
    english_name: "Late Period (Dynasties 21 to 30)" ,
    era: era,
    arabic_info:"كان هذا العصر فصل الختام في التاريخ الفرعوني حيث تعرضت مصر منذ حكم الأسرة 21 وحتى الأسرة 28 لاحتلال كل من الآشوريين عام 670 ق.م ، ثم الفرس حتى انتهى حكم الفراعنة مع الأسرة الــ 30 ودخول الإسكندر الأكبر مصر .",
    english_info:"This era was the closing chapter in Pharaonic history, as Egypt, from the rule of the 21st Dynasty until the 28th Dynasty, was subjected to occupation by the Assyrians in 670 BC, then the Persians, until the rule of the Pharaohs ended with the 30th Dynasty and the entry of Alexander the Great into Egypt."
    )
# SubEra.create(
#     arabic_name: "",
#     english_name: "" ,
#     era: era,
#     arabic_info:"",
#     english_info:""
#     )
event = Event.create(type: "War", arabic_title: "معركه ابو بكر", english_title: "Battle of Badr", start_date: "624-03-13", sub_era: sub_era)

user = User.create(email: "mo@mo.mo", password: "momomo", name: "mohamed Eldeeb")


# product = Product.create(type: 1, price: 100, arabic_title: "حياه ابو بكر", english_title: "The Life of Abu Bakr", arabic_description: "The Life of Abu Bakr", english_description: "The Life of Abu Bakr", era: era, sub_era_id: sub_era.id, character: character, event: event)
