namespace my.bookshop;

using {
    Country,
    managed
} from '@sap/cds/common';


entity Books {
    key ID     : Integer;
        title  : localized String;
        auther : Association to Authers;
        stock  : Integer;
}

entity Authers {
    key ID    : Integer;
        name  : String;
        books : Association to many Books
                    on books.auther = $self;
}

entity Orders : managed {
    key ID      : UUID;
        book    : Association to Books;
        country : Country;
        amount  : Integer;
}
