X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/10/22/6
Message-ID: <20081022173408.GD30748@ngolde.de>
Date: Wed, 22 Oct 2008 19:34:08 +0200
From: Nico Golde <oss-security+ml@...lde.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: vlc
Content-Type: text/plain; charset=utf-8

Hi Steven,
* Steven M. Christey <coley@...us.mitre.org> [2008-10-22 18:57]:

Thanks!

> Name: CVE-2008-4686
> Status: Candidate
> URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-4686
> Reference: MLIST:[oss-security] 20081019 CVE id request: vlc
> Reference: URL:http://www.openwall.com/lists/oss-security/2008/10/19/2
> Reference: CONFIRM:http://git.videolan.org/?p=vlc.git;a=commitdiff;h=d859e6b9537af2d7326276f70de25a840f554dc3
> 
> Multiple integer overflows in ty.c in the TY demux plugin (aka the
> TiVo demuxer) in VideoLAN VLC media player, probably 0.9.4, allow
> remote attackers to have an unknown impact via a crafted .ty file, a
> different vulnerability than CVE-2008-4654.

This one looks pretty much exploitable to me and the 
description should also note that. p_sys->i_seq_table_size 
is under user control as well as the values that are later 
written into the allocated buffer.

Cheers
Nico
-- 
Nico Golde - http://www.ngolde.de - nion@...ber.ccc.de - GPG: 0x73647CFF
For security reasons, all text in this mail is double-rot13 encrypted.

Content of type "application/pgp-signature" skipped
