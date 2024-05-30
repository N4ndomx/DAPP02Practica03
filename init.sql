-- Contenido del script SQL para crear las tablas
CREATE TABLE IF NOT EXISTS public.empleados
(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR,
    direccion VARCHAR,
    telefono VARCHAR
);

CREATE TABLE IF NOT EXISTS public.users
(
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    enabled BOOLEAN,
    full_name VARCHAR
);

INSERT INTO public.users (username, password, enabled, full_name)
VALUES ('adsoft', '$2a$12$lOEalkm4hp7tsCyCDTSoA.jNnqOtw6rbUcwSJ2ANlXO8kish8ddQi', true, 'Centeno');
