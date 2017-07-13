X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["407" "Thursday" "13" "July" "2017" "23:26:13" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8hsosH_RNHXdxQ6=HKWdZwwKxkzyGBGt98U+40ChhMQLQ@mail.gmail.com>" "15" "[oss-security] CVE-2017-7682 - Apache OpenMeetings - Business Logic Bypass" nil nil nil "7" "2017071316:26:13" "[oss-security] CVE-2017-7682 - Apache OpenMeetings - Business Logic Bypass" (number mark "U       solomax@apac Jul 13   15/407   " thread-indent "\"[oss-security] CVE-2017-7682 - Apache OpenMeetings - Business Logic Bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24033 invoked by uid 550); 13 Jul 2017 16:26:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23970 invoked from network); 13 Jul 2017 16:26:26 -0000
X-Gm-Message-State: AIVw111qyQT6w0qQC7LL5FBzoG4SsqyhzqlXvJKclTw6VRHl+pUZ4lic
	LWrPmkJDg8YU8MSUsc15CwZwqu7ybQ==
X-Received: by 10.101.86.68 with SMTP id m4mr10340887pgs.46.1499963174329;
 Thu, 13 Jul 2017 09:26:14 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Thu, 13 Jul 2017 23:26:13 +0700
X-Gmail-Original-Message-ID: <CAJmbs8hsosH_RNHXdxQ6=HKWdZwwKxkzyGBGt98U+40ChhMQLQ@mail.gmail.com>
Message-ID: <CAJmbs8hsosH_RNHXdxQ6=HKWdZwwKxkzyGBGt98U+40ChhMQLQ@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, 
	Joe Basirico <jbasirico@securityinnovation.com>, 
	Sharath Unni <sunni@securityinnovation.com>, 
	Dinesh Shetty <dshetty@securityinnovation.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-7682 - Apache OpenMeetings - Business Logic Bypass

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 3.2.0

Description: Apache OpenMeetings is vulnerable to parameter
manipulation attacks, as a result attacker has access to restricted
areas.
CVE-2017-7682

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
