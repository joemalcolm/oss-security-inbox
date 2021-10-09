X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2879" "Saturday" "9" "October" "2021" "19:42:47" "+0200" "Roman Medina-Heigl Hernandez" "roman@rs-labs.com" nil "78" "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil "10" nil nil (number mark "U       roman@rs-lab Oct  9   78/2879  " thread-indent "\"Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26294 invoked by uid 550); 9 Oct 2021 17:58:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16267 invoked from network); 9 Oct 2021 17:42:59 -0000
X-Virus-Scanned: Powered by H&S
To: oss-security@lists.openwall.com
References: <a2cd6ccf-b381-5513-3c7c-598a6da8c9c9@apache.org>
 <0d7be57c-87ae-c4aa-7207-2337c1a51c6d@rs-labs.com>
 <CAKQ1sVMn=09uimvWxVZrrVRGSDk5HLCB0TQViFJp1WFNG7jvWg@mail.gmail.com>
 <20211008210821.GA2660@openwall.com>
 <CAKQ1sVOHOU+iVCkeK1AqFDWhHq4uM8p9Hrx+XTen=fsJ=VxQyA@mail.gmail.com>
From: Roman Medina-Heigl Hernandez <roman@rs-labs.com>
Message-ID: <bbb8b568-9512-02e4-60ec-3df480af3430@rs-labs.com>
Date: Sat, 9 Oct 2021 19:42:47 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAKQ1sVOHOU+iVCkeK1AqFDWhHq4uM8p9Hrx+XTen=fsJ=VxQyA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: es-ES
Subject: Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code
 Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of
 CVE-2021-41773)

Thanks Yann, I'm happy you agree with my analysis. It also seems to
match the one by your colleage Stefan (that you referenced).

I just wanted to clarify that the impact of both CVEs is exactly the
same: RCE and/or arbitrary file read and/or none, depending on httpd
config :-). There's no difference between Apache 2.4.49 and 2.4.50 in
that regard.

But reading the blog post by Stefan
(https://github.com/icing/blog/blob/main/httpd-2.4.50.md) and Apache
HTTP 2.4 vulns security page
(https://httpd.apache.org/security/vulnerabilities_24.html) as well, I
feel like you are associating the RCE impact to 2.4.50 and the arbitrary
file read to 2.4.49. That's misleading. Examples:

- blog post

"With Apache 2.4.50 the team fixed CVE-2021-41773, a critical security
flaw that allowed under certain conditions an outside to access files on
your server outside of the configured document roots." -> You forget to
mention the RCE.

"Affection, 2.4.49" -> You go for arbitrary file read example.

"Affection, 2.4.50" -> Then you go for RCE example.

- security page

"Fixed in Apache HTTP Server 2.4.51
critical: Path Traversal and Remote Code Execution in Apache HTTP Server
2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773) (CVE-2021-42013)"
-> It states RCE (right) but perhaps you should also note the arbitrary
file read impact.

"Fixed in Apache HTTP Server 2.4.50
...
critical: Path traversal and file disclosure vulnerability in Apache
HTTP Server 2.4.49 (CVE-2021-41773)" -> It doesn't states the RCE
(wrong), only the arbitrary file read ("file disclosure").


I'm sure this is unintentional and yes, it's only matter of wording but
it's kind of misleading, imho. I'd kindly advise for it to be fixed. And
I also take this opportunity to thank ASF and particularly the folks
like Yann and Stefan whose work makes Apache httpd possible.

C'u in apache-nosejob-202x.c !!! :-)

Cheers,
-r


El 08/10/2021 a las 23:27, Yann Ylavic escribió:
> On Fri, Oct 8, 2021 at 11:10 PM Solar Designer <solar@openwall.com> wrote:
>> On Fri, Oct 08, 2021 at 08:37:33PM +0200, Yann Ylavic wrote:
>>> On Fri, Oct 8, 2021 at 8:53 AM Roman Medina-Heigl Hernandez
>>> <roman@rs-labs.com> wrote:
>>>> I posted RCE exploit for this (it works for both CVEs: 41773 & 42013)
>>>> and some other details regarding requirements / exploitability, which
>>>> you may find useful at:
>>>>
>>>> https://twitter.com/roman_soft/status/1446252280597078024
>>> Thanks, that's fair analysis.
>> Yann is probably referring to the full tweet thread by Roman, not just
>> the one tweet that Roman posted in here.  Let me correct that:
> Exactly, thanks Alexander and sorry if I wasn't clear enough.
>
> For completeness I'll add this tweet/blog from Stefan (OP) about the
> vulnerability and the fixes in httpd:
> https://twitter.com/icing/status/1446504661448593408
>
> Regards;
> Yann.

-- 
Saludos,
-Román

