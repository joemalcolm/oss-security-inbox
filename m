X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["705" "Wednesday" "9" "November" "2016" "13:20:55" "+0100" "Marek =?ISO-8859-1?Q?Hul=E1n?=" "mhulan@redhat.com" "<3759921.lnTCqWLM8G@tony>" "20" "[oss-security] CVE-2016-7077: information disclosure from association lists shown without authorization" nil nil nil "11" "2016110912:20:55" "[oss-security] CVE-2016-7077: information disclosure from association lists shown without authorization" (number mark "U       mhulan@redha Nov  9   20/705   " thread-indent "\"[oss-security] CVE-2016-7077: information disclosure from association lists shown without authorization\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23760 invoked by uid 550); 9 Nov 2016 12:29:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20008 invoked from network); 9 Nov 2016 12:21:09 -0000
From: Marek =?ISO-8859-1?Q?Hul=E1n?= <mhulan@redhat.com>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Date: Wed, 09 Nov 2016 13:20:55 +0100
Message-ID: <3759921.lnTCqWLM8G@tony>
User-Agent: KMail/5.3.2 (Linux/4.8.4-200.fc24.x86_64; KDE/5.27.0; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Wed, 09 Nov 2016 12:20:57 +0000 (UTC)
Subject: [oss-security] CVE-2016-7077: information disclosure from association lists shown without authorization

CVE-2016-7077: information disclosure from association lists shown without 
authorization

Lists of associated resources, such as operating systems associated to a new 
architecture, are not restricted to listing resources that the user is 
authorized to view, when rendering with fewer than six items. The list will 
show all possible associated resources, disclosing their names.

Affects Foreman 1.1 and higher, but was first mitigated against in Foreman 
1.9.0 for some cases

Patch available at https://github.com/theforeman/foreman/pull/3955
Fix will be released in Foreman 1.14 (to be released)
For more information please see Redmine issue 
http://projects.theforeman.org/issues/16971

--
Marek


