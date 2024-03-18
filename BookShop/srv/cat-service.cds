using { my.bookshop as my }  from '../db/data-model';

service CatalogService {

    entity Books @readonly as projection on my.Books;
    entity Authers @readonly  as projection on my.Authers;
    entity Orders @insertonly as projection on my.Orders;
}
