X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["508" "Friday" "12" "August" "2016" "17:03:51" "+0700" "Maxim Solodovnik" "solomax@apache.org" "<CAJmbs8iHGMwpVPfhindZrzn1tGjUVPtatDvB-LMx3+7rxAsgwQ@mail.gmail.com>" "19" "[oss-security] [CVE-2016-3089] Apache OpenMeetings XSS in SWF panel" nil nil nil "8" "2016081210:03:51" "[oss-security] [CVE-2016-3089] Apache OpenMeetings XSS in SWF panel" (number mark "U       solomax@apac Aug 12   19/508   " thread-indent "\"[oss-security] [CVE-2016-3089] Apache OpenMeetings XSS in SWF panel\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20413 invoked by uid 550); 12 Aug 2016 11:24:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17547 invoked from network); 12 Aug 2016 10:04:06 -0000
X-Gm-Message-State: AEkoouvDGbanHdC4/YZy1ysN3QI/jyemy13pbiP1bnkvBEDxSNo4odXSvxze8nyp7OB+lF5jo41UNixFeOzBhA==
X-Received: by 10.55.106.195 with SMTP id f186mr16021887qkc.92.1470996231491;
 Fri, 12 Aug 2016 03:03:51 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax@apache.org>
Date: Fri, 12 Aug 2016 17:03:51 +0700
X-Gmail-Original-Message-ID: <CAJmbs8iHGMwpVPfhindZrzn1tGjUVPtatDvB-LMx3+7rxAsgwQ@mail.gmail.com>
Message-ID: <CAJmbs8iHGMwpVPfhindZrzn1tGjUVPtatDvB-LMx3+7rxAsgwQ@mail.gmail.com>
To: Matthew Daley <mattd@bugfuzz.com>, 
	Openmeetings user-list <user@openmeetings.apache.org>, user-russian@openmeetings.apache.org, 
	dev <dev@openmeetings.apache.org>, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a114fddb8d81ea60539dcfffc
Subject: [oss-security] [CVE-2016-3089] Apache OpenMeetings XSS in SWF panel

--001a114fddb8d81ea60539dcfffc
Content-Type: text/plain; charset=UTF-8

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 3.1.0

Description: The value of the URL's "swf" query parameter is interpolated
into the JavaScript tag without being escaped, leading to the reflected XSS.

All users are recommended to upgrade to Apache OpenMeetings 3.1.2

Credit: This issue was identified by Matthew Daley

Apache OpenMeetings Team

--001a114fddb8d81ea60539dcfffc--
