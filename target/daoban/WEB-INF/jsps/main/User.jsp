<%--
  Created by IntelliJ IDEA.
  User: whist_computer
  Date: 2018/10/7
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/WEB-INF/static/js/bootstrap.min.js" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/WEB-INF/static/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WEB-INF/static/css/bootstrap-table.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/WEB-INF/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/WEB-INF/static/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/WEB-INF/static/js/bootstrap-table.min.js"></script>
    <%--<script src="/WEB-INF//js/bootstrap-table-zh-CN.min.js"></script>--%>
</head>
<script type="text/javascript">
    $(function () {
        $.fn.serializeForm=function(){
            var paramObj = {};
            var paramsArray = $(this).serializeArray();
            $.each(paramsArray,function(index,obj){
                var attrName = obj.name;
                var attrValue = obj.value;
                paramObj[attrName] = attrValue;
            })
            return paramObj;
        }
        $('#table').bootstrapTable({
            url: '/employee/list',
            search:true,
            searchAlign:"left",
            searchOnEnterKey:true,
            columns: [{
                field: 'id',
                align: 'center',
                title: 'Item ID'
            }, {
                field: 'name',
                align: 'center',
                title: 'Item Name'
            }, {
                field: 'operate',
                title: '操作',
                align: 'center',
                events: operateEvents,
                formatter: operateFormatter
            }]
        });
    })
    function operateFormatter(v,r,i) {
        return[
            '<button class="add btn btn-default  btn-sm" data-toggle="modal" data-target="#myModal" style="margin-right:15px;">添加</button>',
            '<button type="button" class="edit btn btn-default  btn-sm" style="margin-right:15px;">修改</button>',
            '<button type="button" class="delete btn btn-default  btn-sm" style="margin-right:15px;">删除</button>'
        ].join("");
    }
    window.operateEvents = {
        'click .add': function (e, v, r, i) {
            /*
            * 通过原生的js来重置form表单的数据，达到清空form表单的目的
            * */
            document.getElementById("myform").reset();
        },
        'click .delete': function (e, v, r, i) {
            var id=r.id
            $.get("/employee/delete",{id:id},function (result) {
                if(result.success){
                    alert("删除成功")
                    $("#table").bootstrapTable("refresh")
                }
            })
        },
        'click .edit': function (e, v, r, i) {
            $("#name1").val(r.name)
            $("#id").val(r.id)
            $("#myModal1").modal("show")
        }
    }
    function commit() {
        var json = $("#myform").serializeForm();
        $.get("/employee/save",json,function (result) {
            if(result.success){
                alert("添加成功")
                /*刷新表格*/
                $("#table").bootstrapTable("refresh")
                /*关闭模态框*/
                $("#myModal").modal("hide")
            }
        })
    }
    /* function commit1() {
         $("#myform").serializeForm()
         var id = $("#id").val();
         var name = $("#name1").val();
         $.get("/employee/save",{id:id,name:name},function (result) {
             if(result.success){
                 alert("修改成功")
                 /!*刷新表格*!/
                 $("#table").bootstrapTable("refresh")
                 /!*关闭模态框*!/
                 $("#myModal1").modal("hide")
             }
         })
     }*/
</script>
<body>
<table id="table"></table>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">添加员工</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" id="myform" id="myform">
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-9">
                            <input type="text" id="name" name="name" class="form-control well" placeholder="input name"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" onclick="commit()" class="btn btn-primary">提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel1">添加员工</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" id="myform1">
                    <div class="form-group">
                        <div class="col-sm-9">
                            <input type="hidden" id="id" name="id" class="form-control well" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-9">
                            <input type="text" id="name1" name="name" class="form-control well" placeholder="input name"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" onclick="commit()" class="btn btn-primary">提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
</body>
</html>
