page 50101 "Cust Entries"
{
    PageType = List;
    SourceTable = "Cust Entry";

    layout
    {
        area(content)
        {
            repeater(GroupName)
            {
                field("Entry No";"Entry No")
                {
                    
                }
                field("Customer No.";"Customer No.")
                {
                    
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
    
    var
        myInt : Integer;
}