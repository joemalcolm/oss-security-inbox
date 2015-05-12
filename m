X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["761" "Tuesday" "12" "May" "2015" "11:13:55" "+0100" "Stuart Henderson" "stu@spacehopper.org" "<20150512101355.GG15996@symphytum.spacehopper.org>" "20" "Re: [oss-security] CVE Request: wireshark: crash on a sample capture file genbroad.snoop" nil nil nil "5" "2015051210:13:55" "[oss-security] CVE Request: wireshark: crash on a sample capture file genbroad.snoop" (number mark "        stu@spacehop May 12   20/761   " thread-indent "\"Re: [oss-security] CVE Request: wireshark: crash on a sample capture file genbroad.snoop\"\n") "<CAAO3Qb7LM8n53772MNdG=xdvGNs9-JCTWTqh5Y-Yo42jrpd3+A@mail.gmail.com>" ("<CAAO3Qb7LM8n53772MNdG=xdvGNs9-JCTWTqh5Y-Yo42jrpd3+A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32105 invoked by uid 550); 12 May 2015 10:14:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32084 invoked from network); 12 May 2015 10:14:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=spacehopper.org;
	 h=content-transfer-encoding:user-agent:in-reply-to
	:content-disposition:content-type:content-type:mime-version
	:references:message-id:subject:subject:from:from:date:date
	:received:received; s=spacehop2; t=1431425635; bh=DrdQwWOW4U4t8O
	Y8+aagzwKFLDwiZ6E8asgaIrEflww=; b=Z7fT+a3U/pnUcsNNbtzDvdTS33WPHQ
	JLVXySK1DzGhnmPZeyyFO+vzNcTYeDsxgwRsbxmLRo0oAivd85b5JC4oI7YpB4f1
	zyUt9euphuNb2fV3e1gKRghtdrNvB4kjHgpDRtTiqCiKhxdRg97ahx8EpuMR81EC
	Bd7r4nbeHqFi0PmlZ1y458PHKYE/tVLMrmH2BYMF59+EyZTlbUh6DbluMRuH2O7C
	vskelY34sVCWATQo5kcij9ujZn4cQnzlc1ali/WNternZ4+p+iAfZP31TLyeRqg0
	YqbGmoiyD2Y7Hmb5I4vLYTRGDJkZuiUgI0Xuy5kSyh7vKg+IRlbSwnNg==
X-Virus-Scanned: amavisd-new at spacehopper.org
Message-ID: <20150512101355.GG15996@symphytum.spacehopper.org>
References: <CAAO3Qb7LM8n53772MNdG=xdvGNs9-JCTWTqh5Y-Yo42jrpd3+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAAO3Qb7LM8n53772MNdG=xdvGNs9-JCTWTqh5Y-Yo42jrpd3+A@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2015 11:13:55 +0100
From: Stuart Henderson <stu@spacehopper.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: wireshark: crash on a sample capture
 file genbroad.snoop
To: oss-security@lists.openwall.com

On 2015/05/11 17:20, Mgr. Martin =C5=BDember wrote:
> Hello,
>=20
> I would like to request a CVE for the following issue:
>=20
> wireshark crashes on a sample capture file genbroad.snoop
>=20
> References:
>    https://bugzilla.redhat.com/show_bug.cgi?id=3D1219409

Given the nature of the task (decoding network traffic, which is quite
often truncated or malicious, in C) and the wide protocol support, it's
no big surprise that this type of bug shows up so frequently.

I always thought it was a pity that Wireshark's privilege separation
only concerns itself with handling captures as root while running the
main body of the program as a normal userid (rather than specifically
running the risky code, i.e. the dissectors, jailed as an unprivileged
user).

