X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["832" "Monday" "15" "May" "2017" "18:56:57" "+0200" "Guido Berhoerster" "guido+openwall.com@berhoerster.name" "<20170515165657.GA25897@hal>" "17" "Re: [oss-security] CVE-2017-8934 pcmanfm: single instance socket may be blocked by another user" nil nil nil "5" "2017051516:56:57" "[oss-security] CVE-2017-8934 pcmanfm: single instance socket may be blocked by another user" (number mark "U       guido+openwa May 15   17/832   " thread-indent "\"Re: [oss-security] CVE-2017-8934 pcmanfm: single instance socket may be blocked by another user\"\n") "<20170515153450.263na5xnq2clfrtu@madoka.m-wei.net>" ("<20170515153450.263na5xnq2clfrtu@madoka.m-wei.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28272 invoked by uid 550); 15 May 2017 16:59:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27685 invoked from network); 15 May 2017 16:57:13 -0000
Date: Mon, 15 May 2017 18:56:57 +0200
From: Guido Berhoerster <guido+openwall.com@berhoerster.name>
To: oss-security@lists.openwall.com
Cc: Yao Wei <mwei@lxde.org>
Message-ID: <20170515165657.GA25897@hal>
Mail-Followup-To: oss-security@lists.openwall.com, Yao Wei <mwei@lxde.org>
References: <20170515153450.263na5xnq2clfrtu@madoka.m-wei.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170515153450.263na5xnq2clfrtu@madoka.m-wei.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE-2017-8934 pcmanfm: single instance socket may
 be blocked by another user

* Yao Wei <mwei@lxde.org> [2017-05-15 17:37]:
> The socket placed in /tmp is predictable and public-writable. Therefore
> if one user placed a symlink to another socket instead of socket for
> another user then said another user will either be unable to use
> pcmanfm, or may send requests to the first user's pcmanfm.
> 
> This bug has been assigned to CVE-2017-8934 [1].  A fix has been
> committed to pcmanfm's git repository [2].  LXDE developers are
> working on a release which fixes the problem.
> 
> [1]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-8934
> [2]: https://git.lxde.org/gitweb/?p=lxde/pcmanfm.git;a=commitdiff;h=bc8c3d871e9ecc67c47ff002b68cf049793faf08

The "fix" is ifdef'd for glib >= 2.28.0, so the vulnerability
still exists when compiling against an older version of glib.
-- 
Guido Berhoerster
