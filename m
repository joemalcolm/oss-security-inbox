X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/10/30/1
Message-ID: <20191030072636.GA17423@tunkki.bugs.fi>
Date: Wed, 30 Oct 2019 09:26:36 +0200
From: Henri Salo <henri@...v.fi>
To: Randy Barlow <randy@...ctronsweatshop.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: Bodhi: Script injection
Content-Type: text/plain; charset=utf-8

On Tue, Oct 29, 2019 at 10:12:35AM -0400, Randy Barlow wrote:
> A script injection vulnerability[0] was recently reported in Bodhi[1],
> and a patch[2] has been merged in response. Users with packager
> privileges were able to create or edit updates that included <script>
> tags.
> 
> There is not yet a CVE for this issue.
> 
> 
> [0] https://pagure.io/fedora-infrastructure/issue/8324
> [1] https://github.com/fedora-infra/bodhi
> [2] https://github.com/fedora-infra/bodhi/pull/3657

You can request CVE via https://cveform.mitre.org/

-- 
Henri Salo
