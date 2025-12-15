const cds = require("@sap/cds");
const axios = require("axios");
 
module.exports = cds.service.impl(async function () {
 
  this.on("READ", "Customers", async () => {
 
    const url = "https://services.odata.org/northwind/northwind.svc/Customers?$format=json";
 
    const response = await axios.get(url);
    const results = response.data.value;
 
    return results.map(c => ({
      CustomerID:   c.CustomerID,
      CompanyName:  c.CompanyName,
      ContactName:  c.ContactName,
      ContactTitle: c.ContactTitle,
      Address:      c.Address,
      City:         c.City,
      Region:       c.Region,
      PostalCode:   c.PostalCode,
      Country:      c.Country,
      Phone:        c.Phone,
      Fax:          c.Fax
    }));
  });
 
 
});
 