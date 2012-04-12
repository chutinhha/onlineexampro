<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            width: 512px;
            height: 387px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <img alt="Arc" class="style2" src="Images/arc.JPG" />
            </td>
            <td style="padding: 0px 10px 0px 10px; color: #0000FF; font-family: Calibri; font-size: 16px;
                text-align: justify;" valign="top">
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The subjects of user interest
                    are extracted from the WKB via user interaction. A tool called Ontology Learning
                    Environment (OLE) is developed to assist users with such interaction. Regarding
                    a topic, the interesting subjects consist of two sets: positive subjects are the
                    concepts relevant to the information need, and negative subjects are the concepts
                    resolving paradoxical or ambiguous interpretation of the information need. Thus,
                    for a given topic, the OLE provides users with a set of candidates to identify positive
                    and negative subjects. These candidate subjects are extracted from the WKB. Who
                    are not fed back as either positive or negative from the user, become the neutral
                    subjects to the given topic.</p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ontology mining discovers
                    interesting and on-topic knowledge from the concepts, semantic relations, and instances
                    in ontology. Ontology mining method is introduced: Specificity and Exhaustivity.
                    Specificity (denoted spe) describes a subject’s focus on a given topic. Exhaustivity
                    (denoted exh) restricts a subject’s semantic space dealing with the topic. This
                    method aims to investigate the subjects and the strength of their associations in
                    ontology. In User Local Instance Repository, User background knowledge can be discovered
                    from user local information collections, such as a user’s stored documents, browsed
                    web pages, and composed/received emails.
                </p>
            </td>
        </tr>
    </table>
</asp:Content>
