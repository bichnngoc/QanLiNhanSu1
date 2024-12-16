﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormPhongBan.aspx.cs" Inherits="FormPhongBan" MasterPageFile="Site.master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-xxl flex-grow-1 container-p-y">
     <div class="col-12">
         <div class="card mb-4">
             <h5 class="card-header">Phòng ban</h5>
             <div class="card-body"><br />
                 <div class="row">
                      <div class="col-xl-1 col-md-6 col-sm-12 mb-4">
                    </div>
                     <div class="col-xl-2 col-md-6 col-sm-12 mb-4">
                        <label class="form-label"for="TypeaheadBasic">Mã phòng ban</label>
                    </div>
                    <div class="col-xl-3 col-md-6 col-sm-12 mb-4">
                        <asp:TextBox ID="txtMaCongTac" Class="form-control typeahead tt-hint" runat="server" ReadOnly="True"></asp:TextBox>
                    </div>
                    <div class="col-xl-2 col-md-6 col-sm-12 mb-4">
                        <label class="form-label"for="TypeaheadBasic">Tên phòng ban</label>
                    </div>
                    <div class="col-xl-3 col-md-6 col-sm-12 mb-4">
                       <asp:TextBox ID="txtTenCongTac" Class="form-control typeahead tt-hint" runat="server"></asp:TextBox>
                    </div>
                 </div>
                 <div class="row">
                     <div class="col-md-6 mb-4">
                        <asp:GridView ID="GV_CongTac" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GV_CongTac_SelectedIndexChanged" >
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Mã phòng ban" />
                                <asp:BoundField DataField="TenCongTac" HeaderText="Tên phòng ban" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="yellow" />
                             <HeaderStyle BackColor="#F5F5F9" Font-Bold="True" ForeColor="#2F2F2F" Height="50px"  />
                             <PagerStyle BackColor="White" ForeColor="green" HorizontalAlign="Right"  />
                             <SelectedRowStyle BackColor="#E0E0ED" Font-Bold="True" ForeColor="black" />
                             <SortedAscendingCellStyle BackColor="#F7F7F7" />
                             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                             <SortedDescendingCellStyle BackColor="#E5E5E5" />
                             <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                     </div>
                     <div class="col-md-6 mb-4">
                          <div class="pt-4">
                              <asp:Button ID="btnThem" class="btn btn-primary me-sm-3 me-1" runat="server" Text="Thêm công tác" OnClick="btnThem_Click"/>
                              <asp:Button ID="btnSua" class="btn btn-primary me-sm-3 me-1" runat="server" Text="Sửa công tác" OnClick="btnSua_Click"/>
                          </div>
                         <div class="pt-4">
                            <asp:Button ID="btnXoa" class="btn btn-primary me-sm-3 me-1" runat="server" Text="Xóa công tác" OnClick="btnXoa_Click" />
                            <asp:Button ID="btnHienThi" class="btn btn-primary me-sm-3 me-1" runat="server" Text="Làm mới"/>
                        </div>
                      </div>
                     
                   </div>
               </div>
        </div>
    </div>
</div>
</asp:Content>
