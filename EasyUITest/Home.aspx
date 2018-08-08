<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Basic Layout - jQuery EasyUI Demo</title>
    <link href="jquery-easyui-1.4.1/themes/icon.css" rel="stylesheet" />
    <link href="jquery-easyui-1.4.1/themes/bootstrap/easyui.css" rel="stylesheet" />
    <script src="jquery-easyui-1.4.1/jquery.min.js"></script>
    <script src="jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
    <script src="tree/jquery.treeview.min.js"></script>
    <link href="homecss/jquery.treeview.css" rel="stylesheet" />
    <script>
        $(function () {
            
            $('#tt').tabs({ fit: true });
            $('#pp').panel({ fit: true });
            //$('#pp1').panel({ fit: true });
            $(window).resize(function () {
                $('#pp').panel('resize');
            });
            $('.reveal').click(function () {
                $(this).children('ul').slideToggle();
            });

            //$('.reveal a').click(function (event) {
            //    event.stopPropagation();
            //});
                $("#menuSettingsAdministration").treeview({
                    collapsed: true,
                    unique: false,
                    animated: "fast",
                    control: "#treecontrolSettingsAdministration"
                });

                $("#menuInventory").treeview({
                    collapsed: true,
                    unique: false,
                    animated: "fast",
                    control: "#treecontrolInventory"
                });

                $("#menuCollection").treeview({
                    collapsed: true,
                    unique: false,
                    animated: "fast",
                    control: "#treecontrolCollection"
                });
                
        });
        $(document).ready(function () {
            setTimeout(function () {
                $("div#treecontrolSettingsAdministration:first").find("a:first").trigger('click');
            }, 1500);
        });
        function addTab(title, url) {
            if ($('#tt').tabs('exists', title)) {
                $('#tt').tabs('select', title);
            } else {
                var content = '<iframe scrolling="auto" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
                $('#tt').tabs('add', {
                    title: title,
                    content: content,
                    closable: true
                });
            }
        }
        $('#pp1').children('ul').slideToggle();
    </script>
    <style>
        .username_icon{
	background-image:url(../images/username.png);
	width:14px;
	height:14px;
}
.username_icon:hover{
	background-image:url(../images/username_hover.png);
	width:14px;
	height:14px;
	cursor:pointer;
}
.help_icon{
	background-image:url(/images/help.png);
	width:8px;
	height:13px;
}
.logout_icon{
	background-image:url(/images/logout.png);
	width:12px;
	height:12px;
}
.logout_icon:hover{
	background-image:url(../images/logout_hover.png);
	width:15px;
	height:15px;
	cursor:pointer;
}
        .top_icon
        {
            margin-top:8px;
            float:right;
            margin-right:24px;
        }
        .treecontrol {
            width: auto;
            margin-top: -8px;
            margin-left: auto;
            color: #000000;
        }
        ul {
            list-style: none;
        }
    </style>
</head>
<body>
    <%--<div style="margin:20px 0;">      1.#BABABA   2.#e9f5fc 3.#f2f2f2</div>--%>
    <div class="easyui-layout" style="width:100%; height:800px;">
        <div data-options="region:'north'" style="height:60px">
            <div style="background-color: #f2f2f2;width: 100%;height: 100%" >
                <table border="0" width="100%">
                    <tr>
                        <td style="width: 20%">
                           <div align="right" style="padding-top: 5px;padding-left: 30px" >
                       <%--<img src="Images/Acc.png" height="45" />--%>
                               <img src="Images/image (2).png"  height="30" width="300"/>
                  </div> 
                        </td>
                        <td >
                             <div class="logo" align="left">
                    
                <table border="0">
                    <tr>
                        <td style="width: 10%">
                           
                        </td>
                        <td>
                            <img src="Images/Accounting.png" height="40px" width="40px" title="Accounting Software(SSBD)" />
                        </td>
                        <td style="font-weight: bold;">
                            <table border="0">
                                <tr>
                                    <td>
                                        <font color="#777">Welcome</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <font color="#777"> Accounting Software(SSBD)</font>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
                        </td>
                        <td>
                                <div class="top_icon">
    <table width="100%">
       <tr>
         
         <td width="50px"><div class="username_icon" onclick="addTab('About us','aboutus.html')" title="About us"> <font color="#777">hi,Arif</font> </div>
         </td>
         
         <td><div class="help_icon" onclick="addTab('Help','help.htm')" title="Help"></div>
         </td>
         
         <td><div class="logout_icon" onclick="SignOut()" title="Logout"></div></td>
      </tr>
  </table>
  
</div>
                        </td>
                    </tr>
                </table>
                  
            

            </div>
           
        </div>
        <div data-options="region:'south',split:true" style="height:50px;"></div>
        <div data-options="region:'east',split:true" title="East" style="width:100px;"></div>
        <div data-options="region:'west',split:true,iconCls:'icon-menu'"  title="Menu"  style="max-width:200px;height: 100%">
          <div id="pp1" style="height: 40%;border: none;">
            <div class="easyui-accordion" data-options="fit:true,border:false" >  
                        <div title="Finance & Accounts" class="a" style="padding:10px;height: auto ;">
                             <div id="treecontrolSettingsAdministration"  class="treecontrol" >
		                    <a style="font-size:10px" title="Collapse" href="#"> Collapse All</a> <span style="color:#d1d1d1">|</span> 
		                    <a style="font-size:10px" title="Expand" href="#"> Expand All</a> <span style="color:#d1d1d1">|</span> 
		                    <a style="font-size:10px" title="Toggle" href="#">Toggle All</a>
	                    </div>  
                            <ul id="menuSettingsAdministration" style="padding-left: 1px ;margin-top: 10px;" class="filetree" >
                                <li  style="padding-left: 1px" >
                                    <span class="tree-hit tree-expanded"></span>
                                    <span class="tree-folder"></span>
                                        Company Settings
                                    <ul>
                                        <li style="padding-left: 50px" >
                                            <span class="tree-file"></span>
                                            <a title='Company' href="#" onclick="addTab('jquery','http://jquery.com/')">Company</a></li>
                                        <li  style="padding-left: 50px">
                                            <span class="tree-file"></span>
                                            <a title='Location' href="#" onclick="addTab('jquery','http://jquery.com/')">Location</a></li>
                                    </ul>
                                </li>
                                <li  style="padding-left: 1px" >
                                    <span class="tree-hit tree-expanded"></span>
                                    <span class="tree-folder"></span>
                                        Accounts Settings
                                    <ul>
                                        <li style="padding-left: 50px" >
                                            <span class="tree-file"></span>
                                            <a title='Company' href="#" onclick="addTab('jquery','http://jquery.com/')">Company</a></li>
                                        <li  style="padding-left: 50px">
                                            <span class="tree-file"></span>
                                            <a title='Location' href="#" onclick="addTab('Contact','/Contact.aspx')">Location</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div title="Inventory"  style="padding:10px;">
                             <div id="treecontrolInventory"  class="treecontrol" >
		                    <a style="font-size:10px" title="Collapse" href="#"> Collapse All</a> <span style="color:#d1d1d1">|</span> 
		                    <a style="font-size:10px" title="Expand" href="#"> Expand All</a> <span style="color:#d1d1d1">|</span> 
		                    <a style="font-size:10px" title="Toggle" href="#">Toggle All</a>
	                    </div>  
                            <ul id="menuInventory" style="padding-left: 1px ;margin-top: 10px;" class="filetree" >
                                <li  style="padding-left: 1px" >
                                    <span class="tree-hit tree-expanded"></span>
                                    <span class="tree-folder"></span>
                                        Company Settings
                                    <ul>
                                        <li style="padding-left: 50px" >
                                            <span class="tree-file"></span>
                                            <a title='Company' href="#" onclick="addTab('jquery','http://jquery.com/')">Company</a></li>
                                        <li  style="padding-left: 50px">
                                            <span class="tree-file"></span>
                                            <a title='Location' href="#" onclick="addTab('jquery','http://jquery.com/')">Location</a></li>
                                    </ul>
                                </li>
                                <li  style="padding-left: 1px" >
                                    <span class="tree-hit tree-expanded"></span>
                                    <span class="tree-folder"></span>
                                        Accounts Settings
                                    <ul>
                                        <li style="padding-left: 50px" >
                                            <span class="tree-file"></span>
                                            <a title='Company' href="#" onclick="addTab('jquery','http://jquery.com/')">Company</a></li>
                                        <li  style="padding-left: 50px">
                                            <span class="tree-file"></span>
                                            <a title='Location' href="#" onclick="addTab('Contact','/Contact.aspx')">Location</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                
                
                <div title="Collection"  style="padding:10px;">
                             <div id="treecontrolCollection"  class="treecontrol" >
		                    <a style="font-size:10px" title="Collapse" href="#"> Collapse All</a> <span style="color:#d1d1d1">|</span> 
		                    <a style="font-size:10px" title="Expand" href="#"> Expand All</a> <span style="color:#d1d1d1">|</span> 
		                    <a style="font-size:10px" title="Toggle" href="#">Toggle All</a>
	                    </div>  
                            <ul id="menuCollection" style="padding-left: 1px ;margin-top: 10px;" class="filetree" >
                                <li  style="padding-left: 1px" >
                                    <span class="tree-hit tree-expanded"></span>
                                    <span class="tree-folder"></span>
                                        Company Settings
                                    <ul>
                                        <li style="padding-left: 50px" >
                                            <span class="tree-file"></span>
                                            <a title='Company' href="#" onclick="addTab('jquery','http://jquery.com/')">Company</a></li>
                                        <li  style="padding-left: 50px">
                                            <span class="tree-file"></span>
                                            <a title='Location' href="#" onclick="addTab('jquery','http://jquery.com/')">Location</a></li>
                                    </ul>
                                </li>
                                <li  style="padding-left: 1px" >
                                    <span class="tree-hit tree-expanded"></span>
                                    <span class="tree-folder"></span>
                                        Accounts Settings
                                    <ul>
                                        <li style="padding-left: 50px" >
                                            <span class="tree-file"></span>
                                            <a title='Company' href="#" onclick="addTab('jquery','http://jquery.com/')">Company</a></li>
                                        <li  style="padding-left: 50px">
                                            <span class="tree-file"></span>
                                            <a title='Location' href="#" onclick="addTab('Contact','/Contact.aspx')">Location</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
	            </div>   
            
             </div>
            <div style="margin:20px 0;"></div>

        </div>
        <div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
            <div id="pp" >
                <div id="tt" class="easyui-tabs" >
                    <div title="Home">
                    </div>
                </div>
            </div>
        </div>
    </div>
 
</body>
</html>
