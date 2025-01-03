-- Tabla de hechos de mazos KOG Enero 2025

CREATE TABLE IF NOT EXISTS kog_2025_jan (
    id SERIAL PRIMARY KEY,
    player_id INT NOT NULL,
    deck_id INT NOT NULL,
    skill_id INT NOT NULL,
    ndmax DATE NOT NULL,
    zerotg BOOLEAN NOT NULL,
    zephra BOOLEAN NOT NULL,
    bryan BOOLEAN NOT NULL,
    xenoblur BOOLEAN NOT NULL,
    yamiglen BOOLEAN NOT NULL,
    latino_vania BOOLEAN NOT NULL,
    updater_label VARCHAR(32) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_kog_2025_jan_player_id 
        FOREIGN KEY (player_id) 
        REFERENCES players (player_id),
    CONSTRAINT fk_kog_2025_jan_deck_id 
        FOREIGN KEY (deck_id) 
        REFERENCES decks (deck_id),
    CONSTRAINT fk_kog_2025_jan_skill_id
        FOREIGN KEY (skill_id)
        REFERENCES skills (skill_id)
);
