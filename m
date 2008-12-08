X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/08/1
Message-ID: <20081208093649.5bc12406@redhat.com>
Date: Mon, 8 Dec 2008 09:36:49 +0100
From: Tomas Hoger <thoger@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Cc: coley@...re.org
Subject: CVE request: vinagre
Content-Type: text/plain; charset=utf-8

vinagre upstream released new upstream versions 0.5.2 and 2.24.2 fixing format
string issue in vinagre_utils_show_error() in src/vinagre-utils.c.

Upstream commits:
Gnome 2.22 branch (0.5.x):
  http://svn.gnome.org/viewvc/vinagre?view=revision&revision=528
Gnome 2.24 branch (2.24.x):
  http://svn.gnome.org/viewvc/vinagre?view=revision&revision=525

I did not have an opportunity what attack vectors exist for this flaw.
Upstream seems to treat is as a security flaw, so probably deserves CVE
name.

Thank you!

-- 
Tomas Hoger / Red Hat Security Response Team
