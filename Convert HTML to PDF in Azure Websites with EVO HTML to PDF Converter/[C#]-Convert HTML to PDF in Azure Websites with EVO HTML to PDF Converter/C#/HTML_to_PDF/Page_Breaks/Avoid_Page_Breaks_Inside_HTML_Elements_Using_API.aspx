﻿<%@ Page Title="Avoid Page Breaks Inside HTML Elements Using API" Language="C#" MasterPageFile="~/MasterPage.Master"
    AutoEventWireup="true" CodeBehind="Avoid_Page_Breaks_Inside_HTML_Elements_Using_API.aspx.cs"
    Inherits="EvoHtmlToPdfDemo.HTML_to_PDF.Page_Breaks.Avoid_Page_Breaks_Inside_HTML_Elements_Using_API" %>

<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 100%">
        <tr>
            <td style="height: 20px; padding-bottom: 1px">
                <asp:Menu ID="demoMenu" runat="server" Orientation="Horizontal" Font-Bold="True"
                    OnMenuItemClick="demoMenu_MenuItemClick">
                    <Items>
                        <asp:MenuItem Text="Live Demo" ToolTip="Live Demo" Value="Live_Demo" Selected="True"></asp:MenuItem>
                        <asp:MenuItem Text="Description" ToolTip="Description" Value="Description"></asp:MenuItem>
                        <asp:MenuItem Text="Sample Code" ToolTip="Sample Code" Value="Sample_Code"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="White" Font-Underline="True" />
                    <StaticMenuItemStyle Font-Size="14px" ForeColor="Black" BackColor="WhiteSmoke" BorderStyle="Solid"
                        BorderWidth="1px" HorizontalPadding="20px" ItemSpacing="1px" VerticalPadding="5px"
                        Font-Bold="False" Font-Underline="False" />
                    <StaticSelectedStyle BackColor="White" Font-Underline="False" ForeColor="Navy" />
                </asp:Menu>
            </td>
        </tr>
        <tr>
            <td style="border: solid 1px Black; height: 776px; padding-top: 10px; padding-left: 10px; padding-right: 10px; padding-bottom: 0px">
                <table style="width: 100%; height: 100%">
                    <tr>
                        <td style="font-size: 14px; font-weight: bold; height: 20px; padding-bottom: 15px; padding-top: 5px">Avoid Page Breaks Inside HTML Elements Using API
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100%;">
                            <asp:MultiView ID="demoMultiView" runat="server" ActiveViewIndex="0">
                                <asp:View ID="liveDemoView" runat="server">
                                    <table style="width: 535px; height: 855px">
                                        <tr>
                                            <td style="vertical-align: top">
                                                <table>
                                                    <tr>
                                                        <td>You can avoid the page breaks inside HTML elements in the generated PDF document
                                                            by setting the 'AvoidHtmlElementsBreakSelectors' API property. The Full Description
                                                            and a Code Sample can be accessed from the top tabs.
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 20px"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td>Server IP:
                                                                    </td>
                                                                    <td style="width: 5px"></td>
                                                                    <td>
                                                                        <asp:TextBox ID="textBoxServerIP" runat="server" Width="79px">127.0.0.1</asp:TextBox>
                                                                    </td>
                                                                    <td style="width: 20px"></td>
                                                                    <td>Port:
                                                                    </td>
                                                                    <td style="width: 5px"></td>
                                                                    <td>
                                                                        <asp:TextBox ID="textBoxServerPort" runat="server" Width="48px">40001</asp:TextBox>
                                                                    </td>
                                                                    <td style="width: 30px"></td>
                                                                    <td>Service Password:
                                                                    </td>
                                                                    <td style="width: 5px"></td>
                                                                    <td>
                                                                        <asp:TextBox ID="textBoxServicePassword" runat="server" Width="106px" Style="margin-left: 0px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 20px"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td style="padding-bottom: 5px; font-weight: bold">CSS Selector of the HTML Elements for Which to Avoid Page Break Inside
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:TextBox ID="htmlElementsSelectorTextBox" runat="server" Text="#page_break_inside_avoid_table TR"
                                                                            Width="500px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 20px"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        <asp:RadioButton ID="convertHtmlRadioButton" GroupName="HtmlPageSource" runat="server"
                                                                            Text="Convert HTML String" OnCheckedChanged="convertHtmlRadioButton_CheckedChanged"
                                                                            AutoPostBack="True" Font-Bold="False" Checked="True" />
                                                                    </td>
                                                                    <td style="width: 50px"></td>
                                                                    <td>
                                                                        <asp:RadioButton ID="convertUrlRadioButton" GroupName="HtmlPageSource" runat="server"
                                                                            Text="Convert URL or Local File" OnCheckedChanged="convertUrlRadioButton_CheckedChanged"
                                                                            AutoPostBack="True" Font-Bold="False" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 20px"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="urlPanel" runat="server" Visible="false">
                                                                <table>
                                                                    <tr>
                                                                        <td style="padding-bottom: 5px; font-weight: bold" colspan="3">HTML Page to Convert URL
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:TextBox ID="urlTextBox" runat="server" Width="435px"></asp:TextBox>
                                                                        </td>
                                                                        <td style="width: 5px"></td>
                                                                        <td>
                                                                            <asp:LinkButton ID="viewHtmlLinkButton" runat="server" OnClick="viewHtmlLinkButton_Click">View HTML</asp:LinkButton>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                            <asp:Panel ID="htmlStringPanel" runat="server" Visible="true">
                                                                <table>
                                                                    <tr>
                                                                        <td style="font-weight: bold">HTML String to Convert
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:TextBox ID="htmlStringTextBox" runat="server" TextMode="MultiLine" Height="450px"
                                                                                Width="500px"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="height: 10px"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="font-weight: bold">Base URL
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:TextBox ID="baseUrlTextBox" runat="server" Text="" Width="500px"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 20px"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="convertToPdfButton" runat="server" Text="Convert HTML to PDF" OnClick="convertToPdfButton_Click" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="descriptionView" runat="server">
                                    <div style="width: 535px; height: 855px; overflow: scroll; font-size: 11px">
                                        <asp:Literal ID="descriptionLiteral" runat="server"></asp:Literal>
                                    </div>
                                </asp:View>
                                <asp:View ID="sampleCodeView" runat="server">
                                    <div style="width: 535px; height: 855px; overflow: scroll; font-size: 11px">
                                        <asp:Literal ID="sampleCodeLiteral" runat="server"></asp:Literal>
                                    </div>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
