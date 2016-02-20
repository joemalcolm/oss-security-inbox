X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1065" "Friday" "19" "February" "2016" "21:36:02" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1UU7mCg_suEkOh3QYzPPEOQ2sRhk1zq2+R1mANb7kFyA@mail.gmail.com>" "35" "[oss-security] CVE for nodejs hawk" "^Date:" nil nil "2" "2016022004:36:02" "[oss-security] CVE for nodejs hawk" (number mark "U       kseifried@re Feb 19   35/1065  " thread-indent "\"[oss-security] CVE for nodejs hawk\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28342 invoked by uid 550); 20 Feb 2016 04:36:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28319 invoked from network); 20 Feb 2016 04:36:14 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=VxViCp44J9PIivD+h154PYR1E4BUNFYbl3rMrPNjNvg=;
        b=kMVBaTBWy9f+Qjcy81XzsOfe4eUAWDBSJBgUWCBWVGGZqjoenbQNbQoSV5VCDuZJ+k
         ipy7+HN21rolLTwDnxjRAK1W3r0hS6ktiZeWZjj4VEjXZY33diGaTyDj60hTY1JiPlOd
         957YuPEsjAMBsg6ms0uKF6iXk+bT+pg8UZLVxw8IxF+/R3+HH7p5MJPMJ5D1+aOlFYvN
         LGHdmWoYDMvVWafDIOhbrFVZhb5nBgsj/bmk5iJEb7p40hu1Gq99fyhd6lbYvDvu9Uuz
         J4OfZ8cSgdUEG1Z5l5LTaBO2xxj/At1TRyD6vPyu4q0xB47znJDQbEGbpqbU3bJM2XM6
         AZyQ==
X-Gm-Message-State: AG10YOSdoSPV1VRu+l/2G4VuwJLCfh/wU450HtYSWw/MH1UiAkNBGI8BByQvY3n7wTXUkBE0JieBA/IHG/cvgH68
MIME-Version: 1.0
X-Received: by 10.13.241.199 with SMTP id a190mr9576463ywf.47.1455942962356;
 Fri, 19 Feb 2016 20:36:02 -0800 (PST)
Message-ID: <CANO=Ty1UU7mCg_suEkOh3QYzPPEOQ2sRhk1zq2+R1mANb7kFyA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c03272015e746052c2c2307
Date: Fri, 19 Feb 2016 21:36:02 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE for nodejs hawk
To: oss-security <oss-security@lists.openwall.com>

--94eb2c03272015e746052c2c2307
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://nodesecurity.io/advisories/77

Regular Expression Denial of Service

January 19th, 2016

CVE-PENDING =E2=80=A2 Credit: Adam Baldwin

Specifically crafted long headers or uris can cause a minor denial of
service when using hawk versions less than 4.1.1.

"The Regular expression Denial of Service (ReDoS) is a Denial of Service
attack, that exploits the fact that most Regular Expression implementations
may reach extreme situations that cause them to work very slowly
(exponentially related to input size). An attacker can then cause a program
using a Regular Expression to enter these extreme situations and then hang
for a very long time."

=3D=3D=3D

Does Mitre know about this? Can we please have a CVE assigned for this?
Thanks.

--=20

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c03272015e746052c2c2307--
