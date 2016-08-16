X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["324" "Tuesday" "16" "August" "2016" "11:49:32" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160816094932.GA1197@suse.de>" "14" "[oss-security] CVE Request: Default password in openstack / crowbar trove" nil nil nil "8" "2016081609:49:32" "[oss-security] CVE Request: Default password in openstack / crowbar trove" (number mark "U       meissner@sus Aug 16   14/324   " thread-indent "\"[oss-security] CVE Request: Default password in openstack / crowbar trove\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22095 invoked by uid 550); 16 Aug 2016 09:49:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22077 invoked from network); 16 Aug 2016 09:49:44 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 16 Aug 2016 11:49:32 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org
Message-ID: <20160816094932.GA1197@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE Request: Default password in openstack / crowbar trove

Hi,

In crowbar-openstack / trove , the trove service user has a default password.

https://bugzilla.suse.com/show_bug.cgi?id=991729

https://github.com/crowbar/crowbar-openstack/pull/485

The patch changes it be randomly generated.

Please assign a CVE id.
The patch changes it be randomöly generated., the I

Ciao, Marcus
