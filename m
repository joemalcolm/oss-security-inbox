X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["598" "Thursday" "8" "June" "2017" "15:44:41" "-0700" "Ian Zimmerman" "itz@primate.net" "<20170608224258.11820.2FC34D65@matica.foolinux.mooo.com>" "20" "[oss-security] Re: Vixie/ISC Cron group crontab to root escalation" "^Date:" nil nil "6" "2017060822:44:41" "[oss-security] Re: Vixie/ISC Cron group crontab to root escalation" (number mark "        itz@primate. Jun  8   20/598   " thread-indent "\"[oss-security] Re: Vixie/ISC Cron group crontab to root escalation\"\n") "<20170608180534.GA27098@openwall.com>" ("<20170608180534.GA27098@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28148 invoked by uid 550); 8 Jun 2017 23:07:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15869 invoked from network); 8 Jun 2017 22:44:58 -0000
X-Authentication-Warning: acedia.primate.net: itz set sender to itz@primate.net using -f
Message-ID: <20170608224258.11820.2FC34D65@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20170608180534.GA27098@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170608180534.GA27098@openwall.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Thu, 8 Jun 2017 15:44:41 -0700
From: Ian Zimmerman <itz@primate.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Vixie/ISC Cron group crontab to root escalation
To: oss-security@lists.openwall.com

On 2017-06-08 20:05, Solar Designer wrote:

> Gentoo has a wiki page describing their Vixie Cron here:
> 
> https://wiki.gentoo.org/wiki/Cron#vixie-cron
> 
> Per their description, it's based on 4.1 and has some Linux specifics
> added (SELinux, PAM, etc.)  I don't know whether they use group
> crontab.

Yes:

~$ ls -l /usr/bin/crontab
-rwxr-sr-x 1 root crontab 44336 Oct 12  2016 /usr/bin/crontab

-- 
Please *no* private Cc: on mailing lists and newsgroups
Personal signed mail: please _encrypt_ and sign
Don't clear-text sign:
http://primate.net/~itz/blog/the-problem-with-gpg-signatures.html
