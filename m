Received: (qmail 32289 invoked by uid 550); 2 May 2024 13:04:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13630 invoked from network); 2 May 2024 09:15:57 -0000
Authentication-Results: apache.org; auth=none
X-Forwarded-Encrypted: i=1; AJvYcCV6SprFyuTV+WnyL6XkFVIq4zygq6jaaZLPeCK1lT1Q+T8XFVXaSNIma67Tn09T2fz1pZwN275kv9qwyicVsT05Cg4nfjpkPFyMyPehojcl
X-Gm-Message-State: AOJu0Yw90P1shQrmc0i8cjE2diavUCdPaNc4Mgzl0Gj4b5TShdzSgNeJ
	NXpgzmvARv8wPfgWoMdPHD0SYhZlUizF51D55lnGn/Ii8BFJCP3oUdKKh6TQ7oZRpWp/khPwtFy
	CwIVgKOncwS8PAB9lU4nZxv15FdA=
X-Google-Smtp-Source: AGHT+IEe1x/fXsrvCFKYmtR4wREcsfsE7yyvLiDsJ/PcgtqTeEfEbiLkqTLgZwXtAmZV0BI3gNDvYutAaiXc+89UY3o=
X-Received: by 2002:a05:6122:1785:b0:4d4:126b:2c8 with SMTP id
 o5-20020a056122178500b004d4126b02c8mr5774615vkf.9.1714641346239; Thu, 02 May
 2024 02:15:46 -0700 (PDT)
MIME-Version: 1.0
From: YuanSheng Wang <membphis@apache.org>
Date: Thu, 2 May 2024 17:15:10 +0800
X-Gmail-Original-Message-ID: <CAKzgDd3JhyCMip9hKAAHaobS=n0u+ifB=qK74RT=3P25t2xuEg@mail.gmail.com>
Message-ID: <CAKzgDd3JhyCMip9hKAAHaobS=n0u+ifB=qK74RT=3P25t2xuEg@mail.gmail.com>
To: announce@apache.org, "dev@apisix.apache.org" <dev@apisix.apache.org>, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com, 
	Brandon Arp <brandonarp@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000005c2ecf0617750c03"
Subject: [oss-security] CVE-2024-32638: Apache APISIX: Forward-Auth Request Smuggling

--0000000000005c2ecf0617750c03
Content-Type: text/plain; charset="UTF-8"

Severity: low

Affected versions:

- Apache APISIX 3.8.0, 3.9.0

Description:

Inconsistent Interpretation of HTTP Requests ('HTTP Request Smuggling')
vulnerability in Apache APISIX when using `forward-auth` plugin.

This issue affects Apache APISIX: from 3.8.0, 3.9.0 .

Users are recommended to upgrade to version 3.8.1, 3.9.1 or higher, which
fixes the issue.

Credit:

Discovered and reported by Brandon Arp and Bruno Green of Topsort.

Regards.

-- 

*MembPhis*
My GitHub: https://github.com/membphis
Apache APISIX: https://github.com/apache/apisix

--0000000000005c2ecf0617750c03--
