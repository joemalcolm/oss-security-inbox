X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["567" "Friday" "25" "March" "2016" "15:57:27" "+0600" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8jvA+FVb08pKqfTWFPZLjJJadPRLfQfDvHscT240ULjoA@mail.gmail.com>" "19" "[oss-security] [CVE-2016-2164] Arbitrary file read via SOAP API" nil nil nil "3" "2016032509:57:27" "[oss-security] [CVE-2016-2164] Arbitrary file read via SOAP API" (number mark "U       solomax@apac Mar 25   19/567   " thread-indent "\"[oss-security] [CVE-2016-2164] Arbitrary file read via SOAP API\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8117 invoked by uid 550); 25 Mar 2016 10:35:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11320 invoked from network); 25 Mar 2016 09:57:40 -0000
X-Gm-Message-State: AD7BkJIm/bL0OJcL+IqIXtD0pBxGJoh0DqVlMsP3i9zbRBTo1g2ACYaoC6MDHZXqIN6tOO4lPuk/J/X7Lcsh+Q==
MIME-Version: 1.0
X-Received: by 10.66.140.14 with SMTP id rc14mr19707536pab.65.1458899847983;
 Fri, 25 Mar 2016 02:57:27 -0700 (PDT)
Date: Fri, 25 Mar 2016 15:57:27 +0600
X-Gmail-Original-Message-ID: <CAJmbs8jvA+FVb08pKqfTWFPZLjJJadPRLfQfDvHscT240ULjoA@mail.gmail.com>
Message-ID: <CAJmbs8jvA+FVb08pKqfTWFPZLjJJadPRLfQfDvHscT240ULjoA@mail.gmail.com>
From: Maxim Solodovnik <solomax@apache.org>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] [CVE-2016-2164] Arbitrary file read via SOAP API

Severity: Critical

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.9.x - 3.0.7

Description:
When attempting to upload a file via the API using the
importFileByInternalUserId
or importFile methods in the FileService, it is possible to read arbitrary
files from the system. This is due to that Java's URL class is used without
checking what protocol handler is specified in the API call.

All users are recommended to upgrade to Apache OpenMeetings 3.1.1

Credit: This issue was identified by Andreas Lindh


Apache OpenMeetings Team
