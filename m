X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["533" "Wednesday" "9" "December" "2020" "08:01:39" "-0800" "Brennan Ashton" "btashton@apache.org" "<ecf4ae371694ce099bbebc4ab108fb23c19270a6.camel@apache.org>" "18" "[oss-security] CVE-2020-17528: Apache NuttX (incubating) Out of Bound Write from invalid TCP Urgent length" nil nil nil "12" "2020120916:01:39" "[oss-security] CVE-2020-17528: Apache NuttX (incubating) Out of Bound Write from invalid TCP Urgent length" (number mark "U       btashton@apa Dec  9   18/533   " thread-indent "\"[oss-security] CVE-2020-17528: Apache NuttX (incubating) Out of Bound Write from invalid TCP Urgent length\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-17528: Apache NuttX (incubating) Out of Bound Write from invalid TCP Urgent length" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24496 invoked by uid 550); 9 Dec 2020 16:09:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21853 invoked from network); 9 Dec 2020 16:01:55 -0000
Message-ID: <ecf4ae371694ce099bbebc4ab108fb23c19270a6.camel@apache.org>
From: Brennan Ashton <btashton@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 09 Dec 2020 08:01:39 -0800
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2020-17528: Apache NuttX (incubating) Out of Bound Write from
 invalid TCP Urgent length

Description:
Out-of-bounds Write vulnerability in TCP stack of Apache Software
Foundation Apache NuttX (incubating) allows attacker to corrupt memory
by supplying arbitrary urgent data pointer offsets within TCP packets
including beyond the length of the packet.

This issue affects:
Apache Software Foundation Apache NuttX (incubating) versions prior to
9.1.1 AND 10.0.0.

This issue is also known as AMNESIA:33 CVE-2020-17437

Credit:
Apache NuttX would like to thank Forescout for reporting the issue

Thanks you,
Brennan Ashton

