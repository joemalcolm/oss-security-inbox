X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1244" "Thursday" "8" "December" "2016" "16:03:16" "+0800" "Huawei PSIRT" "psirt@huawei.com" "<00fe01d25129$88fc70c0$9af55240$@com>" "42" "[oss-security] Re: CVE request Qemu: display: cirrus_vga: a divide by zero in cirrus_do_copy" nil nil nil "12" "2016120808:03:16" "[oss-security] Re: CVE request Qemu: display: cirrus_vga: a divide by zero in cirrus_do_copy" (number mark "U       psirt@huawei Dec  8   42/1244  " thread-indent "\"[oss-security] Re: CVE request Qemu: display: cirrus_vga: a divide by zero in cirrus_do_copy\"\n") "<alpine.LFD.2.20.1612081258430.26257@wniryva>" ("<alpine.LFD.2.20.1612081258430.26257@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13522 invoked by uid 550); 8 Dec 2016 14:25:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26600 invoked from network); 8 Dec 2016 08:03:42 -0000
From: Huawei PSIRT <psirt@huawei.com>
To: <ppandit@redhat.com>, <oss-security@lists.openwall.com>
CC: <liq3ea@gmail.com>, <jiangxin1@huawei.com>,
        Huawei PSIRT
	<PSIRT@huawei.com>,
        "Wanglijun (PSIRT)" <wanglijun.wanglijun@huawei.com>
References: <alpine.LFD.2.20.1612081258430.26257@wniryva>
In-Reply-To: <alpine.LFD.2.20.1612081258430.26257@wniryva>
Date: Thu, 8 Dec 2016 16:03:16 +0800
Message-ID: <00fe01d25129$88fc70c0$9af55240$@com>
MIME-Version: 1.0
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdJRJTYSGgbIY/QMTK+84OmKdP0g5AAAvYNg
Content-Language: zh-cn
X-Originating-IP: [10.111.192.85]
X-CFilter-Loop: Reflected
Subject: [oss-security] Re: CVE request Qemu: display: cirrus_vga: a divide by zero in cirrus_do_copy

Dear,

Could you please change the reporter information from PSIRTeam of Huawei Inc
to Jiangxin <jiangxin1@huawei.com> of Huawei Inc. Thank you.

Best regards,
Huawei PSIRT

-----=D3=CA=BC=FE=D4=AD=BC=FE-----
=B7=A2=BC=FE=C8=CB: P J P [mailto:ppandit@redhat.com]=20
=B7=A2=CB=CD=CA=B1=BC=E4: 2016=C4=EA12=D4=C28=C8=D5 15:32
=CA=D5=BC=FE=C8=CB: oss security list
=B3=AD=CB=CD: liq3ea@gmail.com; psirt@huawei.com
=D6=F7=CC=E2: CVE request Qemu: display: cirrus_vga: a divide by zero in
cirrus_do_copy

   Hello,

Quick emulator(Qemu) built with the Cirrus CLGD 54xx VGA Emulator support is
vulnerable to a divide by zero issue. It could occur while copying VGA data
when cirrus graphics mode was set to be VGA.

A privileged user inside guest could use this flaw to crash the Qemu process
instance on the host, resulting in DoS.

Upstream patch
--------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-12/msg00442.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=3D1334398

This issue was independently reported by Qinghao Tang, Li Qiang of Qihoo
360.cn Inc. and PSIRTeam of Huawei Inc.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

