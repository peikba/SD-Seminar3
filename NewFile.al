table 50101 "Cust Entry"
// Documentation
{
    Caption='Cust Entry';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Entry No";Integer)
        {
            Caption='Entry No.';
            DataClassification = ToBeClassified;
        }
        field(2;"Customer No.";code[20])
        {
            Caption = 'Customer BNo.';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK;"Entry No")
        {
            Clustered = true;
        }
        key(Key1;"Customer No.")
        {
            
        }
    }
    
    var
        myInt : Integer;
}