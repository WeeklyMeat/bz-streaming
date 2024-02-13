insert into animes(id, title, image_url, link, description) values (
                                                                1,
                                                                'Bocchi the Rock!',
                                                                'http://localhost:8080/images/bocchi_the_rock.jpg',
                                                                '/anime/1',
                                                                'Yearning to make friends and perform live with a band, lonely and socially anxious Hitori "Bocchi" Gotou devotes her time to playing the guitar. On a fateful day, Bocchi meets the outgoing drummer Nijika Ijichi, who invites her to join Kessoku Band when their guitarist, Ikuyo Kita, flees before their first show. Soon after, Bocchi meets her final bandmate—the cool bassist Ryou Yamada. '
                                                            );

insert into animes(id, title, image_url, link, description) values (
                                                               2,
                                                               'Kimetsu no Yaiba',
                                                               'http://localhost:8080/images/demon_slayer.png',
                                                               '/anime/2',
                                                               'Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado''s shoulders. Though living impoverished on a remote mountain, the Kamado family are able to enjoy a relatively peaceful and happy life. One day, Tanjirou decides to go down to the local village to make a little money selling charcoal. On his way back, night falls, forcing Tanjirou to take shelter in the house of a strange man, who warns him of the existence of flesh-eating demons that lurk in the woods at night.'
                                                           );

insert into animes(id, title, image_url, link, description) values (
                                                               3,
                                                               'Dusk Maiden of Amnesia',
                                                               'http://localhost:8080/images/dusk_maiden.jpg',
                                                               '/anime/3',
                                                               'Seikyou Private Academy, built on the intrigue of traditional occult myths, bears a dark past—for 60 years, it has been haunted by a ghost known as Yuuko, a young woman who mysteriously died in the basement of the old school building. With no memory of her life or death, Yuuko discreetly finds and heads the Paranormal Investigations Club in search of answers. A chance meeting leads Yuuko to cling to diligent freshman Teiichi Niiya, who can see the quirky ghost, they quickly grow close, and he decides to help her. Along with Kirie Kanoe, Yuuko''s relative, and the oblivious second year Momoe Okonogi, they delve deep into the infamous Seven Mysteries of the storied school.'
                                                           );

insert into animes(id, title, image_url, link, description) values (
                                                               4,
                                                               'Vinland Saga',
                                                               'http://localhost:8080/images/vinland_saga.webp',
                                                               '/anime/4',
                                                               'Young Thorfinn grew up listening to the stories of old sailors that had traveled the ocean and reached the place of legend, Vinland. It''s said to be warm and fertile, a place where there would be no need for fighting—not at all like the frozen village in Iceland where he was born, and certainly not like his current life as a mercenary. War is his home now. Though his father once told him, "You have no enemies, nobody does. There is nobody who it''s okay to hurt," as he grew, Thorfinn knew that nothing was further from the truth.'
                                                           );

insert into animes(id, title, image_url, link, description) values (
                                                               5,
                                                               'Bloom Into You',
                                                               'http://localhost:8080/images/bloom_into_you.jpg',
                                                               '/anime/5',
                                                               'Yuu Koito has always been entranced with romantic shoujo manga and the lyrics of love songs. She patiently waits for the wings of love to sprout and send her heart aflutter on the day that she finally receives a confession. Yet, when her classmate from junior high declares his love for her during their graduation, she feels unexpectedly hollow. The realization hits her: she understands romance as a concept, but she is incapable of experiencing the feeling first-hand.'
                                                           );

/* SEASONS: */

insert into seasons(id, number, anime_id, title, image_url, link, description)
values (
        1,
        1,
        1,
        'Season 1',
        'http://localhost:8080/images/bocchi_the_rock_s1.jpg',
        '/season/1',
        'Yearning to make friends and perform live with a band, lonely and socially anxious Hitori "Bocchi" Gotou devotes her time to playing the guitar. On a fateful day, Bocchi meets the outgoing drummer Nijika Ijichi, who invites her to join Kessoku Band when their guitarist, Ikuyo Kita, flees before their first show. Soon after, Bocchi meets her final bandmate—the cool bassist Ryou Yamada. '
);

insert into seasons(id, number, anime_id, title, image_url, link, description)
values (
           2,
           1,
           2,
           'Season 1',
           'http://localhost:8080/images/demon_slayer_s1.jpg',
           '/season/2',
           'Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado''s shoulders. Though living impoverished on a remote mountain, the Kamado family are able to enjoy a relatively peaceful and happy life. One day, Tanjirou decides to go down to the local village to make a little money selling charcoal. On his way back, night falls, forcing Tanjirou to take shelter in the house of a strange man, who warns him of the existence of flesh-eating demons that lurk in the woods at night.'
       );

insert into seasons(id, number, anime_id, title, image_url, link, description)
values (
           3,
           2,
           2,
           'Movie: Mugen Train',
           'http://localhost:8080/images/demon_slayer_mugen.jpeg',
           '/season/3',
           'After a string of mysterious disappearances begin to plague a train, the Demon Slayer Corps multiple attempts to remedy the problem prove fruitless. To prevent further casualties, the Flame Pillar, Kyoujurou Rengoku, takes it upon himself to eliminate the threat. Accompanying him are some of the Corps most promising new blood: Tanjirou Kamado, Zenitsu Agatsuma, and Inosuke Hashibira, who all hope to witness the fiery feats of this model demon slayer firsthand.'
       );

insert into seasons(id, number, anime_id, title, image_url, link, description)
values (
           4,
           3,
           2,
           'Season 2',
           'http://localhost:8080/images/demon_slayer_s2.jpg',
           '/season/4',
           'The devastation of the Mugen Train incident still weighs heavily on the members of the Demon Slayer Corps. Despite being given time to recover, life must go on, as the wicked never sleep: a vicious demon is terrorizing the alluring women of the Yoshiwara Entertainment District. The Sound Hashira, Tengen Uzui, and his three wives are on the case. However, when he soon loses contact with his spouses, Tengen fears the worst and enlists the help of Tanjirou Kamado, Zenitsu Agatsuma, and Inosuke Hashibira to infiltrate the districts most prominent houses and locate the depraved Upper Rank Demon.'
       );

insert into seasons(id, number, anime_id, title, image_url, link, description)
values (
           5,
           1,
           3,
           'Season 1',
           'http://localhost:8080/images/dusk_maiden_s1.jpg',
           '/season/5',
           'Seikyou Private Academy, built on the intrigue of traditional occult myths, bears a dark past—for 60 years, it has been haunted by a ghost known as Yuuko, a young woman who mysteriously died in the basement of the old school building. With no memory of her life or death, Yuuko discreetly finds and heads the Paranormal Investigations Club in search of answers. A chance meeting leads Yuuko to cling to diligent freshman Teiichi Niiya, who can see the quirky ghost, they quickly grow close, and he decides to help her. Along with Kirie Kanoe, Yuuko''s relative, and the oblivious second year Momoe Okonogi, they delve deep into the infamous Seven Mysteries of the storied school.'
       );

insert into seasons(id, number, anime_id, title, image_url, link, description)
values (
           6,
           1,
           4,
           'Season 1',
           'http://localhost:8080/images/vinland_saga_s1.jpg',
           '/season/6',
           'Young Thorfinn grew up listening to the stories of old sailors that had traveled the ocean and reached the place of legend, Vinland. It''s said to be warm and fertile, a place where there would be no need for fighting—not at all like the frozen village in Iceland where he was born, and certainly not like his current life as a mercenary. War is his home now. Though his father once told him, "You have no enemies, nobody does. There is nobody who it''s okay to hurt," as he grew, Thorfinn knew that nothing was further from the truth.'
       );

insert into seasons(id, number, anime_id, title, image_url, link, description)
values (
           7,
           2,
           4,
           'Season 2',
           'http://localhost:8080/images/vinland_saga_s2.jpg',
           '/season/7',
           'After his father''s death and the destruction of his village at the hands of English raiders, Einar wishes for a peaceful life with his family on their newly rebuilt farms. However, fate has other plans: his village is invaded once again. Einar watches helplessly as the marauding Danes burn his lands and slaughter his family. The invaders capture Einar and take him back to Denmark as a slave.'
       );

insert into seasons(id, number, anime_id, title, image_url, link, description)
values (
           8,
           1,
           5,
           'Season 1',
           'http://localhost:8080/images/bloom_into_you_s1.jpg',
           '/season/8',
           'Yuu Koito has always been entranced with romantic shoujo manga and the lyrics of love songs. She patiently waits for the wings of love to sprout and send her heart aflutter on the day that she finally receives a confession. Yet, when her classmate from junior high declares his love for her during their graduation, she feels unexpectedly hollow. The realization hits her: she understands romance as a concept, but she is incapable of experiencing the feeling first-hand.'
       );

/* EPISODES */

-- Episode 1
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           1,
           1,
           1,
           'A Rock and a Hard Place',
           '/watch/1',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           2,
           2,
           1,
           'Rockin in the Free World',
    '/watch/2',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    3,
    3,
    1,
    'Rock of Ages',
    '/watch/3',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    4,
    4,
    1,
    'Rolling Stone',
    '/watch/4',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    5,
    5,
    1,
    'Heart of Stone',
    '/watch/5',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    6,
    6,
    1,
    'Solid as a Rock',
    '/watch/6',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    7,
    7,
    1,
    'Between a Rock and a Hard Place',
    '/watch/7',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    8,
    8,
    1,
    'Hard Rock Cafe',
    '/watch/8',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    9,
    9,
    1,
    'Rock Star',
    '/watch/9',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    10,
    10,
    1,
    'Rock the Casbah',
    '/watch/10',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    11,
    11,
    1,
    'We Will Rock You',
    '/watch/11',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    12,
    12,
    1,
    'Rock On!',
    '/watch/12',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

-- Episode 1
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           13,
           1,
           5,
           'Once Upon a Time',
           '/watch/13',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 2
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           14,
           2,
           5,
           'Lost Memories',
           '/watch/14',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 3
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           15,
           3,
           5,
           'Whispers from the Past',
           '/watch/15',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 4
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           16,
           4,
           5,
           'Fading Echo',
           '/watch/16',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 5
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           17,
           5,
           5,
           'Shadow of Love',
           '/watch/17',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 6
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           18,
           6,
           5,
           'Silent Descent',
           '/watch/18',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 7
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           19,
           7,
           5,
           'Vanishing Boundaries',
           '/watch/19',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 8
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           20,
           8,
           5,
           'Eternal Separation',
           '/watch/20',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 9
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           21,
           9,
           5,
           'Spirited Away',
           '/watch/21',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 10
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           22,
           10,
           5,
           'Broken Bonds',
           '/watch/22',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 11
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           23,
           11,
           5,
           'The Vanished',
           '/watch/23',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 12
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           24,
           12,
           5,
           'Dusk Maiden',
           '/watch/24',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 1
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           25,
           1,
           8,
           'Spring Revolves',
           '/watch/25',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 2
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           26,
           2,
           8,
           'Inexpressible Emotions',
           '/watch/26',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 3
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           27,
           3,
           8,
           'This Side and the Other Side',
           '/watch/27',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 4
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           28,
           4,
           8,
           'Fireworks',
           '/watch/28',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 5
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           29,
           5,
           8,
           'The Distance Between Them',
           '/watch/29',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 6
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           30,
           6,
           8,
           'Words Kept Repressed',
           '/watch/30',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 7
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           31,
           7,
           8,
           'Absent Ties',
           '/watch/31',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 8
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           32,
           8,
           8,
           'Unspoken Intentions',
           '/watch/32',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 9
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           33,
           9,
           8,
           'Words Mend What People Tear Apart',
           '/watch/33',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 10
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           34,
           10,
           8,
           'Feelings Hidden in the Wind',
           '/watch/34',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 11
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           35,
           11,
           8,
           'Shiny Bright',
           '/watch/35',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 12
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           36,
           12,
           8,
           'Bloom into You',
           '/watch/36',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 1
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           37,
           1,
           6,
           'Somewhere Not Here',
           '/watch/37',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 2
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           38,
           2,
           6,
           'The Journey Begins',
           '/watch/38',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 3
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           39,
           3,
           6,
           'Troll',
           '/watch/39',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 4
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           40,
           4,
           6,
           'A True Warrior',
           '/watch/40',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 5
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           41,
           5,
           6,
           'The Trolls Son',
    '/watch/41',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

-- Episode 6
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    42,
    6,
    6,
    'The Journey Without an End',
    '/watch/42',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

-- Episode 7
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    43,
    7,
    6,
    'Normanni',
    '/watch/43',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

-- Episode 8
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    44,
    8,
    6,
    'Beyond the Edge of the Sea',
    '/watch/44',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

-- Episode 9
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    45,
    9,
    6,
    'The Battle of London Bridge',
    '/watch/45',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

-- Episode 10
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    46,
    10,
    6,
    'Ragnarok',
    '/watch/46',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

-- Episode 11
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    47,
    11,
    6,
    'A Gamble',
    '/watch/47',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

-- Episode 12
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
    48,
    12,
    6,
    'End of Prologue',
    '/watch/48',
    'http://localhost:8080/videos/bocchi_the_rock.mp4'
);

-- Episode 1
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           49,
           1,
           7,
           'The Children of a Hero',
           '/watch/49',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 2
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           50,
           2,
           7,
           'The Pagan Island',
           '/watch/50',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 3
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           51,
           3,
           7,
           'After Yule',
           '/watch/51',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 4
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           52,
           4,
           7,
           'Sound of a Gallows',
           '/watch/52',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 5
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           53,
           5,
           7,
           'Ordinary',
           '/watch/53',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 6
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           54,
           6,
           7,
           'Hunter',
           '/watch/54',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 7
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           55,
           7,
           7,
           'Three Motives',
           '/watch/55',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 8
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           56,
           8,
           7,
           'Lucifer',
           '/watch/56',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 9
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           57,
           9,
           7,
           'The Virgin Child',
           '/watch/57',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 10
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           58,
           10,
           7,
           'Rock',
           '/watch/58',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 11
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           59,
           11,
           7,
           'The Prophet',
           '/watch/59',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 12
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           60,
           12,
           7,
           'The Final Chapter',
           '/watch/60',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 1
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           61,
           1,
           2,
           'Cruelty',
           '/watch/61',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 2
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           62,
           2,
           2,
           'Trainer Sakonji Urokodaki',
           '/watch/62',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 3
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           63,
           3,
           2,
           'Sabito and Makomo',
           '/watch/63',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 4
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           64,
           4,
           2,
           'Final Selection',
           '/watch/64',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 5
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           65,
           5,
           2,
           'My Own Steel',
           '/watch/65',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 6
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           66,
           6,
           2,
           'Swordsman Accompanying a Demon',
           '/watch/66',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 7
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           67,
           7,
           2,
           'Muzan Kibutsuji',
           '/watch/67',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 8
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           68,
           8,
           2,
           'The Smell of Enchanting Blood',
           '/watch/68',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 9
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           69,
           9,
           2,
           'Temari Demon and Arrow Demon',
           '/watch/69',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 10
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           70,
           10,
           2,
           'Together Forever',
           '/watch/70',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 11
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           71,
           11,
           2,
           'Tsuzumi Mansion',
           '/watch/71',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 12
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           72,
           12,
           2,
           'The Boar Bares Its Fangs, Zenitsu Sleeps',
           '/watch/72',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 13
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           73,
           13,
           2,
           'Something More Important Than Life',
           '/watch/73',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 14
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           74,
           14,
           2,
           'The House with the Wisteria Family Crest',
           '/watch/74',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 15
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           75,
           15,
           2,
           'Mount Natagumo',
           '/watch/75',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 16
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           76,
           16,
           2,
           'Letting Someone Else Go First',
           '/watch/76',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 17
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           77,
           17,
           2,
           'You Must Master a Single Thing',
           '/watch/77',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 18
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           78,
           18,
           2,
           'A Forged Bond',
           '/watch/78',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 19
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           79,
           19,
           2,
           'Hinokami',
           '/watch/79',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 20
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           80,
           20,
           2,
           'Pretend Family',
           '/watch/80',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 21
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           81,
           21,
           2,
           'Against Corps Rules',
           '/watch/81',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 22
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           82,
           22,
           2,
           'Master of the Mansion',
           '/watch/82',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 23
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           83,
           23,
           2,
           'Hashira Meeting',
           '/watch/83',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 24
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           84,
           24,
           2,
           'Rehabilitation Training',
           '/watch/84',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 25
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           85,
           25,
           2,
           'Tsuguko, Kanao Tsuyuri',
           '/watch/85',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 26
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           86,
           26,
           2,
           'New Mission',
           '/watch/86',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 1
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           87,
           1,
           4,
           'Sound Hashira Tengen Uzui',
           '/watch/87',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 2
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           88,
           2,
           4,
           'Infiltrating the Entertainment District',
           '/watch/88',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 3
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           89,
           3,
           4,
           'What Are You?',
           '/watch/89',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 4
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           90,
           4,
           4,
           'Tonight',
           '/watch/90',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 5
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           91,
           5,
           4,
           'Things Are Gonna Get Real Flashy!!',
           '/watch/91',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 6
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           92,
           6,
           4,
           'Layered Memories',
           '/watch/92',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 7
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           93,
           7,
           4,
           'Transformation',
           '/watch/93',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 8
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           94,
           8,
           4,
           'Gathering',
           '/watch/94',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 9
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           95,
           9,
           4,
           'Defeating an Upper Rank Demon',
           '/watch/95',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 10
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           96,
           10,
           4,
           'Never Give Up',
           '/watch/96',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

-- Episode 11
INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           97,
           11,
           4,
           'No Matter How Many Lives',
           '/watch/97',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

INSERT INTO episodes(id, number, season_id, title, link, video_url)
VALUES (
           98,
           1,
           3,
           'Mugen Train',
           '/watch/98',
           'http://localhost:8080/videos/bocchi_the_rock.mp4'
       );

