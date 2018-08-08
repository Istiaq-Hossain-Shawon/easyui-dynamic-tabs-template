$(document).ready(function() {

    var loc = "MenuWebService.asmx";
    // first example

    var jsonParam = JSON.stringify(
                        {
                            Department_ID: Department,
                            Level_ID: Level,
                            UserName: UserName,
                            Company_Id: CompanyId,
                            Country_Id: CountryId,
                            Project: Project
                        }
                    )

    $.ajax({
        type: "POST",
        url: loc + "/GetMenuList",
        data: "{oSecurityUser_Entity:" + jsonParam + "}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function(msg) {
            var arraydata = msg.d;
            
            $("#divMenu").removeClass("loading");
            $(arraydata[0]).appendTo("#menuSettingsAdministration");
            $(arraydata[1]).appendTo("#menuLandAcquisition");
            $(arraydata[2]).appendTo("#menuProjectManagement");
            $(arraydata[3]).appendTo("#menuCustomerRelations");
            $(arraydata[4]).appendTo("#menuSalesMarketing");
            $(arraydata[5]).appendTo("#menueCreditRealization");
            //update on 31.12.2013 By istiaque
            $(arraydata[6]).appendTo("#menuPurchaseProcurement");
            
            
            $(arraydata[7]).appendTo("#menuInventory");
            $(arraydata[8]).appendTo("#menueSiteManagement");
            //update on 31.12.2013 By istiaque
            $(arraydata[9]).appendTo("#menuFinanceAccounts");
            $(arraydata[10]).appendTo("#menuPropertyMaintenance");
            $(arraydata[11]).appendTo("#menuPayrollPersonnelMgt");


            $("#menuPayrollPersonnelMgt").treeview({

                collapsed: true,
                unique: false,
                animated: "fast",
                control: "#treecontrolPayrollPersonnelMgt"
            });


            $("#menuPropertyMaintenance").treeview({

                collapsed: true,
                unique: false,
                animated: "fast",
                control: "#treecontrolPropertyMaintenance"
            });


            $("#menuFinanceAccounts").treeview({

                collapsed: true,
                unique: false,
                animated: "fast",
                control: "#treecontrolFinanceAccounts"
            });


            $("#menuInventory").treeview({

                collapsed: true,
                unique: false,
                animated: "fast",
                control: "#treecontrolInventory"
            });
            
            //update on 31.12.2013 moveBy istiaque
            $("#menueSiteManagement").treeview({

                collapsed: true,
                unique: false,
                animated: "fast",
                control: "#treecontrolSiteManagement"
            });
            //update on 31.12.2013 moveBy istiaque  
            
            $("#menuPurchaseProcurement").treeview({

                collapsed: true,
                unique: false,
                animated: "fast",
                control: "#treecontrolPurchaseProcurement"
            });

            $("#menuSalesMarketing").treeview({

                collapsed: true,
                unique: false,
                animated: "fast",
                control: "#treecontrolSalesMarketing"
            });

            $("#menueCreditRealization").treeview({

                collapsed: true,
                unique: false,
                animated: "fast",
                control: "#treecontrolCreditRealization"
            });

            $("#menuCustomerRelations").treeview({

                collapsed: true,
                unique: false,
                animated: "fast",
                control: "#treecontrolCustomerRelations"
            });


            $("#menuProjectManagement").treeview({

                collapsed: true,
                unique: false,
                animated: "fast",
                control: "#treecontrolProjectManagement"
            });



            $("#menuLandAcquisition").treeview({

                collapsed: true,
                unique: false,
                animated: "fast",
                control: "#treecontrolLandAcquisition"
            });


            $("#menuSettingsAdministration").treeview({

                collapsed: false,
                unique: false,
                animated: "fast",
                control: "#treecontrolSettingsAdministration"
            });

        },
        error: function() {
            alert('Unexpected error has occured during processing.');
        }


    });






});