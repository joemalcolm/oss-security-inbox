X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["440" "Thursday" "13" "July" "2017" "23:27:43" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8jKczMSw5RZ2NkSx3z-9+cTRg50w-VO9nneRyhMOFLSKQ@mail.gmail.com>" "15" "[oss-security] CVE-2017-7684 - Apache OpenMeetings - Insecure File Upload" nil nil nil "7" "2017071316:27:43" "[oss-security] CVE-2017-7684 - Apache OpenMeetings - Insecure File Upload" (number mark "U       solomax@apac Jul 13   15/440   " thread-indent "\"[oss-security] CVE-2017-7684 - Apache OpenMeetings - Insecure File Upload\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3328 invoked by uid 550); 13 Jul 2017 16:28:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3263 invoked from network); 13 Jul 2017 16:28:01 -0000
X-Gm-Message-State: AIVw1132RV4w+oRix7q3OkBR216xEWQaXKbLK++l3so07zwbksnsQknr
	r/ktqnkR6s4Cq+SuSq5wPUuY7bRn5w==
X-Received: by 10.98.102.214 with SMTP id s83mr391744pfj.239.1499963264041;
 Thu, 13 Jul 2017 09:27:44 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Thu, 13 Jul 2017 23:27:43 +0700
X-Gmail-Original-Message-ID: <CAJmbs8jKczMSw5RZ2NkSx3z-9+cTRg50w-VO9nneRyhMOFLSKQ@mail.gmail.com>
Message-ID: <CAJmbs8jKczMSw5RZ2NkSx3z-9+cTRg50w-VO9nneRyhMOFLSKQ@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, 
	Joe Basirico <jbasirico@securityinnovation.com>, 
	Sharath Unni <sunni@securityinnovation.com>, 
	Dinesh Shetty <dshetty@securityinnovation.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-7684 - Apache OpenMeetings - Insecure File Upload

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.0.0

Description: Apache OpenMeetings doesn't check contents of files being
uploaded. An attacker can cause a denial of service by uploading
multiple large files to the server
CVE-2017-7684

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
