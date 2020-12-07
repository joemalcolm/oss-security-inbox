X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["884" "Monday" "7" "December" "2020" "21:18:01" "+0800" "YuanSheng Wang" "membphis@apache.org" "<CAKzgDd0PnhRjveFpeyrZ3gsNZsUtw8RfpBEuW=x4d63oXXLUog@mail.gmail.com>" "36" "[oss-security] [SECURITY] CVE-2020-13945: Apache APISIX's Admin API default access token vulnerability" nil nil nil "12" "2020120713:18:01" "[oss-security] [SECURITY] CVE-2020-13945: Apache APISIX's Admin API default access token vulnerability" (number mark "U       membphis@apa Dec  7   36/884   " thread-indent "\"[oss-security] [SECURITY] CVE-2020-13945: Apache APISIX's Admin API default access token vulnerability\"\n") "<CAKzgDd3y7g7NO0=c5HkhBV=_MH1TFVcX=CqWrQuuVKzvwdBu_A@mail.gmail.com>" ("<CAKzgDd3y7g7NO0=c5HkhBV=_MH1TFVcX=CqWrQuuVKzvwdBu_A@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2020-13945: Apache APISIX's Admin API default access token vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32572 invoked by uid 550); 7 Dec 2020 13:19:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32279 invoked from network); 7 Dec 2020 13:19:04 -0000
X-Gm-Message-State: AOAM532IhTXwaTwUN9QTrqAsSeY06rmKD8K8pCNu9M4QzvQfxm7PoS1I
	pCD9lXvwaqapprs+yc4Cx6EMkyk1SnZc84cM8xE=
X-Google-Smtp-Source: ABdhPJy0QdfcU3XnTaVX3SXdcVEOuke6fMpXXOKL2/9OHjcdrzBIuL7NdRD1c/pNHwTb/8JISNI0nz+qnFTgGViNSbs=
X-Received: by 2002:a92:d8c3:: with SMTP id l3mr22174098ilo.295.1607347092868;
 Mon, 07 Dec 2020 05:18:12 -0800 (PST)
MIME-Version: 1.0
References: <CAKzgDd3y7g7NO0=c5HkhBV=_MH1TFVcX=CqWrQuuVKzvwdBu_A@mail.gmail.com>
In-Reply-To: <CAKzgDd3y7g7NO0=c5HkhBV=_MH1TFVcX=CqWrQuuVKzvwdBu_A@mail.gmail.com>
From: YuanSheng Wang <membphis@apache.org>
Date: Mon, 7 Dec 2020 21:18:01 +0800
X-Gmail-Original-Message-ID: <CAKzgDd0PnhRjveFpeyrZ3gsNZsUtw8RfpBEuW=x4d63oXXLUog@mail.gmail.com>
Message-ID: <CAKzgDd0PnhRjveFpeyrZ3gsNZsUtw8RfpBEuW=x4d63oXXLUog@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000080555a05b5dfa8a4"
Subject: [oss-security] [SECURITY] CVE-2020-13945: Apache APISIX's Admin API default access
 token vulnerability

--00000000000080555a05b5dfa8a4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2020-13945: Apache APISIX's Admin API default access token vulnerability

Severity: low

Vendor:
The Apache Software Foundation

Versions Affected:
APISIX 1.2, 1.3, 1.4, 1.5.

Description:
The user enabled the Admin API and deleted the Admin API access IP
restriction rules.
Eventually, the default token is allowed to access APISIX management data.

Mitigation:
APISIX 1.2 ~ 1.5 upgrade to 2.0

Or users can apply this patch:
https://github.com/apache/apisix/pull/2244

Credit:
This issue was discovered by "=E5=9B=BD=E5=AE=B6=E4=BF=A1=E6=81=AF=E5=AE=89=
=E5=85=A8=E6=BC=8F=E6=B4=9E=E5=85=B1=E4=BA=AB=E5=B9=B3=E5=8F=B0".

--=20

*MembPhis*
My GitHub: https://github.com/membphis
Apache APISIX: https://github.com/apache/apisix

--00000000000080555a05b5dfa8a4--
