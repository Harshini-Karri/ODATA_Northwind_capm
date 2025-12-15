namespace project;
using { cuid, managed } from '@sap/cds/common';
entity Customer : cuid, managed {

  name        : String(100);

  email       : String(100);

  phone       : String(20);

  city        : String(50);

  country     : String(50);

  isActive    : Boolean default true;

  orders : Composition of many Order

             on orders.customer = $self;

}
entity Order : cuid, managed {
  product        : String(100);

  quantity       : Integer;

  price          : Decimal(10,2);

  orderDate      : Date;

  status         : String(20);

  paymentMethod  : String(20);
  customer : Association to Customer;

}
entity Customers {
    key CustomerID    : String(10);
    CompanyName   : String(100);
    ContactName   : String(100);
    ContactTitle  : String(100);
    Address       : String(200);
    City          : String(100);
    Region        : String(100);
    PostalCode    : String(20);
    Country       : String(100);
    Phone         : String(50);
    Fax           : String(50);
}
