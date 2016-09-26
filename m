X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/26/12
Message-ID: <trinity-b2af326d-8386-44cc-b86d-1b0b3ef0e180-1474909153354@3capp-gmx-bs10>
Date: Mon, 26 Sep 2016 18:59:13 +0200
From: cookieopfer@....net
To: cve-assign@...re.org, oss-security@...ts.openwall.com
Cc: "Hanno Böck" <hanno@...eck.de>
Subject: Re: Re: ffmpeg afl bugs
Content-Type: text/plain; charset=utf-8

Hi Hanno,


so, in that case a the CVE should be rejected, with regard to the
old CVE.


> Hello,

On Mon, 26 Sep 2016 01:45:40 -0400 (EDT)
cve-assign () mitre org wrote:

        overread end of atom 'stsd' by 4294967134 bytes  


    Use CVE-2016-7554.


I don't think this is any vuln.

This is a warning message from ffmpeg itself, not from any memory
safety tool. Thus I interpret this as "this file is garbled and would
overread if we'd do what the file offsets indicate".

It probably indicated a bug that Michal originally found with this
file, but that happened long ago. The file is from Dec 2014 (looks like
this [1]).


[1] https://ffmpeg.org/pipermail/ffmpeg-cvslog/2014-December/084342.html
-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno () hboeck de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

Attachment: _bin
Description: OpenPGP digital signature
