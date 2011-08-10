<#--
* Copyright (C) 2011 Atol Conseils et Développements.
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public License
* as published by the Free Software Foundation; either version 2
* of the License, or (at your option) any later version.

* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.

* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
* 02110-1301, USA. -->

<#macro displayRefreshButton>
	<div class="bt_refresh">
		<#if instance.htmlId?exists>
			<a onmouseover="window.status='Refresh';return true" href="javascript:refreshDashlet('${url.service?replace("${url.serviceContext}", ".")}','${instance.htmlId}');"><img onClick="imgChange(this,'${url.context}/images/reset2.gif')"  src="${url.context}/images/reset.gif" alt="" /></a>
		<#elseif args.htmlId?exists>
			<a onmouseover="window.status='Refresh';return true" href="javascript:refreshDashlet('${url.service?replace("${url.serviceContext}", ".")}','${args.htmlId}');"><img onClick="imgChange(this,'${url.context}/images/reset2.gif')"  src="${url.context}/images/reset.gif" alt="" /></a>
		</#if>
	</div>	
</#macro>