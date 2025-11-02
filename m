Received: (qmail 9221 invoked by uid 550); 2 Nov 2025 19:36:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11738 invoked from network); 2 Nov 2025 10:30:40 -0000
From: "Olle E. Johansson" <oej@edvina.net>
Message-Id: <007B59A3-903D-48C6-8295-764499DA5190@edvina.net>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2D0ECF84-8222-4D44-8977-21CBCF115323"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Date: Sun, 2 Nov 2025 11:30:19 +0100
In-Reply-To: <20251101030054.GA3031@openwall.com>
To: oss-security@lists.openwall.com
References: <aP_msOoiyHJ_M4Yx@mertle>
 <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
 <20251028014909.GA6430@openwall.com>
 <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
 <20251101030054.GA3031@openwall.com>
X-Mailer: Apple Mail (2.3826.700.81)
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

--Apple-Mail=_2D0ECF84-8222-4D44-8977-21CBCF115323
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 1 Nov 2025, at 04:00, Solar Designer <solar@openwall.com> wrote:
>=20
> CVEs against dnsmasq (CVE-2025-12198, CVE-2025-12199, CVE-2025-12200)
> and Kamailio (CVE-2025-12204, CVE-2025-12205, CVE-2025-12206, and
> CVE-2025-12207) mentioned in this thread are not yet disputed and have
> no comments of this sort in their descriptions.

As part of the Kamailio project I can say that we did just become aware of =
these CVEs in your email. They do not make sense. Trying to get to the repo=
rt, the config files used to provoke the issue can=E2=80=99t be downloaded.

If you have access to edit the config files, there are much more simple way=
s to cause damage than to provoke a problem in the config file parser.

We will have an internal discussion but that will likely lead to the projec=
t disputing these CVEs.

Best regards,
/Olle


--Apple-Mail=_2D0ECF84-8222-4D44-8977-21CBCF115323
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; -webkit-nbsp-mod=
e: space; line-break: after-white-space;"><br id=3D"lineBreakAtBeginningOfM=
essage"><div><br><blockquote type=3D"cite"><div>On 1 Nov 2025, at 04:00, So=
lar Designer &lt;solar@openwall.com&gt; wrote:</div><br class=3D"Apple-inte=
rchange-newline"><div><span style=3D"caret-color: rgb(0, 0, 0); font-family=
: Helvetica; font-size: 18px; font-style: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; text-align: start; text-indent:=
 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit=
-text-stroke-width: 0px; text-decoration: none; float: none; display: inlin=
e !important;">CVEs against dnsmasq (CVE-2025-12198, CVE-2025-12199, CVE-20=
25-12200)</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Helvet=
ica; font-size: 18px; font-style: normal; font-variant-caps: normal; font-w=
eight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; text-decoration: none;"><span style=3D"caret-color: rgb(0,=
 0, 0); font-family: Helvetica; font-size: 18px; font-style: normal; font-v=
ariant-caps: normal; font-weight: 400; letter-spacing: normal; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; float: n=
one; display: inline !important;">and Kamailio (CVE-2025-12204, CVE-2025-12=
205, CVE-2025-12206, and</span><br style=3D"caret-color: rgb(0, 0, 0); font=
-family: Helvetica; font-size: 18px; font-style: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span style=3D"care=
t-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; font-style:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration:=
 none; float: none; display: inline !important;">CVE-2025-12207) mentioned =
in this thread are not yet disputed and have</span><br style=3D"caret-color=
: rgb(0, 0, 0); font-family: Helvetica; font-size: 18px; font-style: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text=
-align: start; text-indent: 0px; text-transform: none; white-space: normal;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;"=
><span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-siz=
e: 18px; font-style: normal; font-variant-caps: normal; font-weight: 400; l=
etter-spacing: normal; text-align: start; text-indent: 0px; text-transform:=
 none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; text-decoration: none; float: none; display: inline !important;">no com=
ments of this sort in their descriptions.</span></div></blockquote></div><b=
r><div>As part of the Kamailio project I can say that we did just become aw=
are of these CVEs in your email. They do not make sense. Trying to get to t=
he report, the config files used to provoke the issue can=E2=80=99t be down=
loaded.</div><div><br></div><div>If you have access to edit the config file=
s, there are much more simple ways to cause damage than to provoke a proble=
m in the config file parser.</div><div><br></div><div>We will have an inter=
nal discussion but that will likely lead to the project disputing these CVE=
s.</div><div><br></div><div>Best regards,</div><div>/Olle</div><div><br></d=
iv></body></html>=

--Apple-Mail=_2D0ECF84-8222-4D44-8977-21CBCF115323--
