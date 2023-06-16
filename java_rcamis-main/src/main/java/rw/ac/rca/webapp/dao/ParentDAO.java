package rw.ac.rca.webapp.dao;

import rw.ac.rca.webapp.orm.Parent;

import java.util.List;

public interface ParentDAO  {
    public Parent saveParent(Parent parent);

    public Parent updateParent(Parent parent);

    public Parent saveOrUpdateParent(Parent parent);

    public boolean deleteParent(Parent parent);

    public Parent getParentById(int parentId);

    Parent getParentById(long id);

    List<Parent> getAllParents();
}
