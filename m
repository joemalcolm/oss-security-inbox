X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["664" "Thursday" "17" "December" "2020" "17:45:12" "+0800" "Guangning E" "guangning@apache.org" "<CACYv8z24DeHGiULFr16tRxLqoXu9Nrbb4fEE08egsqjc2F6dEg@mail.gmail.com>" "26" "[oss-security] CVE-2020-17520 Apache Pulsar Manager Information Disclosure (bypass admin interceptor)" nil nil nil "12" "2020121709:45:12" "[oss-security] CVE-2020-17520 Apache Pulsar Manager Information Disclosure (bypass admin interceptor)" (number mark "U       guangning@ap Dec 17   26/664   " thread-indent "\"[oss-security] CVE-2020-17520 Apache Pulsar Manager Information Disclosure (bypass admin interceptor)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-17520 Apache Pulsar Manager Information Disclosure (bypass admin interceptor)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5654 invoked by uid 550); 17 Dec 2020 10:56:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10100 invoked from network); 17 Dec 2020 09:45:30 -0000
X-Gm-Message-State: AOAM531Cdn6oKsde/ES60AGet7yyP4RL6vNJ4U9JT3WEy5UuraKuLiDm
	vMmuqNbnLLtvLLvXUFTBenJupiLqyuQGn7XGIUA=
X-Google-Smtp-Source: ABdhPJzUzVYvWn4Tm89FAxnklrW/ZQYIPgJaaNVN7gH/uEwFOTib6LliFJ7bCYCWB178CI/TJX4KhChkSiV2ph0pq0c=
X-Received: by 2002:a05:6e02:ecc:: with SMTP id i12mr34510142ilk.0.1608198317749;
 Thu, 17 Dec 2020 01:45:17 -0800 (PST)
MIME-Version: 1.0
From: Guangning E <guangning@apache.org>
Date: Thu, 17 Dec 2020 17:45:12 +0800
X-Gmail-Original-Message-ID: <CACYv8z24DeHGiULFr16tRxLqoXu9Nrbb4fEE08egsqjc2F6dEg@mail.gmail.com>
Message-ID: <CACYv8z24DeHGiULFr16tRxLqoXu9Nrbb4fEE08egsqjc2F6dEg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000753e7205b6a5d959"
Subject: [oss-security] CVE-2020-17520 Apache Pulsar Manager Information Disclosure (bypass admin interceptor)

--000000000000753e7205b6a5d959
Content-Type: text/plain; charset="UTF-8"

CVE-2020-17520 Apache Pulsar Manager Information Disclosure

Severity: High

Vendor: The Apache Software Foundation

Versions Affected:
Apache Pulsar Manager 0.1.0

Description
In Pulsar manager 0.1.0 version, malicious users will be able to bypass
pulsar-manager's admin, permission verification mechanism by constructing
special URLs, thereby accessing any HTTP API

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Pulsar Manager 0.2.0 or later

Credit:
This issue was identified by the threedr3am.

--000000000000753e7205b6a5d959--
