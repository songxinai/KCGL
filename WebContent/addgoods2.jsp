<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>出库信息登记</title>
  <script src="css/layui.all.js" charset="utf-8"></script>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
              
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>出库信息登记</legend>
</fieldset>
 
<form class="layui-form" action="addgoodssave2.jsp">
  <div class="layui-form-item">
    <label class="layui-form-label">商品名称</label>
    <div class="layui-input-block">
      <input name="name" class="layui-input" type="text" placeholder="请输入商品名" autocomplete="off">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">商品数量</label>
    <div class="layui-input-block">
      <input name="number" class="layui-input" type="text" placeholder="" autocomplete="off">
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">商品价格</label>
      <div class="layui-input-inline">
        <input name="price" class="layui-input" type="text" autocomplete="off">
      </div>
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">所属仓库</label>
    <div class="layui-input-block">
      <select name="storehouse">
        <option value=""></option>
        <option value="仓库1" selected="">仓库1</option>
        <option value="仓库2">仓库2</option>
        <option value="仓库3">仓库3</option>
        <option value="仓库4">仓库4</option>
        <option value="仓库5">仓库5</option>
      </select>
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" name="submit">提交</button>
      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
    </div>
  </div>
</form>
<script type="text/javascript">
            //Demo
            layui.use('form', function(){//声明使用layUI的form
                var form = layui.form;
				form.render();//刷新所有渲染效果，也可以单独熟悉某个效果
                //监听提交
                form.on('submit(formDemo)', function(data){
                    layer.msg(JSON.stringify(data.field));
                    return false;
                });
            });
</script>
</body>
</html>