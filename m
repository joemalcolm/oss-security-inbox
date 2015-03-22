X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1071" "Sunday" "22" "March" "2015" "14:16:09" "-0400" "David A. Wheeler" "dwheeler@dwheeler.com" "<E1YZkPx-0006Km-RX@rmm6prod02.runbox.com>" "25" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032218:16:09" "[oss-security] CVE for Kali Linux" (number mark "        dwheeler@dwh Mar 22   25/1071  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<20150322172300.GA21110@openwall.com>" ("<20150322172300.GA21110@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29906 invoked by uid 550); 22 Mar 2015 18:16:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29855 invoked from network); 22 Mar 2015 18:16:21 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Mailer: RMM6
In-Reply-To: <20150322172300.GA21110@openwall.com>
Message-Id: <E1YZkPx-0006Km-RX@rmm6prod02.runbox.com>
Date: Sun, 22 Mar 2015 14:16:09 -0400 (EDT)
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: "oss-security" <oss-security@lists.openwall.com>

On Sun, 22 Mar 2015 20:23:00 +0300, Solar Designer <solar@openwall.com> wro=
te:
> IMO, http vs. https is a red herring.  We shouldn't be focusing on
> security of software downloads, but rather on authenticity of the
> software.  If the distribution web server gets compromised, https
> doesn't help.  Thus, GPG signatures and the like.

I agree with you in *principle*.  However, people almost never check signat=
ures
if that process is a separate step. HTTPS is far more secure than
"HTTP plus signatures that are never checked" :-).
Their switch from HTTP to HTTPS for executable downloads is an improvement =
in *practice*.
(All other downloads are checked with signatures and cryptographic hashes; =
the
challenge, as always, is getting started with a trust root.)

We need to find ways to make checking essentially automatic in ways it's no=
t today,
preferably ways that don't create more monopoly control points.
Yes, I'm aware that there many places where they *are* checked automaticall=
y;
I'm focusing on the areas where they are not.

--- David A. Wheeler
