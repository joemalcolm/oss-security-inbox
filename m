X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["724" "Tuesday" "24" "March" "2015" "15:44:01" "+0100" "Florian Weimer" "fw@deneb.enyo.de" "<871tke8ngu.fsf@mid.deneb.enyo.de>" "18" "Re: [oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier" nil nil nil "3" "2015032414:44:01" "[oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier" (number mark "        fw@deneb.eny Mar 24   18/724   " thread-indent "\"Re: [oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier\"\n") "<5510F66A.9030202@redhat.com>" ("<5510F66A.9030202@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27750 invoked by uid 550); 24 Mar 2015 14:44:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27728 invoked from network); 24 Mar 2015 14:44:12 -0000
References: <5510F66A.9030202@redhat.com>
In-Reply-To: <5510F66A.9030202@redhat.com> (Kurt Seifried's message of "Mon,
	23 Mar 2015 23:30:18 -0600")
Message-ID: <871tke8ngu.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Date: Tue, 24 Mar 2015 15:44:01 +0100
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier
To: oss-security@lists.openwall.com

* Kurt Seifried:

> Another example of why embargoes are a bad idea, these issues have been
> fixed for ages by upstream but fell through the cracks, because embargo!

There is no hard information in those bug reports.  It's not clear
what, precisely, they are about, and so it is impossible to tell if
they actually have been fixed.  I appreciate that you clean out old
stuff, but doing it this way makes it seem you suddenly have developed
a policy for secrecy around security issues.

> https://bugzilla.redhat.com/show_bug.cgi?id=1063550

(CVE-2014-0048)

Could this be a dupe of the index.docker.io registry misconfiguration
that had at least one redirect to http:// (now fixed) for the actual
(unverified) image data?
