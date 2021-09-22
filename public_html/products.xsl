<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>

            <head><!-- begin head section-->
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
                <meta name="description" content="The best online selling services in Ireland. Sell and buy anything you wish! Best quality services Online Store - Dublin Ireland - Contact: 555-123456" />
                <title>Products | BSHCIFSC2 Group Online Shop &amp; Best Selling Services in Ireland</title><!-- Title-->

                <!-- Links to CSS Style -->
                <link rel="stylesheet" type="text/css" href="style.css" />
            </head><!-- end head -->

            <body id="page">

                <div class="container">
                    <div class="top-bar"><!-- start top bar (Navigation bar) -->
                        <a>Created in: <strong>NetBeans IDE 8.2</strong></a>
                        <span class="right">
                            <a>Design &amp; Development by:<strong>BSHCIFSC2 Group</strong></a>
                            <a><strong>NCI College</strong></a>
                            <a><strong>Web Application Development</strong>Class</a>
                        </span>
                        <div class="clr"></div>
                    </div><!-- end top bar -->

                    <header class="bg-header">
                        <p class="buttons">
                            <a href="index.html">Home</a>
                            <a class="current-page" href="products.html">Products</a> <!-- pressed button effect -->
                            <a href="search.html">Search</a>
                            <a href="mission.html">Our Goals</a>
                            <a href="contact.html">Contact</a>
                            <a href="about.html">About</a>
                        </p>

                        <h1>SPOTISELL</h1>
                        <h2>Online Cars Shop</h2>
                    </header>
                </div>

                <div class="main">
                    <main>
                        <div class = "main-container" >
                            <div style = "text-align:center" >
                                <h1>Products in our store in section Cars</h1>
                                <p><strong>Car list implemented from XML file</strong></p>
                            </div>
                        </div>

                        <div class="table">
                            <table>
                                <tr>
                                    <th>Code</th>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                </tr>
                                <xsl:for-each select = "/spotiSell/category/code">
                                    <xsl:sort select = "name"/>
                                    <tr>
                                        <td><xsl:apply-templates select="@codeID"/></td>
                                        <td><xsl:apply-templates select="name"/></td>
                                        <td><xsl:apply-templates select="description"/></td>
                                        <td><xsl:apply-templates select="quantity"/></td>
                                        <td><xsl:apply-templates select="unitPrice"/></td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </div><!-- end of table class -->
                    </main>
                </div><!-- end of main class in body section -->

                <footer><!-- start of footer -->
                    <p><strong>Copyright © 2020</strong> - BSHCIFSC2 Group</p>
                    <p><em>NCI College - Web Application Development</em></p>
                </footer><!-- end of footer -->

            </body>
        </html>
    </xsl:template>

    <xsl:template match="@codeID">
        <xsl:value-of select = "." />
    </xsl:template>
    <xsl:template match="name">
        <xsl:value-of select = "." />
    </xsl:template>
    <xsl:template match="description">
        <xsl:value-of select = "." />
    </xsl:template>
    <xsl:template match="quantity">
        <xsl:value-of select = "." />
    </xsl:template>
    <xsl:template match="unitPrice">
        <xsl:value-of select = "." />
    </xsl:template>

</xsl:transform>