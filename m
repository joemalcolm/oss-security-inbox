X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1934" "Tuesday" "19" "May" "2015" "16:20:15" "+0200" "Andrea Palazzo" "andrea.palazzo@truel.it" "<555B469F.30800@truel.it>" "41" "[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" nil nil nil "5" "2015051914:20:15" "[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" (number mark "        andrea.palaz May 19   41/1934  " thread-indent "\"[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption\"\n") "<555A6B2A.1020205@gmail.com>" ("<5559A053.6090004@truel.it>" "<5559A43F.7040606@gmail.com>" "<5559AA5A.3050705@truel.it>" "<555A6B2A.1020205@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9570 invoked by uid 550); 19 May 2015 14:20:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9541 invoked from network); 19 May 2015 14:20:29 -0000
Message-ID: <555B469F.30800@truel.it>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <5559A053.6090004@truel.it> <5559A43F.7040606@gmail.com> <5559AA5A.3050705@truel.it> <555A6B2A.1020205@gmail.com>
In-Reply-To: <555A6B2A.1020205@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------000308000103020702000907"
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - srv-hp9.netsons.net
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - truel.it
X-Get-Message-Sender-Via: srv-hp9.netsons.net: authenticated_id: info@truel.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
CC: oss-security@lists.openwall.com, security@php.net
Date: Tue, 19 May 2015 16:20:15 +0200
From: Andrea Palazzo <andrea.palazzo@truel.it>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based
 memory corruption
To: Stanislav Malyshev <smalyshev@gmail.com>

--------------000308000103020702000907
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi again!

My point is: once you get to have a corrupted zval, there are tons of 
functions that would result in memory errors if working on it.
A str_repeat() with user-supplied arguments is not so common at all, but 
let's say you have it (e.g. 
http://phpcrossref.com/xref/jpegmeta/EXIF.php.html, 
https://code.google.com/p/zimbra-api-php/, 
http://phpcrossref.com/xref/jpegmeta/XML.php.html) it is really likely 
that it would end up processed by one of these functions (string 
concatenation, for example).

$makernote  <http://phpcrossref.com/xref/jpegmeta/_variables/makernote.html>  .=str_repeat  <http://phpcrossref.com/xref/jpegmeta/_functions/str_repeat.html>("\x00",($tiff_data  <http://phpcrossref.com/xref/jpegmeta/_variables/tiff_data.html>[ 'Makernote_Tag' ][ 'Offset' ] - 8 ) );



On 19/05/2015 00:43, Stanislav Malyshev wrote:
> Hi!
>
>> About code execution, I haven't had the chance to focus on actual
>> exploitation yet (I surely will in the near future), but as you can see
>> from the original report (https://bugs.php.net/bug.php?id=69403), I
>> pointed out several cases in which working on a so-crafted zval would
>> lead to invalid memory access (with user controlled values as well), so
>> I am pretty confident it is achievable.
> These examples all seem to require specific code (like
> 'md5(str_repeat("a", 4294967294-1));') to be run. The probability that
> applications would contain this specific code with str_repeat argument
> controlled by remote user seems to be pretty low. However, if you can
> show exploiting this on a code of an application that is not specially
> crafted to demonstrate this issue, or at least resembles code that is
> likely to be deployed in a real application, I will gladly change my
> opinion.
>


--------------000308000103020702000907--
