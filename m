X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2111" "Thursday" "21" "January" "2016" "02:56:55" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160121075655.E2AEC6C0066@smtpvmsrv1.mitre.org>" "49" "[oss-security] Re: CVE for node.js websockets (ws)" "^Cc:" nil nil "1" "2016012107:56:55" "[oss-security] Re: CVE for node.js websockets (ws)" (number mark "        cve-assign@m Jan 21   49/2111  " thread-indent "\"[oss-security] Re: CVE for node.js websockets (ws)\"\n") "<CANO=Ty2__zBT=MeY=6mQaepEM1vr=igkrmeZkX3XM5pwttEbEg@mail.gmail.com>" ("<CANO=Ty2__zBT=MeY=6mQaepEM1vr=igkrmeZkX3XM5pwttEbEg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12131 invoked by uid 550); 21 Jan 2016 07:57:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12107 invoked from network); 21 Jan 2016 07:57:07 -0000
In-Reply-To: <CANO=Ty2__zBT=MeY=6mQaepEM1vr=igkrmeZkX3XM5pwttEbEg@mail.gmail.com>
Message-Id: <20160121075655.E2AEC6C0066@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 21 Jan 2016 02:56:55 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE for node.js websockets (ws)
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://nodesecurity.io/advisories/67

We currently feel that a CVE ID should not exist (unless an affected
application is identified) because any related instances of
security-relevant behavior would be site-specific, and therefore
outside the scope of CVE.

For example:

  https://gist.github.com/c0nrad/e92005446c480707a74a#gistcomment-1664152
  https://nodejs.org/api/dgram.html#dgram_socket_send_buf_offset_length_port_address_callback

suggests that the problem is that Node.js allows people to write
incorrect server-side code in which there is a call to socket.send,
socket.ping, or socket.pong with a numerical argument. However, the
documentation states that the argument must be a Buffer object or
string. Behavior in the case of a numerical argument seems to be
undefined. The change seems to be a hardening measure in which
numerical arguments are automatically converted to strings, thereby
making it safer to execute a specific type of incorrect code.

If incorrect server-side code actually exists in a product, then a CVE
ID can be assigned.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWoI5eAAoJEL54rhJi8gl5JsAQAKBciZvNRlApccHSGlmNWMHR
FTnjGchK1LxzJ9dyJ1Ap/kR3ZoYGj1HxeiajsCVu+gqkB71/N1V6kEKWfZtZBUI/
fQTEv1Ydadp8E5apigN5+bGf2mX+ahRZjfr2mJn/uoI/3tXcX8JUlduR1r162xmJ
4641oTYzh5UkNYJPBFeCPwjsCqqVHsSeBoftifMXhdSMP06qJYQE4Bxu8kuMRNQj
ZwonpjKXAK86+qiM67Ic+ndxB3u/KNITqp++wsWVZBefmaDzsSsAf0K3kxSckX02
ngQi7/8MeHCZyTU3lLGsr7EUzb69RHHhPlE5bRRfE12mZi07htRu4IR4jzJNcNYg
wEPzLp+irLY4oF/RplysEj0jf2j952xTQGD0HfoqGPsgK9EY2Z+O6s+GEJJF94hS
b53sAtwSSZolXT7sSRSAbN7YAB1me+PN8AUaCKY8VXwJD3O4dYxsee1jTrx9BEqc
hyst7ADv2fhqL5nXdUdOXunUmwTqy4oNQXNTVyRIGsfu3Kllk6AO9bdX73JHHSAl
zmY2ruUKyGG2HCMLvBwCZ7YEM5oTF5UrGSvBcyWiLMA/55okt+a2TxMGR2Ne8/S3
pNV97DHNb38NQhhwSMbWKcezh2FK1lAnQnM4xxe5MAR+al3TOfSQoS39lmxLuIdg
dBrwTilumCdT13FjYkhf
=hyHR
-----END PGP SIGNATURE-----
