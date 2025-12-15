using ZODATA_EMP_SRV from './external/ZODATA_EMP_SRV.cds';

service ZODATA_EMP_SRVSampleService {
    @readonly
    entity ZSTRUC_FORMSet as projection on ZODATA_EMP_SRV.ZSTRUC_FORMSet
    {        key Empid, Empname, Dept, Location, Salary     }    
;
}