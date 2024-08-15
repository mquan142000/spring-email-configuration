<%--
  Created by IntelliJ IDEA.
  User: minhquan
  Date: 15/08/2024
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h2>Settings</h2>

<form:form modelAttribute="settings" method="post">
  <div>
    <label>Languages</label>
    <form:select path="language">
      <form:option value="English">English</form:option>
      <form:option value="Vietnamese">Vietnamese</form:option>
      <form:option value="Japanese">Japanese</form:option>
      <form:option value="Chinese">Chinese</form:option>
    </form:select>
  </div>

  <div>
    <label>Page Size:</label>
    <form:select path="pageSize">
      <form:option value="5">5</form:option>
      <form:option value="10">10</form:option>
      <form:option value="15">15</form:option>
      <form:option value="25">25</form:option>
      <form:option value="50">50</form:option>
      <form:option value="100">100</form:option>
    </form:select> emails per page
  </div>

  <div>
    <form:checkbox path="spamFilter" /> Enable spams filter
  </div>

  <div>
    <label>Signature:</label>
    <form:textarea path="signature" rows="4" cols="40" />
  </div>

  <div>
    <input type="submit" value="Update" />
    <button type="button" onclick="window.location.href='/'">Cancel</button>
  </div>
</form:form>

