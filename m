X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8337" "Monday" "6" "March" "2017" "15:15:27" "-0800" "Andy LoPresto" "alopresto@apache.org" "<5B4851DB-DCE6-4F85-97C7-05605441C2FD@apache.org>" "167" "[oss-security] [ANNOUNCE] CVE-2017-5635 and CVE-2017-5636" nil nil nil "3" "2017030623:15:27" "[oss-security] [ANNOUNCE] CVE-2017-5635 and CVE-2017-5636" (number mark "U       alopresto@ap Mar  6  167/8337  " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2017-5635 and CVE-2017-5636\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29769 invoked by uid 550); 7 Mar 2017 08:06:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25698 invoked from network); 6 Mar 2017 23:15:44 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:reply-to:subject:date:message-id:to
         :mime-version;
        bh=bYKwX1iRd/Xtb3CTVlSwWwG/gctnyaapbUaSwuMSjC8=;
        b=RIc7xZUBlDG3pBzKPSfbWzgbJ9j8oB4LKKauUt8bEZwQ5yKQqg4EPR93t1uxt+xhps
         TUuf8Jlqpf+f26sZXqf+nY/71xN/F6lR3AIqXlKBPdBJXV08AxIhpc7PtSsckBqlUaoF
         wGc+SKcBisnzYgQtRY/0EmKXoHsViqfzihB+e2UKfF4wRZsWLTk75oJOeBtj9kKYpXhk
         bY5ZyJXnIRT2BbYfwhd4GXHc+FUKdn3PjKiKJCIIFMtjne/omib/Ww+svojH5F6Tvy/U
         ubom+aGzn/B82x40YRE/N7JXzErt3Lm689rIFnl9gdvVL4i4MyJXWIH7XqDrE9W0OJ8V
         MGsw==
X-Gm-Message-State: AMke39nu/cBDNf36sNs9835aCU+N2tmD//yBzIH/HS5YrOVPPK3sMGiNr5oBeW+Laj+bbg==
X-Received: by 10.84.171.195 with SMTP id l61mr29640977plb.84.1488842132891;
        Mon, 06 Mar 2017 15:15:32 -0800 (PST)
From: Andy LoPresto <alopresto@apache.org>
X-Pgp-Agent: GPGMail
Content-Type: multipart/signed; boundary="Apple-Mail=_8E51D2A1-65F5-4661-9AE6-0CBA3CEE8DFB"; protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Mon, 6 Mar 2017 15:15:27 -0800
Message-Id: <5B4851DB-DCE6-4F85-97C7-05605441C2FD@apache.org>
To: security@nifi.apache.org,
 dev@nifi.apache.org,
 users@nifi.apache.org,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] [ANNOUNCE] CVE-2017-5635 and CVE-2017-5636

--Apple-Mail=_8E51D2A1-65F5-4661-9AE6-0CBA3CEE8DFB
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_939F5C6E-CD78-4A4A-9266-92865669AEE6"


--Apple-Mail=_939F5C6E-CD78-4A4A-9266-92865669AEE6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Apache NiFi PMC would like to announce the discovery and resolution of CVE-=
2017-5635 and CVE-2017-5636. These issues have been resolved and new versio=
ns of the Apache NiFi project were released in accordance with the Apache R=
elease Process.

Fixed in Apache NiFi 0.7.2 and 1.1.2

CVE-2107-5635: Apache NiFi Unauthorized Data Access In Cluster Environment

Severity: Important

Versions Affected:

Apache NiFi 0.7.0
Apache NiFi 0.7.1
Apache NiFi 1.1.0
Apache NiFi 1.1.1
Description: In a cluster environment, if an anonymous user request is repl=
icated to another node, the originating node identity is used rather than t=
he =E2=80=9Canonymous=E2=80=9D user.

Mitigation: A fix has been provided (removing the negative check for anonym=
ous user before building the proxy chain and throwing an exception, and eva=
luating each user in the proxy chain iteration and comparing against a stat=
ic constant anonymous user). This fix was applied in NIFI-3487 and released=
 in Apache NiFi 0.7.2 and 1.1.2. 1.x users running a clustered environment =
should upgrade to 1.1.2. 0.x users running a clustered environment should u=
pgrade to 0.7.2.

Credit: This issue was discovered by Leonardo Dias in conjunction with Matt=
 Gilman.

CVE-2107-5636: Apache NiFi User Impersonation In Cluster Environment

Severity: Moderate

Versions Affected:

Apache NiFi 0.7.0
Apache NiFi 0.7.1
Apache NiFi 1.1.0
Apache NiFi 1.1.1
Description: In a cluster environment, the proxy chain serialization/deseri=
alization is vulnerable to an injection attack where a carefully crafted us=
ername could impersonate another user and gain their permissions on a repli=
cated request to another node.

Mitigation: A fix has been provided (modification of the tokenization code =
and sanitization of user-provided input). This fix was applied in NIFI-3487=
 and released in Apache NiFi 0.7.2 and 1.1.2. 1.x users running a clustered=
 environment should upgrade to 1.1.2. 0.x users running a clustered environ=
ment should upgrade to 0.7.2.

Credit: This issue was discovered by Andy LoPresto.

Andy LoPresto
alopresto@apache.org
alopresto.apache@gmail.com
PGP Fingerprint: 70EC B3E5 98A6 5A3F D3C4  BACE 3C6E F65B 2F7D EF69


--Apple-Mail=_939F5C6E-CD78-4A4A-9266-92865669AEE6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D""><div class=3D"">Ap=
ache NiFi PMC would like to announce the discovery and resolution of CVE-20=
17-5635 and CVE-2017-5636. These issues have been resolved and new versions=
 of the Apache NiFi project were released in accordance with the Apache Rel=
ease Process.&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D=
"">Fixed in Apache NiFi 0.7.2 and 1.1.2</div><div class=3D""><br class=3D""=
></div><div class=3D"">CVE-2107-5635: Apache NiFi Unauthorized Data Access =
In Cluster Environment</div><div class=3D""><br class=3D""></div><div class=
=3D"">Severity: Important</div><div class=3D""><br class=3D""></div><div cl=
ass=3D"">Versions Affected:</div><div class=3D""><br class=3D""></div><div =
class=3D"">Apache NiFi 0.7.0</div><div class=3D"">Apache NiFi 0.7.1</div><d=
iv class=3D"">Apache NiFi 1.1.0</div><div class=3D"">Apache NiFi 1.1.1</div=
><div class=3D"">Description: In a cluster environment, if an anonymous use=
r request is replicated to another node, the originating node identity is u=
sed rather than the =E2=80=9Canonymous=E2=80=9D user.</div><div class=3D"">=
<br class=3D""></div><div class=3D"">Mitigation: A fix has been provided (r=
emoving the negative check for anonymous user before building the proxy cha=
in and throwing an exception, and evaluating each user in the proxy chain i=
teration and comparing against a static constant anonymous user). This fix =
was applied in NIFI-3487 and released in Apache NiFi 0.7.2 and 1.1.2. 1.x u=
sers running a clustered environment should upgrade to 1.1.2. 0.x users run=
ning a clustered environment should upgrade to 0.7.2.&nbsp;</div><div class=
=3D""><br class=3D""></div><div class=3D"">Credit: This issue was discovere=
d by Leonardo Dias in conjunction with Matt Gilman.</div><div class=3D""><b=
r class=3D""></div><div class=3D"">CVE-2107-5636: Apache NiFi User Imperson=
ation In Cluster Environment</div><div class=3D""><br class=3D""></div><div=
 class=3D"">Severity: Moderate</div><div class=3D""><br class=3D""></div><d=
iv class=3D"">Versions Affected:</div><div class=3D""><br class=3D""></div>=
<div class=3D"">Apache NiFi 0.7.0</div><div class=3D"">Apache NiFi 0.7.1</d=
iv><div class=3D"">Apache NiFi 1.1.0</div><div class=3D"">Apache NiFi 1.1.1=
</div><div class=3D"">Description: In a cluster environment, the proxy chai=
n serialization/deserialization is vulnerable to an injection attack where =
a carefully crafted username could impersonate another user and gain their =
permissions on a replicated request to another node.</div><div class=3D""><=
br class=3D""></div><div class=3D"">Mitigation: A fix has been provided (mo=
dification of the tokenization code and sanitization of user-provided input=
). This fix was applied in NIFI-3487 and released in Apache NiFi 0.7.2 and =
1.1.2. 1.x users running a clustered environment should upgrade to 1.1.2. 0=
.x users running a clustered environment should upgrade to 0.7.2.&nbsp;</di=
v><div class=3D""><br class=3D""></div><div class=3D"">Credit: This issue w=
as discovered by Andy LoPresto.</div><div class=3D""><br class=3D""></div><=
div class=3D"">
<div style=3D"letter-spacing: normal; orphans: auto; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; widows: auto; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; -web=
kit-nbsp-mode: space; -webkit-line-break: after-white-space;" class=3D""><d=
iv style=3D"letter-spacing: normal; orphans: auto; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; widows: auto; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; -webki=
t-nbsp-mode: space; -webkit-line-break: after-white-space;" class=3D""><div=
 style=3D"color: rgb(0, 0, 0);" class=3D"">Andy LoPresto</div><div style=3D=
"color: rgb(0, 0, 0);" class=3D""><a href=3D"mailto:alopresto@apache.org" c=
lass=3D"">alopresto@apache.org</a></div><div class=3D""><i class=3D""><font=
 color=3D"#c0c0c0" class=3D""><a href=3D"mailto:alopresto.apache@gmail.com"=
 class=3D"">alopresto.apache@gmail.com</a></font></i></div><div style=3D"co=
lor: rgb(0, 0, 0);" class=3D"">PGP Fingerprint:&nbsp;70EC B3E5 98A6 5A3F D3=
C4 &nbsp;BACE 3C6E F65B 2F7D EF69</div></div></div>
</div>
<br class=3D""></body></html>=

--Apple-Mail=_939F5C6E-CD78-4A4A-9266-92865669AEE6--

--Apple-Mail=_8E51D2A1-65F5-4661-9AE6-0CBA3CEE8DFB
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJYve2PAAoJEDxu9lsvfe9pz20QAJRF0F87cBZUcEEfjWpHVdvt
mWGpEA3i+eXQgpjEfuTIlsc2kK2NX+Ld8FtLAVrw/oyD7/jOK6crSb2XTY0qOuQ1
Mn4/ARIFcLcRFkbCZ3e7VYXucPbqZGiuIwPm8QtFSXKtvPLK/Jqd+Ph5q3tAloTM
bzPRIpMpOzN+5tjbuS7DTHWOceW921ypz/gISJQfas4LtB3sJg1jnln4sFGizHMb
NMB/YYz48HackFMeyF95YldedYAKEPrrfWkNButxpbqCU5faPpzyV9iucW2o2H3Q
Ibxe522btKtN9PTjMLMrS/Fm4WO1vcmdZrmgvLVfCIatbnwYbMPTcAAwqIVHPfBs
urh1oQmQp3ycDSYLUXmnuLItzV0rzgwsiHvZPux+5F/hzAohdyqzpwe6ah0jFOkE
0DhV11NUwY6faBlCzbOKN6x5b1ONdWAy1mgUmmflBYwOa482LDQ2PLX5FAXYd8bI
ZNmFUSTrPVnpIcGkUuqGEzP0d+a1C+pZiLvpiANN1d+a6Zx2S+52mnSWAMvBT2d0
VDNsI2kW2rSwBsu8VlfRKi1+pyTX5VJh8pXS2gVDWqASI8lEPt4ZclnKPouqjchE
2RfGxZbBSR9QQrDzLodBw9/tOZ9AsFFHO6pcPEkBRgoR+lvZzMDyh1udk7u050S7
TehGM2OA5jCKqSzEIT1q
=DWEW
-----END PGP SIGNATURE-----

--Apple-Mail=_8E51D2A1-65F5-4661-9AE6-0CBA3CEE8DFB--
