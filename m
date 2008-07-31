X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/31/1
Message-ID: <20080731141537.GB1081@suse.de>
Date: Thu, 31 Jul 2008 16:15:37 +0200
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com, coley@...re.org
Subject: Mono ASP.net cross site scripting issue
Content-Type: text/plain; charset=utf-8

Hi,

Dean Brettle found a cross site scripting issue in the ASP.net
class libraries of Mono and potentially also for MS.NET, where you
can inject code into the "action" of a FORM submit and the tags
HtmlInputRadioButton.Value, HtmlImage.Src and HtmlInputImage.Src.

https://bugzilla.novell.com/show_bug.cgi?id=413534
is our bugreport which was published on posting due to a
public QA contact mailinglist.

The proposed patch for the Html* parts is:
http://lists.ximian.com/pipermail/mono-devel-list/2008-July/028633.html

Steven, can you please assign a CVE id?

Ciao, Marcus
