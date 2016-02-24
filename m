X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1082" "Wednesday" "24" "February" "2016" "16:56:09" "-0500" "=?UTF-8?B?RmVybmFuZG8gTXXDsW96?=" "fernando@null-life.com" "<CAEr-gPHxfhxNZu0eGuZLvDWmjQjTw3d1BsTZyFKES=Zm6d+LUQ@mail.gmail.com>" "30" "Re: [oss-security] CVE Request: bash-completion: dequote command injection" "^Date:" nil nil "2" "2016022421:56:09" "[oss-security] CVE Request: bash-completion: dequote command injection" (number mark "        fernando@nul Feb 24   30/1082  " thread-indent "\"Re: [oss-security] CVE Request: bash-completion: dequote command injection\"\n") "<56CE1991.2030906@redhat.com>" ("<CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>" "<56CE1991.2030906@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17673 invoked by uid 550); 24 Feb 2016 21:56:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17652 invoked from network); 24 Feb 2016 21:56:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=null-life-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type:content-transfer-encoding;
        bh=wS93c6YpuAqgbrwaWTwO3EG7vyTbXxhPSqzD7wcu5ho=;
        b=kr0MjAi21jepnyfMZvipcJLonRLo4dLdUqJ7zrsB9rAbgaMvgXshnHG6g5FCEnFbIE
         IwvK1JgQkTSeO91BYWXBZJ08FSbP10UC/SMATJFnw4F01uFFiAZsHV3KEFj/hN7z2/MV
         RR9DetXy3Do9uLP+DNfFiz8gpUScVhONy9Dx6+xnaTLIh7/LEGlEMXySsrL+ZLYXj7Lv
         Y3a4JQZQfHF+GO5M1brQK/5GoYHnRu8yQRKkMGuya9CBejXDafx4/AWNvg4oHF4DKXyB
         8JNq2zGeHQdfIfrrG5ceU1/1B56H2VxFc1xzfE+I2lrm309IZy345Fw4Sb5vVEhOMllM
         K/iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type:content-transfer-encoding;
        bh=wS93c6YpuAqgbrwaWTwO3EG7vyTbXxhPSqzD7wcu5ho=;
        b=IumDAZw5aSIh6OCOlpse6eC/7IZlga13lM+HLADUz6c5fq2qhSjWgQE5jrejmNkM4P
         /uvDVSWjvfbXWurYb2fbJSH3fdox1uDlQhXWUSS+RNG8MbWBkaByQPEDVObBeD6tgfrT
         FRicra754f4dmPioxnFKBC8zIzF05XIrbc/F91vGg9x89ugNiq5qNduOGhAyYsC8qkOH
         e3OOzBtPcLanHzA2c5ikpr+5qgeGXtepXmWpYcgduOm18TNcVC7NxI7vrKx5IV9PkDUx
         FUZ28HghLnpTmhNdT2oMVYvnqGPGuN8SOQ/ISy7WWiIF0M5FsEGSWV2h2kHSGan4JDOl
         uGoA==
X-Gm-Message-State: AG10YORhsIUwUQ47w8cartQabSrYA1D/JXqFKAWbMaeoMuoHzm8v5Y/UoX9BQ9GziuQCFLQflHV93jgB3HJdOQ==
MIME-Version: 1.0
X-Received: by 10.31.167.195 with SMTP id q186mr33569342vke.113.1456350969468;
 Wed, 24 Feb 2016 13:56:09 -0800 (PST)
X-Originating-IP: [190.24.59.221]
In-Reply-To: <56CE1991.2030906@redhat.com>
References: <CAEr-gPHk8Q5dSh1rOmKiGEQ97X=JrAypPcVvv+NrzReuOHMoyg@mail.gmail.com>
	<56CE1991.2030906@redhat.com>
Message-ID: <CAEr-gPHxfhxNZu0eGuZLvDWmjQjTw3d1BsTZyFKES=Zm6d+LUQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Feb 2016 16:56:09 -0500
From: =?UTF-8?Q?Fernando_Mu=C3=B1oz?= <fernando@null-life.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: bash-completion: dequote command injection
To: oss-security@lists.openwall.com

Hello Eric,

I never mentioned privilege escalation.

This issue how ever could appear when a different application uses
user input and calls "dequote" function that not only dequotes, but
also executes it as a command. If mitre doesn't consider it CVE worth,
that's OK!

Regards.



On Wed, Feb 24, 2016 at 3:58 PM, Eric Blake <eblake@redhat.com> wrote:
> On 02/24/2016 12:08 PM, Fernando Mu=C3=B1oz wrote:
>> Marcelo Echeverria and Fernando Mu=C3=B1oz discovered that the dequote
>> function included in bash-completion allows to execute arbitrary
>> commands since it uses the eval function to call printf and perform
>> the actual dequoting. bash-completion is included on Debian, Ubuntu
>> OpenSuse [1] and probably other distros.
>
> But what is the privilege escalation?  This is no different than
> incorrectly using 'eval' in a shell script - you may have buggy code,
> and have an easy-to-trigger bug, but if you can't escalate privileges,
> how it is a CVE?
>
> --
> Eric Blake   eblake redhat com    +1-919-301-3266
> Libvirt virtualization library http://libvirt.org
>
