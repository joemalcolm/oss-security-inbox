X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/09/22/5
Message-ID: <Pine.GSO.4.51.0909220321400.16381@faron.mitre.org>
Date: Tue, 22 Sep 2009 03:22:03 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security <oss-security@...ts.openwall.com>
cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request - glib symlink copying permission exposure
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2009-3289
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-3289
Reference: MLIST:[oss-security] 20090908 CVE Request - glib symlink copying permission exposure
Reference: URL:http://www.openwall.com/lists/oss-security/2009/09/08/8
Reference: MISC:https://bugzilla.gnome.org/show_bug.cgi?id=593406
Reference: CONFIRM:https://bugs.launchpad.net/ubuntu/+source/glib2.0/+bug/418135

The g_file_copy function in glib 2.0 sets the permissions of a target
file to the permissions of a symbolic link (777), which allows
user-assisted local users to modify files of other users, as
demonstrated by using Nautilus to modify the permissions of the user
home directory.


