package com.example.demo.dao.impl;

import com.example.demo.dao.StudentDao;
import com.example.demo.entity.Student;
import com.example.demo.util.DButil;

public class StudentDaoImpl implements StudentDao {
    @Override
    public void insertStudent(Student student) {
        String sql = "insert into student1(name,age) values(?,?)";
        Object[] object = {student.getName(),student.getAge()};
        DButil.excuteDML(sql,object);
    }
}
