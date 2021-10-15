X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6245" "Friday" "15" "October" "2021" "20:00:59" "+0200" "Roman Medina-Heigl Hernandez" "roman@rs-labs.com" nil "182" "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil "10" nil nil (number mark "U       roman@rs-lab Oct 15  182/6245  " thread-indent "\"Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6018 invoked by uid 550); 15 Oct 2021 18:08:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3730 invoked from network); 15 Oct 2021 18:01:13 -0000
X-Virus-Scanned: Powered by H&S
To: Yann Ylavic <ylavic.dev@gmail.com>
References: <a2cd6ccf-b381-5513-3c7c-598a6da8c9c9@apache.org>
 <0d7be57c-87ae-c4aa-7207-2337c1a51c6d@rs-labs.com>
 <CAKQ1sVMn=09uimvWxVZrrVRGSDk5HLCB0TQViFJp1WFNG7jvWg@mail.gmail.com>
 <20211008210821.GA2660@openwall.com>
 <CAKQ1sVOHOU+iVCkeK1AqFDWhHq4uM8p9Hrx+XTen=fsJ=VxQyA@mail.gmail.com>
 <bbb8b568-9512-02e4-60ec-3df480af3430@rs-labs.com>
 <CAKQ1sVOd-9FS8M4gDLOKvs+44LORSJ1CUtxck3tQ+M58SRpE3Q@mail.gmail.com>
From: Roman Medina-Heigl Hernandez <roman@rs-labs.com>
Cc: oss-security@lists.openwall.com
Message-ID: <9b8f4c6c-1a65-321a-c7e7-601700aeb34d@rs-labs.com>
Date: Fri, 15 Oct 2021 20:00:59 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAKQ1sVOd-9FS8M4gDLOKvs+44LORSJ1CUtxck3tQ+M58SRpE3Q@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------F6700D5FAFFC5E829CD7D771"
Content-Language: es-ES
Subject: Re: [oss-security] CVE-2021-42013: Path Traversal and Remote Code
 Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of
 CVE-2021-41773)

--------------F6700D5FAFFC5E829CD7D771
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi Yann,

Re [1], I think this:

"critical: Path traversal and file disclosure vulnerability in Apache
HTTP Server 2.4.49 (CVE-2021-41773
<https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-41773>)"

is still misleading and should read:

"critical: Path traversal and *Remote Code Execution* vulnerability in
Apache HTTP Server 2.4.49 (CVE-2021-41773
<https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-41773>)"


PS: Dear Alexander, feel free to drop this from OSS-ml if you think this
kind of detail is not relevant.

Cheers,

-r


El 11/10/2021 a las 10:57, Yann Ylavic escribió:
> On Sat, Oct 9, 2021 at 8:00 PM Roman Medina-Heigl Hernandez
> <roman@rs-labs.com> wrote:
>> I just wanted to clarify that the impact of both CVEs is exactly the
>> same: RCE and/or arbitrary file read and/or none, depending on httpd
>> config :-).
> I appreciate this nuance in your tweetS. For completeness :) I'll note
> that most configs (default, vendors, distros) are not vulnerable to
> the RCE.
> The removal of "<Directory/> require all denied" is an exploit httpd
> can do nothing about. httpd provides default/examples config [3] and
> docs (no "don't do that" there I concede).
>
>> There's no difference between Apache 2.4.49 and 2.4.50 in
>> that regard.
> Ack.
>
>> But reading the blog post by Stefan
>> (https://github.com/icing/blog/blob/main/httpd-2.4.50.md) and Apache
>> HTTP 2.4 vulns security page
>> (https://httpd.apache.org/security/vulnerabilities_24.html) as well, I
>> feel like you are associating the RCE impact to 2.4.50 and the arbitrary
>> file read to 2.4.49. That's misleading. Examples:
> I feel obligated to Alexander and reference [1], plain text of the
> current httpd vulnerabilities (w.r.t. CVE-2021-42013 &
> CVE-2021-41773), as of "Fri, 8 Oct 2021 15:44:24 +0200" [2].
>
>> - blog post
>>
>> "Affection, 2.4.49" -> You go for arbitrary file read example.
>>
>> "Affection, 2.4.50" -> Then you go for RCE example.
> The blog port has the form of a chronological post mortem (it happened
> in this order from the httpd team POV), it's an editorial choice (by
> Stefan) which makes sense to me as it describes the case progressively
> and finally quite exhaustively.
> It's not the same goal as the vulnerabilities page anyway.
>
>> - security page
> Please see [1], both CVEs are aligned now.
>
>> I'm sure this is unintentional and yes, it's only matter of wording but
>> it's kind of misleading, imho. I'd kindly advise for it to be fixed.
> That's the case (I think) on the vulnerabilities page now.
>
>> And
>> I also take this opportunity to thank ASF and particularly the folks
>> like Yann and Stefan whose work makes Apache httpd possible.
>>
>> C'u in apache-nosejob-202x.c !!! :-)
> Thanks for the kind words! Well, I suppose :)
>
> Regards;
> Yann.
>
>
> [1] https://httpd.apache.org/security/vulnerabilities_24.html (8 Oct) :
> """
> critical: Path Traversal and Remote Code Execution in Apache HTTP
> Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)
> (CVE-2021-42013)
>
>     It was found that the fix for CVE-2021-41773 in Apache HTTP Server
> 2.4.50 was insufficient. An attacker could use a path traversal attack
> to map URLs to files outside the directories configured by Alias-like
> directives.
>
>     If files outside of these directories are not protected by the
> usual default configuration "require all denied", these requests can
> succeed. If CGI scripts are also enabled for these aliased paths, this
> could allow for remote code execution.
>
>     This issue only affects Apache 2.4.49 and Apache 2.4.50 and not
> earlier versions.
>
>     Acknowledgements:
>
>         Reported by Juan Escobar from Dreamlab Technologies
>         Reported by Fernando Muñoz from NULL Life CTF Team
>         Reported by Shungo Kumasaka
>         Reported by Nattapon Jongcharoen
>
>     Reported to security team    2021-10-06
>     fixed by r1893977, r1893980, r1893982 in 2.4.x    2021-10-07
>     Update 2.4.51 released    2021-10-07
>     Affects    2.4.50, 2.4.49
>
> critical: Path traversal and file disclosure vulnerability in Apache
> HTTP Server 2.4.49 (CVE-2021-41773)
>
>     A flaw was found in a change made to path normalization in Apache
> HTTP Server 2.4.49. An attacker could use a path traversal attack to
> map URLs to files outside the directories configured by Alias-like
> directives.
>
>     If files outside of these directories are not protected by the
> usual default configuration "require all denied", these requests can
> succeed. If CGI scripts are also enabled for these aliased paths, this
> could allow for remote code execution.
>
>     This issue is known to be exploited in the wild.
>
>     This issue only affects Apache 2.4.49 and not earlier versions.
>
>     Acknowledgements: This issue was reported by Ash Daulton along
> with the cPanel Security Team
>     Reported to security team    2021-09-29
>     fixed by r1893775 in 2.4.x    2021-10-01
>     Update 2.4.50 released    2021-10-04
>     Affects    2.4.49
> """
>
> [2] https://github.com/apache/httpd-site/commit/74a166fab7443838c660c88df81961ddaa8df7fd.patch
> :
> """
> Date: Fri, 8 Oct 2021 15:44:24 +0200
> Subject: [PATCH] Revert "Trigger rebuild"
>
> This reverts commit 151e1ff7cdacf68fc615cc1513dbf81b8f307907.
> ---
>  content/security/json/CVE-2021-42013.json | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/content/security/json/CVE-2021-42013.json
> b/content/security/json/CVE-2021-42013.json
> index 09b4792..31e9295 100644
> --- a/content/security/json/CVE-2021-42013.json
> +++ b/content/security/json/CVE-2021-42013.json
> @@ -112,4 +112,3 @@
>      }
>    ]
>  }
> -
> """
> To make sure every single byte was published :)
>
> [3] https://github.com/apache/httpd/blob/2.4.x/docs/conf/httpd.conf.in#L110 :
> """
> #
> # Deny access to the entirety of your server's filesystem. You must
> # explicitly permit access to web content directories in other
> # <Directory> blocks below.
> #
> <Directory />
>     AllowOverride none
>     Require all denied
> </Directory>
> """

-- 
Saludos,
-Román


--------------F6700D5FAFFC5E829CD7D771--
