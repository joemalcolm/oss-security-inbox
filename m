X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["458" "Wednesday" "26" "January" "2022" "14:40:38" "+0800" "Zhang Yonglun" "zhangyonglun@apache.org" nil "20" "[oss-security] CVE-2022-23945: Apache ShenYu (incubating) missing authentication allows gateway registration" nil nil nil "1" nil nil (number mark "U       zhangyonglun Jan 26   20/458   " thread-indent "\"[oss-security] CVE-2022-23945: Apache ShenYu (incubating) missing authentication allows gateway registration\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-23945: Apache ShenYu (incubating) missing authentication allows gateway registration" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28412 invoked by uid 550); 26 Jan 2022 11:14:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19991 invoked from network); 26 Jan 2022 06:41:03 -0000
X-Gm-Message-State: AOAM531kh7z1BFMiDrgv3PaKtMSaRlqVYyXMorcyRFvmVqjZ3w+IXAu0
	8wro4hgTwpr2XZmV7NMmX21ZpODEisdXS3+RDjs=
X-Google-Smtp-Source: ABdhPJwd9e4FdSExmPKcLBBjSLdMCEuhl2frjBWWplmRW4ex5NNOFNWQxz+xYaK0/jTFwYibxGzCU/MAtIDZJ2QLd1M=
X-Received: by 2002:a67:edc5:: with SMTP id e5mr9687783vsp.6.1643179249001;
 Tue, 25 Jan 2022 22:40:49 -0800 (PST)
MIME-Version: 1.0
From: Zhang Yonglun <zhangyonglun@apache.org>
Date: Wed, 26 Jan 2022 14:40:38 +0800
X-Gmail-Original-Message-ID: <CA+ZBtZ7__rBfj7EgGm9sibydEc-Xyep9ctp8z7BTMqhLf7enVQ@mail.gmail.com>
Message-ID: <CA+ZBtZ7__rBfj7EgGm9sibydEc-Xyep9ctp8z7BTMqhLf7enVQ@mail.gmail.com>
To: oss-security@lists.openwall.com, dev@shenyu.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-23945: Apache ShenYu (incubating) missing authentication
 allows gateway registration

Severity: moderate

Description:

Missing  authentication on ShenYu Admin when a gateway registers. So,
if ShenYu Admin is exposed to the internet, it will allow any user to
register as the gateway.
This issue affects Apache ShenYu (incubating) 2.4.0 and 2.4.1.

Mitigation:

Upgrade to Apache ShenYu (incubating) 2.4.2 or apply patch
https://github.com/apache/incubator-shenyu/pull/2723.


--

Zhang Yonglun
Apache ShenYu (Incubating)
Apache ShardingSphere
