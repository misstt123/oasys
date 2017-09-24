
			<!--盒子身体-->
			<div class="box-body no-padding">
				<div class="table-responsive">
					<table class="table table-hover table-striped">
					<thead>
						<tr>
							<th scope="col" class="commen mm">类型<span class="block"><img
									id="img" src="images/desc.gif" /></span></th>
							<th scope="col">账号名</th>
							<th scope="col" class="co commen">创建时间<span class="block"></span></th>
							<th scope="col" class="co commen">状态<span class="block"></span></th>
							<th scope="col">操作</th>
						</tr>
						</thead>
						<tbody class="update">
						<#include "/mail/accounttbody.ftl">
						</tbody>
					</table>
				</div>
			</div>
			<!--盒子尾-->
			<div class="box-footer no-padding" style="margin-top: -20px;">
				<div style="padding: 5px;">
					<div id="page"
						style="background: #fff; border: 0px; margin-top: 0px; padding: 2px; height: 25px;">
						<div style="width: 40%; float: left;">
							<div class="pageInfo" style="margin-left: 5px;">
								共<span>2</span>条 | 每页<span>20</span>条 | 共<span>1</span>页
							</div>
						</div>
						<div style="width: 60%; float: left;">
							<div class="pageOperation">
								<a class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-backward"></span>
								</a> <a class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-triangle-left"></span>
								</a> <a disabled="disabled" class="btn btn-default no-padding"
									style="width: 30px; height: 20px;"> 1 </a> <a
									class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-triangle-right"></span>
								</a> <a class="btn btn-sm btn-default no-padding"
									style="width: 30px; height: 20px;"> <span
									class="glyphicon glyphicon-forward"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>