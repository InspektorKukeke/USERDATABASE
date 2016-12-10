<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
				<style>
				  table {
				    border-collapse: collapse;
				  }
				  td, th {
				    border: 1px solid #999;
				    padding: 0.5rem;
				    text-align: left;
				  }
				  th {
				    font-weight: bold;
				  }
			  </style>
			</head>
			<body>
				<table>
					<tr>
						<th>Student ID</th>
						<th>First name</th>
						<th>Last name</th>
						<th>Course</th>
						<th>Address</th>
						<th>Grade</th>
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