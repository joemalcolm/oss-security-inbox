X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["960" "Tuesday" "23" "April" "2019" "10:05:50" "-0400" "Mike Dalessio" "mike.dalessio@gmail.com" "<CAGJbjKad9c-kqKS9B3rqYfOsRwwvYRW7CftF1f5uyCxUs3vVpA@mail.gmail.com>" "38" "Re: [oss-security] Nokogiri security update v1.10.3" "^Cc:" nil nil "4" "2019042314:05:50" "[oss-security] Nokogiri security update v1.10.3" (number mark "        mike.dalessi Apr 23   38/960   " thread-indent "\"Re: [oss-security] Nokogiri security update v1.10.3\"\n") "<874l6pgkpg.fsf@oldenburg2.str.redhat.com>" ("<CAGJbjKYzq0PbZYOedTha2xaOOUgTg-UJjp6CrWjwaaA8qwiTKg@mail.gmail.com>" "<874l6pgkpg.fsf@oldenburg2.str.redhat.com>") nil nil nil nil nil nil nil "Re: [oss-security] Nokogiri security update v1.10.3" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14057 invoked by uid 550); 23 Apr 2019 14:33:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20356 invoked from network); 23 Apr 2019 14:06:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JUxiFotxnCEgKggNF+A69nR2liGn8XcpP8+DgywLI5k=;
        b=Axm5b68K3ZdtpGKFnPMLkM60NfhQXnIuFuNsqd5LirfFy0brMRIQjnR5awSO0Xfrdn
         IFX6N+b1YDouagsxkitgIGWY+4zeC3MM0+UrreDix2Fbp69+SNC/QeGtoAGWNGbFIX2p
         WPAFkG+D70zQ/EpWLjeaPo2bvpoM+PK/CF8r3oBFKduDNpln1pIViIWgMpZsQ1ti15aP
         JxdG3KcvHavCT1Pce5XaCkN+cvRcL2omUpYcko5ucxl0vG3GPgj+5RWk1yUBuutesNqy
         3oX6o6f40tzbtTHP/Da1RBuIo7wvGuZcb/iHEDcNtWHBoc0oZzejUqiYPwXkArcllao1
         R13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JUxiFotxnCEgKggNF+A69nR2liGn8XcpP8+DgywLI5k=;
        b=eigpmjogIT2artelBsATEAiKucmraxRGOwyPulwaQRrVPAZ4Fk79brreGuvUoR4gop
         49ofrO3lw37XjHLAU8fG9+hpY3ycm47jX67eKaJnOYF7AFaO01oJOLzs45AEg6jSdVB0
         WsKWUmeFhvOfBI5TWey3AI9zWV0J95nh7q7EoGY/EmC5fCw3edGToPUxFzKROC0TzLf4
         nT1TI6uADJNL4lxwfUMQxVh5QcWHR4qkeybIVdJFlQZAdB3d4fGMuzJQtua+5+4ITRtC
         T5ItcDdT4Tg5V6Eg1HH+FvYb712Hpzy02K1k9YDjFoIoR/9LpyiCdlqVsYbkLRFgK+x0
         DLDw==
X-Gm-Message-State: APjAAAWlc+nir3Gt7xMVKd7LcRD2SiSN14mKuNBuUhpxf/RpOH6sa70s
	o8E912gzejH+CDUy9BzASbIplwTr/I3Jf8TqMWI=
X-Google-Smtp-Source: APXvYqwFm0NwCjOT9AXnEsMLnuPCMnHZiP/kinH0XDwlgdyoE6S5mhZmOE7HR+Wgs49J0k49eY13RYXJOUVCXq9zgI0=
X-Received: by 2002:a9d:3db4:: with SMTP id l49mr15958044otc.131.1556028361525;
 Tue, 23 Apr 2019 07:06:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAGJbjKYzq0PbZYOedTha2xaOOUgTg-UJjp6CrWjwaaA8qwiTKg@mail.gmail.com>
 <874l6pgkpg.fsf@oldenburg2.str.redhat.com>
In-Reply-To: <874l6pgkpg.fsf@oldenburg2.str.redhat.com>
Message-ID: <CAGJbjKad9c-kqKS9B3rqYfOsRwwvYRW7CftF1f5uyCxUs3vVpA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000bfdba905873315bb"
Cc: nokogiri-talk <nokogiri-talk@googlegroups.com>, ruby-talk <ruby-talk@ruby-lang.org>, 
	ruby-security-ann@googlegroups.com, oss-security@lists.openwall.com
Date: Tue, 23 Apr 2019 10:05:50 -0400
From: Mike Dalessio <mike.dalessio@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Nokogiri security update v1.10.3
To: Florian Weimer <fweimer@redhat.com>

--000000000000bfdba905873315bb
Content-Type: text/plain; charset="UTF-8"

Florian, thanks for the clarification.

NVD indicates that this is a CVSS v3.0 severity "9.8: Critical".

Here are permalinks:

   - NVD entry:
   https://nvd.nist.gov/vuln/detail/CVE-2019-11068#vulnCurrentDescriptionTitle
   - expanded CVSS 3.0 score:
   https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?name=CVE-2019-11068&vector=AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

-m





On Tue, Apr 23, 2019 at 5:00 AM Florian Weimer <fweimer@redhat.com> wrote:

> * Mike Dalessio:
>
> > This is a security release. It addresses a CVE in upstream libxslt rated
> as
> > "Priority: medium" by Canonical, and "NVD Severity: high" by Debian. More
> > details are available below.
>
> Note that the Debian security tracker only relays what NVD provides in
> this field.  It is not updated if a separate review yields different
> results.
>
> Thanks,
> Florian
>

--000000000000bfdba905873315bb--
