from app import app
from flaskext.mysql import MySQL
import os

mysql = MySQL()

# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = os.environ.get('DATABASE_USER')
app.config['MYSQL_DATABASE_PASSWORD'] = os.environ.get('DATABASE_PASSWORD')
app.config['MYSQL_DATABASE_DB'] = os.environ.get('DATABASE_DB')
app.config['MYSQL_DATABASE_HOST'] = os.environ.get('DATABASE_HOST')
mysql.init_app(app)