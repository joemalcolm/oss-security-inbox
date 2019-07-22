X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3235" "Monday" "22" "July" "2019" "11:21:46" "+0000" "Mikhail Klementev" "root@dumpstack.io" "<20190722112146.z4ey7777h5zci2zl@local>" "91" "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" "^Date:" nil nil "7" "2019072211:21:46" "[oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" (number mark "        root@dumpsta Jul 22   91/3235  " thread-indent "\"Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead\"\n") "<20190722100013.GJ1168@jumper.schlittermann.de>" ("<20190722100013.GJ1168@jumper.schlittermann.de>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9487 invoked by uid 550); 22 Jul 2019 11:24:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5826 invoked from network); 22 Jul 2019 11:22:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dumpstack.io; s=mail;
	t=1563794507; bh=2SVO9kwVg3wfswU6k2vAm4FFaaEvi6mi/rZaHGskuP4=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=LxHwhwv6GxYViXkkDbRQwlXImNmYbJ0mEHo87FmKWJFfeCNYLk3/KR9w1eGSbGVMw
	 hE19Xo5NNBUaDDgGnd3or8MsAoDJbvx3J7e30qRKgd9wFRFi8JWrQ5bT8IXG9N058l
	 60sVdhEMWXUziFb706pGFSiZTNM6sEAzbxRg0178=
Message-ID: <20190722112146.z4ey7777h5zci2zl@local>
References: <20190722100013.GJ1168@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190722100013.GJ1168@jumper.schlittermann.de>
Date: Mon, 22 Jul 2019 11:21:46 +0000
From: Mikhail Klementev <root@dumpstack.io>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security
 release ahead
To: oss-security@lists.openwall.com

Kindly notice that this is a public mail list.

On Mon, Jul 22, 2019 at 12:00:13PM +0200, Heiko Schlittermann wrote:
> *** Note: EMBARGO is still in effect until July 25th, 10:00 UTC. ***
> *** Distros must not publish any detail nor release updates yet. ***
> 
> CVE ID:     CVE-2019-13917
> OVE ID:     OVE-20190718-0006
> Date:       2019-07-18
> Credits:    Jeremy Harris
> Version(s): 4.85 up to and including 4.92
> Issue:      A local or remote attacker can execute programs with root
>             privileges - if you've an unusual configuration. For details
>             see below.
> 
> Coordinated Release Date (CRD) for Exim 4.92.1:
>             Thu Jul 25 10:00:00 UTC 2019
> 
> Contact:    security@exim.org
> 
> This is a *heads-up* notice about the upcoming release.
> You may plan your availability and schedule an update of the Exim
> packages supplied by your distribution or build the new release from the
> source, once the release goes public on CRD.
> 
> Details
> =======
> 
> We discovered a vulnerability. We consider the risk of an exploit as
> low, you need to have a fairly unusual runtime configuration. Neither
> our default runtime configuration nor the runtime configuration shipped
> by the Debian distribution is vulnerable.
> 
> The vulnerability is exploitable either remotely or locally and could
> be used to execute other programs with root privilege.
> 
> More details and fixes are not yet public, but will be made public on
> CRD, July 25th.
> 
> Timeline
> ========
> 
> t0: Thu Jul 18 2019
>     - this notice to distros@vs.openwall.org and exim-maintainers@exim.org
>     - open limited access to our security Git repo. See below.
> 
> t0+~4d: Mon Jul 22 10:00:00 UTC 2019 [NOW]
>     - heads-up notice to oss-security@lists.openwall.com,
>       exim-users@exim.org, and exim-announce@exim.org
> 
> t0+~7d: Thu Jul 25 10:00:00 UTC 2019
>     - Coordinated relase date
>     - publish the patches in our official and public Git repositories
>       and the packages on our FTP server.
> 
> Downloads available starting at CRD
> ====================================
> 
> For release tarballs (exim-4.92.1):
> 
>     http://ftp.exim.org/pub/exim/exim4/
> 
> The package files are signed with my GPG key.
> 
> For the full Git repo:
> 
>     https://git.exim.org/exim.git
>     https://github.com/Exim/exim    [mirror of the above]
>     - tag    exim-4.92.1
>     - branch exim-4.92.1+fixes
> 
> The tagged commit is the officially released version. The tag is signed
> with my GPG key.  The +fixes branch isn't officially maintained, but
> contains useful patches *and* the security fix. The relevant commit is
> signed with my GPG key. The old exim-4.92+fixes branch is being functionally
> replaced by the new exim-4.92.1+fixes branch.
> 
>     Best regards from Dresden/Germany
>     Viele Grüße aus Dresden
>     Heiko Schlittermann
> --
>  SCHLITTERMANN.de ---------------------------- internet & unix support -
>  Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
>  gnupg encrypted messages are welcome --------------- key ID: F69376CE -
>  ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -



-- 
Mikhail Klementev,
https://dumpstack.io
