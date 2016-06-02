X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["450" "Thursday" "2" "June" "2016" "11:10:13" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160602091013.GD26429@suse.de>" "15" "[oss-security] CVE Request: bad USB host adapter implementation can corrupt memory/brick machine" "^Date:" nil nil "6" "2016060209:10:13" "[oss-security] CVE Request: bad USB host adapter implementation can corrupt memory/brick machine" (number mark "        meissner@sus Jun  2   15/450   " thread-indent "\"[oss-security] CVE Request: bad USB host adapter implementation can corrupt memory/brick machine\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31874 invoked by uid 550); 2 Jun 2016 09:10:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31849 invoked from network); 2 Jun 2016 09:10:25 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160602091013.GD26429@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 2 Jun 2016 11:10:13 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: bad USB host adapter implementation can corrupt
 memory/brick machine
To: OSS Security List <oss-security@lists.openwall.com>

Hi,

reported here:

https://marc.info/?l=linux-usb&m=146480770532266&w=2

issue is that the Frescologic device id 1009 host controller apparently
has a broken XHCI STREAMS implementation which would lead to memory corruptions

Redhat might have already assigned a CVE.

I am not sure if this is controllable for code execution, but at least USB devices can be used
to brick a machine with the kernel running (local denial of service)?

Ciao, Marcus
