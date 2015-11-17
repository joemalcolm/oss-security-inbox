X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3463" "Tuesday" "17" "November" "2015" "09:26:26" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<15912449.rZd5WtaOgi@willoughby>" "26" "Re: [oss-security] suckless sent and libxft-dev 2.3.2-1 crash" "^Cc:" nil nil "11" "2015111708:26:26" "[oss-security] suckless sent and libxft-dev 2.3.2-1 crash" (number mark "U       ago@gentoo.o Nov 17   26/3463  " thread-indent "\"Re: [oss-security] suckless sent and libxft-dev 2.3.2-1 crash\"\n") "<CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>" ("<CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32193 invoked by uid 550); 17 Nov 2015 08:26:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32175 invoked from network); 17 Nov 2015 08:26:37 -0000
Message-ID: <15912449.rZd5WtaOgi@willoughby>
User-Agent: KMail/4.14.8 (Linux/3.14.56-gentoo; KDE/4.14.8; x86_64; ; )
In-Reply-To: <CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>
References: <CAATyssetqs4To7DdqFRrzJT-UF7Z1LoRkrraiL7dEqWK76BmvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "Simon ." <bofh666ftw@googlemail.com>
Date: Tue, 17 Nov 2015 09:26:26 +0100
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] suckless sent and libxft-dev 2.3.2-1 crash
To: oss-security@lists.openwall.com

On Monday 16 November 2015 23:47:16 Simon . wrote:
> Hi,
> 
> please review, whether this needs a CVE.

Compiling sent-0.1 with asan, shows this problem:

$ touch asd
$ ./sent asd                                                                                                                                                                                                                                    
ASAN:SIGSEGV                                                                                                                                                                                                                                                                   
=================================================================                                                                                                                                                                                                              
==6846==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 
(pc 0x0000004dede9 bp 0x7ffecbaa9680 sp 0x7ffecbaa7210 T0)                                                                                                                                             
    #0 0x4dede8 in configure /tmp/sent-0.1/sent.c:662:3                                                                                                                                                                                                                        
    #1 0x4de243 in run /tmp/sent-0.1/sent.c:509:13                                                                                                                                                                                                                             
    #2 0x4de243 in main /tmp/sent-0.1/sent.c:690                                                                                                                                                                                                                               
    #3 0x7f65d55bb7af in __libc_start_main (/lib64/libc.so.6+0x207af)                                                                                                                                                                                                          
    #4 0x436c48 in _start (/tmp/sent-0.1/sent+0x436c48)                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                               
AddressSanitizer can not provide additional info.                                                                                                                                                                                                                              
SUMMARY: AddressSanitizer: SEGV /tmp/sent-0.1/sent.c:662 configure                                                                                                                                                                                                             
==6846==ABORTING

-- 
Agostino Sarubbo
Gentoo Linux Developer
