using project as db from '../db/schema';

service MainService {
  entity Customer as projection on db.Customer;
  entity Orders    as projection on db.Order;


  entity Customersnorthwind as projection on db.Customers;
}
