X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["383" "Thursday" "21" "January" "2021" "09:58:53" "+0800" "wjm wjm" "wujimin@apache.org" "<CAFN+3hpkaRATUqPRiwJfmYpYKyFov3skdDt2LxFBqDfuF7de3A@mail.gmail.com>" "14" "[oss-security] CVE-2020-17532: ServiceComb Yaml remote deserialization vulnerability" nil nil nil "1" "2021012101:58:53" "[oss-security] CVE-2020-17532: ServiceComb Yaml remote deserialization vulnerability" (number mark "U       wujimin@apac Jan 21   14/383   " thread-indent "\"[oss-security] CVE-2020-17532: ServiceComb Yaml remote deserialization vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-17532: ServiceComb Yaml remote deserialization vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17674 invoked by uid 550); 21 Jan 2021 09:28:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8051 invoked from network); 21 Jan 2021 01:59:17 -0000
X-Gm-Message-State: AOAM532rYCpUUztzkxeYcodYNOCwwtF1S+BIlSVFIcsigocgEP/H6aIg
	jeLws+FzzsGeLj+jV3ZBSHTax1XQbZxC0IjyNK4=
X-Google-Smtp-Source: ABdhPJynplVlu3K7O61MEjZ1Zb9PdszW6DeFcNHGXZkCmvjCiaSR8+XqCCHtnoD++4h30q6RnM9CLPV1J50EvNojres=
X-Received: by 2002:a2e:b4ab:: with SMTP id q11mr5504315ljm.129.1611194344801;
 Wed, 20 Jan 2021 17:59:04 -0800 (PST)
MIME-Version: 1.0
From: wjm wjm <wujimin@apache.org>
Date: Thu, 21 Jan 2021 09:58:53 +0800
X-Gmail-Original-Message-ID: <CAFN+3hpkaRATUqPRiwJfmYpYKyFov3skdDt2LxFBqDfuF7de3A@mail.gmail.com>
Message-ID: <CAFN+3hpkaRATUqPRiwJfmYpYKyFov3skdDt2LxFBqDfuF7de3A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000960b7a05b95f6a01"
Subject: [oss-security] CVE-2020-17532: ServiceComb Yaml remote deserialization vulnerability

--000000000000960b7a05b95f6a01
Content-Type: text/plain; charset="UTF-8"

Description:

When handler-router component is enabled in servicecomb-java-chassis,
authenticated user may inject some data and cause arbitrary code
execution.

The problem happens in versions between 2.0.0 ~ 2.1.3 and fixed in 2.1.5

This issue is being tracked as SCB-2145

--000000000000960b7a05b95f6a01--
