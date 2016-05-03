X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1186" "Tuesday" "3" "May" "2016" "20:17:52" "+0200" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<74d54064-2a90-1170-1abb-7729216b461b@gmail.com>" "29" "Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]" "^Date:" nil nil "5" "2016050318:17:52" "[oss-security] OpenSSL Security Advisory [3rd May 2016]" (number mark "        gsunde.orang May  3   29/1186  " thread-indent "\"Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]\"\n") "<20160503173526.GA6669@openwall.com>" ("<20160503152100.GA4790@openwall.com>" "<52f58a81-5a5a-005d-cc87-27f1cce0379e@gmail.com>" "<20160503173526.GA6669@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32571 invoked by uid 550); 3 May 2016 18:17:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32553 invoked from network); 3 May 2016 18:17:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=P6WSUh4M2CMccUBZx7J4H+GR1sLVi3j0JjPIRlyRCjE=;
        b=Ps0j+8rz++NyLvBM+NaD/Z9S2Fwl4JjqzKh/DNaQwMewFho4IZQ4BtZYBPvJq/qAmD
         dqqQx6SGaHKTj4z4tNGQmvdtHHgGXITipwtBxFX7cpLaaulu1yunTiODBvTqe/28zq8d
         +XI/11bfjopWlqTLSevZ9aR7Mlk4k8pu+3h/ROcO6eESKfOb7tCrdVGs41Fi3QgCFdh0
         IF71QnyoAFxlhpFghhDmZRtwPdgKmj3LsitwHlmk+Th+lEIaZVrlIK8LCjRIzOroB6Xr
         giUSFAVbN/EuGoX5rfGQ3nZlRvELK/knHSnmOREYDuBSpMtjayKAcRTNEsDpeff02vob
         w04w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=P6WSUh4M2CMccUBZx7J4H+GR1sLVi3j0JjPIRlyRCjE=;
        b=UTvBhATdGyhQvgR1vr5RdQ5cPWQPDKeIB6aUGFtsodkrCs8QvYlJBsGromlpWZMuk4
         g9pJZA2M1cWSAYEuqNCDZah4NzcLns+I/YqWPI5STPDM18Dhf9bNTflkQF9iVSuKdhhT
         KEAzaggXJytMAPnfWtX//CDO53e6lL/HM8ka6Xf5u4jH2/ei2hfuhEacp6JbUZM7F/OL
         oKMeLxyP/z5oFJw/yKlfefcJqWDDEIvYLToYthBI0+bS2pgOmWy/S95pRo22ui3XBxS3
         9FRWSO0BCPQyi8lBsxu5AA3ypOAWm654GE00ndcJuMvqUewq4lUf6SOAktHqIcJjT5ke
         1vjg==
X-Gm-Message-State: AOPr4FWVZCIlmghgYaGjtj4AlYr1tXd8Y73ItulNLfKYymLgAcUk1ixwq8zZCiBP+IDkLQ==
X-Received: by 10.194.192.106 with SMTP id hf10mr4507581wjc.52.1462299465015;
        Tue, 03 May 2016 11:17:45 -0700 (PDT)
References: <20160503152100.GA4790@openwall.com>
 <52f58a81-5a5a-005d-cc87-27f1cce0379e@gmail.com>
 <20160503173526.GA6669@openwall.com>
Message-ID: <74d54064-2a90-1170-1abb-7729216b461b@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <20160503173526.GA6669@openwall.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Date: Tue, 3 May 2016 20:17:52 +0200
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]
To: oss-security@lists.openwall.com

Thanks, Alexander & agreed - and the "official" OpenSSL changelog
confirms that AES-NI support was introduced with 1.0.1:

https://www.openssl.org/news/changelog.html#x22
Changes between 1.0.0h and 1.0.1  [14 Mar 2012]:
*) Extensive assembler packs updates, most notably:
 - x86[_64]: AES-NI, ...

On 03.05.2016, 19:35 Solar Designer wrote:
> On Tue, May 03, 2016 at 06:52:43PM +0200, Gsunde Orangen wrote:
>> * Padding oracle in AES-NI CBC MAC check (CVE-2016-2107)
>> The advisory says: "This issue was introduced as part of the fix for
>> Lucky 13 padding attack (CVE-2013-0169)".
>> So the following versions should be affected (ref.
>> https://openssl.org/news/vulnerabilities.html#y2013):
>>  - 1.0.2 through 1.02g
>>  - 1.0.1d through 1.0.1s
>>  - 1.0.0k and all later versions
>>  - 0.9.8y and all later versions
> 
> You're assuming that all versions with the fix for CVE-2013-0169 are
> affected, but the description also says that the new bug is in AES-NI
> specific code.  AES-NI support appears to be missing in 1.0.0 and older.
> I've just tried grepping 1.0.0t for aesenc (one of the AES-NI mnemonics,
> present in the 1.0.1 tree) - it isn't in there.
> 
> Alexander
> 

