

CREATE TABLE board_members_and_advisor_dtls (
  board_member_or_advisor_dtl_id int NOT NULL AUTO_INCREMENT,
  org_id int DEFAULT NULL,
  name varchar(100) DEFAULT NULL,
  role varchar(100) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (board_member_or_advisor_dtl_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE employee_profile (
  profile_id int NOT NULL AUTO_INCREMENT,
  org_id int NOT NULL,
  employee_name varchar(100) DEFAULT NULL,
  designation varchar(100) DEFAULT NULL,
  contact_no varchar(15) DEFAULT NULL,
  email_id varchar(50) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (profile_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE org_acquisitions (
  org_acquisition_id int NOT NULL AUTO_INCREMENT,
  org_id int DEFAULT NULL,
  acquiree_name varchar(100) DEFAULT NULL,
  announced_date date DEFAULT NULL,
  acquiring_amount bigint DEFAULT NULL,
  currency varchar(10) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (org_acquisition_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE org_contact_details (
  contact_dtl_id int NOT NULL AUTO_INCREMENT,
  org_id int NOT NULL,
  contact_person_name varchar(100) DEFAULT NULL,
  designation varchar(100) DEFAULT NULL,
  contact_no varchar(15) DEFAULT NULL,
  email_id varchar(50) DEFAULT NULL,
  profile_photo blob,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (contact_dtl_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE org_event_contestants (
  event_contestant_id int NOT NULL AUTO_INCREMENT,
  event_id int DEFAULT NULL,
  contestant_name varchar(100) DEFAULT NULL,
  contestant_desc varchar(500) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (event_contestant_id),
  KEY event_id (event_id),
  FOREIGN KEY (event_id) REFERENCES org_events (event_id)
);

CREATE TABLE org_event_exibitors (
  event_exibitor_id int NOT NULL AUTO_INCREMENT,
  event_id int DEFAULT NULL,
  exibitor_name varchar(100) DEFAULT NULL,
  exibitor_desc varchar(500) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (event_exibitor_id),
  KEY event_id (event_id),
  FOREIGN KEY (event_id) REFERENCES org_events (event_id)
);

CREATE TABLE org_event_speakers (
  event_speaker_id int NOT NULL AUTO_INCREMENT,
  event_id int DEFAULT NULL,
  speaker_name varchar(100) DEFAULT NULL,
  designation varchar(100) DEFAULT NULL,
  company_name varchar(100) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (event_speaker_id),
  KEY event_id (event_id),
  FOREIGN KEY (event_id) REFERENCES org_events (event_id)
);

CREATE TABLE org_event_sponsors (
  event_sponsor_id int NOT NULL AUTO_INCREMENT,
  event_id int DEFAULT NULL,
  sponsor_name varchar(100) DEFAULT NULL,
  sponsor_desc varchar(500) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (event_sponsor_id),
  KEY event_id (event_id),
  FOREIGN KEY (event_id) REFERENCES org_events (event_id)
);

CREATE TABLE org_events (
  event_id int NOT NULL AUTO_INCREMENT,
  org_id int DEFAULT NULL,
  event_name varchar(100) DEFAULT NULL,
  event_type varchar(50) DEFAULT NULL,
  start_date date DEFAULT NULL,
  end_date date DEFAULT NULL,
  location varchar(100) DEFAULT NULL,
  event_url varchar(100) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (event_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE org_fundings (
  org_funding_id int NOT NULL AUTO_INCREMENT,
  org_id int DEFAULT NULL,
  transaction_name varchar(100) DEFAULT NULL,
  announced_date date DEFAULT NULL,
  money_raised int DEFAULT NULL,
  no_of_investors int DEFAULT NULL,
  currency varchar(10) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (org_funding_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE org_investments (
  investment_id int NOT NULL AUTO_INCREMENT,
  org_id int DEFAULT NULL,
  announced_date date DEFAULT NULL,
  invested_org_name varchar(100) DEFAULT NULL,
  funding_round varchar(100) DEFAULT NULL,
  is_lead_investor varchar(45) DEFAULT NULL,
  invested_amount int DEFAULT NULL,
  currency varchar(10) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (investment_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE org_investors (
  investor_id int NOT NULL AUTO_INCREMENT,
  org_funding_id int DEFAULT NULL,
  investor_name varchar(100) DEFAULT NULL,
  no_of_investments int DEFAULT NULL,
  no_of_exits int DEFAULT NULL,
  location varchar(100) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (investor_id),
  KEY org_funding_id (org_funding_id),
  FOREIGN KEY (org_funding_id) REFERENCES org_fundings (org_funding_id)
);

CREATE TABLE org_ipo_stock_dtls (
  ipo_stock_dtl_id int NOT NULL AUTO_INCREMENT,
  org_id int NOT NULL,
  stock_symbol varchar(100) DEFAULT NULL,
  valuation_at_ipo varchar(100) DEFAULT NULL,
  money_raised_at_ipo varchar(100) DEFAULT NULL,
  ipo_share_price varchar(50) DEFAULT NULL,
  ipo_date varchar(50) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (ipo_stock_dtl_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE org_news (
  news_id int NOT NULL AUTO_INCREMENT,
  org_id int DEFAULT NULL,
  announced_date date DEFAULT NULL,
  news_desc varchar(500) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (news_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE org_product_dtls (
  product_dtl_id int NOT NULL AUTO_INCREMENT,
  org_id int DEFAULT NULL,
  product_name varchar(100) DEFAULT NULL,
  is_active varchar(10) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (product_dtl_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE org_signals (
  signal_id int NOT NULL AUTO_INCREMENT,
  org_id int DEFAULT NULL,
  announced_date date DEFAULT NULL,
  signal_desc varchar(500) DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (signal_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE org_technology_dtls (
  technology_dtl_id int NOT NULL AUTO_INCREMENT,
  org_id int DEFAULT NULL,
  technology_name varchar(100) DEFAULT NULL,
  created_by int NOT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (technology_dtl_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE org_visits (
  org_visit_id int NOT NULL AUTO_INCREMENT,
  org_id int NOT NULL,
  monthly_visit bigint DEFAULT NULL,
  monthly_visit_growth int DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (org_visit_id),
  KEY org_id (org_id),
  FOREIGN KEY (org_id) REFERENCES organization_master (org_id)
);

CREATE TABLE organization_master (
  org_id int NOT NULL AUTO_INCREMENT,
  org_name varchar(100) DEFAULT NULL,
  about varchar(500) DEFAULT NULL,
  address varchar(100) DEFAULT NULL,
  org_type varchar(100) DEFAULT NULL,
  org_website varchar(100) DEFAULT NULL,
  company_ranking varchar(10) DEFAULT NULL,
  headquarters_region varchar(100) DEFAULT NULL,
  founded_date varchar(100) DEFAULT NULL,
  equity_type varchar(50) DEFAULT NULL,
  founders_name varchar(250) DEFAULT NULL,
  investor_type varchar(50) DEFAULT NULL,
  operating_status varchar(50) DEFAULT NULL,
  investment_stage varchar(50) DEFAULT NULL,
  number_of_exits int DEFAULT NULL,
  created_by int DEFAULT NULL,
  created_date datetime DEFAULT CURRENT_TIMESTAMP,
  updated_by int DEFAULT NULL,
  updated_date datetime DEFAULT NULL,
  deleted_by int DEFAULT NULL,
  deleted_date datetime DEFAULT NULL,
  PRIMARY KEY (org_id)
);

