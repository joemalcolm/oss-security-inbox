X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["745" "Tuesday" "16" "October" "2018" "14:21:43" "+0200" "Marcus Meissner" "meissner@suse.de" "<20181016122143.o7bwrhh3chhmhguk@suse.de>" "17" "[oss-security] CVE-2018-10933: libssh: authentication bypass in server code" nil nil nil "10" "2018101612:21:43" "[oss-security] CVE-2018-10933: libssh: authentication bypass in server code" (number mark "U       meissner@sus Oct 16   17/745   " thread-indent "\"[oss-security] CVE-2018-10933: libssh: authentication bypass in server code\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5962 invoked by uid 550); 16 Oct 2018 12:21:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5944 invoked from network); 16 Oct 2018 12:21:56 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 16 Oct 2018 14:21:43 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20181016122143.o7bwrhh3chhmhguk@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: NeoMutt/20170421 (1.8.2)
Subject: [oss-security] CVE-2018-10933: libssh: authentication bypass in server code

Hi,

https://www.libssh.org/2018/10/16/libssh-0-8-4-and-0-7-6-security-and-bugfix-release/

-----
libssh 0.8.4 and 0.7.6 security and bugfix release

This is an important security and maintenance release in order to address CVE-2018-10933.

libssh versions 0.6 and above have an authentication bypass vulnerability in the server code. By presenting the server an SSH2_MSG_USERAUTH_SUCCESS message in place of the SSH2_MSG_USERAUTH_REQUEST message which the server would expect to initiate authentication, the attacker could successfully authentciate without any credentials.

The bug was discovered by Peter Winter-Smith of NCC Group.
-----

This only affects libssh operating in _server_ mode, but not the usual used client mode.

Ciao, Marcus
