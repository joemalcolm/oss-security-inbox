X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1576" "Thursday" "28" "July" "2016" "06:31:20" "-0700" "lazytyped" "lazytyped@gmail.com" "<abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>" "46" "Re: [oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" "^Cc:" nil nil "7" "2016072813:31:20" "[oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)" (number mark "        lazytyped@gm Jul 28   46/1576  " thread-indent "\"Re: [oss-security] Re: Use after free in my_login() function of DBD::mysql (Perl module)\"\n") "<20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>" ("<20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11527 invoked by uid 550); 28 Jul 2016 13:31:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11503 invoked from network); 28 Jul 2016 13:31:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=HJ4GRTu1mw/oLm7K8YF/GnYFe9UdG3g3UBx2GjaDB8I=;
        b=CYRmGEDroH8yp3TuRJ5C4k5LcoPrg9HWj1QQPveFv+XpPUf2eEy6u8sQdfrOvBZROq
         d6rIpGu5Y70XCFJsMfLz1D5tPnZeIXn3fZrrf3ZUDAopgSGlbNC0GWWSRWrLGHqoGdG0
         FBlmsOt61Okm1RJMLIuN8BeJG4VJxjuGrvUhGZjB+eQKJzWviHiK60YRWqw47OTwQhc2
         qCeOUkhc5swL5tC3zE1mVYnTvNJ90XF5b1FS1tIc0z2bkgerDrVL6jMY2gQBbK3OX4s0
         tmcxh+3Z87rFC+QfFFNYowUOafG3aZiAG2L4FvJ0w8mVBj+2eOUeRg6T5SAPBHUTDLTy
         2h6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=HJ4GRTu1mw/oLm7K8YF/GnYFe9UdG3g3UBx2GjaDB8I=;
        b=DkDjo/H53Va3znlJab9aQi3FEx5Clf0ofGwNcbjM6m0W0OeVW2VNkcrj5oo3KUgzn+
         qx1p2Sw2nU41iOYWOdi+k1LMtmWbAw6olRWXg8Qs1/cHKgNx+3bdyJgqD2pCKwNfaJQj
         w76raQJDZvnIXy0GVKbh3Qz+U7P0dgYo5ViTqrTc4ZTLNTB8kiWuBZ6k1lZtNOcqyGVv
         J3H2B/GrkEQ+khJgg7QfP3YbKA7DZeoTz7JNdKleqzj4bS4aaSwrQ8a0iHEOUWhMvrQm
         4nQNMDHvDaplYUHyWgdoKdsplFOA5+FNG0QUj6VKGiXv4rEqEZI1dDTasMJnB7bclJ8f
         deZw==
X-Gm-Message-State: AEkooutFSlSQAbezSRA9c0krNMvWS8+aCsSP8NBdFVkb1nekdYfmqJgiKvcO95km7g4MJQ==
X-Received: by 10.237.53.19 with SMTP id a19mr54392641qte.67.1469712680812;
        Thu, 28 Jul 2016 06:31:20 -0700 (PDT)
References: <20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>
Message-ID: <abec12ab-d311-cbe6-f256-5c9df0af2008@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
 Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <20160727013203.C008FABC4E2@smtpvmsrv1.mitre.org>
Content-Type: multipart/alternative;
 boundary="------------1F52F5B814E04C6D64EAAC78"
Cc: hanno@hboeck.de
Date: Thu, 28 Jul 2016 06:31:20 -0700
From: lazytyped <lazytyped@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Use after free in my_login() function of
 DBD::mysql (Perl module)
To: oss-security@lists.openwall.com

--------------1F52F5B814E04C6D64EAAC78
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 7/26/16 6:32 PM, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> https://blog.fuzzing-project.org/50-Use-after-free-in-my_login-function-of-DBDmysql-Perl-module.html
>>
>> DBD::mysql versions 4.033 and earlier have a use after free bug in the
>> my_login() function. DBD::mysql is a Perl module providing bindings to
>> the mysql database. The issue was fixed in version 4.034.
>>
>> https://github.com/perl5-dbi/DBD-mysql/pull/45
>>> When my_login fails the code tries to call mysql_errno on the mysql
>>> connection. However my_login has already free'd that connection
>>> variable, therefore causing a use-after-free error.
>>>
>>> This patch changes that so that the free happens after the call to the
>>> error functions.
>>>
>>> https://github.com/perl5-dbi/DBD-mysql/commit/cf0aa7751f6ef8445e9310a64b14dc81460ca156
> Use CVE-2015-8949.

Quick question:

- I guess the affecting function call is the following:

   do_error(dbh, mysql_errno(imp_dbh->pmysql),
                  mysql_error(imp_dbh->pmysql) 
,mysql_sqlstate(imp_dbh->pmysql));

which one of those calls provides an exploitation path? They seem all 
reads off the free'd structure.

I see in the bug report: " (I think use after free's can be serious and 
potentially lead to malfunction and security issues)" and would like to 
understand more about the rationale.


            -  twiz

--------------1F52F5B814E04C6D64EAAC78--
