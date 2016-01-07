X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["538" "Thursday" "7" "January" "2016" "12:10:37" "+0100" "Nico Golde" "oss-security+ml@ngolde.de" "<20160107111037.GO8020@coredump>" "10" "[oss-security] CVE id request: dhcpcd" nil nil nil "1" "2016010711:10:37" "[oss-security] CVE id request: dhcpcd" (number mark "U       oss-security Jan  7   10/538   " thread-indent "\"[oss-security] CVE id request: dhcpcd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32282 invoked by uid 550); 7 Jan 2016 11:11:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32174 invoked from network); 7 Jan 2016 11:10:50 -0000
Date: Thu, 7 Jan 2016 12:10:37 +0100
From: Nico Golde <oss-security+ml@ngolde.de>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20160107111037.GO8020@coredump>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Mailer: netcat 1.10
X-GPG: 0xA0A0AAAA
Subject: [oss-security] CVE id request: dhcpcd

dhcpcd recently fixed two security issues. Can you assign CVE ids to these?

http://roy.marples.name/projects/dhcpcd/info/76a1609352263bd9
can lead to a heap overflow via malformed dhcp responses later in print_option (via dhcp_envoption1) due to incorrect option length values. exploitation is non-trivial, but i'd love to be proven wrong.

http://roy.marples.name/projects/dhcpcd/info/595883e2a431f65d
can lead to an invalid read/crash via malformed dhcp responses. not exploitable beyond DoS as far as I can judge.

Kind regards,
Nico
