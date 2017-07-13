X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["338" "Thursday" "13" "July" "2017" "23:21:51" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8hXVqrKdGi92K=m08wJ0iaZunMan5cZ=XYuhuLErx0j9Q@mail.gmail.com>" "13" "[oss-security] CVE-2017-7663 - Apache OpenMeetings - XSS in chat" nil nil nil "7" "2017071316:21:51" "[oss-security] CVE-2017-7663 - Apache OpenMeetings - XSS in chat" (number mark "U       solomax@apac Jul 13   13/338   " thread-indent "\"[oss-security] CVE-2017-7663 - Apache OpenMeetings - XSS in chat\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24271 invoked by uid 550); 13 Jul 2017 16:22:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24252 invoked from network); 13 Jul 2017 16:22:12 -0000
X-Gm-Message-State: AIVw111H0JDnugKnBMOgcLXEQAlqDd7e9UMyXQTxdC4jgLMQvttcJxJx
	ovwEEuYGvM10n56zzFMnjqQvE7z4QA==
X-Received: by 10.84.191.129 with SMTP id a1mr11140707pld.272.1499962911844;
 Thu, 13 Jul 2017 09:21:51 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Thu, 13 Jul 2017 23:21:51 +0700
X-Gmail-Original-Message-ID: <CAJmbs8hXVqrKdGi92K=m08wJ0iaZunMan5cZ=XYuhuLErx0j9Q@mail.gmail.com>
Message-ID: <CAJmbs8hXVqrKdGi92K=m08wJ0iaZunMan5cZ=XYuhuLErx0j9Q@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, 
	Joe Basirico <jbasirico@securityinnovation.com>, 
	Sharath Unni <sunni@securityinnovation.com>, 
	Dinesh Shetty <dshetty@securityinnovation.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-7663 - Apache OpenMeetings - XSS in chat

Severity: High

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 3.2.0

Description: Both global and Room chat are vulnerable to XSS attack
CVE-2017-7663

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
