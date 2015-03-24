X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["591" "Tuesday" "24" "March" "2015" "08:20:55" "+0100" "Petr Matousek" "pmatouse@redhat.com" "<20150324072054.GN15316@dhcp-25-225.brq.redhat.com>" "16" "[oss-security] CVE-2015-1779 qemu: vnc: insufficient resource limiting in VNC websockets decoder" nil nil nil "3" "2015032407:20:55" "[oss-security] CVE-2015-1779 qemu: vnc: insufficient resource limiting in VNC websockets decoder" (number mark "        pmatouse@red Mar 24   16/591   " thread-indent "\"[oss-security] CVE-2015-1779 qemu: vnc: insufficient resource limiting in VNC websockets decoder\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32018 invoked by uid 550); 24 Mar 2015 07:21:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32000 invoked from network); 24 Mar 2015 07:21:10 -0000
Message-ID: <20150324072054.GN15316@dhcp-25-225.brq.redhat.com>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Tue, 24 Mar 2015 08:20:55 +0100
From: Petr Matousek <pmatouse@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-1779 qemu: vnc: insufficient resource limiting in VNC
 websockets decoder
To: oss-security@lists.openwall.com

It was found that the QEMU's websocket frame decoder processed incoming
frames without limiting resources used to process the header and
payload. An attacker able to access a guest's VNC console could use this
flaw to trigger a denial of service on the host by exhausting all
available memory and CPU.

Acknowledgements:

This issue was discovered by Daniel P. Berrange of Red Hat.

Upstream patch submission:
https://lists.gnu.org/archive/html/qemu-devel/2015-03/msg04894.html

-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
