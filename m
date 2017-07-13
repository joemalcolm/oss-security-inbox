X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["498" "Thursday" "13" "July" "2017" "23:25:39" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8hbW+BOp8T3rXLRsgi0Lh8izoYwp-sM7AX60hm9gZqQLA@mail.gmail.com>" "16" "[oss-security] CVE-2017-7681 - Apache OpenMeetings - SQL injection in web services" nil nil nil "7" "2017071316:25:39" "[oss-security] CVE-2017-7681 - Apache OpenMeetings - SQL injection in web services" (number mark "U       solomax@apac Jul 13   16/498   " thread-indent "\"[oss-security] CVE-2017-7681 - Apache OpenMeetings - SQL injection in web services\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19685 invoked by uid 550); 13 Jul 2017 16:25:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19587 invoked from network); 13 Jul 2017 16:25:52 -0000
X-Gm-Message-State: AIVw11185iFlXZQWVOKkyMUMdWIDog7puboZucT736Rw9UtiWUExqTiJ
	7LoNzC9agiwbhG+OBHZ8RYz2pMFUHg==
X-Received: by 10.84.195.131 with SMTP id j3mr11181356pld.147.1499963140193;
 Thu, 13 Jul 2017 09:25:40 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Thu, 13 Jul 2017 23:25:39 +0700
X-Gmail-Original-Message-ID: <CAJmbs8hbW+BOp8T3rXLRsgi0Lh8izoYwp-sM7AX60hm9gZqQLA@mail.gmail.com>
Message-ID: <CAJmbs8hbW+BOp8T3rXLRsgi0Lh8izoYwp-sM7AX60hm9gZqQLA@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, 
	Joe Basirico <jbasirico@securityinnovation.com>, 
	Sharath Unni <sunni@securityinnovation.com>, 
	Dinesh Shetty <dshetty@securityinnovation.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-7681 - Apache OpenMeetings - SQL injection in web services

Severity: High

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.0.0

Description: Apache OpenMeetings is vulnerable to SQL injection This
allows authenticated users to modify the structure of the existing
query and leak the structure of other queries being made by the
application in the back-end
CVE-2017-7681

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
