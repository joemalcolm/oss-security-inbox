Received: (qmail 15597 invoked by uid 550); 29 Mar 2026 17:00:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20193 invoked from network); 29 Mar 2026 07:33:34 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1774769603; cv=none;
        d=google.com; s=arc-20240605;
        b=lmy7kPRxCi1fZX2sGuTlNPSsjHVYHexzOvAGnkhJUmYlnCgNQwPVCkxfYDkTptdzTx
         3FQP3p0QDdVOS69ndkDn/4KRbraZhG5DB8QWUItw75sZyrLtMX2OXniHNJtJl/JbF3U/
         NrUWe14Dtgo3VCp0VRwtvFlt8nMMw/J0YwK18IsDAxLHeQeisgWJJ6GXH1bPF38axg4z
         D7xL9ZSyaBCpZ3vhU3kP0q8v4UW2nHsm2vhXjdoEKaP5Q+ZnLTu1m+nNsJO/+OlyLGgz
         Tnz3XbYIoGmrIwmQjR+GfBTb87NLlBhUemntFWS1/7BJo4jRg4t6noi/WvKMKyeSewmj
         /GMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=bcxxxHdIU46Tg50LUlvTvIIc3Xbcm7FLXvtAB2J1NoI=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=OlhjT+uHAXNX8dZrcQq42qrsXWcKL2T16khngZnpcDKwFP62pvHXNHpxBNq6zT+95d
         9wgfRRHsl8WWU/a5czX5yvGMCjzebuoucDMJnsvYocCLZPwi1+O6VI3KpY+13+Njw/hj
         B2crC1V77UuN7eVpzXudbjD98IwUS+Ik9KFPoO2dZjgSXrGT4U9NcnQu1bv6T2V2raaR
         iD3FNE5DaZenHrpLkCi8Cn8Cem/hOLajrzyCYuqwVORchDNSZn8C2dGmK7K1Aa7bPQZ/
         GlcuUII1PwO4fWXrfabqitjXvkUAOdEnGuZeSNXwKAoXf6/qYGh/aTGqRUewmd4x91iK
         Ut6w==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774769603; x=1775374403; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bcxxxHdIU46Tg50LUlvTvIIc3Xbcm7FLXvtAB2J1NoI=;
        b=ZwbCV/nCKuYMSl6ngK2MA/KTruxDpWXtC8A5X41B+GVWDKUx+vhbLNQK7ML+01TrsF
         D9oFqrt9FTmFWsBh+rWfDrzRVhBuX7ekpo7bD/3TNxjXEdhJSvp9PL7rGS2JH0nyNw43
         Dv3MB9Tntx8mmnHEmvF5opOZq85mbH3sbpEeiCGjbglV9mIL2VqrPzVT7SbwCMowS2Wm
         uPY6HUPODTeLOLGhLto7D/SlcN/Ap9faqjcxojIdg28dVc2AjEyTHCITmOS2v9zzGpCn
         rX1kq8VcprZ9xW3Dthj9sf/ZX8fL5b6b8brM62L6iLGi64tIRlMpJMMHcJ1T7QuHfrvX
         CzZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774769603; x=1775374403;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bcxxxHdIU46Tg50LUlvTvIIc3Xbcm7FLXvtAB2J1NoI=;
        b=d1w5kI8OM54e2IUdQ2AelRJOx09q+DF4gTP7vV5nYI1kVWA90wEBcjpHiBdp09JMcK
         H5NGCvak3SOKCYdojs6AVusfMJkOhEpUv/35Ixms/QXRdEAHbOKAzhXyFUPMU/+qqaIj
         l1Ut5+iBBQglXOZM9qacTxhOC3thH1tVsGvw9UagJVL/nBP/jfCc2vzeQqAYZAMwHIMT
         t7lpSSrAHC4ejco3ewl1TzipQxVUoqwHaLo6cF0QpnHo0Vl3/Bbc2dLi5hWuPsigvYXE
         ZwZxQBI47U+XcY/st5HwbgsUrpKm3hkP8Psqb8IgUCZHCvNgRp/6cNj1eIFXEvf2zBbI
         N+QQ==
X-Gm-Message-State: AOJu0Yx/x7K5XSFut3d8hdZjbhCvOXjv5oHGcnF/mNkM4M3/xld+sr5G
	pbWCokHjj/gs55CuLWfWZOHaTGYe8a/ImtO5Le1dn5lBlqfo10mI2eeMDFCHAQISKOzR34ntMJI
	KYBuQue8YcLvrTdqeXNyGTdXexokKelTey4QF
X-Gm-Gg: ATEYQzyrL565w54XZFZcnvu63Cy/rsSnRwxYp9IKliHBmOJnaxkJ5ROZg9JzyBFxoUO
	eiTAANwWIUwjxOHY5yPVS3h8/Oq91k2EmiAJ3IB8QSKqcoZhcwe2rA2fsQlKuGTzbWaMoW6s90K
	IEEo5KGU5TRWdMV1ub8MTO20CZYkz/bur1DcRLrP6Ht9yTM7zj+ZzLElLEMydw5HRp1tYhs2Nl5
	ezGOSEHD2X/QpkSZqsa0XqtpBTM4hKSbymt+TDPI7TXTkTaql2sIFsGa7M+jaYxCKGIXotAl3Ht
	FAzDF0cP0A==
X-Received: by 2002:a05:6512:1193:b0:5a1:30ec:427c with SMTP id
 2adb3069b0e04-5a2ab9290a8mr1386707e87.6.1774769603274; Sun, 29 Mar 2026
 00:33:23 -0700 (PDT)
MIME-Version: 1.0
From: cyber security <cs7778503@gmail.com>
Date: Sun, 29 Mar 2026 03:33:11 -0400
X-Gm-Features: AQROBzAWEzJNgdvty0IjgeH-P5qQ7hqpSxKhi7xlB22guqEZsXhbTnaQbvWeBN8
Message-ID: <CAPmip_xXkz6hjTUUKbaHr1hwq5ROfpNwn5Rq-t9cxMgs6uXhZQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [CVE-2026-33691] OWASP CRS whitespace padding bypass vulnerability

A vulnerability was identified in OWASP CRS where whitespace padding
in filenames can bypass file upload extension checks, allowing uploads
of dangerous files such as .php, .phar, .jsp, and .jspx. This issue
has been assigned CVE=E2=80=912026=E2=80=9133691.

Impact: Attackers may evade CRS protections and upload web shells
disguised with whitespace=E2=80=91padded extensions. Exploitation is most
practical on Windows backends that normalize whitespace in filenames
before execution, In linux harder because it require a backend that
use like `.strip()` and `.trim()` and other whitespace trimming
methods depending on the language here vulnerable to that or the
webserver strip whitespaces or the backend on general, If not they not
vulnerable to that.

Fix: Patched in CRS v3.3.9, v4.25.x LTS, and v4.8.x. Security fixes
are always backported to supported branches.

References:

Full advisory: https://github.com/coreruleset/coreruleset/security/advisori=
es/GHSA-rw5f-9w43-gv2w

Credits: Reported by RelunSec (aka @HackingRepo on Github).
