/* checksum : c34d1fa49a14e41be0a5c5613434f593 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZODATA_EMP_SRV {
  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.content.version : '1'
  entity ZSTRUC_FORMSet {
    @sap.unicode : 'false'
    @sap.label : 'EMPID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Empid : Integer not null;
    @sap.unicode : 'false'
    @sap.label : 'EMPNAME'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Empname : String(30) not null;
    @sap.unicode : 'false'
    @sap.label : 'DEPT'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Dept : String(10) not null;
    @sap.unicode : 'false'
    @sap.label : 'LOCDE'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Location : String(20) not null;
    @sap.unicode : 'false'
    @sap.label : 'ESAL'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Salary : Integer not null;
  };
};

