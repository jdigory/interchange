Database  transactions  transactions.txt __SQLDSN__
ifdef SQLUSER
Database  transactions  USER         __SQLUSER__
endif
ifdef SQLPASS
Database  transactions  PASS         __SQLPASS__
endif
Database  transactions  transactions.raw  SQL
Database  transactions  COLUMN_DEF   "code=VARCHAR(14) NOT NULL PRIMARY KEY"
Database  transactions  COLUMN_DEF   "store_id=VARCHAR(9)"
Database  transactions  COLUMN_DEF   "order_number=VARCHAR(14) NOT NULL"
Database  transactions  COLUMN_DEF   "session=VARCHAR(32) NOT NULL"
Database  transactions  COLUMN_DEF   "username=VARCHAR(20) DEFAULT '' NOT NULL"
Database  transactions  COLUMN_DEF   "shipmode=VARCHAR(32)"
Database  transactions  COLUMN_DEF   "nitems=VARCHAR(9) NOT NULL"
Database  transactions  COLUMN_DEF   "subtotal=VARCHAR(12) NOT NULL"
Database  transactions  COLUMN_DEF   "shipping=VARCHAR(12) NOT NULL"
Database  transactions  COLUMN_DEF   "handling=VARCHAR(12)"
Database  transactions  COLUMN_DEF   "salestax=VARCHAR(12)"
Database  transactions  COLUMN_DEF   "total_cost=VARCHAR(16) NOT NULL"
Database  transactions  COLUMN_DEF   "fname=VARCHAR(30)"
Database  transactions  COLUMN_DEF   "lname=VARCHAR(30)"
Database  transactions  COLUMN_DEF   "company=VARCHAR(30)"
Database  transactions  COLUMN_DEF   "address1=VARCHAR(30)"
Database  transactions  COLUMN_DEF   "address2=VARCHAR(30)"
Database  transactions  COLUMN_DEF   "city=VARCHAR(30) NOT NULL"
Database  transactions  COLUMN_DEF   "state=VARCHAR(10)"
Database  transactions  COLUMN_DEF   "zip=VARCHAR(10)"
Database  transactions  COLUMN_DEF   "country=VARCHAR(10)"
Database  transactions  COLUMN_DEF   "phone_day=VARCHAR(20)"
Database  transactions  COLUMN_DEF   "phone_night=VARCHAR(20)"
Database  transactions  COLUMN_DEF   "fax=VARCHAR(20)"
Database  transactions  COLUMN_DEF   "email=VARCHAR(42)"
Database  transactions  COLUMN_DEF   "b_fname=VARCHAR(30)"
Database  transactions  COLUMN_DEF   "b_lname=VARCHAR(30)"
Database  transactions  COLUMN_DEF   "b_company=VARCHAR(30)"
Database  transactions  COLUMN_DEF   "b_address1=VARCHAR(30)"
Database  transactions  COLUMN_DEF   "b_address2=VARCHAR(30)"
Database  transactions  COLUMN_DEF   "b_city=VARCHAR(30)"
Database  transactions  COLUMN_DEF   "b_state=VARCHAR(10)"
Database  transactions  COLUMN_DEF   "b_zip=VARCHAR(10)"
Database  transactions  COLUMN_DEF   "b_country=VARCHAR(10)"
Database  transactions  COLUMN_DEF   "b_phone=VARCHAR(20)"
Database  transactions  COLUMN_DEF   "payment_method=varchar(32)"
Database  transactions  COLUMN_DEF   "avs=varchar(32)"
Database  transactions  COLUMN_DEF   "order_id=varchar(32)"
Database  transactions  COLUMN_DEF   "order_date=varchar(32) NOT NULL"
Database  transactions  COLUMN_DEF   "update_date=timestamp"
Database  transactions  COLUMN_DEF   "status=VARCHAR(32)"
Database  transactions  COLUMN_DEF   "parent=VARCHAR(9)"
Database  transactions  COLUMN_DEF   "comments=text"
Database  transactions  COLUMN_DEF   "currency_locale=varchar(32)"
