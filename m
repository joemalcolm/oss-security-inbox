X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["548" "Monday" "21" "December" "2015" "16:03:49" "+0100" "Adam Maris" "amaris@redhat.com" "<567814D5.2000303@redhat.com>" "19" "[oss-security] CVE-2015-7557, CVE-2015-7558 librsvg2: Out-of-bounds heap read and stack exhaustion" nil nil nil "12" "2015122115:03:49" "[oss-security] CVE-2015-7557, CVE-2015-7558 librsvg2: Out-of-bounds heap read and stack exhaustion" (number mark "U       amaris@redha Dec 21   19/548   " thread-indent "\"[oss-security] CVE-2015-7557, CVE-2015-7558 librsvg2: Out-of-bounds heap read and stack exhaustion\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12136 invoked by uid 550); 21 Dec 2015 15:04:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12115 invoked from network); 21 Dec 2015 15:04:04 -0000
To: oss-security@lists.openwall.com
From: Adam Maris <amaris@redhat.com>
Message-ID: <567814D5.2000303@redhat.com>
Date: Mon, 21 Dec 2015 16:03:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: [oss-security] CVE-2015-7557, CVE-2015-7558 librsvg2: Out-of-bounds heap read and
 stack exhaustion

CVE-2015-7557: Out-of-bounds heap read in librsvg2 was found when 
parsing SVG file.

Upstream patch:

https://git.gnome.org/browse/librsvg/commit/rsvg-shapes.c?id=40af93e6eb1c94b90c3b9a0b87e0840e126bb8df

CVE-2015-7558: Stack exhaustion due to cyclic dependency causing to 
crash an application was found in librsvg2 while parsing SVG file. It 
has been fixed in 2.40.12 by many commits that has rewritten the checks 
for cyclic references.

RH bug:

https://bugzilla.redhat.com/show_bug.cgi?id=1268243

-- 
Adam Maris / Red Hat Product Security

