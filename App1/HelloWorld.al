// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

page 5010 "Journal Lines API"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'bctech';
    APIGroup = 'demo';

    EntityCaption = 'Journal Line';
    EntitySetCaption = 'Journal Lines';
    EntityName = 'journalLine';
    EntitySetName = 'journalLines';

    ODataKeyFields = SystemId;
    SourceTable = "Gen. Journal Line";

    Extensible = false;
    DelayedInsert = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field(lineNumber; Rec."Line No.")
                {
                    Caption = 'Line Number';
                }
                part(dimensionSetLines; "APIV2 - Dimension Set Lines")
                {
                    Caption = 'Dimension Set Lines';
                    EntityName = 'dimensionSetLine';
                    EntitySetName = 'dimensionSetLines';
                    SubPageLink = "Parent Id" = field(SystemId), "Parent Type" = const("Journal Line");
                }
            }
        }
    }

    actions
    {
    }
}
