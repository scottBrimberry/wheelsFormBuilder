﻿<cfsetting enablecfoutputonly="true">
<cfoutput>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<link href="stylesheets/global.css" media="all" rel="stylesheet" type="text/css">
<link href="stylesheets/text.css" media="all" rel="stylesheet" type="text/css">
<link href="stylesheets/jquery-ui-1.8.14.custom.css" media="all" rel="stylesheet" type="text/css">

<link href="http://fonts.googleapis.com/css?family=Droid+Sans+Mono" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js"></script>
<script type="text/javascript" src="javascripts/global.js"></script>

</head>

<body>
	
<section id="leftside">	
	<div class="inline alpha box" id="leftside">
	<p>Page name: <input type="text" id="pagename"> <br/><input type="radio" name="pagetype" class="pagetype" value="new" checked="true">New <input type="radio" name="pagetype" class="pagetype" value="edit">Edit <a href="javascript:void(0)" id="help_pagename" class="helplink">?</a></p> 
	<p>Object name: <input type="text" id="objectname"></p>
	<p>
		<fieldset>
			<legend>Form</legend>
			<p>Controller: <input type="text" id="inputcontroller"></p>
			<p>Action: <input type="text" id="formaction"></p>
		</fieldset>
	</p>
	<p>
		<fieldset>
			<legend>Fields</legend>
			<div id="fieldsmenu">
				<h3><a href="javascript:void(0)">for Objectname</a></h3>
				<div>
				<p class="field"><a href="javascript:void(0)" id ="textField"><img src="images/new_text.png"/> Input Text </a></p>
				<p><a href="javascript:void(0)" id ="hiddenField"><img src="images/new_hidden.png"/> Hidden </a></p>
				<p><a href="javascript:void(0)" id ="passwordField"><img src="images/new_password.png"/> Password</a></p>
				<p><a href="javascript:void(0)" id ="textArea"><img src="images/new_textarea.png"/> Textarea</a></p>
				<p><a href="javascript:void(0)" id ="radioButton"><img src="images/new_radio.png"/> Radio</a></p>
				<p><a href="javascript:void(0)" id ="checkBox"><img src="images/new_checkbox.png"/> Checkbox</a></p>
				<p><a href="javascript:void(0)" id ="select"><img src="images/new_select.png"/> Drop-Down</a></p>
				<p><a href="javascript:void(0)" id ="fileField"><img src="images/new_file.png"/> File</a></p>
				<p><a href="javascript:void(0)" id ="dateSelect"><img src="images/new_date_picker.png"/> Date Picker</a></p>
				<p><a href="javascript:void(0)" id ="dateTimeSelect"><img src="images/new_date_picker.png"/> Date Time Picker</a></p>
				</div>
				<h3><a href="##">For tag</a></h3>
				<div>
				<p><a href="javascript:void(0)" id ="imageTag"><img src="images/new_image.png"/> Image </a></p>
				<p><a href="javascript:void(0)" id ="textFieldTag"><img src="images/new_text.png"/> Input Text </a></p>
				<p><a href="javascript:void(0)" id ="hiddenFieldTag"><img src="images/new_hidden.png"/> Hidden </a></p>
				<p><a href="javascript:void(0)" id ="passwordFieldTag"><img src="images/new_password.png"/> Password </a></p>
				<p><a href="javascript:void(0)" id ="textAreaTag"><img src="images/new_textarea.png"/> Textarea </a></p>
				<p><a href="javascript:void(0)" id ="radioButtonTag"><img src="images/new_radio.png"/> Radio </a></p>
				<p><a href="javascript:void(0)" id ="checkBoxTag"><img src="images/new_checkbox.png"/> Checkbox </a></p>
				<p><a href="javascript:void(0)" id ="selectTag"><img src="images/new_select.png"/> Drop-Down </a></p>
				<p><a href="javascript:void(0)" id ="fileFieldTag"><img src="images/new_file.png"/> File </a></p>
				<p><a href="javascript:void(0)" id ="dateSelectTags"><img src="images/new_date_picker.png"/> Date Picker </a></p>
				<p><a href="javascript:void(0)" id ="dateTimeSelectTags"><img src="images/new_date_picker.png"/> Date Time Picker </a></p>				
				<p><a href="javascript:void(0)" id ="add_submit"><img src="images/new_button.png"/> Submit button </a></p>
				</div>				
			</div>
		</fieldset>
		
	</p>
	<p align="center"><a href="http://cfwheels.org"><img src="images/cfwheels-logo.png"/></a></p>	
	</div>
</section>

<section id="rightside">
	<div class="inline" id="rightside">
		<!--- SOURCE CODE FOR VIEWS --->	

		<div><h1>Source code for views/<span class="src_viewformcontroller"></span><span id="src_viewpagename"></span></h1>
		
		<p><button id="view_code">Show me the code</button></p>
		
		<div class="box" id="viewformcontainer">
		<div id="viewform">
			<p>##startFormTag(controller="<span class='src_viewformcontroller'></span>", action="<span class="src_formaction"></span>"<span class="src_form_key"></span>)##</p>
			
			<Blockquote>
			<p>##errorMessagesFor("<span class='src_objectname'></span>")##</p>
			
			<div id="formelement"></div>
		
			</Blockquote>
			
			##endFormTag()##
		</div>	
		</div>
					
	
		<!--- SOURCE CODE FOR CONTROLLER --->
		<div><h1>Source code for controllers/<span class="src_formcontroller"></span></h1>
		<div id="controllertabs" class="box">
			
			<ul>
				<li><a href="##controllertabs-1">Tag</a></li>
				<li><a href="##controllertabs-2">Script</a></li>
			</ul>

			<div id="controllertabs-1"><!--- TAG code display --->
			<!--- Form Action --->
				<p>
				<p><span class="tagcomment">&lt;!--- Form Action ---&gt;</span></p>	
				<span class="tagcolor">&lt;cffunction</span> <span class="attribcolor">name</span>=<span class="tagcolor">"<span class="src_pagename"></span>"</span> <span class="attribcolor">hint</span>=<span class="tagcolor">"onSubmit call <span class="src_formaction"></span>"&gt;</span><br/>
		
				<Blockquote>
					<span class="src_selects"></span>				
					<span class="tagcolor">&lt;cfset</span> <span class="src_objectname"></span> = model("<span class="src_objectname"></span>")<span class="src_pagetype"></span><span class="tagcolor">&gt;</span><br/>
				</Blockquote>
		
				<span class="tagcolor">&lt;/cffunction&gt;</span>
				</p>
				
				<!--- CRUD Action --->
				<p>	
				<p><span class="tagcomment">&lt;!--- CRUD Action ---&gt;</span></p>
				
				<span class="tagcolor">&lt;cffunction</span> <span class="attribcolor">name</span>=<span class="tagcolor">"<span class="src_formaction"></span>"</span> <span class="attribcolor">hint</span>=<span class="tagcolor">"<span class="src_formaction"></span> the <span class="src_objectname"></span>"&gt;</span><br/>
		
				<Blockquote>
					
					<span class="tagcolor">&lt;cfset</span> <span class="src_objectname"></span> = model("<span class="src_objectname"></span>").findByKey(params.key)<span class="tagcolor">&gt;</span><br/>
			
					<p><span class="tagcolor">&lt;cfset</span> <span class="src_objectname"></span><span class="src_crud_save"></span><span class="src_crud_update"><span class="src_objectname"></span>)</span>&gt;</p>
			
					<p><span class="tagcolor">&lt;cfif</span> <span class="src_objectname"></span>.hasErrors()<span class="tagcolor">&gt;</span></p>
					
					<Blockquote><p><span class="tagcolor">&lt;cfset renderPage</span>(action="<span class="src_pagename"></span>")<span class="tagcolor">&gt;</span></p></Blockquote>
					
					<p><span class="tagcolor">&lt;/cfif&gt;</span></p>
		
				</Blockquote>
		
				<span class="tagcolor">&lt;/cffunction&gt;</span>			
				</p>	
			</div>
			<div id="controllertabs-2"><!--- SCRIPTING code display --->
			<p>	
			<p>public void function <span class="src_pagename"></span>() {</p>
			   <Blockquote>
			   <p><span class="src_objectname"></span> = model("<span class="src_objectname"></span>")<span class="src_pagetype"></span>;</p>
			   </blockquote>
			}				
			</p>
			<p>		
			<p>public void function <span class="src_formaction"></span>() {</p>
			   <Blockquote>
			   <p><span class="src_objectname"></span> = model("<span class="src_objectname"></span>").new(params.<span class="src_objectname"></span>);</p>

			   <p><span class="src_objectname"></span>.save();</p>
			
			   if (<span class="src_objectname"></span>.hasErrors()) {<br />
			      <Blockquote>renderPage(action="<span class="src_pagename"></span>");</Blockquote>
			   }
			   </Blockquote>
			}				
			</p>	
			</div>
		</div>
		<div style="float:right;"><a href="javascript:void(0)" id="toggle_controller">Toggle the box</a></div>

		<!--- SOURCE CODE FOR MODEL --->
		<div><h1>Source code for models/<span class="src_formmodel"></span></h1>
		<div class="box">

			<p>
			<span class="tagcolor">&lt;cffunction</span> <span class="attribcolor">name</span>=<span class="tagcolor">"init"</span> <span class="tagcolor">&gt;</span><br/>
	
			<Blockquote>
	
				<div id="validatesUniquenessOf" style="display:none;"><span class="tagcolor">&lt;cfset validatesUniquenessOf</span>(property="<span class="src_unique"></span>")<span class="tagcolor">&gt;</span></div><br/>
	
				<div id="defaultValue">
					
				</div>
	
			</Blockquote>
	
			<span class="tagcolor">&lt;/cffunction&gt;</span>			
			</p>	
		</div>
	</div>
</section>

<!--- All the dialog for the help link (?) --->
<section id="dialog">
	<div id="dialog_pagename" style="display:none;" title="If you can dream it, you can do it">Use to determine if this action will be for a new record or updating one. Depending the option you choose it will change the code for the function in the controller</div>
	<div id="dialog_unique" style="display:none;" title="We are what we believe we are.">Validates that the value of the specified property is unique in the database table.  Will add this property field to the &lt;cfset validatesUniquenessOf()&gt;</div>
	<div id="dialog_view_source" style="display:none;" title="It is never too late to be who you might have been"><div id="copyviewform"></div></div>
</section>

</body>
</html>
</cfoutput>

<cfsetting enablecfoutputonly="false">