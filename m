X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1183" "Monday" "12" "June" "2017" "20:15:06" "+0200" "Casper.Dik@oracle.com" "Casper.Dik@oracle.com" "<201706121815.v5CIF6jp021733@room101.nl.oracle.com>" "25" "Re: [oss-security] Vixie/ISC Cron group crontab to root escalation " "^Date:" nil nil "6" "2017061218:15:06" "[oss-security] Vixie/ISC Cron group crontab to root escalation" (number mark "        Casper.Dik@o Jun 12   25/1183  " thread-indent "\"Re: [oss-security] Vixie/ISC Cron group crontab to root escalation \"\n") "<20170609174117.DBE0617FDA8@rebar.astron.com>" ("<20170609162729.GA2535@openwall.com>" "<20170609174117.DBE0617FDA8@rebar.astron.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28032 invoked by uid 550); 12 Jun 2017 18:20:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26391 invoked from network); 12 Jun 2017 18:18:33 -0000
Message-Id: <201706121815.v5CIF6jp021733@room101.nl.oracle.com>
In-Reply-To: <20170609174117.DBE0617FDA8@rebar.astron.com> 
References: <20170609162729.GA2535@openwall.com> from Solar Designer (Jun 9, 6:27pm) <20170609174117.DBE0617FDA8@rebar.astron.com> 
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
Date: Mon, 12 Jun 2017 20:15:06 +0200
From: Casper.Dik@oracle.com
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Vixie/ISC Cron group crontab to root escalation 
To: oss-security@lists.openwall.com


>On Jun 9,  6:27pm, solar@openwall.com (Solar Designer) wrote:
>-- Subject: Re: [oss-security] Vixie/ISC Cron group crontab to root escalatio
>
>| Oh, I did in fact mention this in the private discussion, so I'll quote:
>| 
>| | Another detail: somehow in Owl we introduced lstat() prior to open, and
>| | check lstat()'s struct for all the required properties before proceeding
>| | with open() with O_NOFOLLOW.  Then we check that st_dev/st_ino stayed
>| | the same.  We also kept the post-open() checks.  I don't recall exactly
>| | why we added this, but maybe because of the possibility of side-effects
>| | on open() for hard links to device files (like with tape drives).  And
>| | it looks like we neglected to add the same for at jobs (perhaps didn't
>| | revisit this when support for at jobs appeared via our update to later
>| | OpenBSD code) - maybe we should.
>
>Thanks, perhaps a comment in the code can't hurt...
>Or even O_NODEV which does not exist, or O_PATH (linux only)..

As there is a O_DIRECTORY it would be more orthogonal to have O_REGULAR 
(open only a regular file).  But that becomes more and more icky as we're 
running out of 32 bits of O_*)

Casper

