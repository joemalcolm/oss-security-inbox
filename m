X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["381" "Thursday" "13" "July" "2017" "23:26:48" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8grQ-mRQ6K1KJZY_=dJbKn_oL9Y=2CxwD0V77zm-1jEBg@mail.gmail.com>" "14" "[oss-security] CVE-2017-7683 - Apache OpenMeetings - Information Disclosure" nil nil nil "7" "2017071316:26:48" "[oss-security] CVE-2017-7683 - Apache OpenMeetings - Information Disclosure" (number mark "U       solomax@apac Jul 13   14/381   " thread-indent "\"[oss-security] CVE-2017-7683 - Apache OpenMeetings - Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28121 invoked by uid 550); 13 Jul 2017 16:27:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28039 invoked from network); 13 Jul 2017 16:27:02 -0000
X-Gm-Message-State: AIVw110RGXgZcGR4ggP80cHthch6tGYvhqzKO7vnK84cfQM4F2ZW8lNq
	alcaeAFcVEoBEeUk6YL9R/BLGb/pYw==
X-Received: by 10.99.125.25 with SMTP id y25mr10026700pgc.38.1499963208958;
 Thu, 13 Jul 2017 09:26:48 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Thu, 13 Jul 2017 23:26:48 +0700
X-Gmail-Original-Message-ID: <CAJmbs8grQ-mRQ6K1KJZY_=dJbKn_oL9Y=2CxwD0V77zm-1jEBg@mail.gmail.com>
Message-ID: <CAJmbs8grQ-mRQ6K1KJZY_=dJbKn_oL9Y=2CxwD0V77zm-1jEBg@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, 
	Joe Basirico <jbasirico@securityinnovation.com>, 
	Sharath Unni <sunni@securityinnovation.com>, 
	Dinesh Shetty <dshetty@securityinnovation.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-7683 - Apache OpenMeetings - Information Disclosure

Severity: Lowest

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.0.0

Description: Apache OpenMeetings displays Tomcat version and detailed
error stack trace which is not secure.
CVE-2017-7683

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
