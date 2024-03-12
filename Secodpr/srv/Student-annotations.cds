using from './Student_srv';



annotate mysrvdemo.Family with @Capabilities : { 
    FilterRestrictions : {
        $Type : 'Capabilities.FilterRestrictionsType',
        RequiredProperties : [
            ID

        ],
    },
 } ;


annotate mysrvdemo.Family with @(

UI: {
    //* First Line items along with selection filed

    SelectionFields    : [ID],

    LineItem           : [
        {
            $Type: 'UI.DataField',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Value: father_name,
        },
        {
            $Type: 'UI.DataField',
            Value: mother_name,

        },
        {
            $Type: 'UI.DataField',
            Value: phone_number,
        },
        
    ],


    //! Make Field Group in order to make facets

    FieldGroup #Id     : {
        $Type: 'UI.FieldGroupType',
        Label: 'Id',
        Data : [{
            $Type: 'UI.DataField',
            Value: ID,
            Label : 'ID'
        }, ],
    },


    FieldGroup #Details: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: father_name,
                Label: 'Family Name'
            },
            {
                $Type: 'UI.DataField',
                Value: mother_name,
                Label: 'Mothers Name'
            },
            {
                $Type: 'UI.DataField',
                Value: phone_number,
                Label: 'Phone Number'
            },
        ],
    },


    //* Create facit

    Facets  : [
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Id',
            Label  : 'Idenity',
            ID    : 'IdFacets'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Details',
            ID    : 'DetailsFacets',
            Label : 'Family Details'
        },
    ],
}

) {

};
