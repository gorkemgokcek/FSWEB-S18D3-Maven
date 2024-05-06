---1.Soru:

CREATE TABLE doctor (
id BIGSERIAL PRIMARY KEY,
name VARCHAR,
surname VARCHAR,
proficiency VARCHAR
);

---2.Soru:
CREATE TABLE nurse (
id BIGSERIAL PRIMARY KEY,
name VARCHAR,
surname VARCHAR,
proficiency VARCHAR
);

---3.Soru:
CREATE TABLE patient (
id BIGSERIAL PRIMARY KEY,
name VARCHAR,
surname VARCHAR,
email VARCHAR,
complaint TEXT
);

---4.Soru:
CREATE TABLE surgery (
id BIGSERIAL PRIMARY KEY,
nurse_id BIGINT,
patient_id BIGINT,
doctor_id BIGINT,
FOREIGN KEY (nurse_id) REFERENCES nurse(id),
FOREIGN KEY (patient_id) REFERENCES patient(id),
FOREIGN KEY (doctor_id) REFERENCES doctor(id)
);

---5.Soru:
CREATE TABLE operation (
id BIGSERIAL PRIMARY KEY,
patient_id BIGINT,
doctor_id BIGINT,
FOREIGN KEY (patient_id) REFERENCES patient(id),
FOREIGN KEY (doctor_id) REFERENCES doctor(id)
);