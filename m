X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/21/5
Message-ID: <20230321154519.xoymfc2t6ixalgls@jwilk.net>
Date: Tue, 21 Mar 2023 16:45:19 +0100
From: Jakub Wilk <jwilk@...lk.net>
To: <oss-security@...ts.openwall.com>
Subject: Re: TTY pushback vulnerabilities / TIOCSTI
Content-Type: text/plain; charset=utf-8

* Hanno Böck <hanno@...eck.de>, 2023-03-19 09:18:
>maybe restricting any TIOCLINUX sub features that implement anything 
>related to selection would be a good option. The gpm daemon runs as 
>root anyway.
>
>Do you see any risk left if
>TIOCL_SETSEL
>TIOCL_PASTESEL
>TIOCL_SELLOADLUT
>are no longer accessible to non-privileged processes?

I think that should be fine.

-- 
Jakub Wilk
