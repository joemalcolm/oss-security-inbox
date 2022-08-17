Received: (qmail 12019 invoked by uid 550); 18 Aug 2022 07:26:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22225 invoked from network); 17 Aug 2022 20:43:06 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ACgBeo2C3i2u27WD0eAR+BEwOnBMYsTJ2Wl7YA5MX8vtRNLCO7xQKqbq
	/uNh2yt6vvtrticNoBG1K4waEbfPwpmC01KKEqUVXQ==
X-Google-Smtp-Source: AA6agR7DM0s+nWK1h7psoaYIuYnBipdTMNBV9oSBXTtBMWWlaFUO+x7571+/YYLd+FPD5NlsVUH5uKiJLdaB2y3uAS0=
X-Received: by 2002:a05:622a:1ba4:b0:344:57a4:7f4c with SMTP id
 bp36-20020a05622a1ba400b0034457a47f4cmr20633qtb.146.1660768955362; Wed, 17
 Aug 2022 13:42:35 -0700 (PDT)
MIME-Version: 1.0
From: Justin Bertram <jbertram@apache.org>
Date: Wed, 17 Aug 2022 15:42:09 -0500
X-Gmail-Original-Message-ID: <CAF+kE=S3-PVFZA2zGQBBuFsAsosXwZ04ONy3g10-SJqGCZywEQ@mail.gmail.com>
Message-ID: <CAF+kE=S3-PVFZA2zGQBBuFsAsosXwZ04ONy3g10-SJqGCZywEQ@mail.gmail.com>
To: dev@activemq.apache.org, users@activemq.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a3855f05e675e7da"
Subject: [oss-security] CVE-2022-35278: Apache ActiveMQ Artemis: HTML Injection in ActiveMQ
 Artemis Web Console

--000000000000a3855f05e675e7da
Content-Type: text/plain; charset="UTF-8"

Description:

An attacker could show malicious content and/or redirect users to a
malicious URL in the web console by using HTML in the name of an address or
queue.

Mitigation:

Upgrade to Apache ActiveMQ Artemis 2.24.0.

Credit:

Apache ActiveMQ would like to thank Yash Pandya (Digital14), Rajatkumar
Karmarkar (Digital14), and Likhith Cheekatipalle (Digital14) for reporting
this issue.

--000000000000a3855f05e675e7da--
