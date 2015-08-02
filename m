X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3863" "Saturday" "1" "August" "2015" "23:58:53" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNV8fVRj3GW=C_1EC8XE=y4u_4z9kPG9LRdTXoV+Xs1xiw@mail.gmail.com>" "92" "[oss-security] CVE request: Multiple spree ruby gems vulnerabilities (across multiple versions)" nil nil nil "8" "2015080206:58:53" "[oss-security] CVE request: Multiple spree ruby gems vulnerabilities (across multiple versions)" (number mark "        reed@reedlod Aug  1   92/3863  " thread-indent "\"[oss-security] CVE request: Multiple spree ruby gems vulnerabilities (across multiple versions)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31759 invoked by uid 550); 2 Aug 2015 06:59:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30702 invoked from network); 2 Aug 2015 06:59:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=z+fD9Sx2Ce8UODAVVPIa9VTGW86UGtevAKYJVKxvwH0=;
        b=QuF0wWxnzp7QQwG8eeu7Ot80T5PGmeqxhDIud5Z/KNiKXBCmsrm0E6nfetAbRdR87C
         HliRYpWSY5/d40XabwavE4auCVDmJfTQErJ1FkwIqUvdF/e6EjqoyVUCgU9W2k4M1gA4
         uaWQJ/AH5q/ob2BIawPUwFTaM/JuYYvIGtO5k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=z+fD9Sx2Ce8UODAVVPIa9VTGW86UGtevAKYJVKxvwH0=;
        b=D7lol+cdHvURfwUYGlk2SjQFvVfIEgU1e+3iRp5lQtmcpVi7od09nOiYq9LMtSPmHz
         +CbsjQzHLtQmdnUUyZsrYd9JY4/aLESMdArU+S7n2Hrub+LLUez2h5XutaRFpmp0XQlE
         6yXPLVo6Y4ktEbXY0L4BydyfFbv934nB84AC27961TKob3UWgPhw9CDuVPHMQaCsjP/Q
         rZuijzPS2db6cp4YdDusFsIH5TNayFPviZfa5C4SrO8QSt4ihGjHBMn+VurnaqYI4sEZ
         vvfuTtrYGBef2qMa0RabrtkiwVVhAYv+kBtfklClRhx4zIzbp14dcZi3e0/+KqTbfOhs
         2b/w==
X-Gm-Message-State: ALoCoQmwTpNeqIMYobzLskKqFcAcaLUDh8waFSBxbCWo9zI8VI4gYWwqu0mnGucGLMgvAA3zrd60
X-Received: by 10.107.7.214 with SMTP id g83mr15462069ioi.28.1438498752568;
 Sat, 01 Aug 2015 23:59:12 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALPTtNV8fVRj3GW=C_1EC8XE=y4u_4z9kPG9LRdTXoV+Xs1xiw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113f911c28514c051c4e9788
Date: Sat, 1 Aug 2015 23:58:53 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Multiple spree ruby gems vulnerabilities (across
 multiple versions)
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--001a113f911c28514c051c4e9788
Content-Type: text/plain; charset=UTF-8

Spree is a complete open source e-commerce solution for Ruby on Rails
* https://spreecommerce.com/
* https://github.com/spree/spree/
* https://rubygems.org/gems/spree (and related gems)

Was going through Spree's releases, and I came across several security
issues that lack CVEs (though some have OSVDB IDs).

Spree Content Controller Unspecified Arbitrary File Disclosure
* Tracked as http://osvdb.org/show/osvdb/73751
* Reported via https://spreecommerce.com/blog/security-fixes
* Fixed by
https://github.com/spree/spree/commit/0a2ee5fc68b22b8257e8a6cf1811598293416d33
* Fix released in 0.50.1

Spree Search ProductScope Class search[send][] Parameter Arbitrary Command
Execution
* Tracked as http://osvdb.org/show/osvdb/76011
* Exploited via
http://www.rapid7.com/db/modules/exploit/multi/http/spree_search_exec
* Reported via https://spreecommerce.com/blog/remote-command-product-group
* Fixed by
https://github.com/spree/spree/commit/440d7c87a2ded2736142f768f7a5c9f47e35890b
* Fix released in 0.60.2

Product Scopes could allow for unauthenticated remote command execution
* Reported via https://spreecommerce.com/blog/security-issue-all-versions
* Fixed by
https://github.com/spree/spree/commit/3db9a6ee10d053ca2037aa561a1f858b1e895dea
* Fixed by https://gist.github.com/GeekOnCoffee/3053700 (git apply patch)
* Fix released in 0.11.4, 0.70.6, 1.0.5, 1.1.2

Potential XSS vulnerability related to the analytics dashboard
* Reported via https://spreecommerce.com/blog/security-issue-all-versions
* Fixed by
https://github.com/spree/spree/commit/7f1e5d320fdf6fac22264638cd132224bcf40b2e
(for >= 1.0.x)
* Fixed by
https://github.com/spree-contrib/spree_analytics/commit/079949fd0e6d9ec87eefd8e3b9c70b5aa3bf25d3
(for < 1.0.x)
* Fix released in 0.11.4, 0.70.6, 1.0.5, 1.1.2

Spree Content Controller Unspecified Arbitrary File Disclosure
* Tracked as http://osvdb.org/show/osvdb/119205
* Reported via https://spreecommerce.com/blog/security-updates-2015-3-3
* Fixed by
https://github.com/spree/spree/commit/bfb5f907219d6f8f879ca940882befe89b58a1a4
* Fix released in 2.2.10, 2.3.8, 2.4.5, and 3.0.0.rc4

Rendering of arbitrary RABL templates allows for execution arbitrary files
on the host system, as well as disclosing the existence of files on the
system
* Reported via https://spreecommerce.com/blog/security-updates-2015-7-20
* Fixed by
https://github.com/spree/spree/commit/ec813a8733cc6c332f4e361152e3e757dd5dbbf0
* Fix released in 2.2.12, 2.3.11, 2.4.8, 3.0.2

Rendering of arbitrary RABL templates allows for execution arbitrary files
on the host system, as well as disclosing the existence of files on the
system
* Reported via https://spreecommerce.com/blog/security-updates-2015-7-28
* Fixed by
https://github.com/spree/spree/commit/3a5d387d54ad87fea15d3e05018445bf8a24a419
* Fix released in 2.2.13, 2.3.12, 2.4.9, 3.0.3

Separate from the above, there was an additional security issue fixed as of
0.50.0, though the issue didn't affect Spree code directly (but could be
used to compromise a Spree instance):

Spree api/orders.json Search Function Arbitrary Command Execution
* Tracked as http://osvdb.org/show/osvdb/71900
* Exploited via
http://www.rapid7.com/db/modules/exploit/multi/http/spree_searchlogic_exec
* Reported via https://spreecommerce.com/blog/security-fixes
* Fixed by replacing https://github.com/binarylogic/searchlogic (and the
https://github.com/railsdog/searchlogic fork) with
https://github.com/ernie/meta_search
* Fixed in 0.50.0
* Really this issue affects searchlogic and rd_searchlogic gems, not spree
code itself. I tried to find where in searchlogic this issue was fixed
since the project has had releases since this issue was found, but not
having much luck.

Can CVEs be assigned for these issues?

Thanks,
~reed

--001a113f911c28514c051c4e9788--
