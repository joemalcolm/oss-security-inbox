X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["818" "Monday" "8" "June" "2020" "08:59:02" "+0000" "Gollub, Daniel" "daniel.gollub@intl.att.com" "<e1102843b0b747b280263742cc635391@intl.att.com>" "24" "[oss-security] CVE-2020-13881: pam_tacplus 1.3.8 through 1.5.1, the TACACS+ shared secret gets logged via syslog if configured with debug parameter" nil nil nil "6" "2020060808:59:02" "[oss-security] CVE-2020-13881: pam_tacplus 1.3.8 through 1.5.1, the TACACS+ shared secret gets logged via syslog if configured with debug parameter" (number mark "U       daniel.gollu Jun  8   24/818   " thread-indent "\"[oss-security] CVE-2020-13881: pam_tacplus 1.3.8 through 1.5.1, the TACACS+ shared secret gets logged via syslog if configured with debug parameter\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13881: pam_tacplus 1.3.8 through 1.5.1, the TACACS+ shared secret gets logged via syslog if configured with debug parameter" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16124 invoked by uid 550); 8 Jun 2020 11:29:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24125 invoked from network); 8 Jun 2020 08:59:22 -0000
From: "Gollub, Daniel" <daniel.gollub@intl.att.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2020-13881: pam_tacplus 1.3.8 through 1.5.1, the TACACS+
 shared secret gets logged via syslog if configured with debug parameter
Thread-Index: AQHWPW9MBYeD4IHSokiKXtI5WD5QIg==
Date: Mon, 8 Jun 2020 08:59:02 +0000
Message-ID: <e1102843b0b747b280263742cc635391@intl.att.com>
Accept-Language: en-US, en-GB
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.76.168.250]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.687
 definitions=2020-06-08_04:2020-06-08,2020-06-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=0 bulkscore=0
 mlxlogscore=259 clxscore=1034 mlxscore=0 spamscore=0 lowpriorityscore=0
 cotscore=-2147483648 priorityscore=1501 impostorscore=0 adultscore=0
 malwarescore=0 phishscore=0 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006080069
Subject: [oss-security] CVE-2020-13881: pam_tacplus 1.3.8 through 1.5.1, the TACACS+ shared
 secret gets logged via syslog if configured with debug parameter

References: CVE-2020-13881, pam_tacplus#149

TACACS+ shared secret gets logged (syslog) by the PAM tacplus [1], if the
PAM module is configured with the debug parameter. The secrets get logged
at DEBUG loglevel.

pam_tacplus 1.5.3 avoids the logging of the secret, via upstream commit
4a9852c31c2fd0c0e72fbb689a586aabcfb11cb0 [2].

The original README of pam_tacplus held a configuration example with the
debug parameter set, which might have resulted in some setups, which are
running in debug-mode, based on the example configuration.

This issue got reported  by Adarsh Pandey from Arista Networks [3].

[1] https://github.com/kravietz/pam_tacplus/
[2] https://github.com/kravietz/pam_tacplus/commit/4a9852c31c2fd0c0e72fbb68=
9a586aabcfb11cb0
[3] https://github.com/kravietz/pam_tacplus/issues/149


Thanks

Daniel
