X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["841" "Wednesday" "17" "February" "2021" "13:15:33" "+0000" "Kaxil Naik" "kaxilnaik@apache.org" nil "32" "[oss-security] CVE-2021-26559: Apache Airflow 2.0.0: CWE-284 Improper Access Control on Configurations Endpoint for the Stable API" nil nil nil "2" nil nil (number mark "U       kaxilnaik@ap Feb 17   32/841   " thread-indent "\"[oss-security] CVE-2021-26559: Apache Airflow 2.0.0: CWE-284 Improper Access Control on Configurations Endpoint for the Stable API\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26559: Apache Airflow 2.0.0: CWE-284 Improper Access Control on Configurations Endpoint for the Stable API" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10122 invoked by uid 550); 17 Feb 2021 13:41:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29745 invoked from network); 17 Feb 2021 13:15:57 -0000
X-Gm-Message-State: AOAM5307+nz4HqynOAUMxQwzSlUdFYRo2VY6gkHiBg4kNRoPjXtw8v+i
	A5pU1jFq20Vc8J4+pjDmdr930fPL00zhoi8Ev0g=
X-Google-Smtp-Source: ABdhPJwLsqXkKAFGVvYguzhujmkQTo/hMlMXQDMMzef/Z3U5yw4yUnkG99YbGGunBnmAdxjhxQ+NOVts8D7tRZQy69c=
X-Received: by 2002:a05:6402:1342:: with SMTP id y2mr26866435edw.105.1613567744091;
 Wed, 17 Feb 2021 05:15:44 -0800 (PST)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@apache.org>
Date: Wed, 17 Feb 2021 13:15:33 +0000
X-Gmail-Original-Message-ID: <CAH5JyZq+Jr3Y8FdHhJ_axMN-a97aBLmnDzCAV4OdR0u8e9=SeQ@mail.gmail.com>
Message-ID: <CAH5JyZq+Jr3Y8FdHhJ_axMN-a97aBLmnDzCAV4OdR0u8e9=SeQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: users@airflow.apache.org
Content-Type: multipart/alternative; boundary="0000000000003537da05bb88040b"
Subject: [oss-security] CVE-2021-26559: Apache Airflow 2.0.0: CWE-284 Improper Access Control on Configurations
 Endpoint for the Stable API

--0000000000003537da05bb88040b
Content-Type: text/plain; charset="UTF-8"

Versions Affected: 2.0.0

*Description*:

Improper Access Control on Configurations Endpoint for the Stable API
of Apache Airflow allows users with Viewer or User role to get Airflow
Configurations including sensitive information even when `[webserver]
expose_config` is set to `False` in `airflow.cfg`.

This allowed a privilege escalation attack.

This issue affects Apache Airflow 2.0.0.


*Mitigation*:

Upgrade to Airflow 2.0.1 or remove `can read on Configurations`
permission from the roles like Viewer and Users if you want to
restrict users with those roles to view configurations in 2.0.0.


*Credit*:
Apache Airflow would like to thank Ian Carroll for reporting this issue.

Thanks,
Kaxil,
on behalf of Apache Airflow PMC

--0000000000003537da05bb88040b--
