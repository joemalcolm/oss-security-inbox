X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6103" "Monday" "9" "October" "2017" "16:02:37" "-0700" "Andy LoPresto" "alopresto@apache.org" "<13B90414-1C62-4858-BD74-051F67F1F6D4@apache.org>" "125" "[oss-security] [ANNOUNCE] Apache NiFi CVE-2017-12623" nil nil nil "10" "2017100923:02:37" "[oss-security] [ANNOUNCE] Apache NiFi CVE-2017-12623" (number mark "U       alopresto@ap Oct  9  125/6103  " thread-indent "\"[oss-security] [ANNOUNCE] Apache NiFi CVE-2017-12623\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9799 invoked by uid 550); 10 Oct 2017 00:46:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11828 invoked from network); 9 Oct 2017 23:02:56 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:reply-to:subject:date:message-id:to
         :mime-version;
        bh=T+JI2M9ilhwqTjBZSuScCQw2xO9aNbZmfX3pkGvd8Po=;
        b=cSSNTv8aP3z3/bKQSNbGAI1e4QSOL1YfHAvX3nYGnAoFZ2GtArPTHze0lWys0fgTRa
         2e6s6DyNl74eaxufCri5TWLvuOB7DFCqhMMBj0QeSZ6ghHcJJ69dQXr6VUzN3pD/7mrP
         zgNWl+f8c4O7Hr91TLXxT05LqzsJluUuxmZQd9EboniYywGHHyGh+9nGMa/K2qNo2wKM
         UPq2wO8KoANM+NaMpQuT9henKnQAPcoTfWY8lmYbw4GOpitmwzM+gludJID+42iPFbR+
         DQyuu7Qyn5MqCiqp+owCV6eCMPmrJyqAe7aLer94bPHGP1XaxBJDPXHa0SuzfHK1ANf9
         UT/Q==
X-Gm-Message-State: AMCzsaVrovykpzCGiBHFeVFa7XgNHMyb+WIYNVhZs5ngVpJVanWz+N14
	pOQaZS0iM+CYPw9JSTWWOh0=
X-Google-Smtp-Source: AOwi7QDDo/+87En6S0dYTicCcSkNKFZaDzuGzRz9yGxby3/Os/TFGUi1L6Hnxto87RGr/LKhAvcH5A==
X-Received: by 10.98.74.155 with SMTP id c27mr11535588pfj.236.1507590164565;
        Mon, 09 Oct 2017 16:02:44 -0700 (PDT)
From: Andy LoPresto <alopresto@apache.org>
Content-Type: multipart/signed; boundary="Apple-Mail=_36449B45-FB89-461C-9B54-406E03B9A5B0"; protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Mon, 9 Oct 2017 16:02:37 -0700
Message-Id: <13B90414-1C62-4858-BD74-051F67F1F6D4@apache.org>
To: security@nifi.apache.org,
 dev@nifi.apache.org,
 users@nifi.apache.org,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com,
 announce@apache.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] [ANNOUNCE] Apache NiFi CVE-2017-12623

--Apple-Mail=_36449B45-FB89-461C-9B54-406E03B9A5B0
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_681709A7-040E-4D6B-AB7A-591B09CCE207"


--Apple-Mail=_681709A7-040E-4D6B-AB7A-591B09CCE207
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Apache NiFi PMC would like to announce the discovery and resolution of CVE-=
2017-12623. This issue has been resolved and a new version of the Apache Ni=
Fi project was released in accordance with the Apache Release Process.

Apache NiFi is an easy to use, powerful, and reliable system to process and=
 distribute data. It supports powerful and scalable directed graphs of data=
 routing, transformation, and system mediation logic.

Fixed in Apache NiFi 1.4.0 (Released: October 2, 2017)

CVE-2017-12623: Apache NiFi XXE issue when loading template

Severity: Medium

Versions Affected:

Apache NiFi 1.0.0 - 1.3.0

Description: An authorized user could upload a template which contained mal=
icious code and accessed sensitive files via an XML External Entity (XXE) a=
ttack.

Mitigation: The fix to properly handle XML External Entities was applied on=
 the Apache NiFi 1.4.0 release. Users running a prior 1.x release should up=
grade to the appropriate release.

Credit: This issue was discovered by Pawe=C5=82 Gocyla.

For more information: https://nifi.apache.org/security.html

Andy LoPresto
alopresto@apache.org
alopresto.apache@gmail.com
PGP Fingerprint: 70EC B3E5 98A6 5A3F D3C4  BACE 3C6E F65B 2F7D EF69


--Apple-Mail=_681709A7-040E-4D6B-AB7A-591B09CCE207
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D""><div class=3D""><d=
iv class=3D"">Apache NiFi PMC would like to announce the discovery and reso=
lution of CVE-2017-12623. This issue has been resolved and a new version of=
 the Apache NiFi project was released in accordance with the Apache Release=
 Process.&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D"">A=
pache NiFi is an easy to use, powerful, and reliable system to process and =
distribute data. It supports powerful and scalable directed graphs of data =
routing, transformation, and system mediation logic.</div><div class=3D""><=
br class=3D""></div><div class=3D"">Fixed in Apache NiFi 1.4.0 (Released: O=
ctober 2, 2017)</div><div class=3D""><br class=3D""></div><div class=3D"">C=
VE-2017-12623: Apache NiFi XXE issue when loading template</div><div class=
=3D""><br class=3D""></div><div class=3D"">Severity: Medium</div><div class=
=3D""><br class=3D""></div><div class=3D"">Versions Affected:</div><div cla=
ss=3D""><br class=3D""></div><div class=3D"">Apache NiFi 1.0.0 - 1.3.0</div=
><div class=3D""><br class=3D""></div><div class=3D"">Description: An autho=
rized user could upload a template which contained malicious code and acces=
sed sensitive files via an XML External Entity (XXE) attack.&nbsp;</div><di=
v class=3D""><br class=3D""></div><div class=3D"">Mitigation: The fix to pr=
operly handle XML External Entities was applied on the Apache NiFi 1.4.0 re=
lease. Users running a prior 1.x release should upgrade to the appropriate =
release.&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D"">Cr=
edit: This issue was discovered by Pawe=C5=82 Gocyla.</div><div class=3D"">=
<br class=3D""></div><div class=3D"">For more information: <a href=3D"https=
://nifi.apache.org/security.html" class=3D"">https://nifi.apache.org/securi=
ty.html</a></div></div><div class=3D""><br class=3D""></div><div class=3D"">
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

--Apple-Mail=_681709A7-040E-4D6B-AB7A-591B09CCE207--

--Apple-Mail=_36449B45-FB89-461C-9B54-406E03B9A5B0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJZ3AAOAAoJEDxu9lsvfe9pKMIP/jwWH1jOjeuzBEBIrNio/vTT
Pa9iVoXW/DSqSUevZPO6qT8khYYpzbrfrH1iO6rMhfL3oHU0VuEBulOFFM1e3Ug+
blS5VyWYIlL2WTMiXdHWYopNp2AMptQqtFS6BCXlqQHzlhdwCaobCcVEelU7JnIZ
jCjx+VTQUf/w+ILNoDYLnVpklFqDaVv+41Q2+rHdT8aQSQKtWAeNuCFanD58SiYB
IMRGoW+IMmIcUpCTQ3pk67U+YZyoeAkk1N5ClhYC8qy/+L12mj9ruMMzuXKFgMLS
WGOcO7l4jgUZMaycnn6207HttlbmDeruCGaJh5VUe6BXL4fOB4igXj+1vQMv6++Y
WC4iz1QpBXfqlr4OSZ/atg90HbRe7d6MMou5hsDkGyvOd0KDYA0SDdTTdh1GJpii
8f6GvTMNKrqwWeYYGM2bv9GAxO3g0ZH0tlVuXd0GjSL3h6UiK09KCl9eaXxurFnn
GIuYWDdMy5cBJOZ+5UO/xVHfriWMQNhqnRfyO/SeHXaangM67xYKA8vmgV3oH/sN
gnT3kT68wYOTB1oZfLq615WKXjBCZ2bGZsQg4BH0EEj0W5OS4LOsHGAqEHWDRP63
F3KRcSrNYerMS0S3TZE6tnKwnum/9oAKw9q0bxHu+XrpxOtAF7tw4E6bboNiFZTv
ueuD5GP7vcg3yRrhlf22
=4VYx
-----END PGP SIGNATURE-----

--Apple-Mail=_36449B45-FB89-461C-9B54-406E03B9A5B0--
