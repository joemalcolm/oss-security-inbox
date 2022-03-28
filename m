X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1041" "Monday" "28" "March" "2022" "11:16:43" "+0800" "Zexuan Luo" "spacewander@apache.org" nil "30" "[oss-security] CVE-2022-25757: Apache APISIX: the body_schema check in request-validation plugin can be bypassed" nil nil nil "3" nil nil (number mark "U       spacewander@ Mar 28   30/1041  " thread-indent "\"[oss-security] CVE-2022-25757: Apache APISIX: the body_schema check in request-validation plugin can be bypassed\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-25757: Apache APISIX: the body_schema check in request-validation plugin can be bypassed" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29742 invoked by uid 550); 28 Mar 2022 08:21:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1742 invoked from network); 28 Mar 2022 03:17:06 -0000
X-Gm-Message-State: AOAM533wWOLbYlXkLpBSgVo1GmeEuaqB7eiWdv7M2UU0m9pEv5NUgKs1
	kgwaMJ9AuHaekHqiX50YgrxqaWiX5oLrZ4BpzUg=
X-Google-Smtp-Source: ABdhPJwuQstHP6NuD2cffvSyT/xZckwE8XA93XM8pGd6nrCYbsf4U/U7PsSz/eU0hO1e6OebqfbBGIqmZQRQInonPQM=
X-Received: by 2002:a17:90b:1583:b0:1c7:3736:629c with SMTP id
 lc3-20020a17090b158300b001c73736629cmr26110702pjb.215.1648437413817; Sun, 27
 Mar 2022 20:16:53 -0700 (PDT)
MIME-Version: 1.0
From: Zexuan Luo <spacewander@apache.org>
Date: Mon, 28 Mar 2022 11:16:43 +0800
X-Gmail-Original-Message-ID: <CAADJU110xZQCFK9xOC+s1OmAYo=a36uJa0+Mb6=h5cQO08yTzw@mail.gmail.com>
Message-ID: <CAADJU110xZQCFK9xOC+s1OmAYo=a36uJa0+Mb6=h5cQO08yTzw@mail.gmail.com>
To: =?UTF-8?B?5Lq66Ze055qE5Zub5pyI5aSp?= <1157599735@qq.com>, 
	announce@apache.org, dev@apisix.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-25757: Apache APISIX: the body_schema check in
 request-validation plugin can be bypassed

Severity: low

Description:

When decoding JSON with duplicate keys, lua-cjson will choose the last
occurred value as the result. By passing a JSON with a duplicate key,
the attacker can bypass the body_schema validation in the
request-validation plugin. For example,
`{"string_payload":"bad","string_payload":"good"}` can be used to hide
the "bad" input.

Systems satisfy three conditions below are affected by this attack:
1. use body_schema validation in the request-validation plugin
2. upstream application uses a special JSON library that chooses the
first occurred value, like jsoniter or gojay
3. upstream application does not validate the input anymore.

The fix in APISIX is to re-encode the validated JSON input back into
the request body at the side of APISIX.

Mitigation:

1. upgrade APISIX to 2.13.0 if you need to use the body_schema
validation in the request-validation plugin
2. add additional validation in the application code, embrace
defensive programming

Credit:

Thanks for Guangli Dong from https://www.huoxian.cn/
