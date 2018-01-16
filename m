X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["929" "Tuesday" "16" "January" "2018" "16:38:07" "-0500" "Michael McNally" "mcnally@isc.org" "<c6a80b3d-e325-d09d-32f2-aa3ccb21be7a@isc.org>" "22" "[oss-security] ISC has announced CVE-2017-3144, a defect in ISC DHCP" nil nil nil "1" "2018011621:38:07" "[oss-security] ISC has announced CVE-2017-3144, a defect in ISC DHCP" (number mark "U       mcnally@isc. Jan 16   22/929   " thread-indent "\"[oss-security] ISC has announced CVE-2017-3144, a defect in ISC DHCP\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26561 invoked by uid 550); 16 Jan 2018 21:38:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26533 invoked from network); 16 Jan 2018 21:38:23 -0000
To: oss-security@lists.openwall.com
From: Michael McNally <mcnally@isc.org>
Message-ID: <c6a80b3d-e325-d09d-32f2-aa3ccb21be7a@isc.org>
Date: Tue, 16 Jan 2018 16:38:07 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:52.0)
 Gecko/20100101 Thunderbird/52.5.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] ISC has announced CVE-2017-3144, a defect in ISC DHCP

Please be advised that ISC has publicly announced a vulnerability in
ISC DHCP.

CVE-2017-3144 is a partial denial-of-service vector which can be used
to exhaust the server's pool of socket descriptors if an attacker can
open connections to the server's OMAPI control port.  If successfully
exploited the attacker can prevent the operator from being able to
connect to the server, for example to change server state or to add
lease reservations without restarting the server.

Since an unauthorized client should not be permitted access to this
port under normal circumstances, we are recommending that most operators
should simply secure access to the control port; however a patch which
properly cleans up the hung socket descriptors is available upon request
(and will be included in future maintenance releases.)

Our full CVE text can be found at https://kb.isc.org/article/AA-01541

--
Michael McNally
ISC Security Officer

