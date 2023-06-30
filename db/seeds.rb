# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

kami=User.create! email:"kami@k.k", password:"a36893368d8", firstname: "Kami", lastname: "Gourbail", role: 2
kami.blog_posts.create title:"test"

bernard=User.create! email:'bernard.g@doctoblog.com', password:"25c3acb645", firstname:"Bernard",lastname:"Goupillon", role: 1

juliette=User.create! email:'juliette.r@doctoblog.com', password:"dd72e4c1", firstname:"Juliette",lastname:"Richardson", role: 1


BlogPost.create! title:"Le blog de Bernard", subtitle:"Le blog de Bernard", body:"Le blog de Bernard", user: bernard


# Create 4 blog posts for Bernard
p1 = BlogPost.create!(title: "A promising arrival in the Pediatric Department", subtitle: "Meeting Dr. Camille Dupont, Maxillofacial Surgeon", body: """In May 2023, our hospital's pediatric department had the privilege of welcoming an exceptional new addition, Dr. Camille Dupont. As a specialist in maxillofacial surgery, Dr. Dupont brings valuable expertise in treating facial diseases and anomalies in children.

With her advanced surgical skills and dedication to the well-being of young patients, Dr. Dupont quickly integrated into our team. Her empathetic and warm approach reassures children and their families, and her medical expertise enables her to successfully perform complex surgical procedures.

Dr. Dupont received her medical degree from the University of Paris, followed by specialization in maxillofacial surgery at a prestigious medical center. Prior to joining our team, she gained significant experience working in various renowned institutions across the country.

Since her arrival, Dr. Dupont has already carried out several successful interventions, giving hope and confidence to families of children with facial deformities. Her passion for her work shines through in every interaction with patients, and she makes it a point to clearly explain procedures to parents, helping them understand the available treatment options.

We are proud to have Dr. Dupont among us, and we look forward to witnessing the remarkable results she will achieve in helping our young patients regain their smiles and self-confidence.""", user: bernard)

p1.illustration.attach io: File.open(Rails.root.join('app/assets/images/1-surgey.jpg')), filename: '1-surgey.jpg'



p2 = BlogPost.create!(title: "A New Relaxation and Dining Area for Hospital Staff", subtitle: "We have been eagerly awaiting its arrival, and now it's here!", body: """The well-being of hospital staff is crucial to ensure optimal patient care. That's why we are delighted to announce the establishment of a new park dedicated to the personnel of our hospital.

Located close to the medical facilities, this park provides a peaceful space where staff members can unwind, recharge, and enjoy a moment of tranquility in the outdoors. Its design has been carefully planned to create an environment conducive to relaxation and camaraderie.

The park features comfortable benches, shaded areas to protect from the sun, picnic tables for colleagues to share an outdoor meal, and soothing greenery that sets a serene ambiance. Moreover, walking paths have been laid out to encourage strolls and moments of leisure.

In order to facilitate access to healthy and convenient food options, a light refreshment kiosk has also been installed in the park. It offers a variety of nutritious and balanced food choices, allowing staff members to nourish themselves properly without having to venture far from their workplace. This initiative aims to promote healthy eating habits and encourage staff to take regular breaks to rejuvenate and recharge.

We hope that this new space will enhance well-being and camaraderie within our hospital community, providing a conducive setting for relaxation and interaction among staff members.""", user: bernard)

p2.illustration.attach io: File.open(Rails.root.join('app/assets/images/2-garden.jpg')), filename: '2-garden.jpg'



p3 = BlogPost.create!(title: "Acquisition of the "'CardioBot'" Robotic Cardiac Surgery System Revolutionizes Cardiac Care", subtitle: """A recent technological innovation within our hospital", body: "Technological innovation continues to enhance medical care, and our hospital is a prime example of this. Recently, we have acquired a state-of-the-art robotic cardiac surgery system called CardioBot

CardioBot is a sophisticated robotic system specifically designed for cardiac surgical procedures. It features miniaturized robotic arms and advanced surgical tools, enabling cardiac surgeons to perform complex procedures with increased precision and faster recovery for patients.

With its advanced capabilities, CardioBot offers numerous benefits for both patients and medical teams. Firstly, it allows surgeons to perform less invasive procedures, thereby reducing the risks associated with traditional surgery. Additionally, the robot's precision and stability enable surgeons to carry out delicate movements with utmost dexterity, thereby improving the outcomes of cardiac operations.

The cardiac surgery team at our hospital has swiftly embraced this new technology and has begun reaping significant benefits from it. Cardiac surgical procedures have become safer, more efficient, and more precise through the use of CardioBot. Patients can also experience faster recovery times and shorter hospital stays.

The acquisition of CardioBot showcases our commitment to medical excellence and our dedication to providing the best possible care for our patients. We continue to invest in cutting-edge medical technologies to stay at the forefront of scientific advancements and ensure optimal outcomes for our cardiac patients.""", user: bernard)

p3.illustration.attach io: File.open(Rails.root.join('app/assets/images/3-robot.jpg')), filename: '3-robot.jpg'




p4 = BlogPost.create!(title: "The Establishment of a New Service Dedicated to Psychological Support for Medical Staff", subtitle: "Your hospital cares for you too.", body: """The mental health and well-being of medical staff are crucial for ensuring quality patient care. That is why we are delighted to announce the creation of a new service dedicated to providing psychological support for the medical staff at our hospital.

This new service, called "'Serene Space'" aims to offer professional and confidential support to medical staff members who may be facing emotional difficulties or stressful situations related to their work. Serene Space is staffed by a team of experienced clinical psychologists who are trained to address the specific challenges faced by healthcare professionals.

Staff members can schedule appointments with a psychologist from Serene Space to discuss their concerns, express their emotions, and receive guidance and strategies for managing stress and work-related difficulties. The sessions are confidential and adhere to professional ethical standards.

By implementing this service, we acknowledge the importance of taking care of the mental health of our medical staff and providing them with a safe space to express their emotions and receive appropriate support. We believe that the well-being of medical staff is essential for maintaining a healthy work environment and ensuring quality patient care.

Serene Space is accessible to all medical staff members, whether they work in clinical, administrative, or support services. We encourage all staff members to utilize this service and take care of their mental and emotional health, as they are the vital pillars of our hospital community.""", user: bernard)

p4.illustration.attach io: File.open(Rails.root.join('app/assets/images/4-psy.jpg')), filename: '4-psy.jpg'



# Create 5 blog posts for Bernard
p5 = BlogPost.create!(title: "Special Day for Children: A Burst of Joy at the Hospital", subtitle: "A priority for creating a world of "'play'" for the child", body: """On May 31st, our pediatric department was filled with clowns, Spidermans, and a multitude of colorful characters. It was Children's Day at the hospital, a special occasion where the medical staff and volunteers created a festive atmosphere for our young patients.

Throughout the day, the hallways and rooms echoed with laughter and playfulness. The clowns showcased their comedic talents to entertain and amuse the children, while the Spidermans performed incredible acrobatics, eliciting admiration and wonder.

What made this day even more special was that the entire medical staff also joined in the fun by dressing up. Doctors, nurses, and support staff adorned themselves with colorful costumes, transforming into fairytale characters and superheroes. This active participation created a joyful atmosphere and strengthened the bond between the staff and the children.

This special day allowed hospitalized children to escape from their medical routines, to be entertained, and to experience the magic of childhood. Laughter and smiles were contagious, creating precious moments of happiness and comfort for the young patients and their families.

We are proud of our medical team for showing such generosity and dedication to the well-being of children. These shared moments of joy will be etched in our memories, reminding us of the importance of caring for children's spirits as much as their physical health.""", user: juliette)

p5.illustration.attach io: File.open(Rails.root.join('app/assets/images/5-clowns.jpg')), filename: '5-clowns.jpg'



p6 = BlogPost.create!(title: "Special Day for Children: A Burst of Joy at the Hospital", subtitle: "A priority for creating a world of "'play'" for the child", body: """On May 31st, our pediatric department was filled with clowns, Spidermans, and a multitude of colorful characters. It was Children's Day at the hospital, a special occasion where the medical staff and volunteers created a festive atmosphere for our young patients.

Throughout the day, the hallways and rooms echoed with laughter and playfulness. The clowns showcased their comedic talents to entertain and amuse the children, while the Spidermans performed incredible acrobatics, eliciting admiration and wonder.

What made this day even more special was that the entire medical staff also joined in the fun by dressing up. Doctors, nurses, and support staff adorned themselves with colorful costumes, transforming into fairytale characters and superheroes. This active participation created a joyful atmosphere and strengthened the bond between the staff and the children.

This special day allowed hospitalized children to escape from their medical routines, to be entertained, and to experience the magic of childhood. Laughter and smiles were contagious, creating precious moments of happiness and comfort for the young patients and their families.

We are proud of our medical team for showing such generosity and dedication to the well-being of children. These shared moments of joy will be etched in our memories, reminding us of the importance of caring for children's spirits as much as their physical health.""", user: juliette)

p6.illustration.attach io: File.open(Rails.root.join('app/assets/images/6-Prof.jpg')), filename: '6-Prof.jpg'




p7 = BlogPost.create!(title: "Revised Visiting Hours for Enhanced Care in the Intensive Care Unit", subtitle: "Extension of visiting hours", body: """In our intensive care unit, we have recently made changes to the visiting hours to optimize the quality of care and patient recovery. These new hours provide a more balanced and tailored approach to meet the needs of patients and the requirements of intensive medical care.

Previously, visiting hours were limited to a single 2-hour period in the late afternoon. This time constraint could sometimes lead to excessive visitor influx, disturbing the necessary tranquility for patient recovery.

The revised visiting hours have been established to better distribute the presence of patients' loved ones throughout the day. Visits are now allowed during two time slots: from 11 a.m. to 1 p.m. and from 4 p.m. to 8 p.m.

This rearrangement offers several significant advantages. Firstly, it reduces the concentration of visitors during a single moment, facilitating medical monitoring and enabling patients to benefit from a calmer environment conducive to recovery. Secondly, it also provides more flexibility for loved ones to organize their visits, taking into account their work or personal constraints.

These new measures have been implemented after a careful assessment of patient needs and recommendations from medical teams. They aim to promote optimal care by ensuring a more serene, adapted, and efficient intensive care environment.""", user: juliette)

p7.illustration.attach io: File.open(Rails.root.join('app/assets/images/7-timevisit.jpg')), filename: '7-timevisit.jpg'




p8 = BlogPost.create!(title: "A New Healing Space", subtitle: "Renovation of Rooms 32 and 36 on the 2nd Floor", body: """In our ongoing commitment to enhance the comfort and well-being of our patients, we are pleased to announce that Rooms 32 and 36 on the 2nd floor of our pediatric ward will undergo a complete renovation. These two-week-long renovations aim to create a more welcoming environment conducive to healing.

The renovation will encompass several aspects, ranging from fresh paint to material improvements. The rooms will be repainted with soothing colors, fostering a relaxing and warm atmosphere. Furthermore, the furniture will be updated to provide optimal comfort for patients and their families, with adjustable beds, ergonomic chairs, and practical storage spaces.

We will also take this opportunity to integrate new medical technologies into these renovated rooms, such as advanced monitoring systems and state-of-the-art medical equipment. This will enable our medical team to deliver even higher quality care, utilizing the latest available technological innovations.

We understand the importance of a healing-friendly environment, where patients feel comfortable and surrounded by compassionate care. These renovations reflect our commitment to providing the best possible care for our young patients, by creating a modern, functional, and comforting healing space.

During the renovations, we will ensure minimal disruptions for the patients and prioritize their safety. Appropriate measures will be taken to guarantee a safe and comfortable environment during this transitional period.

We look forward to showcasing these renovated rooms, which will contribute to improving the patient experience and supporting their recovery in an environment conducive to their well-being.""", user: juliette)

p8.illustration.attach io: File.open(Rails.root.join('app/assets/images/8-rooms.jpg')), filename: '8-rooms.jpg'


