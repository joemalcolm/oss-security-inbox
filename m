X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["710" "Friday" "27" "May" "2016" "14:34:23" "+0200" "Marek =?ISO-8859-1?Q?Hul=E1n?=" "mhulan@redhat.com" "<1533281.bsIDiLpCPt@tony>" "20" "[oss-security] CVE-2016-4451: Privileges escalation through Organization and Locations Foreman API" nil nil nil "5" "2016052712:34:23" "[oss-security] CVE-2016-4451: Privileges escalation through Organization and Locations Foreman API" (number mark "U       mhulan@redha May 27   20/710   " thread-indent "\"[oss-security] CVE-2016-4451: Privileges escalation through Organization and Locations Foreman API\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5852 invoked by uid 550); 27 May 2016 12:56:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13330 invoked from network); 27 May 2016 12:34:37 -0000
From: Marek =?ISO-8859-1?Q?Hul=E1n?= <mhulan@redhat.com>
To: oss-security@lists.openwall.com
Date: Fri, 27 May 2016 14:34:23 +0200
Message-ID: <1533281.bsIDiLpCPt@tony>
User-Agent: KMail/4.14.10 (Linux/4.4.9-300.fc23.x86_64; KDE/4.14.20; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Fri, 27 May 2016 12:34:25 +0000 (UTC)
Subject: [oss-security] CVE-2016-4451: Privileges escalation through Organization and Locations Foreman API

CVE-2016-4451: Privilege escalation through Organization and Locations API

When accessing Foreman as a user limited to specific organization, if users 
know other organization id and have unlimited filters they can access/modify 
other organization data. They just have to set the id as API parameter.

Mitigation: make sure you have filters restricted to organizations or locations 
when you limit user by assigning him particular organization or location.

Affects Foreman 1.7 and higher

Patch available at https://github.com/theforeman/foreman/pull/3553
Fix released in Foreman 1.11.3 (to be released)
For more information please see Redmine issue 
http://projects.theforeman.org/issues/15182

--
Marek


