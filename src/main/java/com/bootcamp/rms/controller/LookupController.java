package com.bootcamp.rms.controller;

import com.bootcamp.rms.domain.Lookup;
import com.bootcamp.rms.repo.LookupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Kholishul_A on 20/04/2017.
 */

@RestController
@RequestMapping(path = "/api/lookup")
public class LookupController {

    @Autowired
    private LookupRepository lookupRepository;

    @RequestMapping(path = "/all", method = RequestMethod.GET)
    public Iterable<Lookup> findLookupAll(){
        return lookupRepository.findAll();
    }

    @RequestMapping(path = "/search/dataType/{dataType}", method = RequestMethod.GET)
    public List<Lookup> findLookupByDataType(@PathVariable String dataType){
        return lookupRepository.findByDataType(dataType);
    }

    @RequestMapping(path = "/search/dataCode/{dataCode}", method = RequestMethod.GET)
    public List<Lookup> findLookupByDataCode(@PathVariable String dataCode){
        return lookupRepository.findByDataCode(dataCode);
    }
    @RequestMapping(path = "/search/dataType/{dataType}/dataCode/{dataCode}", method = RequestMethod.GET)
    public List<Lookup> findLookupByDataTypeAndDataCode(@PathVariable String dataType, @PathVariable String dataCode){
        return lookupRepository.findByDataTypeAndDataCode(dataType, dataCode);
    }
}
