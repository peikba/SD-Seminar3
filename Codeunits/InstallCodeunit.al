codeunit 123456700 InstallCodeunit
{
    Subtype=Install;

    trigger OnInstallAppPerCompany();
    begin
        CreateResources;   
        CreateSeminars;     
    end;

        local procedure CreateResources();
    var
        Resource: Record Resource;
    begin
        Resource.init;
        Resource."No.":='INSTR';
        Resource.Name:='Mr. Instructor';
        Resource.validate("Gen. Prod. Posting Group",'MISC');
        Resource."Direct Unit Cost":=100;
        Resource."CSD_Quantity Per Day":=8;
        Resource.Type:=Resource.Type::Person;
        if Resource.Insert then;
        Resource."No.":='ROOM 01';
        Resource.Name:='Room 01';
        Resource.Type:=Resource.Type::Machine;
        if Resource.Insert then;
    end;
    local procedure CreateSeminars();
    var
        Course : Record Course;
        Seminar : Record Seminar;

    begin
        if Course.FindSet then repeat
          Seminar.init;
          Seminar."No.":=Course.Code;
          Seminar.Name:=Course.Name;
          Seminar."Seminar Price":=course.Price;
          Seminar."Seminar Duration":=Course.Duration;
          Seminar."Gen. Prod. Posting Group":='MISC';
          if Seminar.Insert then;
        until Course.Next=0;
    end;
    
    
}