<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="font-family: calibri; color: #000000; line-height: 1.5pc; text-align: justify;
        margin-left: 15px; margin-right: 15px;">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            The increasing availability of location-aware mobile devices has given rise to a
            flurry of location-based services (LBS). Due to the nature of spatial queries, an
            LBS needs the user position in order to process her requests. On the other hand,
            revealing exact user locations to LBS may pinpoint their identities and breach their
            privacy. To address this issue, spatial anonymity techniques obfuscate user locations,
            forwarding to the LBS a sufficiently large region instead. In this paper, we propose
            a framework for anonymous query processing in road networks. We design location
            obfuscation techniques that (i) provide anonymous LBS access to the users, and (ii)
            allow efficient query processing at the LBS side. Our techniques exploit existing
            network database infrastructure, requiring no specialized storage schemes or functionalities.
            We experimentally compare alternative designs in real road networks and demonstrate
            the effectiveness of our techniques.
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Processing is based on implementation of the theorem uses (network-based) search
            operations as off the shelf building blocks. Thus, the NAP query evaluation methodology
            is readily deployable on existing systems, and can be easily adapted to different
            network storage schemes. In this case, the queries are evaluated in a batch. we
            propose the network-based anonymization and processing (NAP) framework, the first
            system for K- anonymous query processing in road networks. NAP relies on a global
            user ordering and bucketization that satisfies reciprocity and guarantees K-anonymity.
            We identify the ordering characteristics that affect subsequent processing, and
            qualitatively compare alternatives. Then, we propose query evaluation techniques
            that exploit these characteristics. In addition to user privacy, NAP achieves low
            computational and communication costs, and quick responses overall. It is readily
            deployable, requiring only basic network operations.
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Recently, considerable research interest has focused on preventing identity inference
            in location-based services. Proposing spatial cloaking techniques. In the following,
            we describe existing techniques for ASR computation (at the AZ) and query processing
            (at the LS). At the end, we cover alternative location privacy approaches and discuss
            why they are inappropriate to our problem setting. This offers privacy protection
            in the sense that the actual user position u cannot be distinguished from others
            in the ASR, even when malicious LS is equipped/advanced enough to possess all user
            locations. This spatial K-anonymity model is most widely used in location privacy
            research/applications, even though alternative models are emerging.
        </p>
    </div>
</asp:Content>
