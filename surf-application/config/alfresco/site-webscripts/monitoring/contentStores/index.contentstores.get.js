/**
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
* 02110-1301, USA. **/

try{
	// get a connector to the Alfresco Endpoint
	// this endpoint has a base URI of /alfresco/service
	var connector = remote.connect("alfresco");
	var content = connector.get("/audit/contentstoresinfo");

	if(content.status != 200){
		if(content.status == 401)
			model.errmessage = "invalid";
		else
			model.errmessage = "error";
	}
	else{
		var data = eval( '(' + content + ')');
		model.data = data;
	}
} catch (error) {
	model.errmessage = "error";	
}