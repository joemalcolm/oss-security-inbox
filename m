X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1211" "Saturday" "13" "June" "2015" "11:17:05" "+0200" "Bastian Blank" "waldi@debian.org" "<20150613091637.GE11230@mail.waldi.eu.org>" "36" "[oss-security] CVE-2015-1850: OpenStack Cinder/Nova: Format-guessing and file disclosure in image convert" nil nil nil "6" "2015061309:17:05" "[oss-security] CVE-2015-1850: OpenStack Cinder/Nova: Format-guessing and file disclosure in image convert" (number mark "        waldi@debian Jun 13   36/1211  " thread-indent "\"[oss-security] CVE-2015-1850: OpenStack Cinder/Nova: Format-guessing and file disclosure in image convert\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3878 invoked by uid 550); 13 Jun 2015 09:17:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3840 invoked from network); 13 Jun 2015 09:17:17 -0000
Message-ID: <20150613091637.GE11230@mail.waldi.eu.org>
Mail-Followup-To: Bastian Blank <waldi@debian.org>,
	oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Sat, 13 Jun 2015 11:17:05 +0200
From: Bastian Blank <waldi@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-1850: OpenStack Cinder/Nova: Format-guessing and file
 disclosure in image convert
To: oss-security@lists.openwall.com

Hi

OpenStack Cinder and Nova do not provide input format to several calls
of "qemu-img convert".  In Cinder these calls are done as root.  This
allows the attacker to play the format guessing in qemu-img by providing
input with a qcow2 signature.  If this signature contains a base file,
this file will be read by a process running as root and embedded in the
output.  This bug is similar to CVE-2013-1922 and has been assigned
CVE-2015-1850.

Tested with: lvm backed volume storage in Cinder, it may apply to others
as well.

Steps to reproduce:
- create volume and attach to vm,
- create a qcow2 signature on the volume containing a base-file[1] from
  within the vm and
- trigger an upload to Glance with "cinder upload-to-image --disk-type
  qcow2"[2].
The image uploaded to Glance will have the base-file from the
cinder-volume host embedded.

Affected versions: tested on 2014.1.3, found while reading 2014.2.1

Timeline:
- Reported upstream 2015-01-27
- Published 2015-06-13

Regards,
Bastian Blank

[1]: qemu-img create -f qcow2 -b /etc/passwd /dev/vdb
[2]: The disk-type != raw triggers the use of "qemu-img convert"
-- 
You can't evaluate a man by logic alone.
		-- McCoy, "I, Mudd", stardate 4513.3
