
% Main predicate that initiates the program
main :-
  intro,         
  reset_answers, 
  find_degree(Degree). 

% Display introductory message
intro :-
  write('Which course should I take?'), nl,
  write('To answer, input the number shown next to each answer, followed by a dot (.)'), nl, nl.

% Find suitable degree
find_degree(Degree) :-
  degree(Degree), !. 

% Dynamic fact declaration
:- dynamic(progress/2).

% Reset answers
reset_answers :-
  retract(progress(_, _)),  
  fail.                     
reset_answers.              

logical_thinking :- logic_or_imagination(logic), rational(yes).
imaginary_thinking :- logic_or_imagination(imagination), rational(no).
physics_person :- work_with_numbers(yes), maths(yes), physics(yes).

% Computing
subject(computing, E) :- 
  logical_thinking,
  better_in(solving_problem),
  computer_or_hands(computer),
  work_with_numbers(yes),
  maths(yes),
  E='You are a logical person. You are also good in maths and solving problems using computer. So, you are suitable for computing subject.'.

subject(computing, E) :-
  imaginary_thinking,
  better_in(solving_problem),
  computer_or_hands(computer),
  work_with_numbers(no),
  maths(yes),
  E='You are good in maths and solving problems. So, you are suitable for computing subject.'.

subject(computing, E) :-
  computer_or_hands(computer),
  blogs(technology),
  E='You prefer working on a computer and like reading blogs related to technology. So, you are suitable for computing subject.'.

% Engineering
subject(engineering, E) :-
  logical_thinking,
  science(yes),
  theory_or_pratical(pratical),
  better_in(solving_problem),
  challenge_yourself(yes),
  work_with_numbers(yes),
  E='You are a logical person and like science. You like to do practical work, solving problems, and challenging yourself with numbers. So, you are suitable for engineering subject.'.

subject(engineering, E) :-
  science(yes),
  blogs(science),
  theory_or_pratical(pratical),
  better_in(solving_problem),
  challenge_yourself(yes),
  E='You love science, enjoy reading science blogs, and prefer practical work. So, you are suitable for engineering subject.'.

% Science
subject(science, E) :-
  logical_thinking,
  science(yes),
  better_in(solving_problem),
  theory_or_pratical(theory),
  work_with_numbers(yes),
  blogs(science),
  E='You are a logical person who loves science. You enjoy theoretical knowledge, working with numbers, and reading science blogs. So, you are suitable for science subject.'.

subject(science, E) :-
  science(yes),
  theory_or_pratical(theory),
  E='You love science and prefer theory over practical work. So, you are suitable for science subject.'.

% Business
subject(business, E) :-
  like_interact(yes),
  better_in(dealing_with_people),
  planning(yes),
  risk(yes),
  E='You like interacting with people, dealing with others, and planning. You are also a risk-taker, which makes you suitable for business.'.

subject(business, E) :-
  like_interact(yes),
  better_in(dealing_with_people),
  blogs(business),
  planning(yes),
  E='You enjoy interacting with others, reading business blogs, and planning. So, you are suitable for business subject.'.

% Art
subject(art, E) :-
  imaginary_thinking,
  science(no),
  creative_artistic_musical(yes),
  work_with_numbers(no),
  going_museum(yes),
  E='You enjoy imagining, dislike science, and have creative tendencies. You also enjoy going to museums. So, you are suitable for art subject.'.

subject(art, E) :-
  science(no),
  creative_artistic_musical(yes),
  work_with_numbers(no),
  E='You dislike science and are creative. You do not prefer working with numbers, making you suitable for art subject.'.

% Hospitality
subject(hospitality, E) :-
  computer_or_hands(hands),
  like_interact(yes),
  planning(yes),
  service_minded(yes),
  serving_people(yes),
  E='You prefer hands-on work, interacting with people, and planning. Your service-oriented mindset suits you for hospitality.'.

subject(hospitality, E) :-
  computer_or_hands(hands),          
  service_minded(yes),               
  serving_people(yes),                
  E='You prefer to work with your hands. You are a service-minded person who enjoys helping people. Therefore, you are well-suited for the hospitality field.'.

subject(hospitality, E) :-
  computer_or_hands(hands),          
  serving_people(yes),                
  E='You prefer working with your hands and enjoy serving people. Therefore, hospitality is a suitable field for you.'.


% Computing Degrees
degree(computer_science) :-
  subject(computing, E),                   
  computer_systems(yes),                    
  technology(develop),                      
  write('Recommendation: Computer Science '), nl,
  write('You are interested in the details of computer systems and prefer developing technology rather than applying it. You are suitable for a Computer Science degree.'), nl,
  write(E), nl,
  write('The careers that are suitable for you include:'), nl,
  write('- Chief Technology Officer'), nl,
  write('- Software Engineer / Software Architect'), nl,
  write('- Mobile App Developer'), nl,
  write('- Game Developer'), nl,
  write('- System Designer'), nl,
  write('- Network Specialist'), nl,
  write('- Research Analyst'), nl,
  write('- Software Quality Assurance Officer'), nl,
  write('- Enterprise Distributed Application Developer').

degree(computer_science) :-
  subject(computing, E),                    
  computer_systems(yes),                    
  write('Recommendation: Computer Science '), nl,
  write('You are interested in the details of computer systems. You are suitable for a Computer Science degree.'), nl,
  write(E), nl,
  write('The careers that are suitable for you include:'), nl,
  write('- Chief Technology Officer'), nl,
  write('- Software Engineer / Software Architect'), nl,
  write('- Mobile App Developer'), nl,
  write('- Game Developer'), nl,
  write('- System Designer'), nl,
  write('- Network Specialist'), nl,
  write('- Research Analyst'), nl,
  write('- Software Quality Assurance Officer'), nl,
  write('- Enterprise Distributed Application Developer').

degree(computer_science) :-
  subject(computing, E),                    
  technology(develop),                      
  write('Recommendation: Computer Science '), nl,
  write('You are interested in the details of computer systems and prefer developing technology rather than applying it. You are suitable for a Computer Science degree.'), nl,
  write(E), nl,
  write('The careers that are suitable for you include:'), nl,
  write('- Chief Technology Officer'), nl,
  write('- Software Engineer / Software Architect'), nl,
  write('- Mobile App Developer'), nl,
  write('- Game Developer'), nl,
  write('- System Designer'), nl,
  write('- Network Specialist'), nl,
  write('- Research Analyst'), nl,
  write('- Software Quality Assurance Officer'), nl,
  write('- Enterprise Distributed Application Developer').

% Information Technology Degrees
degree(information_technology) :-
  subject(computing, E),                    
  technology(apply),                        
  like_interact(yes),                       
  planning(yes),                            
  write('Recommendation: Information Technology '), nl,
  write('You are interested in interacting with people and enjoy planning. Therefore, you are well-suited for an Information Technology degree.'), nl,
  write(E), nl,
  write('The careers that are suitable for you include:'), nl,
  write('- IT Specialist'), nl,
  write('- Network Specialist'), nl,
  write('- System Engineer'), nl,
  write('- Web / E-Commerce Architect'), nl,
  write('- Database Architect'), nl,
  write('- IT Infrastructure Engineer').

degree(information_technology) :-
  subject(computing, E),                    
  write('Recommendation: Information Technology '), nl,
  write('You are suitable for an Information Technology degree.'), nl,
  write(E), nl,
  write('The careers that are suitable for you include:'), nl,
  write('- IT Specialist'), nl,
  write('- Network Specialist'), nl,
  write('- System Engineer'), nl,
  write('- Web / E-Commerce Architect'), nl,
  write('- Database Architect'), nl,
  write('- IT Infrastructure Engineer').

% Engineering Degrees
degree(electrical_engineering) :-
  subject(engineering, E),                    
  physics(yes),                               
  circuits(yes),                             
  write('Recommendation: Electrical Engineering '), nl,
  write('You like physics and working with circuits, making Electrical Engineering a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Electrical or Electronic Engineer'), nl,
  write('- Design Manager'), nl,
  write('- Maintenance Engineer for Electrical Power Systems'), nl,
  write('- Engineer in Electricity Generation, Transmission, or Distribution'), nl,
  write('- Specialist in Electronic Systems for Safety/Efficiency'), nl,
  write('- Designer of Renewable Energy Systems').

degree(mechanical_engineering) :-
  subject(engineering, E),                    
  physics(yes),                               
  write('Recommendation: Mechanical Engineering '), nl,
  write('You like physics, making Mechanical Engineering a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Mechanical Engineer'), nl,
  write('- Production Engineer'), nl,
  write('- Failure Analyst Engineer'), nl,
  write('- M&E Engineer'), nl,
  write('- QC Engineer'), nl,
  write('- Manufacturing Engineer'), nl,
  write('- R&D Engineer'), nl,
  write('- Design Engineer'), nl,
  write('- Product Engineer').

degree(chemical_engineering) :-
  subject(engineering, E),                    
  physics(no),                                
  chemistry(yes),                             
  write('Recommendation: Chemical Engineering '), nl,
  write('You like chemistry, making Chemical Engineering a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Process Engineer'), nl,
  write('- Quality Assurance Engineer'), nl,
  write('- Chemical & Biochemical Engineer'), nl,
  write('- Contamination Engineer').

% Science Degrees
degree(biotechnology) :-
  subject(science, E),                        
  biology(yes),                               
  genetic_engineering(yes),                   
  write('Recommendation: Biotechnology '), nl,
  write('You like biology and have an interest in genetic engineering, making Biotechnology a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Pharmaceutical Research & Development'), nl,
  write('- Pharmaceutical Marketing Director'), nl,
  write('- Clinical Trial Manager'), nl,
  write('- Clinical Research Scientist'), nl,
  write('- Biomedical & Biotechnology Research Scientist'), nl,
  write('- Medical & Scientific Product Specialist'), nl,
  write('- Medical Laboratories Director'), nl,
  write('- Academia (Science Educator)').

degree(pure_science) :-
  subject(science, E),                        
  write('Recommendation: Pure Science '), nl,
  write('Pure Science is a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Analytical/Biomedical Chemist'), nl,
  write('- Biotechnologist'), nl,
  write('- Quality Controller'), nl,
  write('- Science Journalist'), nl,
  write('- Process Control Specialist').

% Business Degrees
degree(marketing) :-
  subject(business, E),                     
  storytelling(yes),                          
  write('Recommendation: Marketing '), nl,
  write('Your interest in storytelling makes Marketing a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Chief Executive Officer'), nl,
  write('- Chief Marketing Officer'), nl,
  write('- Advertising and Promotions Specialist'), nl,
  write('- Product Manager'), nl,
  write('- Brand Manager'), nl,
  write('- Marketing Consultant'), nl,
  write('- Management Consultant'), nl,
  write('- Retail Expert'), nl,
  write('- Customer Relationship Associate/Manager'), nl,
  write('- Supply Chain Manager'), nl,
  write('- Key Accounts Specialist/Manager'), nl,
  write('- Consumer Research Analyst/Manager'), nl,
  write('- Events Producer').

degree(accounting) :-
  subject(business, E),                       
  work_with_numbers(yes),                    
  detail_oriented(yes),                      
  write('Recommendation: Accounting '), nl,
  write('Your detail-oriented nature and interest in working with numbers make Accounting a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Chief Financial Officer'), nl,
  write('- Investment Banker'), nl,
  write('- Commercial Banker'), nl,
  write('- Financial Controller'), nl,
  write('- Internal & External Auditor'), nl,
  write('- Management Consultant'), nl,
  write('- Tax Consultant'), nl,
  write('- Finance Analyst'), nl,
  write('- Fund Manager'), nl,
  write('- Financial Planner'), nl,
  write('- Corporate Treasurer').

degree(business_management) :-
  subject(business, E),                       
  write('Recommendation: Business Management '), nl,
  write('Business Management is a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Chief Executive Officer'), nl,
  write('- Business Consultant'), nl,
  write('- Entrepreneur'), nl,
  write('- General Manager'), nl,
  write('- Strategic Planner'), nl,
  write('- Marketing Manager'), nl,
  write('- HR Manager'), nl,
  write('- Operation/Project Manager'), nl,
  write('- Researcher'), nl,
  write('- Organisational Development Manager'), nl,
  write('- Procurement Manager').

% Arts Degrees
degree(performing_art) :-
  subject(art, E),                            
  center_of_attention(yes),                   
  film_or_perform(perform),                   
  performing(yes),                            
  write('Recommendation: Performing Art '), nl,
  write('Your interest in performing and being the center of attention makes Performing Art a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Actor'), nl,
  write('- Voice Over Talent'), nl,
  write('- Director'), nl,
  write('- Producer'), nl,
  write('- Production Manager'), nl,
  write('- Stage Manager'), nl,
  write('- Cinematographer'), nl,
  write('- Editor'), nl,
  write('- Production Designer'), nl,
  write('- Script Writer'), nl,
  write('- Drama Teacher').

degree(digital_film_production) :-
  subject(art, E),                           
  film_or_perform(film),                     
  film(yes),                                 
  write('Recommendation: Digital Film Production '), nl,
  write('Your interest in filming makes Digital Film Production a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Audio-Visual Producer'), nl,
  write('- Transmedia Designer'), nl,
  write('- Documentary Filmmaker'), nl,
  write('- Creative Entrepreneur'), nl,
  write('- Videographer'), nl,
  write('- Director'), nl,
  write('- Production Designer'), nl,
  write('- Video Producer').

% Hospitality Degrees
degree(culinary_art) :-
  subject(hospitality, E),                  
  cook(yes),                                
  write('Recommendation: Culinary Art '), nl,
  write('Your enjoyment of cooking makes Culinary Art a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Chef de Cuisine / Executive Chef'), nl,
  write('- Banquet Manager'), nl,
  write('- Food and Beverage Manager'), nl,
  write('- In-flight Food Manager'), nl,
  write('- Product Development Manager'), nl,
  write('- Restaurant Owner / Entrepreneur').

degree(hotel_management) :-
  subject(hospitality, E),                  
  write('Recommendation: Hotel Management '), nl,
  write('Hotel Management is a suitable degree for you.'), nl,
  write(E), nl,
  write('The careers suitable for you include:'), nl,
  write('- Sales and Marketing Manager'), nl,
  write('- Front Office Manager'), nl,
  write('- Hotel Human Resource Manager'), nl,
  write('- Rooms Division Manager'), nl,
  write('- Purchasing Manager'), nl,
  write('- Food & Beverage Manager').

% Fallback option
degree(gap_year) :-
  write('Recommendation: Gap Year '), nl,
  write('It appears you have a variety of interests. A gap year may be beneficial for you to explore your preferences further.').

% General questions
question(logic_or_imagination) :-
  write('Are you a person of logic or imagination?'), nl.

question(rational) :-
  write('Are you a rational person?'), nl.

question(ideas) :-
  write('Do you enjoy working on ideas and problems with no clear answer?'), nl.

question(physics) :-
  write('Do you enjoy studying Physics?'), nl.

question(maths) :-
  write('Are you good at Math?'), nl.

question(science) :-
  write('Do you enjoy Chemistry, Biology, or Physics?'), nl.

question(theory_or_pratical) :-
  write('Do you prefer discovering new elements or building innovative inventions?'), nl.

question(better_in) :-
  write('What are you better at?'), nl.

question(bad_at) :-
  write('What are you weak at?'), nl.

question(challenge_yourself) :-
  write('Do you enjoy challenging yourself?'), nl.

question(lifelong_learner) :-
  write('Are you a lifelong learner?'), nl.

question(try_new_things) :-
  write('Do you enjoy exploring new things?'), nl.

question(computer_or_hands) :-
  write('Do you prefer working on a computer or using your hands?'), nl.

question(like_interact) :-
  write('Do you enjoy interacting with people?'), nl.

question(serving_people) :-
  write('Do you enjoy serving people?'), nl.

question(risk) :-
  write('Are you comfortable with taking risks?'), nl.

question(work_with_numbers) :-
  write('Do you enjoy working with numbers?'), nl.

question(creative_artistic_musical) :-
  write('Are you creative, artistic, or musical?'), nl.

question(going_museum) :-
  write('Do you enjoy visiting movie theaters or museums?'), nl.

question(service_minded) :-
  write('Are you service-minded, with a high stress tolerance, and do you enjoy working with people?'), nl.

question(planning) :-
  write('Do you enjoy planning, organizing, or managing?'), nl.

question(blogs) :-
  write('Which type of blogs do you prefer to read?'), nl.

% Domain-specific questions
question(computer_systems) :-
  write('Are you interested in how computer systems or software work?'), nl.

question(technology) :-
  write('Do you prefer applying or developing technology?'), nl.

question(circuits) :-
  write('Do you enjoy working with circuits?'), nl.

question(chemistry) :-
  write('Do you enjoy Chemistry?'), nl.

question(biology) :-
  write('Do you enjoy studying Biology?'), nl.

question(genetic_engineering) :-
  write('Are you interested in genetic engineering?'), nl.

question(detail_oriented) :-
  write('Are you detail-oriented and attentive to small details?'), nl.

question(storytelling) :-
  write('Are you skilled in storytelling?'), nl.

question(center_of_attention) :-
  write('Do you enjoy being the center of attention?'), nl.

question(film_or_perform) :-
  write('Do you prefer filming or performing?'), nl.

question(film) :-
  write('Are you interested in storytelling and film language?'), nl.

question(performing) :-
  write('Do you prefer conveying artistic expression through acting, dancing, or singing?'), nl.

question(cook) :-
  write('Do you enjoy cooking?'), nl.


% General answers
answer(theory) :-
  write('I am more interested in discovering the next new element.').
answer(pratical) :-
  write('I am more interested in inventing the next big invention.').
answer(solving_problem) :-
  write('Solving Problems.').
answer(math) :-
  write('Math.').
answer(dealing_with_people) :-
  write('Dealing with People.').
answer(logic) :-
  write('I am a person of logic.').
answer(imagination) :-
  write('I am a person of imagination.').
answer(computer) :-
  write('I prefer working on a computer.').
answer(hands) :-
  write('I prefer working with my hands.').
answer(yes) :-
  write('Yes.').
answer(no) :-
  write('No.').

% Blog preferences
answer(business) :-
  write('I prefer reading Forbes or BusinessInsider.').
answer(technology) :-
  write('I prefer reading HackerNews or AnandTech.').
answer(science) :-
  write('I prefer reading howstuffworks or New Scientist.').

% Technology preferences
answer(apply) :-
  write('I prefer applying technology.').
answer(develop) :-
  write('I prefer developing technology.').

% Arts preferences
answer(film) :-
  write('I prefer shooting film.').
answer(perform) :-
  write('I prefer performing.').

% Agreement scale
answer(strongly_disagree) :-
  write('Strongly disagree.').
answer(disagree) :-
  write('Disagree.').
answer(neutral) :-
  write('Neutral.').
answer(agree) :-
  write('Agree.').
answer(strongly_agree) :-
  write('Strongly agree.').

% Progress tracking predicates
science(Answer) :-
  progress(science, Answer).
science(Answer) :-
  \+ progress(science, _),
  ask(science, Answer, [yes, no]).

physics(Answer) :-
  progress(physics, Answer).
physics(Answer) :-
  \+ progress(physics, _),
  ask(physics, Answer, [yes, no]).

maths(Answer) :-
  progress(maths, Answer).
maths(Answer) :-
  \+ progress(maths, _),
  ask(maths, Answer, [yes, no]).

chemistry(Answer) :-
  progress(chemistry, Answer).
chemistry(Answer) :-
  \+ progress(chemistry, _),
  ask(chemistry, Answer, [yes, no]).

biology(Answer) :-
  progress(biology, Answer).
biology(Answer) :-
  \+ progress(biology, _),
  ask(biology, Answer, [yes, no]).

theory_or_pratical(Answer) :-
  progress(theory_or_pratical, Answer).
theory_or_pratical(Answer) :-
  \+ progress(theory_or_pratical, _),
  ask(theory_or_pratical, Answer, [theory, pratical]).

better_in(Answer) :-
  progress(better_in, Answer).
better_in(Answer) :-
  \+ progress(better_in, _),
  ask(better_in, Answer, [solving_problem, dealing_with_people]).

bad_at(Answer) :-
  progress(bad_at, Answer).
bad_at(Answer) :-
  \+ progress(bad_at, _),
  ask(bad_at, Answer, [math, dealing_with_people]).

logic_or_imagination(Answer) :-
  progress(logic_or_imagination, Answer).
logic_or_imagination(Answer) :-
  \+ progress(logic_or_imagination, _),
  ask(logic_or_imagination, Answer, [logic, imagination]).

rational(Answer) :-
  progress(rational, Answer).
rational(Answer) :-
  \+ progress(rational, _),
  ask(rational, Answer, [yes, no]).

ideas(Answer) :-
  progress(ideas, Answer).
ideas(Answer) :-
  \+ progress(ideas, _),
  ask(ideas, Answer, [yes, no]).

risk(Answer) :-
  progress(risk, Answer).
risk(Answer) :-
  \+ progress(risk, _),
  ask(risk, Answer, [yes, no]).

challenge_yourself(Answer) :-
  progress(challenge_yourself, Answer).
challenge_yourself(Answer) :-
  \+ progress(challenge_yourself, _),
  ask(challenge_yourself, Answer, [yes, no]).

lifelong_learner(Answer) :-
  progress(lifelong_learner, Answer).
lifelong_learner(Answer) :-
  \+ progress(lifelong_learner, _),
  ask(lifelong_learner, Answer, [yes, no]).

try_new_things(Answer) :-
  progress(try_new_things, Answer).
try_new_things(Answer) :-
  \+ progress(try_new_things, _),
  ask(try_new_things, Answer, [yes, no]).

like_interact(Answer) :-
  progress(like_interact, Answer).
like_interact(Answer) :-
  \+ progress(like_interact, _),
  ask(like_interact, Answer, [yes, no]).

serving_people(Answer) :-
  progress(serving_people, Answer).
serving_people(Answer) :-
  \+ progress(serving_people, _),
  ask(serving_people, Answer, [yes, no]).

service_minded(Answer) :-
  progress(service_minded, Answer).
service_minded(Answer) :-
  \+ progress(service_minded, _),
  ask(service_minded, Answer, [yes, no]).

planning(Answer) :-
  progress(planning, Answer).
planning(Answer) :-
  \+ progress(planning, _),
  ask(planning, Answer, [yes, no]).

work_with_numbers(Answer) :-
  progress(work_with_numbers, Answer).
work_with_numbers(Answer) :-
  \+ progress(work_with_numbers, _),
  ask(work_with_numbers, Answer, [yes, no]).

computer_or_hands(Answer) :-
  progress(computer_or_hands, Answer).
computer_or_hands(Answer) :-
  \+ progress(computer_or_hands, _),
  ask(computer_or_hands, Answer, [computer, hands]).

creative_artistic_musical(Answer) :-
  progress(creative_artistic_musical, Answer).
creative_artistic_musical(Answer) :-
  \+ progress(creative_artistic_musical, _),
  ask(creative_artistic_musical, Answer, [yes, no]).

going_museum(Answer) :-
  progress(going_museum, Answer).
going_museum(Answer) :-
  \+ progress(going_museum, _),
  ask(going_museum, Answer, [yes, no]).

blogs(Answer) :-
  progress(blogs, Answer).
blogs(Answer) :-
  \+ progress(blogs, _),
  ask(blogs, Answer, [business, technology, science]).

computer_systems(Answer) :-
  progress(computer_systems, Answer).
computer_systems(Answer) :-
  \+ progress(computer_systems, _),
  ask(computer_systems, Answer, [yes, no]).

technology(Answer) :-
  progress(technology, Answer).
technology(Answer) :-
  \+ progress(technology, _),
  ask(technology, Answer, [apply, develop]).

circuits(Answer) :-
  progress(circuits, Answer).
circuits(Answer) :-
  \+ progress(circuits, _),
  ask(circuits, Answer, [yes, no]).

genetic_engineering(Answer) :-
  progress(genetic_engineering, Answer).
genetic_engineering(Answer) :-
  \+ progress(genetic_engineering, _),
  ask(genetic_engineering, Answer, [yes, no]).

storytelling(Answer) :-
  progress(storytelling, Answer).
storytelling(Answer) :-
  \+ progress(storytelling, _),
  ask(storytelling, Answer, [yes, no]).

detail_oriented(Answer) :-
  progress(detail_oriented, Answer).
detail_oriented(Answer) :-
  \+ progress(detail_oriented, _),
  ask(detail_oriented, Answer, [yes, no]).

center_of_attention(Answer) :-
  progress(center_of_attention, Answer).
center_of_attention(Answer) :-
  \+ progress(center_of_attention, _),
  ask(center_of_attention, Answer, [yes, no]).

film_or_perform(Answer) :-
  progress(film_or_perform, Answer).
film_or_perform(Answer) :-
  \+ progress(film_or_perform, _),
  ask(film_or_perform, Answer, [film, perform]).

film(Answer) :-
  progress(film, Answer).
film(Answer) :-
  \+ progress(film, _),
  ask(film, Answer, [yes, no]).

performing(Answer) :-
  progress(performing, Answer).
performing(Answer) :-
  \+ progress(performing, _),
  ask(performing, Answer, [yes, no]).

cook(Answer) :-
  progress(cook, Answer).
cook(Answer) :-
  \+ progress(cook, _),
  ask(cook, Answer, [yes, no]).

% Print answers in a formatted list
answers([], _).
answers([First|Rest], Index) :-
  write(Index), write(' '), answer(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).

% Parse index and return response
parse(0, [First|_], First).
parse(Index, [_|Rest], Response) :-
  Index > 0,
  NextIndex is Index - 1,
  parse(NextIndex, Rest, Response).

% Ask question and process answer
ask(Question, Answer, Choices) :-
  question(Question),
  answers(Choices, 0),
  read(Index),
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
  Response = Answer.