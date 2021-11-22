X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["699" "Monday" "22" "November" "2021" "14:30:19" "+0800" "Zexuan Luo" "spacewander@apache.org" nil "22" "[oss-security] CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable" nil nil nil "11" nil nil (number mark "U       spacewander@ Nov 22   22/699   " thread-indent "\"[oss-security] CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27897 invoked by uid 550); 22 Nov 2021 08:46:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7561 invoked from network); 22 Nov 2021 06:30:43 -0000
X-Gm-Message-State: AOAM5306lWlKNi390SED6WWUYEeMwcwlvrW+b9he23D2bEIRI1ZCVejV
	WXsQ3sVXDNuxuSLC17aTDzbDnTL1hRyaPV09TLU=
X-Google-Smtp-Source: ABdhPJwqroih3rZm5UhD1+TxaPmI2M7XE0obaVqhSlxQTNpRBO6Dtj+IECz4UMIoUOvMI4Nm93pIpPWr3UVOawkfa9w=
X-Received: by 2002:a05:6402:2551:: with SMTP id l17mr58821394edb.142.1637562629516;
 Sun, 21 Nov 2021 22:30:29 -0800 (PST)
MIME-Version: 1.0
From: Zexuan Luo <spacewander@apache.org>
Date: Mon, 22 Nov 2021 14:30:19 +0800
X-Gmail-Original-Message-ID: <CAADJU10-Sv+qtmNd8PWgx_jSfgOQ4qW7gNARSNmHP8xQEs5y_Q@mail.gmail.com>
Message-ID: <CAADJU10-Sv+qtmNd8PWgx_jSfgOQ4qW7gNARSNmHP8xQEs5y_Q@mail.gmail.com>
To: announce@apache.org, dev@apisix.apache.org, security@apache.org, 
	oss-security@lists.openwall.com, niemiec.marcin@gmail.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-43557: Apache APISIX: Path traversal in request_uri variable

Severity: moderate

Description:

The uri-block plugin in APISIX uses $request_uri without verification.
The $request_uri is the full original request URI without
normalization.
This makes it possible to construct a URI to bypass the block list on
some occasions. For instance, when the block list contains
"^/internal/", a URI like `//internal/` can be used to bypass it.

Some other plugins also have the same issue. And it may affect the
developer's custom plugin.

This issue is fixed in APISIX 2.10.2.
Thanks to Marcin Niemiec for reporting the vulnerability.

Mitigation:

1. Upgrade to APISIX 2.10.2
2. Carefully review custom code, find & fix the usage of $request_uri
without verification.
