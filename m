X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["457" "Thursday" "13" "July" "2017" "23:24:17" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8j7_Smbsv8bkm31xzixJADOt+-iQoxCdmux8orm8DcwOw@mail.gmail.com>" "15" "[oss-security] CVE-2017-7673 - Apache OpenMeetings Insufficient check in dialogs with passwords" nil nil nil "7" "2017071316:24:17" "[oss-security] CVE-2017-7673 - Apache OpenMeetings Insufficient check in dialogs with passwords" (number mark "U       solomax@apac Jul 13   15/457   " thread-indent "\"[oss-security] CVE-2017-7673 - Apache OpenMeetings Insufficient check in dialogs with passwords\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9572 invoked by uid 550); 13 Jul 2017 16:24:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9477 invoked from network); 13 Jul 2017 16:24:30 -0000
X-Gm-Message-State: AIVw111CvXozhSZUlNS7B2KvqzOKIIUmddXt1AWxvaxKS8agt1ZcHXGK
	nTvM7ZD4Qihnn5p4BPM7c2VGEqUbZQ==
X-Received: by 10.98.106.6 with SMTP id f6mr408665pfc.53.1499963058020; Thu,
 13 Jul 2017 09:24:18 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Thu, 13 Jul 2017 23:24:17 +0700
X-Gmail-Original-Message-ID: <CAJmbs8j7_Smbsv8bkm31xzixJADOt+-iQoxCdmux8orm8DcwOw@mail.gmail.com>
Message-ID: <CAJmbs8j7_Smbsv8bkm31xzixJADOt+-iQoxCdmux8orm8DcwOw@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, 
	Joe Basirico <jbasirico@securityinnovation.com>, 
	Sharath Unni <sunni@securityinnovation.com>, 
	Dinesh Shetty <dshetty@securityinnovation.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-7673 - Apache OpenMeetings Insufficient check in dialogs
 with passwords

Severity: High

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.0.0

Description: Apache OpenMeetings uses not very strong cryptographic
storage, captcha is not used in registration and forget password
dialogs and auth forms missing brute force protection
CVE-2017-7673

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
