-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS music_app;
USE music_app;

-- =====================
-- USERS TABLE
-- =====================
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100),
    password VARCHAR(100) NOT NULL
);

-- =====================
-- ALBUMS TABLE
-- =====================
CREATE TABLE albums (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    artist VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    release_year INT,
    cover_url TEXT,
    featured BOOLEAN DEFAULT FALSE
);

-- =====================
-- REVIEWS TABLE
-- =====================
CREATE TABLE reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    album_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (album_id) REFERENCES albums(id) ON DELETE CASCADE,
    UNIQUE (user_id, album_id)
);

-- =====================
-- NEWS TABLE
-- =====================
CREATE TABLE news (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    content TEXT,
    image_url TEXT,
    link TEXT,
    featured BOOLEAN DEFAULT FALSE,
    published_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =====================
-- USERS DATA
-- =====================
INSERT INTO users (username, email, password) VALUES
('LisJone', 'lis@email.com', '1234'),
('ADB', 'adb@email.com', '1234'),
('Alex', 'alex@email.com', '1234'),
('Jordan', 'jordan@email.com', '1234'),
('Sam', 'sam@email.com', '1234');

-- =====================
-- ALBUMS DATA
-- =====================
INSERT INTO albums (title, artist, genre, release_year, cover_url, featured) VALUES
('The New Abnormal', 'The Strokes', 'Indie Rock', 2020, 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/The_Strokes_-_The_New_Abnormal.png/250px-The_Strokes_-_The_New_Abnormal.png', true),
('Blonde', 'Frank Ocean', 'R&B', 2016, 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a0/Blonde_-_Frank_Ocean.jpeg/250px-Blonde_-_Frank_Ocean.jpeg', true),
('Dirt', 'Alice in Chains', 'Grunge', 1992, 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f9/Dirt_%28Alice_in_Chains_album_-_cover_art%29.jpg/250px-Dirt_%28Alice_in_Chains_album_-_cover_art%29.jpg', true),
('In Rainbows', 'Radiohead', 'Alt-Rock', 2007, 'https://upload.wikimedia.org/wikipedia/en/thumb/1/14/Inrainbowscover.png/250px-Inrainbowscover.png', true),
('Midnights', 'Taylor Swift', 'Pop', 2022, 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Midnights_-_Taylor_Swift.png/250px-Midnights_-_Taylor_Swift.png', false),
('Random Access Memories', 'Daft Punk', 'Dance', 2013, 'https://upload.wikimedia.org/wikipedia/en/2/26/Daft_Punk_-_Random_Access_Memories.png', true);

-- =====================
-- REVIEWS DATA
-- =====================
INSERT INTO reviews (user_id, album_id, rating, review_text) VALUES
(1, 1, 5, 'Absolutely incredible comeback album.'),
(2, 1, 4, 'Really solid, great production.'),
(3, 2, 5, 'Frank Ocean masterpiece.'),
(4, 2, 4, 'Emotional and unique.'),
(5, 3, 5, 'One of the best grunge albums ever.'),
(1, 4, 5, 'Radiohead at their peak.'),
(2, 4, 4, 'Beautiful and experimental.'),
(3, 5, 3, 'Some good tracks, but not my favorite.'),
(4, 6, 5, 'Timeless electronic album.'),
(5, 7, 3, 'Decent but too long.');

-- =====================
-- NEWS DATA
-- =====================
INSERT INTO news (title, content, image_url, link, featured) VALUES
('Frank Ocean Teases New Music',
 'Fans are going crazy after hints of a new album drop.',
 'https://hips.hearstapps.com/hmg-prod/images/frank-ocean-gettyimages-1147433944.jpg?crop=1xw:1.0xh;center,top&resize=640:*',
 'https://www.billboard.com/music/music-news/frank-ocean-teases-back-in-studio-1235743183/',
 true),

('New Charli XCX Deluxe album??',
 'Charli XCX hints at an extended version of BRAT with new tracks and collaborations dropping soon.',
 'https://upload.wikimedia.org/wikipedia/commons/d/dc/Brat-remix-cover-art.png',
 'https://uproxx.com/pop/charli-xcx-brat-album-deluxe-version-three-more-songs/',
 true),

('Album Listening parties are making a comeback.',
 'Across major cities, fans are gathering weekly to listen to full albums together in a shared experience.',
 'https://img.freepik.com/premium-photo/people-office-listening-music-work_99043-2210.jpg',
 'https://www.redbull.com/us-en/theredbulletin/blood-orange-essex-honey-listening-party-nyc',
 false)