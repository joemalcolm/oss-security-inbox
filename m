X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2379" "Friday" "11" "August" "2017" "12:17:52" "-0700" "Yiteng Zhang" "yiteng.zhang@oracle.com" "<4ec90439-635a-adba-a27e-9aed3af232d8@oracle.com>" "96" "Re: [oss-security] [SECURITY ADVISORY] curl: FILE buffer read out of bounds" nil nil nil "8" "2017081119:17:52" "[oss-security] [SECURITY ADVISORY] curl: FILE buffer read out of bounds" (number mark "U       yiteng.zhang Aug 11   96/2379  " thread-indent "\"Re: [oss-security] [SECURITY ADVISORY] curl: FILE buffer read out of bounds\"\n") "<alpine.DEB.2.20.1708090803380.7715@tvnag.unkk.fr>" ("<alpine.DEB.2.20.1708090803380.7715@tvnag.unkk.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14309 invoked by uid 550); 11 Aug 2017 20:11:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28293 invoked from network); 11 Aug 2017 19:20:38 -0000
To: oss-security@lists.openwall.com,
        curl security announcements -- curl users <curl-users@cool.haxx.se>,
        curl-announce@cool.haxx.se,
        libcurl hacking <curl-library@cool.haxx.se>
References: <alpine.DEB.2.20.1708090803380.7715@tvnag.unkk.fr>
From: Yiteng Zhang <yiteng.zhang@oracle.com>
Message-ID: <4ec90439-635a-adba-a27e-9aed3af232d8@oracle.com>
Date: Fri, 11 Aug 2017 12:17:52 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1708090803380.7715@tvnag.unkk.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Source-IP: userv0021.oracle.com [156.151.31.71]
Subject: Re: [oss-security] [SECURITY ADVISORY] curl: FILE buffer read out of
 bounds

Bug Filed:

26620281 - CVE-2017-1000099 curl: FILE buffer read out of bounds

Yiteng

On 08/ 8/17 11:05 PM, Daniel Stenberg wrote:
> FILE buffer read out of bounds
> ==============================
>
> Project curl Security Advisory, August 9th 2017 -
> [Permalink](https://curl.haxx.se/docs/adv_20170809C.html)
>
> VULNERABILITY
> -------------
>
> When asking to get a file from a file:// URL, libcurl provides a 
> feature that
> outputs meta-data about the file using HTTP-like headers.
>
> The code doing this would send the wrong buffer to the user (stdout or 
> the
> application's provide callback), which could lead to other private 
> data from
> the heap to get inadvertently displayed.
>
> The wrong buffer was an uninitialized memory area allocated on the 
> heap and if
> it turned out to not contain any zero byte, it would continue and 
> display the
> data following that buffer in memory.
>
> We are not aware of any exploit of this flaw.
>
> INFO
> ----
>
> This flaw also affects the curl command line tool.
>
> The Common Vulnerabilities and Exposures (CVE) project has assigned 
> the name
> CVE-2017-1000099 to this issue.
>
> AFFECTED VERSIONS
> -----------------
>
> This bug has been was pushed to curl in commit
> [7c312f84ea930d8](https://github.com/curl/curl/commit/7c312f84ea930d8), 
> April
> 2017.
>
> - Affected versions: libcurl 7.54.1
> - Not affected versions: libcurl < 7.54.1 and >= 7.55.0
>
> libcurl is used by many applications, but not always advertised as such.
>
> THE SOLUTION
> ------------
>
> The function now sends the correct buffer to the application.
>
> A [patch for 
> CVE-2017-1000099](https://curl.haxx.se/CVE-2017-1000099.patch) is
> available.
>
> RECOMMENDATIONS
> ---------------
>
> We suggest you take one of the following actions immediately, in order of
> preference:
>
>  A - Upgrade curl and libcurl to version 7.55.0
>
>  B - Apply the patch to your version and rebuild
>
>  C - Do not use `CURLOPT_NOBODY` *and* `CURLOPT_HEADER` with file:// URLs
>
> TIME LINE
> ---------
>
> It was reported to the curl project on July 15, 2017. We contacted
> distros@openwall on August 1.
>
> libcurl 7.55.0 was released on August 9 2017, coordinated with the 
> publication
> of this advisory.
>
> CREDITS
> -------
>
> Reported by Even Rouault. Discovery: credit to OSS-Fuzz. Patch by Even 
> Rouault.
>
> Thanks a lot!
>

