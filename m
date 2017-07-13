X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["414" "Thursday" "13" "July" "2017" "23:23:37" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8hMpqer5DmaZYyjj_XJ0deqZ4FTYrd9-MjHzhHn+fMruQ@mail.gmail.com>" "15" "[oss-security] CVE-2017-7666 - Apache OpenMeetings Missing Secure Headers" nil nil nil "7" "2017071316:23:37" "[oss-security] CVE-2017-7666 - Apache OpenMeetings Missing Secure Headers" (number mark "U       solomax@apac Jul 13   15/414   " thread-indent "\"[oss-security] CVE-2017-7666 - Apache OpenMeetings Missing Secure Headers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3703 invoked by uid 550); 13 Jul 2017 16:23:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3680 invoked from network); 13 Jul 2017 16:23:51 -0000
X-Gm-Message-State: AIVw112TvN3SbRsglWFl0wqujQVkiA3LGKvccQRX03cxUoDC6MZlNIkP
	HKqwElP5/s1TW+twlja0oQDxtdnpGg==
X-Received: by 10.99.172.17 with SMTP id v17mr10043624pge.196.1499963017752;
 Thu, 13 Jul 2017 09:23:37 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Thu, 13 Jul 2017 23:23:37 +0700
X-Gmail-Original-Message-ID: <CAJmbs8hMpqer5DmaZYyjj_XJ0deqZ4FTYrd9-MjHzhHn+fMruQ@mail.gmail.com>
Message-ID: <CAJmbs8hMpqer5DmaZYyjj_XJ0deqZ4FTYrd9-MjHzhHn+fMruQ@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, 
	Joe Basirico <jbasirico@securityinnovation.com>, 
	Sharath Unni <sunni@securityinnovation.com>, 
	Dinesh Shetty <dshetty@securityinnovation.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-7666 - Apache OpenMeetings Missing Secure Headers

Severity: High

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.0.0

Description: Apache Openmeetings is vulnerable to Cross-Site Request
Forgery (CSRF) attacks, XSS attacks, click-jacking, and MIME based
attacks
CVE-2017-7666

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
