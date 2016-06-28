X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1458" "Tuesday" "28" "June" "2016" "12:54:10" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160628105410.GB23113@suse.de>" "42" "[oss-security] CVE Request: integer overflow in ALSA snd_compress_check_input" nil nil nil "6" "2016062810:54:10" "[oss-security] CVE Request: integer overflow in ALSA snd_compress_check_input" (number mark "U       meissner@sus Jun 28   42/1458  " thread-indent "\"[oss-security] CVE Request: integer overflow in ALSA snd_compress_check_input\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5322 invoked by uid 550); 28 Jun 2016 10:54:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5301 invoked from network); 28 Jun 2016 10:54:22 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 28 Jun 2016 12:54:10 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>,
	Takashi Iwai <tiwai@suse.de>, cve-assign@mitre.org
Message-ID: <20160628105410.GB23113@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE Request: integer overflow in ALSA snd_compress_check_input

Hi,

Someone seems to have assigned CVE-2014-9904 to commit 

commit 6217e5ede23285ddfee10d2e4ba0cc2d4c046205
Author: Dan Carpenter <dan.carpenter@oracle.com>
Date:   Wed Jul 16 09:37:04 2014 +0300

    ALSA: compress: fix an integer overflow check
    
    I previously added an integer overflow check here but looking at it now,
    it's still buggy.
    
    The bug happens in snd_compr_allocate_buffer().  We multiply
    ".fragments" and ".fragment_size" and that doesn't overflow but then we
    save it in an unsigned int so it truncates the high bits away and we
    allocate a smaller than expected size.
    
    Fixes: b35cc8225845 ('ALSA: compress_core: integer overflow in snd_compr_allocate_buffer()')
    Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
    Signed-off-by: Takashi Iwai <tiwai@suse.de>


but there was no 2012 CVE assignment to the original fixing commit b35cc8225845 as far as I see:

commit b35cc8225845112a616e3a2266d2fde5ab13d3ab
Author: Dan Carpenter <dan.carpenter@oracle.com>
Date:   Wed Sep 5 15:32:18 2012 +0300

    ALSA: compress_core: integer overflow in snd_compr_allocate_buffer()
    
    These are 32 bit values that come from the user, we need to check for
    integer overflows or we could end up allocating a smaller buffer than
    expected.
    
    Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
    Signed-off-by: Takashi Iwai <tiwai@suse.de>


Is there a 2012 CVE for it?

Ciao, Marcus
