X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1576" "Thursday" "18" "August" "2016" "16:22:16" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160818142216.GH2701@suse.de>" "42" "[oss-security] CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" "^Cc:" nil nil "8" "2016081814:22:16" "[oss-security] CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" (number mark "        meissner@sus Aug 18   42/1576  " thread-indent "\"[oss-security] CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7354 invoked by uid 550); 18 Aug 2016 14:22:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7335 invoked from network); 18 Aug 2016 14:22:28 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160818142216.GH2701@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: security@kernel.org
Date: Thu, 18 Aug 2016 16:22:16 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux kernel crash of OHCI when plugging in malicious
 USB devices
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org

Hi,

I think this does not have a CVE yet, please assign.

https://www.spinics.net/lists/linux-usb/msg144177.html

Headline:         Linux Kernel Panic Over USB with HID Keyboard wMaxPacketSize
Platforms:        Ubuntu
Versions:         Linux Kernel 4.4.0-22-generic
CVSS Score:       4.7
CVSS Vector:      AV:L/AC:M/Au:N/C:N/I:N/A:C
Filed Defects:    
Related Defects:  
CWE Tags:         
Cycle:            
Found by:         Jake Lamberson


Linux Kernel panics when using an OHCI controller if a USB device reports being 
a generic HID keyboard and reports a wMaxPacketSize of over 4095. The OHCI
controller driver fails to reserve bandwidth for the device, causing the 
keyboard handler to fail when attaching to the HID. Later, when the device is 
removed, the system crashes due to a null pointer dereference in a linked list 
of endpoint descriptors. The crash can be re-created using a Facedancer and UMAP 
software. Given an appropriately configured Facedancer and UMAP setup, the crash 
can be re-created with: 
sudo board=facedancer21 python3 umap.py -P /dev/serial_device_here -f 03:00:00:E:0046 -l LOG

Note: OHCI is a USB 1.1 controller standard that can be included with devices
that support either USB 1.1 or 2.0 as their highest USB spec. USB 3.0 devices
all use xHCI, which implements USB 1.1, 2.0, and 3.0, making them immune to
this particular bug.

-----------------

The proposed fixing patch is here:
https://www.spinics.net/lists/linux-usb/msg144269.html


It has not yet been committed to the USB tree or to Linus Tree as far as I see.

Ciao, Marcus
