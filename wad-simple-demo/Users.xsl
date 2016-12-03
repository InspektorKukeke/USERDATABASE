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
						<th>Person ID</th>
						<th>First name</th>
						<th>Last name</th>
						<th>Country</th>
						<th>Address</th>
						<th>Phone no.</th>
					</tr>
					<xsl:for-each select="persons/person">
							<tr>
								<td>
									<xsl:value-of select="personid"/>
								</td>
								<td>
									<xsl:value-of select="firstname"/>
								</td>
							
								<td>
									<xsl:value-of select="lastname"/>
								</td>
							<td>
								<xsl:value-of select="country"/>	
							</td>
							<td>
								<xsl:value-of select="address"/>	
								</td>
							<td>
								<xsl:value-of select="phoneno"/>	
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>