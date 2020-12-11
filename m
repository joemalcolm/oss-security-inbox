X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["439" "Friday" "11" "December" "2020" "13:39:06" "+0000" "Kaxil Naik" "kaxilnaik@apache.org" "<CAH5JyZppNAdEWSjZo5d50Yy5O1pvc-UUksHf4NPmamqguyH_+Q@mail.gmail.com>" "18" "[oss-security] CVE-2020-17511: Apache Airflow Admin password gets logged in plain text" nil nil nil "12" "2020121113:39:06" "[oss-security] CVE-2020-17511: Apache Airflow Admin password gets logged in plain text" (number mark "U       kaxilnaik@ap Dec 11   18/439   " thread-indent "\"[oss-security] CVE-2020-17511: Apache Airflow Admin password gets logged in plain text\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-17511: Apache Airflow Admin password gets logged in plain text" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30000 invoked by uid 550); 11 Dec 2020 14:09:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32247 invoked from network); 11 Dec 2020 13:39:30 -0000
X-Gm-Message-State: AOAM531sOrEovXkY2l3+NKSU9t6BsY0OmItn2Vb+e+KsOlwhj2U8iF5b
	GiGPN/wtUNH0pDPolA81ht+F53kEK6cDBGMz3AE=
X-Google-Smtp-Source: ABdhPJyLPGnhhCWl1IkF8BJuZp8y11hzmLJ1pFbcVuwk9VTNiYPXlYc7VmsctlL1jvFSI6xdxELUEveXqMghuFoVuws=
X-Received: by 2002:a17:906:fc3:: with SMTP id c3mr11373763ejk.474.1607693957413;
 Fri, 11 Dec 2020 05:39:17 -0800 (PST)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@apache.org>
Date: Fri, 11 Dec 2020 13:39:06 +0000
X-Gmail-Original-Message-ID: <CAH5JyZppNAdEWSjZo5d50Yy5O1pvc-UUksHf4NPmamqguyH_+Q@mail.gmail.com>
Message-ID: <CAH5JyZppNAdEWSjZo5d50Yy5O1pvc-UUksHf4NPmamqguyH_+Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: users@airflow.apache.org
Content-Type: multipart/alternative; boundary="0000000000003d40ae05b6306b80"
Subject: [oss-security] CVE-2020-17511: Apache Airflow Admin password gets logged in plain text

--0000000000003d40ae05b6306b80
Content-Type: text/plain; charset="UTF-8"

Versions Affected: < 1.10.13

Description:
In Airflow < 1.10.13, when creating a user using airflow CLI, the password
gets logged in plain text in the Log table in Airflow Metadatase. Same
happened when creating a Connection with a password field.

Credit:
Ali Al-Habsi of Accellion

Thanks,
Kaxil,
on behalf of Apache Airflow PMC

--0000000000003d40ae05b6306b80--
