X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["661" "Monday" "21" "December" "2020" "15:38:42" "+0000" "Kaxil Naik" "kaxilnaik@apache.org" "<CAH5JyZp9wzBdsWCFvG-FPOmDzLPx4xzyZE84AynWCsr_iMMaFQ@mail.gmail.com>" "25" "[oss-security] CVE-2020-17526: Apache Airflow Incorrect Session Validation in Airflow Webserver with default config" nil nil nil "12" "2020122115:38:42" "[oss-security] CVE-2020-17526: Apache Airflow Incorrect Session Validation in Airflow Webserver with default config" (number mark "U       kaxilnaik@ap Dec 21   25/661   " thread-indent "\"[oss-security] CVE-2020-17526: Apache Airflow Incorrect Session Validation in Airflow Webserver with default config\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-17526: Apache Airflow Incorrect Session Validation in Airflow Webserver with default config" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16219 invoked by uid 550); 21 Dec 2020 16:00:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9483 invoked from network); 21 Dec 2020 15:45:46 -0000
X-Gm-Message-State: AOAM5306ARDHED+YnpPMTI+1Gf/iKD0lWrKUpp1pAFIkYkCNQRCIA3Ik
	kvKQubfSZjO13Jb5uLFQJg/UrtFpArEmn2sZ9eA=
X-Google-Smtp-Source: ABdhPJyZKr1Pnlkz2bhkIfflr492cZxt/V0NcJrWUP+ELUnSoiuzp6XdZwLvmuFP8Be2TSAaWDOnX0DHUUK/rCJhGXM=
X-Received: by 2002:aa7:d6d8:: with SMTP id x24mr16670806edr.105.1608565133325;
 Mon, 21 Dec 2020 07:38:53 -0800 (PST)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@apache.org>
Date: Mon, 21 Dec 2020 15:38:42 +0000
X-Gmail-Original-Message-ID: <CAH5JyZp9wzBdsWCFvG-FPOmDzLPx4xzyZE84AynWCsr_iMMaFQ@mail.gmail.com>
Message-ID: <CAH5JyZp9wzBdsWCFvG-FPOmDzLPx4xzyZE84AynWCsr_iMMaFQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: users@airflow.apache.org
Content-Type: multipart/alternative; boundary="0000000000005ebc8105b6fb41b9"
Subject: [oss-security] CVE-2020-17526: Apache Airflow Incorrect Session Validation in
 Airflow Webserver with default config

--0000000000005ebc8105b6fb41b9
Content-Type: text/plain; charset="UTF-8"

Versions Affected: < 1.10.14

*Description*:
Incorrect Session Validation in Airflow Webserver with default config
allows a malicious airflow user on site A where they log in normally, to
access unauthorized Airflow Webserver on Site B through the session from
Site A.

This does not affect users who have changed the default value for
`[webserver] secret_key` config.

*Mitigation*:
Change the default value for `[webserver] secret_key` config.

*Credit*:
Junghan Lee of Deliveryhero Korea Security Team

Thanks,
Kaxil,
on behalf of Apache Airflow PMC

--0000000000005ebc8105b6fb41b9--
