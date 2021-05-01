X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["873" "Saturday" "1" "May" "2021" "21:36:56" "+0100" "Kaxil Naik" "kaxilnaik@apache.org" nil "27" "[oss-security] CVE-2021-28359: Apache Airflow Reflected XSS via Origin Query Argument in URL" nil nil nil "5" nil nil (number mark "U       kaxilnaik@ap May  1   27/873   " thread-indent "\"[oss-security] CVE-2021-28359: Apache Airflow Reflected XSS via Origin Query Argument in URL\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-28359: Apache Airflow Reflected XSS via Origin Query Argument in URL" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19511 invoked by uid 550); 1 May 2021 20:46:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14231 invoked from network); 1 May 2021 20:37:21 -0000
X-Gm-Message-State: AOAM53103rzo+3jLdkxgWs+ZF4ZRlztAUJPEmIQ8O/5JnvJpcFsxaAJU
	JK/luX+0FI61sjKADi05Lr/3ZRBE1UK2dQ1c6/Y=
X-Google-Smtp-Source: ABdhPJyGv4MHKu9OdHAFAO6/Z9nqAcujyMBzYxcSc06T4NIgo05pIWw/ZOPhGp+BE8oHRRZ/j1SKuWIPirsXsM+UxsE=
X-Received: by 2002:a17:906:5056:: with SMTP id e22mr10030236ejk.289.1619901427213;
 Sat, 01 May 2021 13:37:07 -0700 (PDT)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@apache.org>
Date: Sat, 1 May 2021 21:36:56 +0100
X-Gmail-Original-Message-ID: <CAH5JyZqJHpFTWJxZ19CDhZ5N9Q=V9mLQybPYdSNw+8G1iEpBkw@mail.gmail.com>
Message-ID: <CAH5JyZqJHpFTWJxZ19CDhZ5N9Q=V9mLQybPYdSNw+8G1iEpBkw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: users@airflow.apache.org
Content-Type: multipart/alternative; boundary="00000000000023ec4305c14ab150"
Subject: [oss-security] CVE-2021-28359: Apache Airflow Reflected XSS via Origin Query
 Argument in URL

--00000000000023ec4305c14ab150
Content-Type: text/plain; charset="UTF-8"

Versions Affected: <1.10.15, 2.0.0, 2.0.1

Description:
The "origin" parameter passed to some of the endpoints like '/trigger' was
vulnerable to XSS exploit. This issue affects Apache Airflow versions
<1.10.15 in 1.x series and affects 2.0.0 and 2.0.1 and 2.x series. Update
to Airflow 1.10.15 or 2.0.2.

This is the same as CVE-2020-13944 & CVE-2020-17515 but the implemented fix
did not account for certain cases.

Please also update your Python version to the latest available PATCH
releases of the installed MINOR versions, for example, update to Python
3.6.13 if you are on Python 3.6.10. (Those contain the fix
for CVE-2021-23336 (https://nvd.nist.gov/vuln/detail/CVE-2021-23336).

Credit:
Vasileios Daskalakis

Thanks,
Kaxil,
on behalf of Apache Airflow PMC

--00000000000023ec4305c14ab150--
