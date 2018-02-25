X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["426" "Sunday" "25" "February" "2018" "18:50:34" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>" "15" "[oss-security] [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls" nil nil nil "2" "2018022511:50:34" "[oss-security] [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls" (number mark "U       solomax@apac Feb 25   15/426   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32432 invoked by uid 550); 25 Feb 2018 11:50:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32405 invoked from network); 25 Feb 2018 11:50:49 -0000
X-Gm-Message-State: APf1xPDqAhNNsYRxrKzWDjVHqU+GWcsz19WdRFLpZsAXrnxoLm9aL/6K
	ar67oARfuqCVVEU6CfNsS8ZWcn8MuQkclG3P/lU=
X-Google-Smtp-Source: AG47ELs2I09WM9nvr47DnBETqAfrOy2XkWmHEkNM/unHKLqiK9F2UgSSXlLvQeGw5nV7/BhAgrmRtSZJu+aY8B87veA=
X-Received: by 10.36.120.211 with SMTP id p202mr9441639itc.28.1519559434500;
 Sun, 25 Feb 2018 03:50:34 -0800 (PST)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Sun, 25 Feb 2018 18:50:34 +0700
X-Gmail-Original-Message-ID: <CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>
Message-ID: <CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	user-russian@openmeetings.apache.org, Sahil <sdhar@securityinnovation.com>, 
	security@openmeetings.apache.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 3.0.0

Description: CRUD operations on privileged users are not password
protected allowing an authenticated attacker to deny service for
privileged users.


The issue was fixed in 4.0.2
All users are recommended to upgrade to Apache OpenMeetings 4.0.2

Credit: This issue was identified by Sahil Dhar of Security Innovation Inc
