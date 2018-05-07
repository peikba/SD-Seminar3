pageextension 123456700 ResourceCardExt extends "Resource Card"
/* 
CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 5 - Lab 1-2
// Added new fields:
// - Internal/External
// - Maximum Participants
Added new FastTab
Added code to OnOpenPage trigger
*/
{
    layout
    {
        addlast(General)
        {
            field("CSD_Resource Type"; "CSD_Resource Type")
            {
            }
        }
        addafter("Personal Data")
        {
            group("Room")
            {
                Visible = ShowMaxField;
                field("Maximum Participants";"CSD_Maximum Participants")
                {       
                                 
                }
            }
        }
        
    }

    var
    [InDataSet]
    ShowMaxField: Boolean;

    trigger OnOpenPage();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update
    end;
}