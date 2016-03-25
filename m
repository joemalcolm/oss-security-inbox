X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["725" "Friday" "25" "March" "2016" "15:56:57" "+0600" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8jiQ3sp4b9BEsJsHy2j4eywP_xYZeVD9nOhgs1VwKPSqw@mail.gmail.com>" "21" "[oss-security] [CVE-2016-2163] Stored Cross Site Scripting in Event description" nil nil nil "3" "2016032509:56:57" "[oss-security] [CVE-2016-2163] Stored Cross Site Scripting in Event description" (number mark "U       solomax@apac Mar 25   21/725   " thread-indent "\"[oss-security] [CVE-2016-2163] Stored Cross Site Scripting in Event description\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7642 invoked by uid 550); 25 Mar 2016 10:35:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10025 invoked from network); 25 Mar 2016 09:57:10 -0000
X-Gm-Message-State: AD7BkJJIgofLweSY0YZDrOqHSjWqRLwHwSizD6ImE1DMAO+wN6J/4MxPMcjVoYmRLXqHGDgL1O2ByRB1eSrVxA==
MIME-Version: 1.0
X-Received: by 10.98.14.2 with SMTP id w2mr19715336pfi.35.1458899817302; Fri,
 25 Mar 2016 02:56:57 -0700 (PDT)
Date: Fri, 25 Mar 2016 15:56:57 +0600
X-Gmail-Original-Message-ID: <CAJmbs8jiQ3sp4b9BEsJsHy2j4eywP_xYZeVD9nOhgs1VwKPSqw@mail.gmail.com>
Message-ID: <CAJmbs8jiQ3sp4b9BEsJsHy2j4eywP_xYZeVD9nOhgs1VwKPSqw@mail.gmail.com>
From: Maxim Solodovnik <solomax@apache.org>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] [CVE-2016-2163] Stored Cross Site Scripting in Event description

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 1.9.x - 3.0.7

Description:
When creating an event, it is possible to create clickable URL links in
the event description. These links will be present inside the event details
once a participant enters the room via the event. It is possible to create a
link like "javascript:alert('xss')", which will execute once the link is
clicked. As the link is placed within an <a> tag, the actual link is not
visible to the end user which makes it hard to tell if the link is
legit or not.

All users are recommended to upgrade to Apache OpenMeetings 3.1.1

Credit: This issue was identified by Andreas Lindh


Apache OpenMeetings Team
