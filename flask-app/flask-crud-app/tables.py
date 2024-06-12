from flask_table import Table, Col, LinkCol
 
class Results(Table):
    student_id = Col('Id', show=False)
    student_name = Col('Имя')
    student_email = Col('Email')
    student_group = Col('Группа')
    edit = LinkCol('Изменить', 'edit_view', url_kwargs=dict(id='student_id'))
    delete = LinkCol('Удалить', 'delete_student', url_kwargs=dict(id='student_id'))