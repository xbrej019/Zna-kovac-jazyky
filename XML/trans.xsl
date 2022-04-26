<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/zahradnictvi">
		<html>
			<body>
				<h2>Seznam zboží nad 50 kč</h2>
				<table border="1">
					<tr bgcolor="whitesmoke">						
						<th>Název</th>
						<th>Kategorie</th>
						<th>Cena</th>
					</tr>
					<xsl:for-each select="zbozi">
						<xsl:sort select="kategorie"/>
						<xsl:if test="cena>=50">						
						<tr>
							<xsl:choose>
								<xsl:when test="200>=cena">
									<td bgcolor="lightgreen">										
											<xsl:value-of select="nazev_cze"/>										
									</td>
								</xsl:when>
								<xsl:when test="1000>=cena">
									<td bgcolor="yellow">
											<xsl:value-of select="nazev_cze"/>
									</td>
								</xsl:when>
								<xsl:when test="cena>=1000">
									<td bgcolor="pink">
											<xsl:value-of select="nazev_cze"/>
									</td>
								</xsl:when>	
							</xsl:choose>							
							<td>
								<xsl:value-of select="kategorie"/>
							</td>
							<td>
								<xsl:value-of select="cena"/>
							</td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<h2>Seznam všeho zboží</h2>
				<table border="1.5">
					<tr bgcolor="azure">
						<th>Název</th>
						<th>Kategorie</th>
						<th>Původ</th>
						<th>Výrobce</th>
						<th>Ideální teplota</th>						
						<th>Název anglický</th>
						<th>Název latinský</th>
						<th>Umíštění</th>
						<th>Cena</th>
						<th>Prodejní forma</th>
						<th>Hodnocení</th>
						<th>Frekvence zalévání</th>						
					</tr>
					<xsl:for-each select="zbozi">
						<xsl:sort select="kategorie"/>
						<tr>
							<td>
								<xsl:value-of select="nazev_cze"/>
							</td>
							<td>
								<xsl:value-of select="kategorie"/>
							</td>
							<td>
								<xsl:value-of select="puvod"/>
							</td>
							<td>
								<xsl:value-of select="vyrobce"/>
							</td>
							<td>
								<xsl:value-of select="idealni_teplota"/>
							</td>
							<td>
								<xsl:value-of select="nazev_eng"/>
							</td>
							<td>
								<xsl:value-of select="nazev_lat"/>
							</td>
							<td>
								<xsl:value-of select="umisteni"/>
							</td>
							<td>
								<xsl:value-of select="cena"/>
							</td>
							<td>
								<xsl:value-of select="prodejni_forma"/>
							</td>
							<td>
								<xsl:value-of select="hodnoceni/@pocet_hvezd"/>
							</td>
							<td>
								<xsl:value-of select="frekvence_zalevani/@do_tydne"/>
							</td>

						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>