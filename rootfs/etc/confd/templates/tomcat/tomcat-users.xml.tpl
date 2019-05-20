<?xml version='1.0' encoding='utf-8'?>
<!--
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->
<tomcat-users xmlns="http://tomcat.apache.org/xml"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
              xsi:schemaLocation="http://tomcat.apache.org/xml tomcat-users.xsd"
              version="1.0">
  
  <role rolename="admin-gui" />
  <role rolename="admin-script" />
  <role rolename="manager-gui" />
  <role rolename="manager-status" />
  <role rolename="manager-script" />
  <role rolename="manager-jmx" />

  <!-- user manager can access only manager section -->
  <user username="{{getv "/tomcat/manager/user"}}" password="{{getv "/tomcat/manager/pass"}}" roles="manager-gui" />

  <!-- user admin can access manager and admin section both -->
  <user username="{{getv "/tomcat/admin/user"}}" password="{{getv "/tomcat/admin/pass"}}" roles="admin-gui,admin-script,manager-gui,manager-status,manager-script,manager-jmx" />

</tomcat-users>
