const cds = require('@sap/cds');

module.exports = async (srv) => 
{        
    // Using CDS API      
    const ZODATA_EMP_SRV = await cds.connect.to("ZODATA_EMP_SRV"); 
      srv.on('READ', 'ZSTRUC_FORMSet', req => ZODATA_EMP_SRV.run(req.query)); 
}