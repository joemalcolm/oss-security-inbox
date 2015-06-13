X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1872" "Saturday" "13" "June" "2015" "13:58:42" "+0100" "Dave Walker" "email@daviey.com" "<CACyjiAigwcqb+XMkz_9R7GKV1d_PRT4FOfM40vChAj-FOuVG4w@mail.gmail.com>" "61" "Re: [oss-security] CVE-2015-1850: OpenStack Cinder/Nova: Format-guessing and file disclosure in image convert" nil nil nil "6" "2015061312:58:42" "[oss-security] CVE-2015-1850: OpenStack Cinder/Nova: Format-guessing and file disclosure in image convert" (number mark "        email@daviey Jun 13   61/1872  " thread-indent "\"Re: [oss-security] CVE-2015-1850: OpenStack Cinder/Nova: Format-guessing and file disclosure in image convert\"\n") "<20150613091637.GE11230@mail.waldi.eu.org>" ("<20150613091637.GE11230@mail.waldi.eu.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1643 invoked by uid 550); 13 Jun 2015 13:38:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15771 invoked from network); 13 Jun 2015 12:58:54 -0000
MIME-Version: 1.0
X-Received: by 10.180.105.38 with SMTP id gj6mr15313915wib.90.1434200322253;
 Sat, 13 Jun 2015 05:58:42 -0700 (PDT)
In-Reply-To: <20150613091637.GE11230@mail.waldi.eu.org>
References: <20150613091637.GE11230@mail.waldi.eu.org>
Message-ID: <CACyjiAigwcqb+XMkz_9R7GKV1d_PRT4FOfM40vChAj-FOuVG4w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d044288bebeab1c051865c8ca
Cc: openstack-security@lists.openstack.org
Date: Sat, 13 Jun 2015 13:58:42 +0100
From: Dave Walker <email@daviey.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-1850: OpenStack Cinder/Nova:
 Format-guessing and file disclosure in image convert
To: oss-security@lists.openwall.com, Bastian Blank <waldi@debian.org>

--f46d044288bebeab1c051865c8ca
Content-Type: text/plain; charset=UTF-8

On 13 Jun 2015 10:17 am, "Bastian Blank" <waldi@debian.org> wrote:
>
> Hi
>
> OpenStack Cinder and Nova do not provide input format to several calls
> of "qemu-img convert".  In Cinder these calls are done as root.  This
> allows the attacker to play the format guessing in qemu-img by providing
> input with a qcow2 signature.  If this signature contains a base file,
> this file will be read by a process running as root and embedded in the
> output.  This bug is similar to CVE-2013-1922 and has been assigned
> CVE-2015-1850.
>
> Tested with: lvm backed volume storage in Cinder, it may apply to others
> as well.
>
> Steps to reproduce:
> - create volume and attach to vm,
> - create a qcow2 signature on the volume containing a base-file[1] from
>   within the vm and
> - trigger an upload to Glance with "cinder upload-to-image --disk-type
>   qcow2"[2].
> The image uploaded to Glance will have the base-file from the
> cinder-volume host embedded.
>
> Affected versions: tested on 2014.1.3, found while reading 2014.2.1
>
> Timeline:
> - Reported upstream 2015-01-27
> - Published 2015-06-13
>
> Regards,
> Bastian Blank
>
> [1]: qemu-img create -f qcow2 -b /etc/passwd /dev/vdb
> [2]: The disk-type != raw triggers the use of "qemu-img convert"

Hi,

+CC openstack-security

I see that this is being brought to oss-sec', but seemingly not via the
OpenStack Security Group or Vulnerability Management Team.

CVE-2015-1850 is referenced in your mail, are you saying that this has been
assigned to this issue? I cannot easily find any other reference of its
allocation.

You said that this was raised upstream on 2015-01-27, do you have a
Launchpad bug number or information on this discourse as to what was the
outcome?

Thanks

--
Kind Regards,
Dave Walker

--f46d044288bebeab1c051865c8ca--
