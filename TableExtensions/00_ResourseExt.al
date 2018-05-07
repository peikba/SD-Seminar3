tableextension 123456700 ResourceExt extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnBeforeValidate()
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        field(123456700;"CSD_Resource Type";Option)
        {
            Caption='Resource Type';
            OptionMembers=Internal,External;
            OptionCaption='Internal,External';
            DataClassification = ToBeClassified;
        }
        field(123456701;"CSD_Maximum Participants";Integer)
        {
            Caption='Maximum Participants';
            DataClassification = ToBeClassified;
        }
        field(123456702;"CSD_Quantity Per Day";Integer)
        {
            Caption='Quantity Per Day';
            DataClassification = ToBeClassified;
        }
    }
    
    var
        myInt : Integer;
}