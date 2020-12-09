X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["610" "Wednesday" "9" "December" "2020" "08:08:48" "-0800" "Brennan Ashton" "btashton@apache.org" "<837a9c7055b76fa0887a07a13f7ae077c8c39387.camel@apache.org>" "19" "[oss-security] CVE-2020-17529: Apache NuttX (incubating) Out of Bound Write from invalid fragmentation offset value specified in the IP header" nil nil nil "12" "2020120916:08:48" "[oss-security] CVE-2020-17529: Apache NuttX (incubating) Out of Bound Write from invalid fragmentation offset value specified in the IP header" (number mark "U       btashton@apa Dec  9   19/610   " thread-indent "\"[oss-security] CVE-2020-17529: Apache NuttX (incubating) Out of Bound Write from invalid fragmentation offset value specified in the IP header\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-17529: Apache NuttX (incubating) Out of Bound Write from invalid fragmentation offset value specified in the IP header" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13489 invoked by uid 550); 9 Dec 2020 16:20:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25661 invoked from network); 9 Dec 2020 16:09:10 -0000
Message-ID: <837a9c7055b76fa0887a07a13f7ae077c8c39387.camel@apache.org>
From: Brennan Ashton <btashton@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 09 Dec 2020 08:08:48 -0800
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2020-17529: Apache NuttX (incubating) Out of Bound Write from
 invalid fragmentation offset value specified in the IP header

Description:
Out-of-bounds Write vulnerability in TCP Stack of Apache Software
Foundation Apache NuttX (incubating) allows attacker to corrupt memory
by supplying and invalid fragmentation offset value specified in the IP
header.  This is only impacts builds with both CONFIG_EXPERIMENTAL and
CONFIG_NET_TCP_REASSEMBLY build flags enabled.

This issue affects:
Apache Software Foundation Apache NuttX (incubating) versions prior to
9.1.1 AND 10.0.0.

This issue is also known as AMNESIA:33 CVE-2020-17438

Credit:
Apache NuttX would like to thank Forescout for reporting the issue

Thanks you,
Brennan Ashton

