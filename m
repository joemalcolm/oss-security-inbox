X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1519" "Wednesday" "18" "March" "2015" "11:17:47" "+0300" "Solar Designer" "solar@openwall.com" "<20150318081747.GA18610@openwall.com>" "33" "Re: [oss-security] Fwd: [openssl-announce] Forthcoming OpenSSL releases" nil nil nil "3" "2015031808:17:47" "[oss-security] Fwd: [openssl-announce] Forthcoming OpenSSL releases" (number mark "        solar@openwa Mar 18   33/1519  " thread-indent "\"Re: [oss-security] Fwd: [openssl-announce] Forthcoming OpenSSL releases\"\n") "<20150317000005.GA3041@openwall.com>" ("<20150317000005.GA3041@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19946 invoked by uid 550); 18 Mar 2015 08:17:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19927 invoked from network); 18 Mar 2015 08:17:50 -0000
Message-ID: <20150318081747.GA18610@openwall.com>
References: <20150317000005.GA3041@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150317000005.GA3041@openwall.com>
User-Agent: Mutt/1.4.2.3i
Cc: Mark J Cox <mjc@redhat.com>
Date: Wed, 18 Mar 2015 11:17:47 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fwd: [openssl-announce] Forthcoming OpenSSL releases
To: oss-security@lists.openwall.com

Mark -

It was suggested to me off-list that it'd be helpful to publicly specify
not only the date, but also the time (and timezone) of the forthcoming
OpenSSL releases.  Can you?

All -

On Tue, Mar 17, 2015 at 03:00:05AM +0300, Solar Designer wrote:
> I think the limited public info on this should be in here ASAP, hence
> the forward.

References to commits for CVE-2015-0209, CVE-2015-0285, CVE-2015-0288:

https://twitter.com/Sh1bumi/status/577904223444168704

Mark's reply:

<@iamamoose> @Sh1bumi those are all "low severity" classification, previously committed issues, which will be included in roll up on Thursday too.

<@iamamoose> @Sp1l As per the security policy, low severity issues (and some moderates) get fixed in public as and when -- those issues are known public
<@iamamoose> @Sp1l CVE-2015-0285 is https://git.openssl.org/gitweb/?p=openssl.git;a=commit;h=e1b568dd2462f7cacf98f3d117936c34e2849a6b CVE-2015-0288 https://git.openssl.org/gitweb/?p=openssl.git;a=commit;h=28a00bcd8e318da18031b2ac8778c64147cd54f9

On vendor notifications so far:

<iamamoose> Per https://www.openssl.org/about/secpolicy.html we've provided details of the #openssl vulns to distros@ vendors on request, also now to LibreSSL.
<@iamamoose> @iamamoose we've also provided details today to Apple and IBM who are not currently distros@ members #openssl

BTW, OpenSSL Security Policy at
https://www.openssl.org/about/secpolicy.html specifies what kind of
issues the three severity classifications may correspond to.

Alexander
