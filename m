X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["901" "Sunday" "5" "November" "2017" "13:58:33" "+0100" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20171105135833.15025s7hrnp0yd4w@webmail.alunos.dcc.fc.up.pt>" "29" "Re: [oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()" nil nil nil "11" "2017110512:58:33" "[oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()" (number mark "U       up201407890@ Nov  5   29/901   " thread-indent "\"Re: [oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()\"\n") "<20171025124241.12925hypflmm08sg@webmail.alunos.dcc.fc.up.pt>" ("<20171025124241.12925hypflmm08sg@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11380 invoked by uid 550); 5 Nov 2017 13:10:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1489 invoked from network); 5 Nov 2017 12:59:16 -0000
Message-ID: <20171105135833.15025s7hrnp0yd4w@webmail.alunos.dcc.fc.up.pt>
Date: Sun, 05 Nov 2017 13:58:33 +0100
From: up201407890@alunos.dcc.fc.up.pt
To: oss-security@lists.openwall.com, up201407890@alunos.dcc.fc.up.pt
References: <20171025124241.12925hypflmm08sg@webmail.alunos.dcc.fc.up.pt>
In-Reply-To: <20171025124241.12925hypflmm08sg@webmail.alunos.dcc.fc.up.pt>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Subject: Re: [oss-security] Re: CVE-2017-5123 Linux kernel v4.13 waitid()
	not calling access_ok()

Hello again list,

Here's a video on how I bypassed KASLR and got root using only  
CVE-2017-5123, a non-controlled arbitrary write (though 0's are  
written), without a single read.

https://www.youtube.com/watch?v=DfwOJIcV5ZA

"This exploit uses solely CVE-2017-5123, a Linux kernel vulnerability  
for 4.12-4.13, which gives an attacker a write-not-what-only-where  
primitive, or in other words, the ability to write non-controlled user  
data to arbitrary kernel memory.
KASLR is bypassed using memory probing and root obtained via cred  
struct spraying and location predictability.

twitter.com/uid1000

Music is from Sonic the Hedgehog (1991) for the Sega Genesis."

I may write a more detailed write-up if people seem interested. :)

Thanks,
Federico Bento.


----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.


