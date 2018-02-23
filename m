X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/02/23/3
Message-ID: <20180223042948.GA9316@sin.redhat.com>
Date: Fri, 23 Feb 2018 14:59:49 +1030
From: Doran Moppert <dmoppert@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Mark Thomas <markt@...che.org>
Subject: Re: Fwd: [SECURITY] CVE-2018-1304 Security constraints mapped to context root are ignored
Content-Type: text/plain; charset=utf-8

On Feb 23 2018, Mark Thomas wrote:
> CVE-2018-1304 Security constraints mapped to context root are ignored
> 
> Mitigation:
> Users of the affected versions should apply one of the following
> mitigations:
> - Review security constraints and confirm none use a URL patten of ""
>   (the empty string)

Will a URL pattern of "/" correctly protect the context root of
vulnerable versions?  If so, this seems worth mentioning.

-- 
Doran Moppert
Red Hat Product Security

Content of type "application/pgp-signature" skipped
