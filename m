X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["905" "Wednesday" "22" "July" "2015" "19:55:42" "+0200" "Michele Spagnuolo" "mikispag@gmail.com" "<CAJmfd-iN-y9g9cN9vLvR8B9YC6kNveh0L_aY5ZhNitQR=z=viw@mail.gmail.com>" "27" "[oss-security] Multiple memory corruption vulnerabilities in SoX 14.4.2" nil nil nil "7" "2015072217:55:42" "[oss-security] Multiple memory corruption vulnerabilities in SoX 14.4.2" (number mark "U       mikispag@gma Jul 22   27/905   " thread-indent "\"[oss-security] Multiple memory corruption vulnerabilities in SoX 14.4.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30003 invoked by uid 550); 22 Jul 2015 18:07:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17712 invoked from network); 22 Jul 2015 17:56:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc:content-type;
        bh=xrmDYGfHpgh/7RZnHVaVT5eLzR+TtAQoIExLLn2s6kw=;
        b=cP5tZJtyX3jCMEH4s2Sd9asM4OUUUekbb+TO+qL+XtJc6S2bW9nzC3t8mA8l2ET95b
         O8kyIvY4orzPvftJZaIgIPkuib8a/UFWZUbgMe4BjdHI3T8pfSJOMMggPXzzpC7YYyav
         fOogNjoz3t0iReBc4fBIlUGb6YIUuVElWj46J4AfQMYAA2AkYz8VYRL3ZaduzfNvhT2w
         Gk4yXDdNU5sPTUjkOjhPjjL+b80Bw2IAoukc3Ufm2Ezgy0ed5vLSxeiaY6k8gLjz5jsp
         d3G9yiVJbegiLrprF01U3ZzX97s6U3La6LJHjJocGEZ4/VNiD8xZQy1A2ddU819Et/41
         Z1IQ==
X-Received: by 10.112.219.200 with SMTP id pq8mr3527209lbc.110.1437587781455;
 Wed, 22 Jul 2015 10:56:21 -0700 (PDT)
MIME-Version: 1.0
From: Michele Spagnuolo <mikispag@gmail.com>
Date: Wed, 22 Jul 2015 19:55:42 +0200
Message-ID: <CAJmfd-iN-y9g9cN9vLvR8B9YC6kNveh0L_aY5ZhNitQR=z=viw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a11c25ca60c17e8051b7a7da5
Subject: [oss-security] Multiple memory corruption vulnerabilities in SoX 14.4.2

--001a11c25ca60c17e8051b7a7da5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=E2=80=8BHello,

I would like to report publicly new memory corruption vulnerabilities in
the latest SoX, 14.4.2 - these have been reported in April 2015 through
oCERT, but they have notified me they still haven't received a response
from upstream.

Please see this shared folder, visible to anybody with the link:
https://drive.google.com/folderview?id=3D0B52EFul-UCEIflZhcjlrRGlqcWdER2xJZ=
WR4dmVUQ1RaRGl6a09sbVdGYjg2MER6OHl3aUU&usp=3Dsharing

The write heap buffer overflows are related to ADPCM handling in WAV files,
while the read heap buffer overflow is while opening a .VOC.

For each crash, you have the input file and a .txt with the ASAN output.

Thanks,
Michele Spagnuolo
Google Security Team=E2=80=8B

CVE-ASSIGN: Please assign CVEs. Thanks.

--001a11c25ca60c17e8051b7a7da5--
