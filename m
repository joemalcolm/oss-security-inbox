X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["920" "Sunday" "22" "March" "2015" "12:54:57" "-0400" "David A. Wheeler" "dwheeler@dwheeler.com" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "25" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032216:54:57" "[oss-security] CVE for Kali Linux" (number mark "        dwheeler@dwh Mar 22   25/920   " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550EE478.70005@redhat.com>" ("<550EE478.70005@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30240 invoked by uid 550); 22 Mar 2015 16:55:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30222 invoked from network); 22 Mar 2015 16:55:09 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Mailer: RMM6
In-Reply-To: <550EE478.70005@redhat.com>
Message-Id: <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>
Date: Sun, 22 Mar 2015 12:54:57 -0400 (EDT)
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: "oss-security" <oss-security@lists.openwall.com>

On Sun, 22 Mar 2015 09:49:12 -0600, Kurt Seifried <kseifried@redhat.com> wr=
ote:
> I meant from the CVE assignment perspective. This was back in 1999, it's
> only recently (e.g. the last 6 months or so?) that we've moved the
> security bar to:
>=20
> downloads of updates via HTTP with no other protection =3D=3D CVE

On 2015-02-26 I reported to Cygwin that they had a similar man-in-the-middl=
e issue.
The Cygwin package manager (which downloaded all other packages) was unprot=
ected
and downloaded using http (as http://cygwin.com/setup-x86.exe or http://cyg=
win.com/setup-x86_64.exe).
They changed it to load with HTTPS, and later added HTTP Strict Transport S=
ecurity (HSTS).

However, since they were the only site that could (realistically) correct i=
t, I didn't
request a CVE.  (FYI, they quickly repaired that problem once they received=
 the report.)

Should I have requested a CVE?

--- David A. Wheeler
