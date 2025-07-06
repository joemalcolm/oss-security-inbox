Received: (qmail 1754 invoked by uid 550); 6 Jul 2025 11:51:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1768 invoked from network); 6 Jul 2025 03:37:19 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YyNRiZbVZVx0QINBHNh4M9OiW17kRBVYS8xK9DPQQEcAgO8+F8p
	sa5IFRgzqonitvzMrA1XPF4bbxoqyUSy15pze9hX7G8ko8VEoTIn0AfrYL6vDFDtl6pkajSwfJy
	FH1N5+vEtkl+ZzEvKEo7h/CU5yT70CJk=
X-Google-Smtp-Source: AGHT+IHTrFkdQptkGBeg4nHvWKAsVv+jlop7IzQ3yZ2CmUImNp0jGLlW4ToXjSJXxxgNOOMuViIzawrU6ts3FRDsGPs=
X-Received: by 2002:a05:6122:2015:b0:518:6286:87a4 with SMTP id
 71dfb90a1353d-5347e4c5693mr4920975e0c.4.1751773028647; Sat, 05 Jul 2025
 20:37:08 -0700 (PDT)
MIME-Version: 1.0
From: YuanSheng Wang <membphis@apache.org>
Date: Sun, 6 Jul 2025 11:36:32 +0800
X-Gmail-Original-Message-ID: <CAKzgDd0uOByqN49wgrb0BXfAZcqCzm7_Sb8CSH2qY-BQBXsYEQ@mail.gmail.com>
X-Gm-Features: Ac12FXxAcW4wWwcrkzze22Xs42jBNljdhUvvD0twiKHQUO94TaxCT28ukQh6_YA
Message-ID: <CAKzgDd0uOByqN49wgrb0BXfAZcqCzm7_Sb8CSH2qY-BQBXsYEQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: "dev@apisix.apache.org" <dev@apisix.apache.org>
Content-Type: multipart/alternative; boundary="000000000000198bbe06393a713b"
Subject: [oss-security] CVE-2025-27446: Apache APISIX Java Plugin Runner: Local listening
 file permissions in APISIX plugin runner allow a local attacker to elevate privileges

--000000000000198bbe06393a713b
Content-Type: text/plain; charset="UTF-8"

Severity: low

Affected versions:

- Apache APISIX Java Plugin Runner
(org.apache.apisix:apisix-plugin-runner) 0.2.0 through 0.5.0

Description:

Incorrect Permission Assignment for Critical Resource vulnerability in
Apache APISIX(java-plugin-runner).

Local listening file permissions in APISIX plugin runner allow a local
attacker to elevate privileges.
This issue affects Apache APISIX(java-plugin-runner): from 0.2.0 through 0.5.0.

Users are recommended to upgrade to version 0.6.0 or higher, which
fixes the issue.

Credit:

Benoit TELLIER (reporter)

References:
https://apisix.apache.orghttps://www.cve.org/CVERecord?id=CVE-2025-27446


-- 

*MembPhis*
My GitHub: https://github.com/membphis
Apache APISIX: https://github.com/apache/apisix

--000000000000198bbe06393a713b--
