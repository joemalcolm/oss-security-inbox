X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["917" "Thursday" "29" "October" "2015" "17:45:21" "-0700" "akuster" "akuster@mvista.com" "<5632BDA1.2060706@mvista.com>" "32" "Re: [oss-security] CVE Request: Glibc Pointer guarding weakness" nil nil nil "10" "2015103000:45:21" "[oss-security] CVE Request: Glibc Pointer guarding weakness" (number mark "        akuster@mvis Oct 29   32/917   " thread-indent "\"Re: [oss-security] CVE Request: Glibc Pointer guarding weakness\"\n") "<561F5EFA.1050105@redhat.com>" ("<55EB1D07.2060005@upv.es>" "<561F5EFA.1050105@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26330 invoked by uid 550); 30 Oct 2015 00:45:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26312 invoked from network); 30 Oct 2015 00:45:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista_com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-type:content-transfer-encoding;
        bh=s3oz031tp7+RxVsMIQEtD4hBg4pwGNrLqI+SQmRb7vM=;
        b=CHuFhL79hNzywUyDCngoVG+rmILRRwXGYWNgyUaK2CFVO2TrlYmMTE5uRnKXtbYu9W
         mk5rpJEjBSXkV4PxT8Id57GTgbu+6bA8yrk1aVhAg0OB8txWkV8ne6/PmC7kT67/zFxK
         efrM7K0aVo7yZxHmjdX1FKWGrqwFLkh/YP7dRIDDPk/BLYWBYJy9BFPmBBBQfRHOUBNH
         18kvo9z+KvPr9lqU7a14fWj38wI8/1RJCYPbIb/pi5XDrAzB+/WQ/6RVOOnd3lq8R5EE
         BYPKEdSpeKtI/aybdA64Y/lre8viiTECbzgh5B/zIHePatD9+ipju/gJEd5IK5wxuShP
         5ipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-type
         :content-transfer-encoding;
        bh=s3oz031tp7+RxVsMIQEtD4hBg4pwGNrLqI+SQmRb7vM=;
        b=UJqIvIBdQ64019t61juV9sW3wL9MGxIlwv6CR4GxFBFma6iToUXg8FLFISjCEKOhyE
         y4NF+uO6SmK+C+bty1aDb4d6zQ8WNOhT9T5dKH5Y7irr3YapA6rZSLWKHXffmSnL6Tz9
         6Ur3If6+OcxHkHZXLqRjJGzSDpXvYaYBDYuN+dgeXPlLVKfzSDtauVEZLLgtZsahUQ1o
         ydOf0Pz9CNdQVfymC8ATEq8MgOCiZbwuVyXB9OBooOa76wl4wICoPZDs9XYo2WkY/9PJ
         n2beWsGHOK8wCODthrze5Pz81Hm5KuvT0/cBZapB9oemUvWUpp5p9xbZi+Wh0AyLJAAE
         QxgQ==
X-Gm-Message-State: ALoCoQnKWC79P20rMW23PbaSkLBKrqgwA/dOeSED2iH/5vORTjOXddvNR6AV4Uei3TZ67O6M8oW/
X-Received: by 10.68.105.34 with SMTP id gj2mr5216771pbb.136.1446165923887;
        Thu, 29 Oct 2015 17:45:23 -0700 (PDT)
References: <55EB1D07.2060005@upv.es> <561F5EFA.1050105@redhat.com>
Message-ID: <5632BDA1.2060706@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <561F5EFA.1050105@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: cve-assign@mitre.org, Florian Weimer <fweimer@redhat.com>
Date: Thu, 29 Oct 2015 17:45:21 -0700
From: akuster <akuster@mvista.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Glibc Pointer guarding weakness
To: oss-security@lists.openwall.com



On 10/15/2015 01:08 AM, Florian Weimer wrote:
> On 09/05/2015 06:49 PM, Hector Marco-Gisbert wrote:
>> Hello,
>>
>> A weakness in the dynamic loader have been found, Glibc prior to 2.22.90
>> are affected. The issue is that the LD_POINTER_GUARD in the environment
>> is not sanitized allowing local attackers easily to bypass the pointer
>> guarding protection on set-user-ID and set-group-ID programs.
>>
>>
>> Details and PoC at:
>> http://hmarco.org/bugs/glibc_ptr_mangle_weakness.html
>>
>>
>> A patch is already sent to Glibc maintainers. This issue is similar to
>> http://hmarco.org/bugs/CVE-2013-4788.html but now affect to dynamic
>> linked applications.
> 
>> Could you please assign a CVE ?

Did I miss the assignment or this does not warrant a CVE?

- armin
> 
> Upstream commit:
> 
> https://sourceware.org/git/gitweb.cgi?p=glibc.git;a=commit;h=a014cecd82b71b70a6a843e250e06b541ad524f7
> 
> Florian
> 
