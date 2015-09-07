X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["701" "Monday" "7" "September" "2015" "13:30:02" "+0200" "Raphael Geissert" "geissert@debian.org" "<CAA7hUgEMcN1VMu-EOkrX09aUBHw7hJ=HFLuawPFG36oK-7vhHw@mail.gmail.com>" "21" "Re: [oss-security] CVE request: Ganglia-web auth bypass" nil nil nil "9" "2015090711:30:02" "[oss-security] CVE request: Ganglia-web auth bypass" (number mark "        geissert@deb Sep  7   21/701   " thread-indent "\"Re: [oss-security] CVE request: Ganglia-web auth bypass\"\n") "<55E9D62F.5030603@wallarm.com>" ("<55E9D62F.5030603@wallarm.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27969 invoked by uid 550); 7 Sep 2015 11:30:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27948 invoked from network); 7 Sep 2015 11:30:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:content-type;
        bh=2oxbtMEPGk0JkffVIF++fbHbNSOlUhHbFSGrVNNgwko=;
        b=s6lL4odpqVk10WO1aSwTjn2gT3gK53AarZp3xCUdwZBTRMhT8fHhN3/yOTUy7855/q
         Gglclhu8USCvKENsBy7eu7vrs9HrnvQoBLewPmOkLx9eDA4E9ks+kbnVGGrldUyll5GE
         XYXN1vjndtZZAvEeqURhgs/l+f1Ji7NA/Wz9CuxqSslL7Aq86WoiwW8qSujxlDLwuICv
         rB2KaFOaKKywt7BOHqnigogAkp3yx2099qWVuW9CmLC9HyeNc6xUIpyi/NFct5r/Snt3
         hQUtccFvlrHV3WzyuNkNZiH8cSSCCSeFIEf08UbgCiLT/L1beGWEJZ9IZZitb/sYNOHi
         Xg0w==
X-Received: by 10.180.89.101 with SMTP id bn5mr19422860wib.20.1441625421898;
 Mon, 07 Sep 2015 04:30:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55E9D62F.5030603@wallarm.com>
References: <55E9D62F.5030603@wallarm.com>
X-Google-Sender-Auth: Ac62A7P6c_L-l5mDoAb2R1HHfR0
Message-ID: <CAA7hUgEMcN1VMu-EOkrX09aUBHw7hJ=HFLuawPFG36oK-7vhHw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 7 Sep 2015 13:30:02 +0200
From: Raphael Geissert <geissert@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: atomo64@gmail.com
Subject: Re: [oss-security] CVE request: Ganglia-web auth bypass
To: Open Source Security <oss-security@lists.openwall.com>

On 4 September 2015 at 19:34, Ivan Novikov <in@wallarm.com> wrote:
> Reported by GitHub:
> https://github.com/ganglia/ganglia-web/issues/267
>
> It's easy to bypass auth by using boolean serialization like this:
> $ php -r "echo urlencode(serialize(array('user'=>'admin',
> 'group'=>'admin', 'token'=>true)));"

Oh, indeed. I missed that back when I wrote [1].

Do you know if the groups feature is used nowadays? my comment
regarding it not being validated (i.e. taking whatever is in the
cookie) appears to still hold true.


[1] http://mid.gmane.org/CAA7hUgHW=VwfsffPfFxvhZ=fS5fPf=79jZ-tdsCkZJgEfEksjA@mail.gmail.com

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
