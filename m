X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["907" "Friday" "14" "August" "2015" "19:08:41" "+0100" "Jonathan Wakely" "jwakely.gcc@gmail.com" "<CAH6eHdRWXLHrjyK-XPUhDoagRJ-vsXg+r5s1ANZgm54NFNRZFQ@mail.gmail.com>" "24" "[oss-security] Re: Alleged libstdc++ vulnerabilities" nil nil nil "8" "2015081418:08:41" "[oss-security] Re: Alleged libstdc++ vulnerabilities" (number mark "        jwakely.gcc@ Aug 14   24/907   " thread-indent "\"[oss-security] Re: Alleged libstdc++ vulnerabilities\"\n") "<CAH6eHdRuW7F_xJNUjj0cvd2eU38xg9eWUKm4a=PYwuFCqibgfA@mail.gmail.com>" ("<55CE2A12.6020909@redhat.com>" "<CAH6eHdRuW7F_xJNUjj0cvd2eU38xg9eWUKm4a=PYwuFCqibgfA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26410 invoked by uid 550); 14 Aug 2015 18:08:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26383 invoked from network); 14 Aug 2015 18:08:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=6yc0k7klG6qhGAkqH0CSoLkU+YKSIK309uaSNu0DY2c=;
        b=FPdxH+6Edl5CJkOncJWLV6GBJdnMLB6cX72PxjHBDNXZ3ISRg2XsQUj1lTR9VvS/dZ
         4zu4yMv5j+GN3Dv4dXixkeZuQyee//s5Z8DJNKPeF2UvWJc5sV2y5Hvwjd9eAwrSUlgo
         xgXl8lZxEhhJcNJQtKs+V+/Fj0HchssOcJomC6lCkwTjiJJ6Au+ahFQATDneM2s5lxfN
         kWZTjXd58VhPR1qsKtuEwOAlMAl8WqHNBrJZchnDcqgXLLOHbUQxDH48oTxVlr+uZY0X
         ZPZaMvXiVrE1yH3L3XqVU1RUTbp+0vhfI/5v62qfnX+S8fHG+ItH1G1Ie0DJbDCwy6p9
         3Slg==
MIME-Version: 1.0
X-Received: by 10.140.238.208 with SMTP id j199mr20219327qhc.65.1439575721675;
 Fri, 14 Aug 2015 11:08:41 -0700 (PDT)
In-Reply-To: <CAH6eHdRuW7F_xJNUjj0cvd2eU38xg9eWUKm4a=PYwuFCqibgfA@mail.gmail.com>
References: <55CE2A12.6020909@redhat.com>
	<CAH6eHdRuW7F_xJNUjj0cvd2eU38xg9eWUKm4a=PYwuFCqibgfA@mail.gmail.com>
Message-ID: <CAH6eHdRWXLHrjyK-XPUhDoagRJ-vsXg+r5s1ANZgm54NFNRZFQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "libstdc++" <libstdc++@gcc.gnu.org>, oss-security@lists.openwall.com
Date: Fri, 14 Aug 2015 19:08:41 +0100
From: Jonathan Wakely <jwakely.gcc@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Alleged libstdc++ vulnerabilities
To: Florian Weimer <fweimer@redhat.com>

On 14 August 2015 at 18:55, Jonathan Wakely wrote:
> On 14 August 2015 at 18:49, Florian Weimer wrote:
>> Does anybody know what this is about and can point to the relevant PRs?
>>
>> =E2=80=9Cdiscovered serious security bugs in [=E2=80=A6] libstdc++=E2=80=
=9D
>>
>> <http://www.news.gatech.edu/2015/08/13/georgia-tech-finds-11-security-fl=
aws-popular-internet-browsers-using-new-analysis-method>
>>
>> The USENIX paper
>> <https://www.usenix.org/system/files/conference/usenixsecurity15/sec15-p=
aper-lee.pdf>
>> does not back up this claim.
>
> The paper abstract says "discovered 11 previously unknown security vulner=
a-
> bilities: nine in GNU libstdc++ and two in Firefox, all of which have
> been confirmed and subsequently fixed by vendors. "
>
> I guess they are referring to https://gcc.gnu.org/bugzilla/show_bug.cgi?i=
d=3D63345

And FWIW most of the "fixes" they suggested were just nonsense.
