X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1210" "Tuesday" "25" "August" "2015" "18:17:31" "+0200" "Noel Kuntze" "noel@familie-kuntze.de" "<55DC951B.1070904@familie-kuntze.de>" "37" "Re: [oss-security] Several low impact ntp.org ntpd issues" nil nil nil "8" "2015082516:17:31" "[oss-security] Several low impact ntp.org ntpd issues" (number mark "        noel@familie Aug 25   37/1210  " thread-indent "\"Re: [oss-security] Several low impact ntp.org ntpd issues\"\n") "<1440519235.1817961.365674337.0BC4CF7A@webmail.messagingengine.com>" ("<55DC3431.6000008@redhat.com>" "<1440519235.1817961.365674337.0BC4CF7A@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31841 invoked by uid 550); 25 Aug 2015 16:17:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31821 invoked from network); 25 Aug 2015 16:17:43 -0000
References: <55DC3431.6000008@redhat.com>
 <1440519235.1817961.365674337.0BC4CF7A@webmail.messagingengine.com>
Message-ID: <55DC951B.1070904@familie-kuntze.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1440519235.1817961.365674337.0BC4CF7A@webmail.messagingengine.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Provags-ID:  V03:K0:qRBG0hc4AcsF7zKrurLNL/3aruixQWpiX+pVMiowR37d7/fPx9h
 bG/HA1UVY3P7gEf6ukWxGao/P0Bb46PDI7oTkG36GATpmLFMILejfdLiYqyEckX2tf0ogF4
 KbmJ2kDWjCCKif314ruBl2krptGf2h4pwdmSEed1veIw4EoAoi/P1GUqt9U9wRg8llP9JHt
 t9X1o26fRyTbHPFJnwHuw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:FwkqBo90WI0=:ofDaikSf7q6BAl6DrX3/EO
 J8daBiuqagZl1VRTNTAis9huAl69g0EVFldDz+LQFjr1DktlFmfdvpzxyaeu/zcqhfW0XnNSv
 1n2IICjV4944iDTnAHaeVxqKabHPEg8mYtAUmiJ+MkQ5t+CzRMHWUOy71RNTnV3a4PLWLdDgV
 23+9tVi9Q1ByM8QDmGySlgMuwRxrDnWBfM1/xuwfaQeP59PgmAn1GMRYoKcBtClUiOMdQUJha
 HqPAbIVrnelUb2W8qRRicqHrwaEXlqv4B+oGl7a5r0QRanTNXrt8ogJ5CyIYntDtqyn+hw4eM
 JjAPjLGcHcVy3J6bCgCS8w2oxqZXi0Lybtpc8o+9LFwYRHp4Q1d3RSGHfwt1khBfLWy8tnsrh
 AUn1Om82YoubPUY9K8BjL8Jmr6rOXGTxplX/ipxfjBv1HGV3KTZfU45eWfSvECvV0/y2dP/xL
 o4kl5I1gfxgmxZjwea1RqQDwj1QzlhfZ+Cy0k1/ugRgo71nkWoz0KA2oG6wh9USBGSmKW4FBC
 5ckDrlEfpw0+HaaKv4Hcrx5+iJlWZ6A8YdjZbSyFU7/u175fQ3OIbqHXrqj5pvOCRLBUVb48I
 rKhGMhJEQohImSHmU1C15FzXJJnOFqk/xL51ta/uI1lgOst+PE7OrEjW/o1ahp8v0b+QqB3dU
 P7lb2axwHL/V8TSKLl9arwy9jjycDNALwS1tl1nYEjtQlyEi28ZePeFfOhjzOUyQfda6Zwf3T
 rVfTk4opbLljcxFF
Date: Tue, 25 Aug 2015 18:17:31 +0200
From: Noel Kuntze <noel@familie-kuntze.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Several low impact ntp.org ntpd issues
To: oss-security@lists.openwall.com


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi Mark,

> Doesn't ntpd have to run as root to steer the clock? Are there any OSes
> where it's not?

Linux. ntpd needs CAP_SYS_TIME there to set the time. There's no need to run it as root.

- -- 

Mit freundlichen Grüßen/Kind Regards,
Noel Kuntze

GPG Key ID: 0x63EC6658
Fingerprint: 23CA BB60 2146 05E7 7278 6592 3839 298F 63EC 6658

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJV3JUYAAoJEDg5KY9j7GZYcBUP/0tgnzuAuiuvkr1/HOCYJLd5
Shcrt/9vfsiE4HPuSepUOIBUDAlaLENgab3Wdl1ygJ5NHwoQR3uihh8nK42RbWa3
ZVsf1K0oh+gJNHz+8jWW89ic1dDY+wDhDGTNrNkPNGqMivT6O9en2DBviYOGIvYp
SPQ0eRS0w8C8XgHiV4aCuf6VGyvgm+DUs3aj3Fdf1JS18kbk37IWUtBC5LqQVvjJ
0BQffg5sYl0rIxMR61RvrTl3zRYQEDL2ImBwRTO6BbFEbvI82kTcwjAY5NHBTNvg
Z9eYDCtJw+vP673FDEfqe+1ERnF3wMKD/3pxPg4DSK4bjChaNwnk/hPdippabN4L
tze8M9YneGhOoiUz1wxFmFelYzdWU5rIRjVPdtwVtRJcemat3tKflJOA6wknwCDq
11yFLDfFUJ7EgH9/ZUzuXs4TzGfj2i452ToLLoi/kmhFRccWet1uapEz6cnEG+eG
G0vmb/DTm/pqjYaObpzd7ZuigpQznhPUD3l6nw+QKC2a2pXpm1bSrfSJLlIVDTUE
3yvjHoE9hMDUlm+QaqFTjxIMmd64E5t2FKK+kBmxsq1GS7E3j8W8IDqsr5AQ+pta
2ITv7agMdJ94M+U4Z7L5Kgsm7MMtadk1MADV+4yHOnY1oCL4dMrgLEfBIElR78yM
+Rk7FV7bvUCcShD2lpM9
=bPWC
-----END PGP SIGNATURE-----

