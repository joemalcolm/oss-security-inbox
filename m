X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["662" "Monday" "28" "December" "2015" "08:18:02" "+0100" "Max Teufel" "max@teufelsnetz.com" "<5680E22A.4070505@teufelsnetz.com>" "18" "[oss-security] CVE request: flexlay: Insecure use of temporary files" nil nil nil "12" "2015122807:18:02" "[oss-security] CVE request: flexlay: Insecure use of temporary files" (number mark "U       max@teufelsn Dec 28   18/662   " thread-indent "\"[oss-security] CVE request: flexlay: Insecure use of temporary files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16377 invoked by uid 550); 28 Dec 2015 08:11:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22496 invoked from network); 28 Dec 2015 07:18:17 -0000
X-Spam-DCC: : 
From: Max Teufel <max@teufelsnetz.com>
X-Enigmail-Draft-Status: N1110
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <5680E22A.4070505@teufelsnetz.com>
Date: Mon, 28 Dec 2015 08:18:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE request: flexlay: Insecure use of temporary files

Hi,

Flexlay [1], a generic 2D editor, insecurely uses temporary files which
have a fixed name. This affects the current development tree (which is
the most used version of flexlay) as well as older releases. Reported in
flexlay's issue tracker as #65 [2].

A CVE has previously been requested from secalert@redhat.com, however,
they told me I should use this list as the FIXME comment [3] in the
affected code is apparently public enough.

 [1] https://github.com/SuperTux/flexlay
 [2] https://github.com/SuperTux/flexlay/issues/65
 [3]
https://github.com/SuperTux/flexlay/blob/21b881b0e6b71897b1a6f164239f1bad17a0c404/supertux/gui.py#L287

Regards,
Max Teufel
