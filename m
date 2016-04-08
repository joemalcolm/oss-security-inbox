X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["709" "Friday" "8" "April" "2016" "11:28:55" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160408092855.GD8144@suse.de>" "19" "[oss-security] CVE Request: systemd / journald created world readable journal files" nil nil nil "4" "2016040809:28:55" "[oss-security] CVE Request: systemd / journald created world readable journal files" (number mark "U       meissner@sus Apr  8   19/709   " thread-indent "\"[oss-security] CVE Request: systemd / journald created world readable journal files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26037 invoked by uid 550); 8 Apr 2016 09:29:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26019 invoked from network); 8 Apr 2016 09:29:07 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 8 Apr 2016 11:28:55 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20160408092855.GD8144@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE Request: systemd / journald created world readable journal files

Hi,

systemd-journald from systemd v213 started creating world readable journals, allowing
local users to read sensitive system log entries.

While spotted by our users in
https://bugzilla.suse.com/show_bug.cgi?id=972612
the problem was present and fixed in upstream systemd git...

Introduced by this commit in v213:
https://github.com/systemd/systemd/commit/a606871da508995f5ede113a8fc6538afd98966c

Fixed for volatile journals was done by this commit in v214:
https://github.com/systemd/systemd/commit/176f2acf8dee45fee832fd2ab07243f63783a238

Fixed for the current persistent journal by this commit in v229:
https://github.com/systemd/systemd/commit/afae249efa4774c6676738ac5de6aeb4daf4889f

Ciao, Marcus
