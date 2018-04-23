﻿<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.3" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.3" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Example</title>
</head>
<body>
	<form id="form1" runat="server">
		<dx:ASPxGridView runat="server" ID="Grid" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" KeyFieldName="OrderID" OnAutoFilterCellEditorInitialize="Grid_AutoFilterCellEditorInitialize" OnCellEditorInitialize="Grid_CellEditorInitialize" OnRowUpdating="Grid_RowUpdating">
			<Columns>
				<dx:GridViewCommandColumn VisibleIndex="0">
					<EditButton Visible="True" />                    
					<ClearFilterButton Visible="True" />                    
				</dx:GridViewCommandColumn>
				<dx:GridViewDataTextColumn FieldName="OrderID" ReadOnly="True" VisibleIndex="1">
					<EditFormSettings Visible="False" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataDateColumn FieldName="OrderDate" VisibleIndex="2" />                
				<dx:GridViewDataDateColumn FieldName="RequiredDate" VisibleIndex="3" />                
				<dx:GridViewDataDateColumn FieldName="ShippedDate" VisibleIndex="4" />                
			</Columns>
			<Settings ShowFilterRow="True" />
		</dx:ASPxGridView>

		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
			SelectCommand="SELECT [OrderID], [OrderDate], [RequiredDate], [ShippedDate] FROM [Orders]">
		</asp:AccessDataSource>

		<dx:ASPxDateEdit runat="server" ID="__ReferenceDateEdit" ClientVisible="false">
			<CalendarProperties>
				<ControlStyle BackColor="LightYellow" />
			</CalendarProperties>
		</dx:ASPxDateEdit>
	</form>
</body>
</html>