X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1307" "Tuesday" "23" "November" "2021" "11:29:57" "+0800" "Zhiyuan Ju" "juzhiyuan@apache.org" nil "45" "[oss-security] Re: CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable" nil nil nil "11" nil nil (number mark "U       juzhiyuan@ap Nov 23   45/1307  " thread-indent "\"[oss-security] Re: CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5637 invoked by uid 550); 23 Nov 2021 09:18:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25664 invoked from network); 23 Nov 2021 03:30:47 -0000
X-Gm-Message-State: AOAM532UACf6bOofjCsWNNZrX3EUvxEytLG4ViIDFAhOK7yatsBM66RX
	Rr3XwpJLT3AsX2ruqWfZt7KNYXvfzN8DjhJ1kXc=
X-Google-Smtp-Source: ABdhPJxSvt2zBWWCtxjfLzTMOIfSn2oeWwAhZh/GSfT40P6DQ9LIS8jyxX6hwsieq+kVeBjhw/HdOU/VAR56zjY3qOQ=
X-Received: by 2002:a25:2504:: with SMTP id l4mr2400955ybl.420.1637638232669;
 Mon, 22 Nov 2021 19:30:32 -0800 (PST)
MIME-Version: 1.0
References: <CAADJU10-Sv+qtmNd8PWgx_jSfgOQ4qW7gNARSNmHP8xQEs5y_Q@mail.gmail.com>
In-Reply-To: <CAADJU10-Sv+qtmNd8PWgx_jSfgOQ4qW7gNARSNmHP8xQEs5y_Q@mail.gmail.com>
From: Zhiyuan Ju <juzhiyuan@apache.org>
Date: Tue, 23 Nov 2021 11:29:57 +0800
X-Gmail-Original-Message-ID: <CAC_jp4h3O6FSCLb=JV2HoUA1wZUin2yW2=MqtwW7N=8Bq0F9sg@mail.gmail.com>
Message-ID: <CAC_jp4h3O6FSCLb=JV2HoUA1wZUin2yW2=MqtwW7N=8Bq0F9sg@mail.gmail.com>
To: dev@apisix.apache.org
Cc: announce@apache.org, Apache Security Team <security@apache.org>, 
	oss-security@lists.openwall.com, Marcin Niemiec <niemiec.marcin@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000002104a605d16c5da9"
Subject: [oss-security] Re: CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable

--0000000000002104a605d16c5da9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks to Marcin, and Apache APISIX's Website just published his blog about
this CVE[1].

 Welcome to read this post :)

[1] https://apisix.apache.org/blog/2021/11/23/cve-2021-43557-research-report

Best Regards!
@ Zhiyuan Ju <https://github.com/juzhiyuan>


Zexuan Luo <spacewander@apache.org> =E4=BA=8E2021=E5=B9=B411=E6=9C=8822=E6=
=97=A5=E5=91=A8=E4=B8=80 =E4=B8=8B=E5=8D=882:30=E5=86=99=E9=81=93=EF=BC=9A

> Severity: moderate
>
> Description:
>
> The uri-block plugin in APISIX uses $request_uri without verification.
> The $request_uri is the full original request URI without
> normalization.
> This makes it possible to construct a URI to bypass the block list on
> some occasions. For instance, when the block list contains
> "^/internal/", a URI like `//internal/` can be used to bypass it.
>
> Some other plugins also have the same issue. And it may affect the
> developer's custom plugin.
>
> This issue is fixed in APISIX 2.10.2.
> Thanks to Marcin Niemiec for reporting the vulnerability.
>
> Mitigation:
>
> 1. Upgrade to APISIX 2.10.2
> 2. Carefully review custom code, find & fix the usage of $request_uri
> without verification.
>

--0000000000002104a605d16c5da9--
