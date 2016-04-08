X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1120" "Friday" "8" "April" "2016" "13:28:35" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<57081473.7000604@oracle.com>" "38" "Re: [oss-security] CVE-2016-3619 libtiff: Out-of-bounds Read in the bmp2tiff tool" "^Date:" nil nil "4" "2016040820:28:35" "[oss-security] CVE-2016-3619 libtiff: Out-of-bounds Read in the bmp2tiff tool" (number mark "        alan.coopers Apr  8   38/1120  " thread-indent "\"Re: [oss-security] CVE-2016-3619 libtiff: Out-of-bounds Read in the bmp2tiff tool\"\n") "<D0A51038-C8D7-4538-8FBE-5C4BB9BAD81C@360.cn>" ("<865AFA5E-6CB2-4631-99E2-70C321F2FF9D@360.cn>" "<570748E3.2090203@oracle.com>" "<D0A51038-C8D7-4538-8FBE-5C4BB9BAD81C@360.cn>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15390 invoked by uid 550); 8 Apr 2016 20:28:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15363 invoked from network); 8 Apr 2016 20:28:50 -0000
References: <865AFA5E-6CB2-4631-99E2-70C321F2FF9D@360.cn>
 <570748E3.2090203@oracle.com> <D0A51038-C8D7-4538-8FBE-5C4BB9BAD81C@360.cn>
Message-ID: <57081473.7000604@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <D0A51038-C8D7-4538-8FBE-5C4BB9BAD81C@360.cn>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
Date: Fri, 8 Apr 2016 13:28:35 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-3619 libtiff: Out-of-bounds Read in the
 bmp2tiff tool
To: oss-security@lists.openwall.com

That's a bug against Red Hat's distro - not the upstream libtiff project.
Did you not report these to libtiff upstream yet?

	-alan-

On 04/ 8/16 12:00 AM, 王梅 wrote:
> Thanks for pointing out the mistake.
>
> CVE-2016-3619: https://bugzilla.redhat.com/show_bug.cgi?id=1316569
>
>
>> 在 2016年4月8日，下午2:00，Alan Coopersmith <alan.coopersmith@oracle.com> 写道：
>>
>> On 04/ 7/16 12:32 AM, 王梅 wrote:
>>> Details
>>> =======
>>>
>>> Product: libtiff
>>> Affected Versions: <= 4.0.6
>>> Vulnerability Type: Out-of-bounds Read
>>> Vendor URL: http://www.libtiff.org/
>>> CVE ID: CVE-2016-3619
>>> Credit: Mei Wang of the Cloud Security Team, Qihoo 360
>>
>>> References:
>>> [1] http://www.remotesensing.org/libtiff/
>>> [2] http://bugzilla.maptools.org/buglist.cgi?product=libtiff
>>
>> Instead of pointing to a list of 305 bugs, please just provide a link to the bug
>> you filed for each issue so it's easier for distros to check the progress of the
>> fix.
>>
>> --
>> 	-Alan Coopersmith-              alan.coopersmith@oracle.com
>> 	 Oracle Solaris Engineering - http://blogs.oracle.com/alanc
>


