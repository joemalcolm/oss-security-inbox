X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["416" "Thursday" "13" "July" "2017" "23:24:59" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8irN98436UDsFDeqpj-FMKC5pRi476Xgaq9LGyMQmLGUA@mail.gmail.com>" "15" "[oss-security] CVE-2017-7680 - Apache OpenMeetings - Insecure crossdomain.xml policy" nil nil nil "7" "2017071316:24:59" "[oss-security] CVE-2017-7680 - Apache OpenMeetings - Insecure crossdomain.xml policy" (number mark "U       solomax@apac Jul 13   15/416   " thread-indent "\"[oss-security] CVE-2017-7680 - Apache OpenMeetings - Insecure crossdomain.xml policy\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14095 invoked by uid 550); 13 Jul 2017 16:25:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14012 invoked from network); 13 Jul 2017 16:25:12 -0000
X-Gm-Message-State: AIVw113cf8IMpM9/18F5d40Gpk9ZJxDUwQucIfBRExceSH9N/2GU0RuG
	b+5oTwGzF0K2fEJfs8AF7ZCHo+Sr1w==
X-Received: by 10.84.224.70 with SMTP id a6mr10861412plt.6.1499963099745; Thu,
 13 Jul 2017 09:24:59 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Thu, 13 Jul 2017 23:24:59 +0700
X-Gmail-Original-Message-ID: <CAJmbs8irN98436UDsFDeqpj-FMKC5pRi476Xgaq9LGyMQmLGUA@mail.gmail.com>
Message-ID: <CAJmbs8irN98436UDsFDeqpj-FMKC5pRi476Xgaq9LGyMQmLGUA@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, 
	Joe Basirico <jbasirico@securityinnovation.com>, 
	Sharath Unni <sunni@securityinnovation.com>, 
	Dinesh Shetty <dshetty@securityinnovation.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-7680 - Apache OpenMeetings - Insecure crossdomain.xml policy

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.0.0

Description: Apache OpenMeetings has an overly permissive
crossdomain.xml file. This allows for flash content to be loaded from
untrusted domains.
CVE-2017-7680

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation
