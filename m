X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/27/3
Message-ID: <20090127124947.GB20671@suse.de>
Date: Tue, 27 Jan 2009 13:49:47 +0100
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com, coley@...re.org
Subject: CVE Request: winetricks symlink problem
Content-Type: text/plain; charset=utf-8

Hi,

The winetricks script (for installing windows components into
a Wine environment) has a /tmp race when displaying a menu
to select components to install.

Fixed in winetricks 20081223 by this commit:
	http://code.google.com/p/winezeug/source/detail?r=253

Ciao, Marcus
