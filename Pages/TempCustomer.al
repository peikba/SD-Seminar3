page 123456798 PageName2
{
    PageType = Card;
    SourceTable = Customer;
    SourceTableTemporary = true;

    layout
    {
        area(content)
        {
            group(GroupName)
            {
                field("No."; "No.")
                {

                }
                field(Name;Name)
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
        myInt: Integer;
}