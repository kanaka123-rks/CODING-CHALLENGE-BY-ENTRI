
CREATE DATABASE SocialMediaDB;
USE SocialMediaDB;
SELECT * FROM USERS; 
CREATE TABLE Users (
 user_id INT PRIMARY KEY,
 username VARCHAR(50) NOT NULL UNIQUE,
 email VARCHAR(100) NOT NULL UNIQUE,
 join_date DATE NOT NULL
);
INSERT INTO Users (user_id, username, email, join_date) VALUES (1, 'lorianthony', 'wvalenzuela@hotmail.com', '2024-05-12'),
															   (2, 'mathewschase', 'tina79@knapp.com', '2025-06-29'),
                                                               (3, 'bedwards', 'jacksonbrett@price.com', '2024-06-08'),
                                                               (4, 'joel94', 'igibson@gregory.org', '2024-10-16'),
                                                               (5, 'mendozacolleen', 'sfritz@hotmail.com', '2024-04-29'),
                                                               (6, 'yray', 'kimberlygonzales@gmail.com', '2024-10-09'),
                                                               (7, 'zstokes', 'cynthiagomez@cuevas-obrien.com', '2024-12-03'),
															   (8, 'webbcarl', 'kelseyblack@gmail.com', '2023-12-06'),
                                                               (9, 'timothycooper', 'njacobson@ramos.com', '2024-11-21'),
                                                               (10, 'emorse', 'upierce@garcia.net', '2024-10-11'),
															   (11, 'brandy78', 'jesseweaver@yahoo.com', '2023-09-21'),
                                                               (12, 'jason52', 'cbailey@yahoo.com', '2025-05-14'),
                                                               (13, 'briancoleman', 'teresa90@hotmail.com', '2023-12-16'),
                                                               (14, 'jeffrey99', 'spencerjamie@cruz.com', '2024-04-13'),
                                                               (15, 'emily15', 'kelseywright@bridges-manning.com', '2025-06-01'),
                                                               (16, 'jameswhite', 'michaelcoleman@hotmail.com', '2024-07-28'),
															   (17, 'andrew79', 'richard22@gmail.com', '2024-09-03'),
                                                               (18, 'ajohnson', 'bishopmadison@hotmail.com', '2025-01-20'),
                                                               (19, 'glenn83', 'lewisisaiah@yahoo.com', '2025-04-17'),
                                                               (20, 'micheal81', 'michelleabbott@hotmail.com', '2023-12-14 ');

-- Posts Table
CREATE TABLE Posts (
 post_id INT PRIMARY KEY,
 user_id INT,
 content TEXT NOT NULL,
 post_date DATETIME NOT NULL,
 FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

SELECT * FROM POSTS;

-- Insert Posts
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (1, 7, 'Control but guy whom sometimes nice pressure get.', '2025-06-25 00:41:37'),
																(2, 1, 'Apply season authority couple writer blue marriage beyond forget first.', '2025-04-09 01:52:43'),
                                                                (3, 19, 'Human hundred hot race owner member because task company north question natural upon.', '2025-05-21 09:41:05'),
                                                                (4, 1, 'Should word down avoid onto type true section house life fill pick.', '2025-03-19 19:32:52'),
                                                                (6, 15, 'Middle off argue star appear action son every perhaps various TV group ability.', '2024-11-30 08:25:37'),
                                                                (7, 14, 'Study finally exactly the baby without.', '2024-10-09 13:58:18'),
                                                                (8, 2, 'Factor second very condition decision low about show music entire direction bring.', '2025-04-25 12:47:01'),
                                                                (9, 2, 'Exactly film contain worry plant tonight wrong paper.', '2025-09-15 01:08:57'),
                                                                (10, 19, 'Always contain available require box number person focus from already.', '2024-11-10 21:34:51'),
                                                                (11, 17, 'Different without hear western save operation.', '2025-01-20 14:54:56'),
                                                                (12, 16, 'Part almost event will second single billion Congress feel civil hair spend.', '2025-06-10 18:28:26'),
                                                                (13, 20, 'Face line back second best forward challenge record box claim work garden near.', '2025-07-30 00:21:38'),
																(14, 6, 'Age myself just dinner sport recent executive when five candidate his activity make.', '2025-01-31 04:54:31'),
                                                                (15, 16, 'Pay against fill rock lawyer book.', '2025-08-13 14:03:48'),
                                                                (16, 9, 'Large us leave black all amount recently national begin work represent better against.', '2025-03-08 09:44:44'),
                                                                (17, 14, 'Organization whom red capital such western blue now bill.', '2025-08-01 16:38:57'),
                                                                (18, 8, 'Past talk particularly fund policy scene control view.', '2025-08-09 03:24:00'),
                                                                (19, 11, 'Behavior cultural question who as sister among between.', '2025-05-02 08:47:23'),
																(20, 10, 'Organization call method water serious then surface performance sing.', '2025-09-17 00:49:25'),
                                                                (21, 17, 'Address charge approach without near stock allow sit cold today size.', '2024-11-19 17:10:52'),
                                                                (22, 9, 'Power too source tough its half instead.', '2025-02-16 16:30:21'),
                                                                (23, 12, 'Church significant happy local whom time lead paper.', '2025-05-20 17:23:01'),
                                                                (24, 7, 'Than win himself approach room series sound purpose.', '2025-01-19 08:32:09'),
                                                                (25, 15, 'Prevent class behind option foreign sport difference agree big.', '2024-12-04 21:34:39'),
																(26, 13, 'Voice PM step series indicate detail success couple where.', '2024-11-03 19:44:43'),
                                                                (27, 15, 'Example PM your Congress more begin economy become daughter.', '2025-07-20 08:10:29'),
                                                                (28, 4, 'Improve consumer city success travel system wind front attorney Mrs.', '2025-04-19 23:55:24'),
																(29, 6, 'Will quickly family each lay take almost again mean material.', '2025-05-03 15:27:18'),
                                                                (30, 5, 'Why study clearly market girl magazine shoulder rise study through sort southern pull.', '2025-03-04 11:56:39'),
                                                                (31, 1, 'Skill pay guy his board how walk thus side upon himself couple certainly.', '2024-11-27 14:59:51'),
																(32, 9, 'War change wonder stay type out color house interest.', '2025-05-21 08:04:40'),
                                                                (33, 9, 'Lose ground manager poor lay nor other name site receive plant return.', '2024-12-25 00:11:25'),
																(34, 13, 'Democratic rock six force about person may book deal law field.', '2024-12-03 21:18:08'),
                                                                (35, 20, 'Bring last society somebody participant high financial old all since.', '2024-10-20 04:50:46'),
                                                                (36, 7, 'Pay respond field order data carry.', '2024-12-23 03:13:19'),
                                                                (37, 5, 'Draw full deep someone serve answer.', '2025-08-27 07:43:42'),
                                                                (38, 12, 'Matter hundred store research include form development break democratic artist.', '2024-11-22 10:44:32'),
																(39, 8, 'Push onto manage loss laugh condition.', '2025-06-27 13:39:29'),
																(40, 2, 'Property cost yourself color increase choose.', '2025-08-28 08:18:17');

-- Likes Table
CREATE TABLE Likes (
 like_id INT PRIMARY KEY,
 user_id INT,
 post_id INT,
 like_date DATETIME NOT NULL,
 FOREIGN KEY (user_id) REFERENCES Users(user_id),
 FOREIGN KEY (post_id) REFERENCES Posts(post_id)
);
INSERT INTO Likes (like_id, user_id, post_id, like_date) VALUES (1, 3, 11, '2024-11-27 01:41:36'),
                                                                (2, 10, 39, '2025-04-26 17:10:42'),
                                                                (3, 10, 34, '2024-09-18 19:45:14'),
                                                                (4, 15, 20, '2025-04-27 23:46:19'),
																(5, 4, 36, '2025-01-18 08:34:06'),
																(6, 20, 7, '2025-09-12 13:12:36'),
                                                                (7, 14, 8, '2025-07-27 19:19:14'),
																(8, 15, 30, '2025-07-06 15:25:12'),
                                                                (9, 20, 24, '2025-01-18 05:14:29'),
                                                                (10, 19, 31, '2024-11-10 06:43:00'),
																(11, 8, 11, '2025-04-21 10:41:11'),
                                                                (12, 6, 40, '2025-03-19 09:02:55'),
																(13, 15, 20, '2025-06-05 14:41:48'),
                                                                (14, 12, 11, '2025-08-25 11:13:58'),
                                                                (15, 7, 8, '2025-02-08 13:30:40'),
                                                                (16, 6, 1, '2025-02-18 16:48:38'),
																(17, 17, 10, '2025-09-04 21:59:55'),
                                                                (18, 8, 4, '2024-10-29 09:46:28'),
																(19, 9, 7, '2025-08-06 13:46:53'),
                                                                (20, 8, 20, '2025-03-25 22:24:40'),
                                                                (21, 1, 30, '2025-08-24 15:41:13'),
																(22, 15, 38, '2024-12-14 10:31:12'),
                                                                (23, 16, 35, '2025-03-28 07:06:49'),
                                                                (24, 15, 35, '2025-03-27 20:02:11'),
                                                                (25, 5, 7, '2025-05-08 14:01:05'),
																(26, 14, 9, '2025-02-23 01:07:47'),
                                                                (27, 16, 31, '2025-04-08 19:45:19'),
                                                                (28, 17, 22, '2025-03-21 16:56:03'),
                                                                (29, 14, 36, '2025-05-08 01:43:43'),
																(30, 12, 15, '2025-04-29 00:20:21'),
																(31, 8, 32, '2025-08-09 22:08:28'),
                                                                (32, 2, 24, '2025-06-30 01:06:33'),
																(33, 6, 11, '2025-04-02 21:29:52'),
                                                                (34, 3, 36, '2025-08-16 13:58:04'),
																(35, 18, 8, '2025-08-10 08:55:02'),
                                                                (36, 3, 35, '2024-11-19 11:52:35'),
                                                                (37, 7, 27, '2025-03-30 03:35:25'),
                                                                (38, 6, 15, '2025-06-26 12:24:12'),
                                                                (39, 4, 28, '2024-12-20 21:24:10'),
                                                                (40, 10, 33, '2025-07-07 22:06:18'),
																(41, 3, 18, '2025-02-21 00:51:51'),
                                                                (42, 17, 26, '2024-12-28 01:05:54'),
																(43, 16, 22, '2025-04-24 07:51:45'),
                                                                (44, 14, 38, '2025-09-01 01:44:11'),
                                                                (45, 3, 39, '2025-08-25 13:27:22'),
                                                                (46, 6, 26, '2025-04-02 12:06:17'),
                                                                (47, 18, 37, '2025-01-17 07:32:11'),
																(48, 15, 5, '2025-08-09 14:00:38'),
                                                                (49, 19, 29, '2025-02-07 09:19:21'),
                                                                (50, 15, 23, '2025-04-18 02:14:18'),
																(51, 13, 30, '2025-08-10 01:55:35'),
																(52, 2, 34, '2025-02-11 07:20:27'),
																(53, 20, 30, '2025-04-28 18:03:43'),
                                                                (54, 16, 38, '2025-01-23 08:48:18'),
                                                                (55, 11, 20, '2024-09-18 16:57:16'),
                                                                (56, 20, 6, '2025-01-18 07:17:30'),
																(57, 1, 35, '2024-11-03 05:28:12'),
                                                                (58, 4, 29, '2025-02-24 09:16:15'),
																(59, 11, 20, '2025-03-11 01:05:41'),
																(60, 9, 29, '2025-08-07 01:22:04');






-- Comments Table
CREATE TABLE Comments (
 comment_id INT PRIMARY KEY,
 post_id INT,
 user_id INT,
 comment_text TEXT NOT NULL,
 comment_date DATETIME NOT NULL,
 FOREIGN KEY (post_id) REFERENCES Posts(post_id),
 FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (1, 32, 14, 'Message because protect note fear.', '2025-06-08 10:55:35'),
																					   (2, 33, 10, 'Measure none suddenly feeling marriage civil.', '2025-03-08 00:29:13'),
																					   (3, 30, 19, 'Learn mind campaign loss pressure management deep act.', '2024-12-18 08:00:03'),
                                                                                       (4, 22, 11, 'Hope tree total chance program past item people.', '2025-03-02 17:22:44'),
                                                                                       (5, 21, 12, 'Know involve agent catch everybody.', '2025-02-24 06:08:42'),
                                                                                       (6, 19, 1, 'Player cultural others me possible affect today.', '2024-12-18 06:48:44'),
                                                                                       (7, 40, 12, 'Experience offer happen rise know determine.', '2025-03-01 00:25:37'),
                                                                                       (8, 28, 12, 'Relate until statement rise amount purpose themselves behavior.', '2024-10-01 10:12:01'),
																					   (9, 17, 1, 'Become bed occur its.', '2024-10-14 15:20:56'),
                                                                                       (10, 37, 10, 'Sea south simple moment available case doctor fund.', '2025-06-02 01:31:07'),
																					   (11, 39, 13, 'Also yes dog type.', '2025-08-03 15:19:45'),
                                                                                       (12, 9, 12, 'Gas dog he.', '2025-04-11 06:07:36'),
                                                                                       (13, 7, 9, 'Member trip computer prepare chance much easy.', '2025-02-17 00:45:20'),
                                                                                       (14, 15, 14, 'While air assume source return next.', '2025-08-01 06:22:25'),
                                                                                       (15, 1, 20, 'Policy life direction over source idea bar.', '2025-04-19 17:48:25'),
                                                                                       (16, 37, 14, 'Today husband raise central.', '2025-09-16 18:41:01'),
                                                                                       (17, 18, 12, 'Raise though gun true this.', '2025-07-25 10:35:53'),
                                                                                       (18, 18, 12, 'Church cell safe condition partner local talk.', '2024-10-12 20:57:03'),
																					   (19, 21, 2, 'Score beautiful international about.', '2024-12-09 02:41:53'),
                                                                                       (20, 26, 15, 'Administration floor kid world imagine.', '2025-06-01 03:29:14'),
                                                                                       (21, 23, 8, 'Hospital sea argue who sing station free.', '2025-06-21 15:36:20'),
                                                                                       (22, 6, 9, 'Lead government reason business cup past.', '2025-02-28 04:24:01'),
                                                                                       (23, 33, 9, 'Just instead understand task send up.', '2025-08-05 07:25:25'),
                                                                                       (24, 17, 6, 'Fine or process surface board.', '2025-04-28 14:37:12'),
                                                                                       (25, 31, 17, 'Either usually both set seat sea put.', '2025-09-16 15:53:06'),
                                                                                       (26, 31, 4, 'Live him year value push detail experience.', '2025-09-09 15:22:39'),
																					   (27, 7, 8, 'Manager within big last sort adult.', '2025-06-14 09:06:11'),
																					   (28, 23, 11, 'Sing everyone red power politics store defense.', '2025-04-04 22:08:04'),
                                                                                       (29, 29, 18, 'Arm score perhaps blue six mother.', '2024-10-21 22:19:03'),
                                                                                       (30, 23, 20, 'With factor both table data red natural.', '2024-12-05 19:14:51'),
                                                                                       (31, 32, 12, 'Tell its become wind contain program.', '2025-07-17 10:57:43'),
                                                                                       (32, 9, 12, 'Industry to simply.', '2024-10-08 08:28:05'),
																					   (33, 27, 17, 'Deal well technology star federal specific.', '2024-12-26 02:57:29'),
                                                                                       (34, 7, 11, 'Out president may card community away race yes.', '2025-09-03 05:15:01'),
																					   (35, 5, 3, 'Power night they well.', '2024-10-31 23:07:30'),
                                                                                       (36, 38, 4, 'A office stock head choose picture visit.', '2024-09-26 17:59:04'),
                                                                                       (37, 12, 6, 'Brother about another talk.', '2025-08-08 04:16:32'),
																					   (38, 29, 15, 'Forward even affect room improve forward soldier.', '2025-05-10 08:17:58'),
                                                                                       (39, 18, 18, 'Computer lose debate discover such tax know.', '2024-11-01 19:36:05'),
                                                                                       (40, 31, 19, 'Least will today phone machine.', '2025-03-10 14:05:08'),
                                                                                       (41, 20, 7, 'Early everybody three tonight.', '2024-09-21 06:09:54'),
                                                                                       (42, 36, 10, 'Name see practice doctor.', '2024-11-20 15:02:52'),
                                                                                       (43, 3, 16, 'Receive eye forward.', '2024-11-03 01:19:40'),
                                                                                       (44, 15, 15, 'Make PM mission tree.', '2024-11-20 05:06:39'),
                                                                                       (45, 38, 3, 'Per degree away tough best policy.', '2025-08-26 03:26:30'),
                                                                                       (46, 1, 1, 'Significant born against the other.', '2025-02-25 21:31:16'),
                                                                                       (47, 14, 8, 'Lead best early though.', '2025-07-24 00:41:23'),
                                                                                       (48, 13, 6, 'Foot high born sign.', '2025-01-29 00:34:57'),
                                                                                       (49, 7, 4, 'Lay their central occur.', '2025-09-05 02:02:16'),
                                                                                       (50, 16, 14, 'Moment fill degree check.', '2025-06-13 08:14:52');




-- Friendships Table
CREATE TABLE Friendships (
 friendship_id INT PRIMARY KEY,
 user_id1 INT,
 user_id2 INT,
 since_date DATE NOT NULL,
 FOREIGN KEY (user_id1) REFERENCES Users(user_id),
 FOREIGN KEY (user_id2) REFERENCES Users(user_id),
 CONSTRAINT chk_diff_users CHECK (user_id1 <> user_id2)
);

INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (1, 6, 18, '2023-09-29'),
                                                                               (2, 4, 9, '2025-01-31'),
                                                                               (3, 14, 13, '2024-12-03'),
																			   (4, 5, 10, '2025-04-16'),
																			   (5, 9, 11, '2025-07-03'),
																			   (6, 13, 5, '2024-10-28'),
                                                                               (7, 6, 2, '2025-06-24'),
                                                                               (8, 7, 10, '2025-08-13'),
                                                                               (9, 4, 17, '2023-12-21'),
                                                                               (10, 5, 18, '2025-08-18'),
																			   (11, 8, 11, '2025-05-21'),
                                                                               (12, 9, 19, '2024-03-05'),
                                                                               (13, 2, 7, '2024-02-27'),
                                                                               (14, 1, 14, '2024-03-04'),
                                                                               (15, 6, 7, '2024-05-31'),
                                                                               (16, 20, 15, '2024-07-04'),
																			   (17, 3, 5, '2025-09-10'),
                                                                               (18, 4, 19, '2024-11-17'),
                                                                               (19, 14, 17, '2023-11-05'),
                                                                               (20, 19, 10, '2024-06-11'),
																			   (21, 15, 3, '2023-11-01'),
                                                                               (22, 13, 18, '2024-03-08'),
                                                                               (23, 2, 18, '2025-02-18'),
                                                                               (24, 16, 11, '2025-09-05'),
																			   (25, 18, 14, '2023-10-07');

#-------------------------------------------------------------------------------------------------------------------------
#---------------Retrieve all posts along with the username of the author.
SELECT P.POST_ID,U.USERNAME,P.CONTENT 
      FROM POSTS P
       join USERS U ON P.USER_ID=U.USER_ID
       group by P.POST_ID ;
       
#--Find all comments on each post along with the commenter’s username.

select u.username,p.post_id ,c.comment_text
from posts p 
join users u on p.user_id=u.user_id
join comments c on p.user_id=c.user_id
group by post_id;
#-----------------------------------------------------------------------------------------------------------
# Find the top 3 users with the most posts.
select user_id,count( post_id) as num_of_posts from posts 
group by user_id
order by num_of_posts desc limit 3;

#----Retrieve posts that have more likes than the average number of likes per post
select  L.POST_ID,P.CONTENT
 FROM LIKES L 
 JOIN POSTS P ON P.POST_ID=L.POST_ID
WHERE L.POST_ID>( SELECT AVG(like_id)  AS AVG_LIKES);


#--Find users who have never posted anything but have liked posts.     
SELECT u.user_id, u.username
FROM users u
WHERE u.user_id NOT IN (
    SELECT DISTINCT user_id 
    FROM posts
)
AND u.user_id IN (
    SELECT DISTINCT user_id 
    FROM likes
);


#-------------------------------------------------------------------------------------------------------------------------------
#  Get a list of all friends of a specific user (say user_id = 3).
SELECT 
    u.user_id,
    u.USERname
FROM users u
JOIN (
    SELECT 
        CASE 
            WHEN user_id1 = 3 THEN user_id2 
            ELSE user_id1 
        END AS friend_id
    FROM friendships
    WHERE 3 IN (user_id1, user_id2)
) f ON u.user_id = f.friend_id;


#  Retrieve posts that were liked by friends of a given user (nested join scenario).

SELECT DISTINCT p.post_id, p.content
FROM posts p
JOIN likes l 
    ON p.post_id = l.post_id
JOIN (
    SELECT 
        CASE 
            WHEN user_id1 = 3 THEN user_id2 
            ELSE user_id1 
        END AS friend_id
    FROM friendships
    WHERE 3 IN (user_id1, user_id2)
) f ON l.user_id = f.friend_id;
#----------------------------------------------------------------------------------------------------------------------------------

#Create a stored procedure GetUserActivity(userId) that returns:
# Total posts by the user
# Total likes given by the user
# Total likes received on the user’s posts
# Total comments made by the user




DELIMITER $$

CREATE PROCEDURE GetUserActivity(IN inputUserId INT)
BEGIN
    SELECT 
        
        (SELECT COUNT(*) 
         FROM posts 
         WHERE user_id = inputUserId) AS total_posts,
        
        
        (SELECT COUNT(*) 
         FROM likes 
         WHERE user_id = inputUserId) AS total_likes_given,
        
        
        (SELECT COUNT(*) 
         FROM likes l
         JOIN posts p ON l.post_id = p.post_id
         WHERE p.user_id = inputUserId) AS total_likes_received,
        
	
        (SELECT COUNT(*) 
         FROM comments 
         WHERE user_id = inputUserId) AS total_comments;
END$$

DELIMITER ;
CALL GetUserActivity(3);
---------------------------------------------------------------------------------------------------------------------------
SELECT 
    u.user_id,
    u.username,
    COALESCE(SUM(l.like_count), 0) + COALESCE(SUM(c.comment_count), 0) AS influence_score
FROM users u
JOIN posts p ON u.user_id = p.user_id
LEFT JOIN (
    SELECT post_id, COUNT(*) AS like_count
    FROM likes
    GROUP BY post_id
) l ON p.post_id = l.post_id
LEFT JOIN (
    SELECT post_id, COUNT(*) AS comment_count
    FROM comments
    GROUP BY post_id
) c ON p.post_id = c.post_id
GROUP BY u.user_id, u.username
ORDER BY influence_score DESC
LIMIT 1;
#===================================================================================================================================
                                                                                                               # ASSINGMENT BY
                                                                                                                 KANAKA RAVI














