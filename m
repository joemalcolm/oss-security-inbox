X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["612" "Thursday" "20" "October" "2016" "23:07:52" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87shrqafvb.fsf@mid.deneb.enyo.de>" "16" "Re: [oss-security] CVE-2016-2848 has been disclosed." nil nil nil "10" "2016102021:07:52" "[oss-security] CVE-2016-2848 has been disclosed." (number mark "U       fw@deneb.eny Oct 20   16/612   " thread-indent "\"Re: [oss-security] CVE-2016-2848 has been disclosed.\"\n") "<c9c59fce-758b-3bd2-a255-7434795b9611@isc.org>" ("<c9c59fce-758b-3bd2-a255-7434795b9611@isc.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30004 invoked by uid 550); 20 Oct 2016 21:08:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29978 invoked from network); 20 Oct 2016 21:08:04 -0000
From: Florian Weimer <fw@deneb.enyo.de>
To: oss-security@lists.openwall.com
References: <c9c59fce-758b-3bd2-a255-7434795b9611@isc.org>
Date: Thu, 20 Oct 2016 23:07:52 +0200
In-Reply-To: <c9c59fce-758b-3bd2-a255-7434795b9611@isc.org> (Michael McNally's
	message of "Thu, 20 Oct 2016 14:43:14 -0400")
Message-ID: <87shrqafvb.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] CVE-2016-2848 has been disclosed.

* Michael McNally:

> Since information concerning the vulnerability, including
> a reproduction script, exists in a public bug repository
> we urge you to update vulnerable binary packages as soon
> as possible.

This is in reference to this Debian bug:

  <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=839051>

I assumed it was a Debian-specific backporting problem, affecting only
the LTS branch of the previous (non-current) stable release.  It did
not occur to me that this was an independent bugfix which happened
upstream some time ago, and that affected software versions are still
widely deployed.
