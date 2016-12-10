<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
					<style>
				  table {
				    border-collapse: collapse;
						background: #33FFB2;
				  }
				  td, th {
				    border: 1px solid #999;
				    padding: 0.5rem;
				    text-align: left;
						background: #F0CA9A;
						
				  }
				  th {
				    font-weight: bold;
						background: #B43904;
						font-family: "Times New Roman", Times, serif;
						font-size: 20px;
				  }
			  </style>
			<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">

				</script>
			  <script src="/node_modules/jquery/dist/jquery.js"></script>
					<script type="text/javascript" src="/js/jquery.sortElements.js">
				</script>
				
				<script>
			<!-- This code is borrowed http://jsfiddle.net/spetnik/gFzCk/1953/ - it sorts object on screen -->
		$(document).ready(function() {

    var table = $('#table');
					
    $('#pers_id, #fname, #lname, #c_of_o, #adrs, #phnr')

    .wrapInner('<span title="sort this column"/>')

    .each(function() {
        var th = $(this),

            thIndex = th.index(),

            inverse = false;



        th.click(function() {
			    table.find('td').filter(function() {



                return $(this).index() === thIndex;



            }).sortElements(function(a, b) {



                return $.text([a]) > $.text([b]) ?

                    inverse ? -1 : 1

                    : inverse ? 1 : -1;



            }, function() {



                // parentNode is the element we want to move

                return this.parentNode;



            });



            inverse = !inverse;



        });




    });



});
					

				</script>
			</head>
			<body>
				<table id="table">
					<tr>
						<th id="pers_id">Student ID</th>
						<th id="fname">First name</th>
						<th id="lname">Last name</th>
						<th id="c_of_o">Course</th>
						<th id="adrs">Address</th>
						<th id="phnr">Grade</th>
					</tr>
					<xsl:for-each select="persons/person">
							<tr>
								<td>
									<xsl:value-of select="studentid"/>
								</td>
								<td>
									<xsl:value-of select="firstname"/>
								</td>
							
								<td>
									<xsl:value-of select="lastname"/>
								</td>
							<td>
								<xsl:value-of select="course"/>	
							</td>
							<td>
								<xsl:value-of select="address"/>	
								</td>
							<td>
								<xsl:value-of select="grade"/>	
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>