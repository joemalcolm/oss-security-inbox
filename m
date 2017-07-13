X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["344" "Thursday" "13" "July" "2017" "23:29:11" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8hhzLtsvQHWM0yufpDDgHosVUwQYV=kgYjZqwywL+AfXA@mail.gmail.com>" "13" "[oss-security] CVE-2017-7688 - Apache OpenMeetings - Insecure Password Update" nil nil nil "7" "2017071316:29:11" "[oss-security] CVE-2017-7688 - Apache OpenMeetings - Insecure Password Update" (number mark "U       solomax@apac Jul 13   13/344   " thread-indent "\"[oss-security] CVE-2017-7688 - Apache OpenMeetings - Insecure Password Update\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11385 invoked by uid 550); 13 Jul 2017 16:29:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11311 invoked from network); 13 Jul 2017 16:29:24 -0000
X-Gm-Message-State: AIVw110UBxRoRX2LWkD/XUSALiXW/jZQUmIdN6r7rrlAZDdVA+xeMCIf
	uozZcjjO8PkwLHVedhtVAaz7uX/XeQ==
X-Received: by 10.84.195.131 with SMTP id j3mr11196935pld.147.1499963351883;
 Thu, 13 Jul 2017 09:29:11 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Thu, 13 Jul 2017 23:29:11 +0700
X-Gmail-Original-Message-ID: <CAJmbs8hhzLtsvQHWM0yufpDDgHosVUwQYV=kgYjZqwywL+AfXA@mail.gmail.com>
Message-ID: <CAJmbs8hhzLtsvQHWM0yufpDDgHosVUwQYV=kgYjZqwywL+AfXA@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, 
	Joe Basirico <jbasirico@securityinnovation.com>, 
	Sharath Unni <sunni@securityinnovation.com>, 
	Dinesh Shetty <dshetty@securityinnovation.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-7688 - Apache OpenMeetings - Insecure Password Update

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.0.0

Description: Apache OpenMeetings updates user password in insecure manner.
CVE-2017-7688

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
