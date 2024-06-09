<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>category list</title>
</head>
<body>

	<div class="inner-block">
		<div class="inbox">
			<h2>Góp ý</h2>
			<div class="col-md-12 mailbox-content  tab-content tab-content-in">
				<div class="tab-pane active text-style" id="tab1">
					<div class="mailbox-border">
						<div class="mail-toolbar clearfix">
							<div class="float-left">
								<div class="btn btn_1 btn-default mrg5R">
									<i class="fa fa-refresh"> </i>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="float-right">
								<span class="text-muted m-r-sm">Showing 20 of 346 </span>
								<div class="btn-group">
									<a class="btn btn-default"><i class="fa fa-angle-left"></i></a>
									<a class="btn btn-default"><i class="fa fa-angle-right"></i></a>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<table class="table tab-border">
							<tbody>
								<tr class="unread checked">
									<td class="hidden-xs">Họ tên</td>
									<td class="hidden-xs">Email</td>
									<td class="hidden-xs">Tiêu đề</td>
									<td class="hidden-xs">Nội dung</td>
									<td></td>
								</tr>
								<c:forEach var="item" items="${listContact}">
									<tr class="unread checked">
										<td class="hidden-xs">${item.name}</td>
										<td class="hidden-xs">${item.email}</td>
										<td class="hidden-xs">${item.title}</td>
										<td class="hidden-xs">${item.content}</td>
										<td style="text-align: center; width: 150px;"><a
											class="btn btn-default"
											href="admin/mailbox/remove/${item.id}.htm"> <i
												class="fa fa-remove"></i>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>


</body>
</html>
