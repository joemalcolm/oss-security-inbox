X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["330" "Monday" "7" "December" "2015" "16:23:08" "+0100" "Marcus Meissner" "meissner@suse.de" "<20151207152308.GE12673@suse.de>" "11" "[oss-security] injecting environment variables into Phusion Passenger (CVE-2015-7519)" nil nil nil "12" "2015120715:23:08" "[oss-security] injecting environment variables into Phusion Passenger (CVE-2015-7519)" (number mark "U       meissner@sus Dec  7   11/330   " thread-indent "\"[oss-security] injecting environment variables into Phusion Passenger (CVE-2015-7519)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15735 invoked by uid 550); 7 Dec 2015 15:23:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15675 invoked from network); 7 Dec 2015 15:23:20 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 7 Dec 2015 16:23:08 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20151207152308.GE12673@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] injecting environment variables into Phusion Passenger
 (CVE-2015-7519)

Hi,

Our OBS team found a problem with Phusion Passenger, that was not
filtering environment headers when using "_" instead of "-".

https://github.com/phusion/passenger/commit/ddb8ecc4ebf260e4967f57f271d4f5761abeac3e
https://bugzilla.suse.com/show_bug.cgi?id=956281

Mitre has assigned CVE-2015-7519 to this issue.

Ciao, Marcus
