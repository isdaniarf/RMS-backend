package com.bootcamp.rms.repo;

import com.bootcamp.rms.domain.Grade;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Kholishul_A on 28/04/2017.
 */
@Repository
@RepositoryRestResource(exported = false)
public interface GradeRepository extends PagingAndSortingRepository<Grade, String> {
    List<Grade> findByEmployeeId(String employeeId);
}
