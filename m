X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["886" "Monday" "26" "September" "2016" "18:59:13" "+0200" "cookieopfer@gmx.net" "cookieopfer@gmx.net" "<trinity-b2af326d-8386-44cc-b86d-1b0b3ef0e180-1474909153354@3capp-gmx-bs10>" "39" "Re: Re: [oss-security] ffmpeg afl bugs" "^Cc:" nil nil "9" "2016092616:59:13" "[oss-security] ffmpeg afl bugs" (number mark "        cookieopfer@ Sep 26   39/886   " thread-indent "\"Re: Re: [oss-security] ffmpeg afl bugs\"\n") "<20160925233516.GA10278@openwall.com>" ("<trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>" "<20160925233516.GA10278@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7252 invoked by uid 550); 26 Sep 2016 17:06:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26120 invoked from network); 26 Sep 2016 16:59:26 -0000
MIME-Version: 1.0
Message-ID: <trinity-b2af326d-8386-44cc-b86d-1b0b3ef0e180-1474909153354@3capp-gmx-bs10>
Content-Type: text/plain; charset=UTF-8
Importance: normal
Sensitivity: Normal
In-Reply-To: <20160925233516.GA10278@openwall.com>
References: <trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>,
 <20160925233516.GA10278@openwall.com>
Content-Transfer-Encoding: quoted-printable
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K0:EJc5TNScnBwE7f7GWR1EP7I4+lBGLqTzRtBxKmndE4I
 jYOrAhLlKa8MXTQtrK2874LU6Iw5T5UClj0dFuEDxTtJJ/KK6d
 RXmH8iYXT3Wef7aICSO9R9L6iRo69ks/gJzL8wWBpy9KYqrQox
 G0+6Hsa7ivjdCkrmTDfjNrVmsXzn08G2Un6ebFCm+tLvE96rGm
 1Mx+FW2xQ/yRtJ3XL3N2j36ky2SezTv3nCvgt9mfOJv0FtfNLk
 EHJZ0jh0lNSxZU7XUTeXdA4OgKfNGh0njsXcIZWv7X985Hz/5s FYJOw8=
X-UI-Out-Filterresults: notjunk:1;V01:K0:y7+GLfe4kH8=:iJpj5Q3nZaHi/zX0i5j4en
 eOm4VjdzdoifUQIqNKJ8fBg130E/eAnm3y/gK+cXRV6xnP9+N2YLW46gYNOQCgG/4iTyoJU7E
 K80llkd8kXYXcqewmB6VbVEMcmp7vmbs5qt9YjK8ojvtJSSOD3QAzc/cPYneIl40ss30Siuwk
 oKL/LNEQLLSxBXCRVMYicpA2JG1iXJ5lzB+R/Qhdy4u0ABYB/Kx7k05IOUJyQb8Yq1+3zURaM
 XdllgE1f/VVH4bH8AK01mu0KYEJaE0BFyianO9S/E0qGbSFmu+VVeV3gp7haTQkpfH73MBX1v
 H/Ua7k6vy4LejQ7rJ01Mo23Hm44BjfL6bDDL5IrkTncBmXHN/tmNKSR0wcrds4FKO4kQI6Jgp
 FxvctSY+WFOlGgaWP/FuaU7k9XqdfBw8lfPbIT8W1XEP+V3XL+EI61cgo6HeZy1Hu1eKHDNgj
 4vD36A23MQ==
Cc: =?UTF-8?Q?=22Hanno_B=C3=B6ck=22?= <hanno@hboeck.de>
Date: Mon, 26 Sep 2016 18:59:13 +0200
From: cookieopfer@gmx.net
Reply-To: oss-security@lists.openwall.com
Subject: Re: Re: [oss-security] ffmpeg afl bugs
To: cve-assign@mitre.org, oss-security@lists.openwall.com

Hi Hanno,


so, in that case a the CVE should be rejected, with regard to the
old CVE.


> Hello,

On Mon, 26 Sep 2016 01:45:40 -0400 (EDT)
cve-assign () mitre org wrote:

        overread end of atom 'stsd' by 4294967134 bytes=20=20


    Use CVE-2016-7554.


I don't think this is any vuln.

This is a warning message from ffmpeg itself, not from any memory
safety tool. Thus I interpret this as "this file is garbled and would
overread if we'd do what the file offsets indicate".

It probably indicated a bug that Michal originally found with this
file, but that happened long ago. The file is from Dec 2014 (looks like
this [1]).


[1] https://ffmpeg.org/pipermail/ffmpeg-cvslog/2014-December/084342.html
--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno () hboeck de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

Attachment: _bin
Description: OpenPGP digital signature
