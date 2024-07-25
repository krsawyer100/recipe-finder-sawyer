USE brain_boost_db;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(200) NOT NULL
);

CREATE TABLE study_sets (
  set_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  title VARCHAR(200) NOT NULL,
  description TEXT,
  FOREIGN KEY (user_id) REFERENCES user(user.id)
);

CREATE TABLE flashcard (
  flashcard_id INT AUTO_INCREMENT PRIMARY KEY,
  set_id INT NOT NULL,
  question TEXT NOT NULL,
  answer TEXT NOT NULL,
  FOREIGN KEY (set_id) REFERENCES study_sets(set_id)
);