X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1577" "Wednesday" "14" "September" "2016" "19:59:04" "+0800" "Matt Johnston" "matt@ucc.asn.au" "<20160914115904.GD17345@ucc.gu.uwa.edu.au>" "39" "[oss-security] CVE request for Dropbear SSH <2016.74" nil nil nil "9" "2016091411:59:04" "[oss-security] CVE request for Dropbear SSH <2016.74" (number mark "U       matt@ucc.asn Sep 14   39/1577  " thread-indent "\"[oss-security] CVE request for Dropbear SSH <2016.74\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30174 invoked by uid 550); 14 Sep 2016 13:37:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7491 invoked from network); 14 Sep 2016 11:59:19 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2A3AwB/OtlX/8+AX4JcHgYMgzoBAQEBA?=
 =?us-ascii?q?XV8jiaqMoIDJId/FAECAQEBAQEBAV4nhSIGAQEHMTs0BRiJDg6udoUvAQEFh24?=
 =?us-ascii?q?MARwIjCIXgSaBS2KBfgtYgi+PKYpEhiWJJXGBB4RgiRSMW4N7HjYUR4IXGoFqY?=
 =?us-ascii?q?wGEJyuCAQEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2A3AwB/OtlX/8+AX4JcHgYMgzoBAQEBAXV8jiaqMoIDJId?=
 =?us-ascii?q?/FAECAQEBAQEBAV4nhSIGAQEHMTs0BRiJDg6udoUvAQEFh24MARwIjCIXgSaBS?=
 =?us-ascii?q?2KBfgtYgi+PKYpEhiWJJXGBB4RgiRSMW4N7HjYUR4IXGoFqYwGEJyuCAQEBAQ?=
X-IronPort-AV: E=Sophos;i="5.30,333,1470672000"; 
   d="scan'208";a="240329421"
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ucc.asn.au;
	s=ucc-2016-3; t=1473854306;
	bh=6oBw9NdUa6XSVRtuBgm4+pW20x1YqBEd5d4hJDGlNZE=;
	h=Date:From:To:Subject;
	b=gXhzk8Zsywc6jA7+wlqiAixltECl9vGORtrDrI/dWzOdFcemZyplDjVtykm4FdaET
	 PKiW93010WPHBbxrkiieQN20T5clAVwgE+4PH7I5zcNvY8P3/l3fFSVnnzpXI6B4Gn
	 unCst/szvoutcmkEycXuDaD69p8GlUG4GiwAmVuY=
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ucc.asn.au;
	s=ucc-2016-3; t=1473854305;
	bh=6oBw9NdUa6XSVRtuBgm4+pW20x1YqBEd5d4hJDGlNZE=;
	h=Date:From:To:Subject;
	b=WZbS1rp0gSX3/Op0bAIEf4OvwhxYHgw0vhieeS3/1mpdu75UAnDOq/G0VbdjpcNIN
	 mImKr7MiXjemW/6pupaQ23//+vu1OP83IicLw2XgGgm+pXoHwFGpCYYZhxboY/PA6G
	 YNBc+aUPJGA70SiyhueV3V2dAmrzLb0CDAI5cbq8=
Date: Wed, 14 Sep 2016 19:59:04 +0800
From: Matt Johnston <matt@ucc.asn.au>
To: oss-security@lists.openwall.com
Message-ID: <20160914115904.GD17345@ucc.gu.uwa.edu.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-snowman: =?utf-8?Q?=E2=98=83_9dmzfODFclXOaMo0X0ST7l?=
 =?utf-8?Q?BWoLpTHjUWz2qsF1vPFFP9GF6OPK3IsmGF?=
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE request for Dropbear SSH <2016.74

Hi,

Dropbear 2016.74 fixed security issues, can I please have 5
CVEs assigned. The first one has different exposure for
client/server parts so I assume it should have separate
CVEs?

Cheers,
Matt
(please CC replies)

2016.74 - 21 July 2016

- Security: Message printout was vulnerable to format string injection.

  If specific usernames including "%" symbols can be created on a system
  (validated by getpwnam()) then an attacker could run arbitrary code as root
  when connecting to Dropbear server.

  A dbclient user who can control username or host arguments could potentially
  run arbitrary code as the dbclient user. This could be a problem if scripts
  or webpages pass untrusted input to the dbclient program.
  https://secure.ucc.asn.au/hg/dropbear/rev/b66a483f3dcb

- Security: dropbearconvert import of OpenSSH keys could run arbitrary code as
  the local dropbearconvert user when parsing malicious key files
  https://secure.ucc.asn.au/hg/dropbear/rev/34e6127ef02e

- Security: dbclient could run arbitrary code as the local dbclient user if
  particular -m or -c arguments are provided. This could be an issue where
  dbclient is used in scripts.
  https://secure.ucc.asn.au/hg/dropbear/rev/eed9376a4ad6

- Security: dbclient or dropbear server could expose process memory to the
  running user if compiled with DEBUG_TRACE and running with -v
  https://secure.ucc.asn.au/hg/dropbear/rev/6a14b1f6dc04

  The security issues were reported by an anonymous researcher working with
  Beyond Security's SecuriTeam Secure Disclosure www.beyondsecurity.com/ssd.html
