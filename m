Received: (qmail 23736 invoked by uid 550); 25 Sep 2025 16:47:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16213 invoked from network); 25 Sep 2025 16:39:52 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1758818376; bh=NUFktp5Wh7qSW6j/NuVDTFL5yyBSnr1b1UVX3iHgG/I=;
	h=From:Date:Subject:To:From;
	b=BBgic43+bMb8ehBk6YP2BEduG3cnvKh3HdqLcGTvJwmGi3pzwjGxx9RLNgr5UX+Lp
	 DAyAj5i68veV057JRe1ZzeA7KPxI4eHkka5pHkfoa47Vwy6IlG1Jtb1AOYJ30yopiN
	 +5kl35cjU1wOGjQ98QuhbG5Oona59iUYGk4kevQ4UZLJJtttgrKKQkFQ2934HHEeeW
	 51I6F+qDdCiibksWW6Z0Viv5k4uSk3vZA309w7/sx9kjkkxp9b4VdngWMnOyfPcQ+q
	 e7pMK95R4CHvF5ZyrNiQtQGmsV2CwZBdOYzFEVkeBd7AhMolsPYb7ba4lpUME5Yg2W
	 rnVBRvSsMxZSg==
X-Gm-Message-State: AOJu0YxFPioMppkVaJiUa+X3dUOgcHBDxpbEY9HRqa9tOwdk1nFXIy8E
	E/WYB7a5E6D5CtCf3G6cBA51Y99V7JY8z74bd2Vzm7+1x39GC9iq31PghtPh9GuGIc4Jpwz69ve
	GZYk9TbkxVCWzGF/NZEuqYKVJn3XaLY4=
X-Google-Smtp-Source: AGHT+IFeiLvD6G1siOA09MwKqUjJqyZeDk9YKD2P91JDSMG4mV94TFLj3/2irrtY8ushuE4LJxiezKbP/ccUk9+pIas=
X-Received: by 2002:a05:620a:6cc5:b0:860:21a7:47f6 with SMTP id
 af79cd13be357-86021a748cemr28729885a.35.1758818375059; Thu, 25 Sep 2025
 09:39:35 -0700 (PDT)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@apache.org>
Date: Thu, 25 Sep 2025 17:39:23 +0100
X-Gmail-Original-Message-ID: <CAH5JyZpcppJjVPTcuQmLJMaEaJa7CsH+dAgv1DNyQwsjR25iRw@mail.gmail.com>
X-Gm-Features: AS18NWD8L5FXN13nu02dvPCltPZ6MNpk5T9rQtcHhh2iooE96VwbPdns7CkCSZc
Message-ID: <CAH5JyZpcppJjVPTcuQmLJMaEaJa7CsH+dAgv1DNyQwsjR25iRw@mail.gmail.com>
To: oss-security@lists.openwall.com, users@airflow.apache.org, 
	dev@airflow.apache.org
Content-Type: multipart/alternative; boundary="000000000000784f9c063fa2d060"
Subject: [oss-security] CVE-2025-54831: Apache Airflow: Connection sensitive details exposed
 to users with READ permissions

--000000000000784f9c063fa2d060
Content-Type: text/plain; charset="UTF-8"

CVE-2025-54831: Apache Airflow: Connection sensitive details exposed
to users with READ permissions


Severity: important

Affected versions:
- Apache Airflow (apache-airflow) 3.0.3

Description:

Apache Airflow 3 introduced a change to the handling of sensitive
information in Connections. The intent was to restrict access to
sensitive connection fields to Connection Editing Users, effectively
applying a "write-only" model for sensitive values.

In Airflow 3.0.3, this model was unintentionally violated: sensitive
connection information could be viewed by users with READ permissions
through both the API and the UI. This behavior also bypassed the
`AIRFLOW__CORE__HIDE_SENSITIVE_VAR_CONN_FIELDS` configuration option.

This issue does not affect Airflow 2.x, where exposing sensitive
information to connection editors was the intended and documented
behavior.

Users of Airflow 3.0.3 are advised to upgrade Airflow to >=3.0.4.

References:
https://airflow.apache.org/https://www.cve.org/CVERecord?id=CVE-2025-54831

--000000000000784f9c063fa2d060
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"font-size:12px;color:rgb(0,0,0)"><font face=
=3D"arial, sans-serif">CVE-2025-54831: Apache Airflow: Connection sensitive=
 details exposed to users with READ permissions </font></pre><pre style=3D"=
font-size:12px;color:rgb(0,0,0)"><font face=3D"arial, sans-serif">
Severity: important=20

Affected versions:
- Apache Airflow (apache-airflow) 3.0.3

Description:

Apache Airflow 3 introduced a change to the handling of sensitive informati=
on in Connections. The intent was to restrict access to sensitive connectio=
n fields to Connection Editing Users, effectively applying a &quot;write-on=
ly&quot; model for sensitive values.

In Airflow 3.0.3, this model was unintentionally violated: sensitive connec=
tion information could be viewed by users with READ permissions through bot=
h the API and the UI. This behavior also bypassed the `AIRFLOW__CORE__HIDE_=
SENSITIVE_VAR_CONN_FIELDS` configuration option.

This issue does not affect Airflow 2.x, where exposing sensitive informatio=
n to connection editors was the intended and documented behavior.

Users of Airflow 3.0.3 are advised to upgrade Airflow to &gt;=3D3.0.4.

References:

<a href=3D"https://airflow.apache.org/">https://airflow.apache.org/</a>
<a href=3D"https://www.cve.org/CVERecord?id=3DCVE-2025-54831">https://www.c=
ve.org/CVERecord?id=3DCVE-2025-54831</a>
</font></pre><br class=3D"gmail-Apple-interchange-newline"></div>

--000000000000784f9c063fa2d060--
