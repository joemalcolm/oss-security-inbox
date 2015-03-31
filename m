X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1359" "Tuesday" "31" "March" "2015" "20:40:55" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87d23prow8.fsf@mid.deneb.enyo.de>" "29" "Re: [oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier" nil nil nil "3" "2015033118:40:55" "[oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier" (number mark "        fw@deneb.eny Mar 31   29/1359  " thread-indent "\"Re: [oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier\"\n") "<5511AD55.8040006@redhat.com>" ("<5510F66A.9030202@redhat.com>" "<871tke8ngu.fsf@mid.deneb.enyo.de>" "<5511AD55.8040006@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21983 invoked by uid 550); 31 Mar 2015 18:41:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21965 invoked from network); 31 Mar 2015 18:41:07 -0000
References: <5510F66A.9030202@redhat.com> <871tke8ngu.fsf@mid.deneb.enyo.de>
	<5511AD55.8040006@redhat.com>
In-Reply-To: <5511AD55.8040006@redhat.com> (Kurt Seifried's message of "Tue,
	24 Mar 2015 12:30:45 -0600")
Message-ID: <87d23prow8.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Date: Tue, 31 Mar 2015 20:40:55 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier
To: oss-security@lists.openwall.com

* Kurt Seifried:

> On 03/24/2015 08:44 AM, Florian Weimer wrote:
>> * Kurt Seifried:
>> 
>>> Another example of why embargoes are a bad idea, these issues have been
>>> fixed for ages by upstream but fell through the cracks, because embargo!
>> 
>> There is no hard information in those bug reports.  It's not clear
>> what, precisely, they are about, and so it is impossible to tell if
>> they actually have been fixed.  I appreciate that you clean out old
>> stuff, but doing it this way makes it seem you suddenly have developed
>> a policy for secrecy around security issues.
>
> tjay@  (our docker guy) verified they were fixed as you can see from his
> comments in the bugs.
>
> This is an example of why we need to clean these old things out. Nobody
> really cares about them, and in all likelihood they got fixed by upstream.

Well, it's been an interesting experience to be on the other side of
the information deficit for once.  Usually, it's us who complain about
certain upstreams who say that they have fixed some vulnerabilities in
a new release (along with tons of other fixes), list a few CVEs, but
without any details what was actually fixed.

In any case, my immediate need for this information is gone.  Debian
jessie will not release with the docker.io package.  (Previously, it
was at version 1.3.3, which is why I was a bit concerned.)
