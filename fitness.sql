create database fitness;
use fitness;
-- user table
create table user(user_id int primary key,
name varchar(40),
age int,
gender enum('male','female'),
email varchar(45),
phone varchar(70),
height decimal(5,2),
weight decimal(5,2),
BMI decimal(5,2),
fitness_goal varchar(60),
role enum('trainee','trainer'));
INSERT INTO user (user_id, name, age, gender, email, phone, height, weight, BMI, fitness_goal, role) VALUES
(1, 'Alice Johnson', 28, 'female', 'alice.j@example.com', '555-0123', 165.00, 60.00, 22.04, 'Lose weight', 'trainee'),
(2, 'Bob Smith', 32, 'male', 'bob.smith@example.com', '555-0456', 175.00, 78.00, 25.47, 'Build muscle', 'trainee'),
(3, 'Charlie Brown', 30, 'male', 'charlieb@example.com', '555-0789', 180.00, 85.00, 26.23, 'Maintain fitness', 'trainee'),
(4, 'Diana Prince', 26, 'female', 'diana.p@example.com', '555-1011', 170.00, 65.00, 22.49, 'Tone body', 'trainee'),
(5, 'Ethan Hunt', 35, 'male', 'ethan.h@example.com', '555-1213', 182.00, 80.00, 24.15, 'Build stamina', 'trainee'),
(6, 'Fiona Glenanne', 29, 'female', 'fiona.g@example.com', '555-1415', 162.00, 58.00, 22.10, 'Increase flexibility', 'trainee'),
(7, 'George Miller', 40, 'male', 'george.m@example.com', '555-1617', 178.00, 90.00, 28.41, 'Lose weight', 'trainee'),
(8, 'Hannah Baker', 22, 'female', 'hannah.b@example.com', '555-1819', 160.00, 54.00, 21.09, 'Stay fit', 'trainee'),
(9, 'Ian Wright', 34, 'male', 'ian.w@example.com', '555-2021', 172.00, 70.00, 23.66, 'Build endurance', 'trainee'),
(10, 'Julia Stone', 31, 'female', 'julia.s@example.com', '555-2223', 168.00, 62.00, 21.97, 'Lean muscle', 'trainee'),
(11, 'Kevin Hart', 33, 'male', 'kevin.h@example.com', '555-2425', 170.00, 75.00, 25.95, 'Bulk up', 'trainee'),
(12, 'Laura Moon', 27, 'female', 'laura.m@example.com', '555-2627', 158.00, 50.00, 20.03, 'Lose belly fat', 'trainee'),
(13, 'Mark Lee', 29, 'male', 'mark.l@example.com', '555-2829', 174.00, 72.00, 23.78, 'Improve posture', 'trainee'),
(14, 'Nina Patel', 25, 'female', 'nina.p@example.com', '555-3031', 163.00, 57.00, 21.46, 'Gain strength', 'trainee'),
(15, 'Oscar Wilde', 37, 'male', 'oscar.w@example.com', '555-3233', 185.00, 88.00, 25.72, 'Lose fat, gain muscle', 'trainee'),
(16, 'Paula Green', 24, 'female', 'paula.g@example.com', '555-3435', 167.00, 60.00, 21.51, 'Toned legs', 'trainee'),
(17, 'Quentin Beck', 36, 'male', 'quentin.b@example.com', '555-3637', 179.00, 82.00, 25.59, 'Athletic body', 'trainee'),
(18, 'Rachel Adams', 28, 'female', 'rachel.a@example.com', '555-3839', 164.00, 59.00, 21.95, 'Run marathon', 'trainee'),
(19, 'Sam Taylor', 31, 'male', 'sam.t@example.com', '555-4041', 176.00, 76.00, 24.53, 'Stay lean', 'trainee'),
(20, 'Tina Fey', 35, 'female', 'tina.f@example.com', '555-4243', 165.00, 62.00, 22.77, 'Be more active', 'trainee'),
(21, 'Uma Khan', 29, 'female', 'uma.k@example.com', '555-4445', 161.00, 55.00, 21.24, 'Pilates and yoga', 'trainee'),
(22, 'Victor Cruz', 38, 'male', 'victor.c@example.com', '555-4647', 180.00, 83.00, 25.62, 'Strong core', 'trainee'),
(23, 'Wendy Wu', 27, 'female', 'wendy.w@example.com', '555-4849', 162.00, 58.00, 22.10, 'Daily fitness', 'trainee'),
(24, 'Xavier Hill', 33, 'male', 'xavier.h@example.com', '555-5051', 177.00, 79.00, 25.18, 'Crossfit', 'trainee'),
(25, 'Yara Grey', 26, 'female', 'yara.g@example.com', '555-5253', 159.00, 56.00, 22.15, 'Body sculpting', 'trainee'),
(26, 'Zane Malik', 32, 'male', 'zane.m@example.com', '555-5455', 181.00, 84.00, 25.65, 'HIIT training', 'trainee'),
(27, 'Trainer Tom', 40, 'male', 'trainer.tom@example.com', '555-5657', 185.00, 90.00, 26.30, 'Coach clients', 'trainer'),
(28, 'Trainer Lisa', 35, 'female', 'trainer.lisa@example.com', '555-5859', 168.00, 65.00, 23.03, 'Personal training', 'trainer'),
(29, 'Trainer Mike', 38, 'male', 'trainer.mike@example.com', '555-6061', 182.00, 88.00, 26.57, 'Strength programs', 'trainer'),
(30, 'Trainer Sara', 33, 'female', 'trainer.sara@example.com', '555-6263', 164.00, 60.00, 22.31, 'Fitness coach', 'trainer');

-- trainer table
create table trainer(trainer_id int primary key,
name varchar(50),
specialization varchar(30),
experience_years int,
contact_info varchar(45),
certifications text);
INSERT INTO trainer (trainer_id, name, specialization, experience_years, contact_info, certifications) VALUES
(1, 'Tom Richards', 'Strength Training', 10, 'tom.richards@fitmail.com', 'NASM, ACE CPT'),
(2, 'Lisa Monroe', 'Yoga', 8, 'lisa.m@fitnow.com', 'RYT-500, Yoga Alliance'),
(3, 'Mike Anderson', 'CrossFit', 7, 'mike.a@fitzone.com', 'CrossFit Level 2, CPR/AED'),
(4, 'Sara Blake', 'Cardio', 6, 'sara.blake@cardioburn.com', 'ACE CPT, CPR Certified'),
(5, 'John Carter', 'Bodybuilding', 12, 'john.c@musclemax.com', 'ISSA, IFBB Pro'),
(6, 'Rachel Lee', 'Pilates', 5, 'rachel.lee@pilatespro.com', 'STOTT Pilates, ACE'),
(7, 'Kevin Brown', 'HIIT', 9, 'kevin.b@hiitforce.com', 'NASM, HIIT Coach Cert'),
(8, 'Nina Patel', 'Zumba', 4, 'nina.patel@zumbalife.com', 'Zumba B1, CPR Certified'),
(9, 'Oscar Greene', 'Endurance', 11, 'oscar.greene@endurefit.com', 'NASM, CSCS'),
(10, 'Emily Fox', 'Functional Training', 6, 'emily.fox@corepower.com', 'ACE CPT, TRX Certified'),
(11, 'Brian Knight', 'Athletic Training', 13, 'brian.k@athletemode.com', 'ATC, BOC Certified'),
(12, 'Sophia White', 'Flexibility', 5, 'sophia.w@stretchpro.com', 'NASM CES, Yoga Basics'),
(13, 'David Zhang', 'Strength & Conditioning', 10, 'david.zhang@sportsfit.com', 'CSCS, USAW'),
(14, 'Tina Roberts', 'Rehab & Recovery', 7, 'tina.r@fitcare.com', 'NASM CES, CPR/AED'),
(15, 'Leo Tran', 'Calisthenics', 6, 'leo.tran@bodymotion.com', 'ISSA, Bodyweight Training'),
(16, 'Amanda Kim', 'Prenatal Fitness', 8, 'amanda.kim@momfit.com', 'ACE CPT, Prenatal Certified'),
(17, 'Chris Miller', 'Powerlifting', 10, 'chris.m@ironarena.com', 'USPA Coach, NASM'),
(18, 'Hannah Bright', 'Dance Fitness', 4, 'hannah.bright@rhythmfit.com', 'Zumba, Dance Cardio'),
(19, 'Daniel Stone', 'Martial Arts', 12, 'daniel.stone@combatfit.com', 'Black Belt, MMA Coach'),
(20, 'Grace Liu', 'Wellness Coaching', 5, 'grace.liu@wellnesszone.com', 'NBC-HWC, NASM'),
(21, 'Jamal Turner', 'Speed & Agility', 7, 'jamal.turner@speedpro.com', 'CSCS, Sprint Coach Cert'),
(22, 'Megan Shaw', 'Kettlebell Training', 6, 'megan.shaw@kbellclub.com', 'StrongFirst, NASM'),
(23, 'Ethan Ross', 'Sports Performance', 9, 'ethan.ross@proathlete.com', 'NSCA, CSCS'),
(24, 'Olivia Hall', 'Core Training', 5, 'olivia.hall@abszone.com', 'ACE CPT, TRX Core'),
(25, 'Victor Cruz', 'Mobility', 6, 'victor.cruz@mobilityworks.com', 'FRC, NASM'),
(26, 'Zara Wells', 'Outdoor Bootcamp', 7, 'zara.wells@bootcamp360.com', 'ACE CPT, First Aid'),
(27, 'Nathan Brooks', 'Weight Loss Coaching', 10, 'nathan.brooks@slimfit.com', 'Precision Nutrition, NASM'),
(28, 'Ella Gomez', 'Senior Fitness', 8, 'ella.gomez@activeaging.com', 'ACE Senior Fitness Specialist'),
(29, 'Kyle Reed', 'Group Fitness', 6, 'kyle.reed@gfit.com', 'AFAA GFI, CPR/AED'),
(30, 'Isla Moore', 'Lifestyle Coaching', 5, 'isla.moore@wellcoach.com', 'Wellcoaches Certified, NASM CPT');

-- diet_plan
create table diet_plan(diet_id int primary key,
diet_name varchar(56),
calorie_limit int,
description text,
trainer_id int,
foreign key(trainer_id)references trainer(trainer_id));
alter table diet_plan
add constraint fk_diet_plan
foreign key(trainer_id)references trainer(trainer_id)on delete cascade;
INSERT INTO diet_plan (diet_id, diet_name, calorie_limit, description, trainer_id) VALUES
(1, 'Lean Muscle Builder', 2500, 'High protein diet focused on lean meats, legumes, and complex carbs.', 1),
(2, 'Yoga Detox Plan', 1800, 'Plant-based meals designed to reduce inflammation and detox the body.', 2),
(3, 'CrossFit Fuel Plan', 2800, 'Balanced macros with a focus on performance and endurance.', 3),
(4, 'Cardio Cut', 2000, 'Low fat, high-carb diet optimized for endurance training.', 4),
(5, 'Bulking Beast', 3200, 'Calorie surplus with lots of protein and healthy fats.', 5),
(6, 'Pilates Power Plan', 1900, 'Balanced vegetarian meal plan supporting core strength.', 6),
(7, 'HIIT Shred Plan', 2100, 'High protein, low carb meals to support fat burning.', 7),
(8, 'Zumba Energy Diet', 2200, 'Nutritious, energy-boosting meals with moderate carbs.', 8),
(9, 'Endurance Elite', 2600, 'Complex carbs and lean proteins for long-distance training.', 9),
(10, 'Functional Fuel', 2300, 'Whole foods-based plan to support all-around fitness.', 10),
(11, 'Athlete Max Plan', 3000, 'Calorie-rich, macro-balanced meals for competitive athletes.', 11),
(12, 'Flexibility Focus Diet', 1800, 'Anti-inflammatory foods that support joint health.', 12),
(13, 'Strength & Conditioning Plan', 2700, 'Protein-focused with ample carbs for recovery.', 13),
(14, 'Recovery Boost Plan', 2000, 'Protein and nutrient-rich meals for muscle recovery.', 14),
(15, 'Bodyweight Warrior Diet', 2200, 'Clean eating plan for strength-to-weight ratio.', 15),
(16, 'Prenatal Wellness Diet', 2100, 'Balanced nutrients for expecting mothers.', 16),
(17, 'Powerlifting Meal Plan', 3200, 'Heavy meals with protein and complex carbs.', 17),
(18, 'Dance Fit Fuel', 2100, 'Light, energetic meals for dance workouts.', 18),
(19, 'Martial Arts Fuel Plan', 2500, 'Lean proteins, veggies, and complex carbs.', 19),
(20, 'Wellness Reset Diet', 1800, 'Whole foods diet for overall health improvement.', 20),
(21, 'Agility Performance Diet', 2400, 'Lean proteins and strategic carbs for speed training.', 21),
(22, 'Kettlebell Strength Plan', 2500, 'Whole grains, good fats, and protein-rich meals.', 22),
(23, 'Pro Athlete Diet', 2900, 'High-calorie, macro-balanced meals for peak performance.', 23),
(24, 'Core Stability Plan', 2000, 'Lean protein and fiber-rich vegetables.', 24),
(25, 'Mobility Max Plan', 2100, 'Anti-inflammatory and protein-rich foods.', 25),
(26, 'Outdoor Bootcamp Fuel', 2400, 'Nutritious snacks and meals for active days.', 26),
(27, 'Weight Loss Pro Plan', 1800, 'Low-calorie, high-fiber meals to promote fat loss.', 27),
(28, 'Active Aging Plan', 2000, 'Easily digestible meals with key vitamins for seniors.', 28),
(29, 'Group Energy Diet', 2300, 'Energizing meals for high-paced group training.', 29),
(30, 'Lifestyle Nutrition Plan', 1900, 'Simple, clean meals for everyday health goals.', 30);

-- workout_plan
create table workout_plan(workout_id int primary key,
workout_name varchar(45),
duration int,
type enum('cardio','strength','flexibility','mixed'),
intensity enum('low','medium','high'),
trainer_id int ,
foreign key(trainer_id)references trainer(trainer_id));
alter table workout_plan
add constraint fk_workout_plan
foreign key(trainer_id)references trainer(trainer_id)on delete cascade;
INSERT INTO workout_plan (workout_id, workout_name, duration, type, intensity, trainer_id) VALUES
(1, 'Power Pump', 45, 'strength', 'high', 1),
(2, 'Sunrise Yoga Flow', 60, 'flexibility', 'low', 2),
(3, 'CrossFit Challenge', 50, 'mixed', 'high', 3),
(4, 'Heart Racer', 40, 'cardio', 'medium', 4),
(5, 'Mass Gainer', 55, 'strength', 'high', 5),
(6, 'Core & Stretch', 45, 'flexibility', 'medium', 6),
(7, 'HIIT Burn', 30, 'cardio', 'high', 7),
(8, 'Zumba Blast', 50, 'cardio', 'medium', 8),
(9, 'Endurance Builder', 60, 'cardio', 'high', 9),
(10, 'Functional Fit', 45, 'mixed', 'medium', 10),
(11, 'Athlete Mode', 70, 'strength', 'high', 11),
(12, 'Gentle Mobility', 40, 'flexibility', 'low', 12),
(13, 'Strength & Speed', 55, 'mixed', 'high', 13),
(14, 'Recovery Stretch', 30, 'flexibility', 'low', 14),
(15, 'Bodyweight Beast', 50, 'strength', 'medium', 15),
(16, 'Prenatal Yoga', 45, 'flexibility', 'low', 16),
(17, 'Powerlifting Core', 60, 'strength', 'high', 17),
(18, 'Dance Cardio Flow', 45, 'cardio', 'medium', 18),
(19, 'Kickboxing Fusion', 50, 'mixed', 'high', 19),
(20, 'Mind-Body Flow', 40, 'flexibility', 'low', 20),
(21, 'Speed Drills', 30, 'cardio', 'high', 21),
(22, 'Kettlebell Complex', 45, 'strength', 'medium', 22),
(23, 'Pro Athlete Circuit', 60, 'mixed', 'high', 23),
(24, 'Core Control', 35, 'strength', 'medium', 24),
(25, 'Joint Mobility Boost', 40, 'flexibility', 'low', 25),
(26, 'Outdoor Bootcamp X', 50, 'mixed', 'high', 26),
(27, 'Shred & Burn', 45, 'cardio', 'medium', 27),
(28, 'Senior Fit Moves', 40, 'flexibility', 'low', 28),
(29, 'Group Energy Pulse', 50, 'mixed', 'medium', 29),
(30, 'Lifestyle Activation', 45, 'cardio', 'medium', 30);

-- daily_log
create table daily_log(log_id int primary key,
user_id int,
foreign key(user_id)references user(user_id),
date date,
weight decimal(5,2),
caloriesintake int,
water_intake decimal(4,1),
workout_done boolean,
notes text);
alter table daily_log
add constraint fk_daily_log
foreign key(user_id)references user(user_id)on delete cascade;
INSERT INTO daily_log (log_id, user_id, date, weight, caloriesintake, water_intake, workout_done, notes) VALUES
(1, 1, '2025-04-23', 72.5, 2200, 2.5, TRUE, 'Felt energetic after workout.'),
(2, 2, '2025-04-23', 68.3, 1800, 2.0, TRUE, 'Good yoga session in the morning.'),
(3, 3, '2025-04-23', 85.0, 2500, 3.0, TRUE, 'CrossFit WOD complete. Sore legs.'),
(4, 4, '2025-04-23', 60.8, 1900, 1.8, TRUE, 'Focused on cardio. Low energy today.'),
(5, 5, '2025-04-23', 95.2, 3000, 3.2, TRUE, 'Heavy lifting session. Great pump.'),
(6, 6, '2025-04-23', 55.4, 1750, 2.2, TRUE, 'Pilates felt amazing. Stretched well.'),
(7, 7, '2025-04-23', 78.9, 2100, 2.0, TRUE, 'HIIT was intense. Need to recover.'),
(8, 8, '2025-04-23', 64.5, 2000, 1.9, TRUE, 'Fun Zumba session. Full of energy.'),
(9, 9, '2025-04-23', 80.3, 2600, 2.8, TRUE, 'Endurance run completed. Hydrated well.'),
(10, 10, '2025-04-23', 74.2, 2300, 2.6, TRUE, 'Functional training went smoothly.'),
(11, 11, '2025-04-23', 90.7, 2900, 3.1, TRUE, 'Worked on strength and agility.'),
(12, 12, '2025-04-23', 58.9, 1700, 1.7, FALSE, 'Rest day. Feeling a bit tired.'),
(13, 13, '2025-04-23', 88.4, 2700, 2.9, TRUE, 'Strong workout, added more weight.'),
(14, 14, '2025-04-23', 62.1, 1850, 1.6, FALSE, 'Recovery-focused day. Light stretch.'),
(15, 15, '2025-04-23', 69.6, 2100, 2.4, TRUE, 'Calisthenics drills completed.'),
(16, 16, '2025-04-23', 59.3, 2000, 2.2, TRUE, 'Prenatal yoga and walking.'),
(17, 17, '2025-04-23', 97.0, 3100, 3.4, TRUE, 'Heavy bench and squat PR today.'),
(18, 18, '2025-04-23', 66.7, 1950, 2.0, TRUE, 'Dance fitness was energizing.'),
(19, 19, '2025-04-23', 83.5, 2400, 2.5, TRUE, 'MMA sparring and conditioning.'),
(20, 20, '2025-04-23', 70.0, 1800, 2.0, FALSE, 'Took a mindful rest day.'),
(21, 21, '2025-04-23', 75.8, 2250, 2.6, TRUE, 'Speed ladder and cone drills.'),
(22, 22, '2025-04-23', 77.6, 2350, 2.3, TRUE, 'Kettlebell swings and squats.'),
(23, 23, '2025-04-23', 86.1, 2750, 3.0, TRUE, 'Sled push and plyo work today.'),
(24, 24, '2025-04-23', 65.0, 1900, 2.1, TRUE, 'Focused on abs and stability.'),
(25, 25, '2025-04-23', 71.9, 2000, 2.4, TRUE, 'Mobility routine + foam rolling.'),
(26, 26, '2025-04-23', 82.0, 2400, 2.5, TRUE, 'Outdoor bootcamp, legs day.'),
(27, 27, '2025-04-23', 76.2, 1800, 2.2, TRUE, 'Morning HIIT followed diet plan.'),
(28, 28, '2025-04-23', 68.5, 1700, 1.8, FALSE, 'Active aging routine postponed.'),
(29, 29, '2025-04-23', 73.4, 2100, 2.2, TRUE, 'Group cardio circuit.'),
(30, 30, '2025-04-23', 70.7, 1850, 2.0, FALSE, 'Skipped workout. Tight schedule.');

-- appointment
create table appointment(appointment_id int primary key,
user_id int,
foreign key(user_id)references user(user_id),
trainer_id int,
foreign key(trainer_id)references trainer(trainer_id),
date date,
time time,
notes text,
status enum('scheduled','completed'));
alter table appointment
add constraint fk_appointment
foreign key(user_id)references user(user_id)on delete cascade;
alter table appointment
add constraint fk_appointment
foreign key(trainer_id)references trainer(trainer_id)on delete cascade;
INSERT INTO appointment (appointment_id, user_id, trainer_id, date, time, notes, status) VALUES
(1, 1, 1, '2025-04-25', '09:00:00', 'Initial consultation', 'scheduled'),
(2, 2, 2, '2025-04-25', '10:00:00', 'Yoga session follow-up', 'scheduled'),
(3, 3, 3, '2025-04-25', '11:00:00', 'CrossFit assessment', 'scheduled'),
(4, 4, 4, '2025-04-25', '12:00:00', 'Endurance planning', 'completed'),
(5, 5, 5, '2025-04-25', '13:00:00', 'Strength program start', 'scheduled'),
(6, 6, 6, '2025-04-25', '14:00:00', 'Flexibility and goals review', 'completed'),
(7, 7, 7, '2025-04-25', '15:00:00', 'HIIT plan intro', 'scheduled'),
(8, 8, 8, '2025-04-25', '16:00:00', 'Dance fitness session', 'completed'),
(9, 9, 9, '2025-04-25', '17:00:00', 'Running posture check', 'scheduled'),
(10, 10, 10, '2025-04-26', '09:30:00', 'Functional fitness drills', 'completed'),
(11, 11, 11, '2025-04-26', '10:30:00', 'Power training session', 'scheduled'),
(12, 12, 12, '2025-04-26', '11:30:00', 'Mobility assessment', 'completed'),
(13, 13, 13, '2025-04-26', '12:30:00', 'Strength check-in', 'scheduled'),
(14, 14, 14, '2025-04-26', '13:30:00', 'Stretching techniques', 'completed'),
(15, 15, 15, '2025-04-26', '14:30:00', 'Bodyweight program talk', 'scheduled'),
(16, 16, 16, '2025-04-26', '15:30:00', 'Prenatal fitness consult', 'completed'),
(17, 17, 17, '2025-04-26', '16:30:00', 'Powerlifting form check', 'scheduled'),
(18, 18, 18, '2025-04-26', '17:30:00', 'Dance cardio setup', 'completed'),
(19, 19, 19, '2025-04-27', '08:00:00', 'Martial arts basics', 'scheduled'),
(20, 20, 20, '2025-04-27', '09:00:00', 'Wellness lifestyle intro', 'scheduled'),
(21, 21, 21, '2025-04-27', '10:00:00', 'Agility test', 'scheduled'),
(22, 22, 22, '2025-04-27', '11:00:00', 'Kettlebell circuit', 'completed'),
(23, 23, 23, '2025-04-27', '12:00:00', 'Athlete mode setup', 'scheduled'),
(24, 24, 24, '2025-04-27', '13:00:00', 'Stability program discussion', 'completed'),
(25, 25, 25, '2025-04-27', '14:00:00', 'Joint mobility prep', 'scheduled'),
(26, 26, 26, '2025-04-27', '15:00:00', 'Outdoor bootcamp schedule', 'completed'),
(27, 27, 27, '2025-04-27', '16:00:00', 'Fat loss goal check-in', 'scheduled'),
(28, 28, 28, '2025-04-27', '17:00:00', 'Senior movement safety talk', 'completed'),
(29, 29, 29, '2025-04-28', '08:30:00', 'Group training orientation', 'scheduled'),
(30, 30, 30, '2025-04-28', '09:30:00', 'Lifestyle and habit planning', 'completed');

-- notification
create table notification(notification_id int primary key,
user_id int,
foreign key(user_id)references user(user_id),
message text,
date date,
time time,
type enum('workout','diet','water'));
alter table notification
add constraint fk_notification
foreign key(user_id)references user(user_id)on delete cascade;
INSERT INTO notification (notification_id, user_id, message, date, time, type) VALUES
(1, 1, 'Time for your morning workout!', '2025-04-24', '07:00:00', 'workout'),
(2, 2, 'Don’t forget your post-yoga smoothie.', '2025-04-24', '08:30:00', 'diet'),
(3, 3, 'Hydration reminder: Drink 250ml water.', '2025-04-24', '09:00:00', 'water'),
(4, 4, 'Today’s cardio routine is ready!', '2025-04-24', '07:30:00', 'workout'),
(5, 5, 'Have your high-protein breakfast.', '2025-04-24', '08:00:00', 'diet'),
(6, 6, 'Hydration goal: 2.5L for the day.', '2025-04-24', '10:00:00', 'water'),
(7, 7, 'It’s HIIT day – get moving!', '2025-04-24', '06:45:00', 'workout'),
(8, 8, 'Breakfast plan: oats + banana smoothie.', '2025-04-24', '08:15:00', 'diet'),
(9, 9, 'Drink water before your run!', '2025-04-24', '06:50:00', 'water'),
(10, 10, 'Let’s crush today’s functional circuit.', '2025-04-24', '07:15:00', 'workout'),
(11, 11, 'Powerlifting prep meal: chicken + rice.', '2025-04-24', '11:00:00', 'diet'),
(12, 12, 'Stay hydrated: refill your bottle!', '2025-04-24', '09:30:00', 'water'),
(13, 13, 'Strength session starts soon!', '2025-04-24', '07:00:00', 'workout'),
(14, 14, 'Morning greens & toast time!', '2025-04-24', '08:20:00', 'diet'),
(15, 15, 'Time for 1 full glass of water.', '2025-04-24', '10:30:00', 'water'),
(16, 16, 'Prenatal stretch video available.', '2025-04-24', '06:30:00', 'workout'),
(17, 17, 'Pre-workout meal: eggs + spinach.', '2025-04-24', '08:10:00', 'diet'),
(18, 18, 'Water goal: 3L today. Keep sipping.', '2025-04-24', '11:45:00', 'water'),
(19, 19, 'Kickboxing drills at noon!', '2025-04-24', '11:00:00', 'workout'),
(20, 20, 'Start your day with chia pudding.', '2025-04-24', '08:00:00', 'diet'),
(21, 21, 'Drink 250ml of water now.', '2025-04-24', '10:00:00', 'water'),
(22, 22, 'Kettlebell session starts in 1 hour.', '2025-04-24', '07:45:00', 'workout'),
(23, 23, 'Lunch tip: grilled fish + veggies.', '2025-04-24', '12:00:00', 'diet'),
(24, 24, 'Water check-in: halfway to your goal.', '2025-04-24', '13:00:00', 'water'),
(25, 25, 'Mobility drills to ease joints today.', '2025-04-24', '06:50:00', 'workout'),
(26, 26, 'Pre-bootcamp snack: almonds + yogurt.', '2025-04-24', '08:10:00', 'diet'),
(27, 27, 'Hydrate well post-HIIT.', '2025-04-24', '10:15:00', 'water'),
(28, 28, 'Senior movement class reminder.', '2025-04-24', '09:00:00', 'workout'),
(29, 29, 'Morning oatmeal + berries today.', '2025-04-24', '08:05:00', 'diet'),
(30, 30, 'Start the day with 1L of water.', '2025-04-24', '07:00:00', 'water');

-- feedback
create table feedback(feedback_id int primary key,
user_id int,
foreign key(user_id)references user(user_id),
trainer_id int,
foreign key(trainer_id)references trainer(trainer_id),
rating INT CHECK (rating BETWEEN 1 AND 5),
comments text,
date date);
alter table feedback
add constraint fk_feedback
foreign key(user_id)references user(user_id)on delete cascade;
alter table feedback
add constraint fk_feedback
foreign key(trainer_id)references trainer(trainer_id)on delete cascade;
INSERT INTO feedback (feedback_id, user_id, trainer_id, rating, comments, date) VALUES
(1, 1, 1, 5, 'Excellent session, very motivating!', '2025-04-23'),
(2, 2, 2, 4, 'Trainer was helpful and informative.', '2025-04-23'),
(3, 3, 3, 5, 'Loved the workout style!', '2025-04-23'),
(4, 4, 4, 3, 'Good session, but felt a bit rushed.', '2025-04-23'),
(5, 5, 5, 4, 'Trainer gave great feedback on form.', '2025-04-23'),
(6, 6, 6, 5, 'Clear instructions and encouragement!', '2025-04-23'),
(7, 7, 7, 2, 'Trainer was late to session.', '2025-04-23'),
(8, 8, 8, 4, 'Great session, looking forward to more.', '2025-04-23'),
(9, 9, 9, 5, 'Very supportive and professional.', '2025-04-23'),
(10, 10, 10, 3, 'Decent session, room for improvement.', '2025-04-23'),
(11, 11, 11, 5, 'Amazing energy and focus!', '2025-04-22'),
(12, 12, 12, 4, 'Trainer explained exercises well.', '2025-04-22'),
(13, 13, 13, 4, 'Liked the pacing and encouragement.', '2025-04-22'),
(14, 14, 14, 5, 'Perfect for my fitness goals.', '2025-04-22'),
(15, 15, 15, 3, 'Could use better equipment setup.', '2025-04-22'),
(16, 16, 16, 4, 'Well-structured and energetic.', '2025-04-22'),
(17, 17, 17, 2, 'Trainer was distracted today.', '2025-04-22'),
(18, 18, 18, 5, 'Loved the dance workout!', '2025-04-22'),
(19, 19, 19, 5, 'Martial arts drills were great.', '2025-04-22'),
(20, 20, 20, 3, 'Average session.', '2025-04-22'),
(21, 21, 21, 4, 'Flexible and responsive to needs.', '2025-04-21'),
(22, 22, 22, 5, 'Felt empowered and supported.', '2025-04-21'),
(23, 23, 23, 4, 'Trainer helped adjust movements.', '2025-04-21'),
(24, 24, 24, 5, 'Very insightful and focused.', '2025-04-21'),
(25, 25, 25, 2, 'Trainer seemed disinterested.', '2025-04-21'),
(26, 26, 26, 4, 'Outdoor session was fun!', '2025-04-21'),
(27, 27, 27, 5, 'Very detailed instructions.', '2025-04-21'),
(28, 28, 28, 5, 'Patient and kind with seniors.', '2025-04-21'),
(29, 29, 29, 3, 'Could use more engagement.', '2025-04-21'),
(30, 30, 30, 4, 'Trainer helped with posture issues.', '2025-04-21');
-- views created
-- how many diet plans each trainer has created.
create view trainer_dietplan_count as
select trainer_id, COUNT(*) as diet_plan_count
from Diet_Plan
group by trainer_id;
-- Displays the workout plan with the longest duration and highest intensity.
create view top_workout_plan AS
select workout_id,workout_name, duration, intensity
from Workout_Plan
order by duration desc, intensity desc
limit 1;
-- Create a view listing all high intensity workouts, with their name and type.
create view view_high_intensity_workouts as
select workout_name, type
from workout_plan
where intensity = 'high';
-- Create a view that shows the trainer name, specialization, and experience_years.
create view view_trainer_specialization AS
select name, specialization, experience_years
from trainer;
-- View for diet plans under 2000 calories
create view view_low_calorie_diets AS
select diet_name, calorie_limit, description
from diet_plan
where calorie_limit < 2000;
-- stored procedure
-- Create a procedure to list all workouts by a specific trainer?
DELIMITER //
CREATE PROCEDURE workouts_by_trainer(
    IN p_trainer_id INT
)
BEGIN
    SELECT workout_name, duration, type, intensity
    FROM workout_plan
    WHERE trainer_id = p_trainer_id;
END //

DELIMITER ;
CALL workouts_by_trainer(3);
 
 -- Create a procedure to get all daily logs for a specific user.
 DELIMITER //

CREATE PROCEDURE daily_logs_for_user(
    IN p_user_id INT
)
BEGIN
    SELECT date, weight, caloriesintake, water_intake, workout_done, notes
    FROM daily_log
    WHERE user_id = p_user_id
    ORDER BY date DESC;
END //

DELIMITER ;
CALL daily_logs_for_user(5);

-- Write a procedure to update a user's weight and recalculate BMI.
DELIMITER //

CREATE PROCEDURE update_user_weight(
    IN p_user_id INT,
    IN p_new_weight DECIMAL(5,2)
)
BEGIN
    DECLARE p_height DECIMAL(5,2);
    DECLARE p_BMI DECIMAL(5,2);
    SELECT height INTO p_height
    FROM user
    WHERE user_id = p_user_id;
    SET p_BMI = (p_new_weight / (p_height * p_height)) * 10000;
    UPDATE user
    SET weight = p_new_weight,
        BMI = p_BMI
    WHERE user_id = p_user_id;
END //

DELIMITER ;
CALL update_user_weight(2, 80.00);


    







