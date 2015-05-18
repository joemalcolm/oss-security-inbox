X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1250" "Monday" "18" "May" "2015" "10:23:04" "+0300" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC72a6SvHxr9-NywXehaOfpXkbgCkjeh8ijVGsyeYAc98A@mail.gmail.com>" "46" "[oss-security] Re: CVE Request: various issues in PHP" nil nil nil "5" "2015051807:23:04" "[oss-security] Re: CVE Request: various issues in PHP" (number mark "        kaplanlior@g May 18   46/1250  " thread-indent "\"[oss-security] Re: CVE Request: various issues in PHP\"\n") "<CAEsznC6KasPjN9vNLcWgGkcGZee6K=200Wx4yXRrehVS2bUPvg@mail.gmail.com>" ("<CAEsznC6KasPjN9vNLcWgGkcGZee6K=200Wx4yXRrehVS2bUPvg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9234 invoked by uid 550); 18 May 2015 07:23:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8182 invoked from network); 18 May 2015 07:23:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=5mXTSwON2dlw/jderrVgTPu0TQkHWl/0vC9UMZKMCbw=;
        b=mnEQS6wUUxXfa67xqmnMwOjsIoJUOmZerGIPXKOI10hXpwaFI7vnt79eTIN6lnsZ3e
         nNmZbZNMlv5nqDk016Jy+LZYezVhQMJrRwmpYPj8i4eCtNMSN/tQPaE+2qRQZiCSGtNz
         4yXpCqTY7IajSyWr8LEpEoXwFxl+sVEOSDcJr3sbDbJt41s/ygo9MRGqXnAesZ2TPudD
         8PcHILDTBzvf306Imq8LDDFUtfS6zWUC1eT3rNpkAM1fvZqglD5k8qaAbcrK/QImnYpb
         RS5UHwN0qReTTDc5YV8Zy/j/1wkDnUqN1MdjlOTkCwLV0E2qZZftcs82lIYsz5ExF+OL
         XYrg==
MIME-Version: 1.0
X-Received: by 10.60.67.166 with SMTP id o6mr18570873oet.33.1431933784982;
 Mon, 18 May 2015 00:23:04 -0700 (PDT)
In-Reply-To: <CAEsznC6KasPjN9vNLcWgGkcGZee6K=200Wx4yXRrehVS2bUPvg@mail.gmail.com>
References: <CAEsznC6KasPjN9vNLcWgGkcGZee6K=200Wx4yXRrehVS2bUPvg@mail.gmail.com>
Message-ID: <CAEsznC72a6SvHxr9-NywXehaOfpXkbgCkjeh8ijVGsyeYAc98A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3145a9888b605165610c1
Cc: "security@php.net" <security@php.net>, oss-security@lists.openwall.com
Date: Mon, 18 May 2015 10:23:04 +0300
From: Lior Kaplan <kaplanlior@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: various issues in PHP
To: cve-assign@mitre.org

--001a11c3145a9888b605165610c1
Content-Type: text/plain; charset=UTF-8

Sending again.

See CVE requests on behalf of PHP security team.

Kaplan

On Wed, May 13, 2015 at 11:21 AM, Lior Kaplan <kaplanlior@gmail.com> wrote:

> (Adding cve-assign)
>
> On Wed, May 13, 2015 at 2:07 AM, Stanislav Malyshev <smalyshev@gmail.com>
> wrote:
>
>> Hi!
>>
>> We have a number of security issues for which we need CVEs:
>>
>> https://bugs.php.net/bug.php?id=69453 - phar issue, can lead to memory
>> read beyond buffer and in some (unlikely) circumstances, 1-byte memory
>> write
>>
>> https://bugs.php.net/bug.php?id=69545 - integer overflow on reading FTP
>> server data leading to heap overflow, potential exploit by hostile FTP
>> server
>>
>> https://bugs.php.net/bug.php?id=69364 - DoS possibility due to
>> ineffective parsing of form data
>>
>> https://bugs.php.net/bug.php?id=69418,
>> https://bugs.php.net/bug.php?id=68598 - various functions allow \0 in
>> paths where they shouldn't. In theory, that could lead to security
>> failure for path-based access controls if the user injects string with
>> \0 in it. It's a bit theoretical, but it's a possibility.
>>
>>
>> --
>> Stas Malyshev
>> smalyshev@gmail.com
>>
>
>

--001a11c3145a9888b605165610c1--
