X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/03/16/4
Message-ID: <20100316131322.GA13953@eltex.net>
Date: Tue, 16 Mar 2010 16:13:22 +0300
From: ArkanoiD <ark@...ex.net>
To: oss-security@...ts.openwall.com
Cc: libesmtp@...fford.uklinux.net, security@...ntu.com, Pawel Salek <pawsa@...ochem.kth.se>, jskarvad@...hat.com
Subject: Re: CVE Request: libesmtp does not check NULL bytes in commonName
Content-Type: text/plain; charset=utf-8

I think the one proposed in draft is the best: it still provides simple
wildcard functionality and does not affect security much. I'd prefer to 
avoid *.*.. wildcards.


