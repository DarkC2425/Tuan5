<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<c:if test="${not empty alert}">
	<div class="alert alert-warning" role="alert">${alert}</div>
</c:if>
<!-- BEGIN CONTENT -->
<div class="col-md-9 col-sm-9">
	<h1>Forgot Your Password?</h1>
	<div class="content-form-page">
		<div class="row">
			<div class="col-md-7 col-sm-7">
				<form class="form-horizontal form-without-legend" role="form"
					action="${pageContext.request.contextPath}/forgotPassword"
					method="post">
					<div class="form-group">
						<c:choose>
							<c:when test="${not empty email}">
								<h2>New password for email "${email}"</h2>
								<input type="hidden" class="form-control" id="email" name="email"
									value="${email}">
								<label for="password" class="col-lg-4 control-label">New Password <span class="require">*</span></label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="password"
										name="password" placeholder="Enter your password">
								</div>
								<label for="password" class="col-lg-4 control-label">Confirm
									Password <span class="require">*</span></label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="retypepassword"
										placeholder="Retype your password" required>
								</div>
							</c:when>
							<c:otherwise>
								<label for="email" class="col-lg-4 control-label">Email</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="email" name="email"
										placeholder="Enter your email" required>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="row">
						<div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-5">
							<button type="submit" class="btn btn-primary">Send</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-4 col-sm-4 pull-right">
				<div class="form-info">
					<h2>
						<em>Important</em> Information
					</h2>
					<p>Enter the e-mail address associated with your account. Click
						submit to have your password e-mailed to you.</p>

					<button type="button" class="btn btn-default">More details</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END CONTENT -->