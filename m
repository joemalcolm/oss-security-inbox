X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["382" "Thursday" "13" "July" "2017" "23:28:25" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8jn7_27k=uH17L8_a8fHHtYLs-K-TVhrah2ym7Z33O_LA@mail.gmail.com>" "14" "[oss-security] CVE-2017-7685 - Apache OpenMeetings - Insecure HTTP Methods" nil nil nil "7" "2017071316:28:25" "[oss-security] CVE-2017-7685 - Apache OpenMeetings - Insecure HTTP Methods" (number mark "U       solomax@apac Jul 13   14/382   " thread-indent "\"[oss-security] CVE-2017-7685 - Apache OpenMeetings - Insecure HTTP Methods\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5450 invoked by uid 550); 13 Jul 2017 16:28:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5354 invoked from network); 13 Jul 2017 16:28:38 -0000
X-Gm-Message-State: AIVw112ZSyb2aZbBfWGoxSn6l2zqiG0y1AZaOlaQqleM/WF7XdHWeyhA
	dmFDNkPnubOPbTTsTKhmiJF2siN23g==
X-Received: by 10.98.8.93 with SMTP id c90mr400848pfd.213.1499963305947; Thu,
 13 Jul 2017 09:28:25 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Thu, 13 Jul 2017 23:28:25 +0700
X-Gmail-Original-Message-ID: <CAJmbs8jn7_27k=uH17L8_a8fHHtYLs-K-TVhrah2ym7Z33O_LA@mail.gmail.com>
Message-ID: <CAJmbs8jn7_27k=uH17L8_a8fHHtYLs-K-TVhrah2ym7Z33O_LA@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, 
	Joe Basirico <jbasirico@securityinnovation.com>, 
	Sharath Unni <sunni@securityinnovation.com>, 
	Dinesh Shetty <dshetty@securityinnovation.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-7685 - Apache OpenMeetings - Insecure HTTP Methods

Severity: Lowest

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.0.0

Description: Apache OpenMeetingsrespond to the following insecure HTTP
Methods: PUT, DELETE, HEAD, and PATCH.
CVE-2017-7685

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
