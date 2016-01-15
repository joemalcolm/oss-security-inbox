X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1393" "Friday" "15" "January" "2016" "20:32:49" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20160115203249.3acb4153@redhat.com>" "32" "Re: [oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Cc:" nil nil "1" "2016011519:32:49" "[oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        thoger@redha Jan 15   32/1393  " thread-indent "\"Re: [oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<20160115171016.57F5F332003@smtpvbsrv1.mitre.org>" ("<1452866613.15013.86.camel@debian.org>" "<20160115171016.57F5F332003@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5417 invoked by uid 550); 15 Jan 2016 19:33:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5396 invoked from network); 15 Jan 2016 19:33:06 -0000
Message-ID: <20160115203249.3acb4153@redhat.com>
In-Reply-To: <20160115171016.57F5F332003@smtpvbsrv1.mitre.org>
References: <1452866613.15013.86.camel@debian.org>
	<20160115171016.57F5F332003@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: corsac@debian.org, oss-security@lists.openwall.com
Date: Fri, 15 Jan 2016 20:32:49 +0100
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Qualys Security Advisory - Roaming through
 the OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: cve-assign@mitre.org

On Fri, 15 Jan 2016 12:10:16 -0500 (EST) cve-assign@mitre.org wrote:

> > There's also a fix related to X11 forwarding which seems different than
> > the fix which went into OpenSSH 6.9. I'm not sure if it deserves a CVE
> > or not.  
> 
> > https://anongit.mindrot.org/openssh.git/commit/?id=ed4ce82dbfa8a3a3c8ea6fa0db113c71e234416c  
> 
> >> eliminate fallback from untrusted X11 forwarding to trusted forwarding
> >> when the X server disables the SECURITY extension; Reported by Thomas
> >> Hoger  
> 
> MITRE is not assigning a CVE ID for
> ed4ce82dbfa8a3a3c8ea6fa0db113c71e234416c at this time. First, the
> (misspelled) reporter name suggests that the issue might have already
> had a CVE ID assigned by Red Hat before the issue became public. Also,
> http://www.openssh.com/txt/release-7.1p2 does not announce this as a
> security fix. Finally, the wording suggests that it could possibly be
> an interoperability fix, not a security fix.

FYI, this issue was announced as a security fix in 7.1p2 release notes:

https://lists.mindrot.org/pipermail/openssh-unix-dev/2016-January/034680.html

However, as the fix was not actually included in 7.1p2, the
release-7.1p2 announcement as available on the url listed above was
modified to remove mention of that issue.

https://lists.mindrot.org/pipermail/openssh-unix-dev/2016-January/034684.html

-- 
Tomas Hoger / Red Hat Product Security
